function Xunamate:getMatchPlayerUnit(name, realm)
  unit = nil
  for k, v in pairs(matchData.players) do 
    if v.name == name and v.realm == realm then
      unit = k
    end
  end
  return unit
end

function Xunamate:getPlayerFaction(players)
  faction = nil
  for i, v in pairs(players) do
    if v.isPlayer then
      faction = v.faction
    end
  end
  return faction
end

function Xunamate:parseDuration(duration)
  if not duration or duration == 0 then
    return "-"
  end
	local timeSec = math.floor(duration % 60)
	local timeMin = math.floor(duration / 60)
	if timeSec < 10 then
		timeSec = "0"..timeSec
	end
	return timeMin .. ":" .. timeSec
end

function Xunamate:sortPlayers(players, reversed)
  sort(players, function(a, b)
    if not a then return false end
    if not b then return true end
    local spec1 = a.specId
    local spec2 = b.specId
    if reversed == true then
      spec1 = b.specId
      spec2 = a.specId
    end
    if spec1 == nil and spec2 == nil then
      return true
    end
    if spec1 == nil then
      return true
    end
    if spec2 == nil then
      return false
    end
    if spec1 == spec2 then
      return true
    end
    local role1 = select(5, GetSpecializationInfoByID(spec1))
    local role2 = select(5, GetSpecializationInfoByID(spec2))
    local isHealer1 = role1 ~= nil and role1:lower() == "healer"
    local isHealer2 = role2 ~= nil and role2:lower() == "healer"
    if isHealer1  ~= isHealer2 then
      return isHealer2 or not isHealer1
    end
    return spec1 < spec2
  end)
end