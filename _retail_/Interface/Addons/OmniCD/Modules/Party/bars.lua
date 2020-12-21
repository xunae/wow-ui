local E, L, C = select(2, ...):unpack()

local tinsert = table.insert
local tremove = table.remove
local wipe = table.wipe
local GetSpellLevelLearned = GetSpellLevelLearned
local UnitGUID = UnitGUID
local P = E["Party"]
local spell_db = E.spell_db
local spell_cdmod_haste = E.spell_cdmod_haste
local spell_cdmod_talents = E.spell_cdmod_talents
local spell_chmod_talents = E.spell_chmod_talents
local spell_cdmod_talents_mult = E.spell_cdmod_talents_mult
local spell_cdmod_conduits = E.spell_cdmod_conduits
local spell_cdmod_conduits_mult = E.spell_cdmod_conduits_mult
local covenant_cdmod_conduits = E.covenant_cdmod_conduits
local covenant_chmod_conduits = E.covenant_chmod_conduits
local covenant_cdmod_items_mult = E.covenant_cdmod_items_mult
local FEIGN_DEATH = 5384
local TOUCH_OF_KARMA = 125174

local bars = {}
local unusedBars = {}
local numBars = 0

local unusedIcons = {}
local numIcons = 0

function OmniCD_BarOnHide(self)
	local guid = self.guid
	if P.groupInfo[guid] then
		return
	end

	if guid == E.userGUID then
		P.userData.bar = nil
	end

	for i = #bars, 1, -1 do -- [31]
		local f = bars[i]
		if f == self then
			tremove(bars, i)
			break
		end
	end
	tinsert(unusedBars, self)

	P:RemoveUnusedIcons(self, 1)
	self.numIcons = 0

	for key, f in pairs(P.extraBars) do
		local icons = f.icons
		local n = 0
		for j = f.numIcons, 1, -1 do
			local icon = icons[j]
			local iconGUID = icon.guid
			if guid == iconGUID then
				P:RemoveIcon(icon)
				tremove(icons, j)
				n = n + 1
			end
		end
		f.numIcons = f.numIcons - n

		P:SetExIconLayout(key)
	end

	if self.timer_inCombatTicker then
		self.timer_inCombatTicker:Cancel()
	end

	self:UnregisterEvent("UNIT_AURA")
	self:UnregisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	self:UnregisterEvent("PLAYER_SPECIALIZATION_CHANGED")
end

local function CooldownBarFrame_OnEvent(self, event, ...)
	local guid = self.guid
	local info = P.groupInfo[guid]
	if not info then
		return
	end

	if event == "UNIT_SPELLCAST_SUCCEEDED" then
		local unit, _, spellID = ...
		if (P.spell_enabled[spellID] or E.spell_modifiers[spellID]) and not E.cd_start_dispels[spellID] then
			E.ProcessSpell(spellID, guid)
		end
	elseif event == "UNIT_AURA" then
		local unit = ...
		if info.glowIcons[TOUCH_OF_KARMA] then
			if not P:GetBuffDuration(unit, TOUCH_OF_KARMA) then
				local icon = info.glowIcons[TOUCH_OF_KARMA] -- [40]
				if icon then
					P:RemoveHighlight(icon)
				end
				self:UnregisterEvent(event)
			end
		elseif info.preActiveIcons[FEIGN_DEATH] then
			if not P:GetBuffDuration(unit, FEIGN_DEATH) then
				local icon = info.preActiveIcons[FEIGN_DEATH] -- [40]
				if icon then
					info.preActiveIcons[FEIGN_DEATH] = nil
					icon.icon:SetVertexColor(1, 1, 1)
					P:StartCooldown(icon, icon.duration)
				end
				self:UnregisterEvent(event)
			end
		else
			self:UnregisterEvent(event)
		end
	elseif event == "PLAYER_SPECIALIZATION_CHANGED" then
		local unit = ...
		if guid == E.userGUID then
			E.Comms:InspectPlayer()
			E.Comms:SendSync()
			E.Comms:RegisterEventUnitPower()
		elseif ( UnitIsConnected(unit) ) then
			E.Comms:EnqueueInspect(nil, guid)
		end
	end
end

local function GetBar()
	local f = tremove(unusedBars)
	if not f then
		numBars = numBars + 1
		f = CreateFrame("Frame", "OmniCD" .. numBars, UIParent, "OmniCDTemplate")
	end
	f.modname = "Party"
	f.icons = {}
	f.numIcons = 0
	f.anchor:Hide()
	f:SetScript("OnEvent", CooldownBarFrame_OnEvent)

	bars[#bars + 1] = f
	return f
end

function P:HideAllBars()
	for i = #bars, 1, -1 do
		local f = bars[i]
		f:Hide()
	end
end

local function GetIcon(f, iconIndex)
	local icon = tremove(unusedIcons)
	if not icon then
		numIcons = numIcons + 1
		icon = CreateFrame("Button", nil, UIParent, "OmniCDButtonTemplate")
		icon.counter = icon.cooldown:GetRegions()
	end
	icon:SetParent(f.container)
	icon.Name:Hide()

	f.icons[iconIndex] = icon
	return icon
end

function P:RemoveIcon(icon)
	local statusBar = icon.statusBar
	if statusBar then
		self.RemoveStatusBar(statusBar)
		icon.statusBar = nil
	end

	self:HideOverlayGlow(icon)
	icon:Hide()
	tinsert(unusedIcons, icon)
end

function P:RemoveUnusedIcons(f, n)
	for i = #f.icons, n, -1 do
		local icon = f.icons[i]
		self:RemoveIcon(icon)
		f.icons[i] = nil
	end
end

function P:SetBarBackdrop(f) -- [52]
	local icons = f.icons
	for i = 1, f.numIcons do
		local icon = icons[i]
		self:SetBorder(icon)
	end
end

local function IsSpellSpecTalent(guid, spec, spellID)
	local info = P.groupInfo[guid]
	local specID = info.spec
	if specID then
		if type(spec) == "table" then
			for _, id in pairs(spec) do
				if id < 599 then -- TODO: Temp fix
					if id == specID then return true end
				else
					if P:IsTalent(id, guid) then return true end -- [62]
				end
			end
		elseif type(spec) == "number" then
			return P:IsTalent(spec, guid)
		else
			return P:IsTalent(spellID, guid)
		end
	end
end

function P:UpdateUnitBar(guid)
	local info = self.groupInfo[guid]
	local class = info.class
	local raceID = info.raceID
	local index = info.index
	local unit = info.unit

	wipe(info.spellIcons)

	if not info.bar then
		info.bar = GetBar()
	end

	local f = info.bar
	f.key = index
	f.guid = guid
	f.class = class
	f.raceID = raceID
	f.unit = unit
	f.anchor.text:SetText(index)
	f:RegisterUnitEvent("UNIT_SPELLCAST_SUCCEEDED", unit, unit == "player" and "pet" or unit .. "pet") -- [41]
	f:RegisterUnitEvent("PLAYER_SPECIALIZATION_CHANGED", unit)

	local isInspectedUnit = info.spec
	local lvl = info.level
	local classSpells = spell_db[class]
	local iconIndex = 0

	for i = 1, 5 do
		local catagory = i == 1 and "PVPTRINKET" or (i == 2 and "RACIAL") or (i == 3 and "TRINKET") or (i == 4 and "COVENANT")
		local n = i == 5 and #classSpells or #spell_db[catagory]
		for j = 1, n do
			local spell = i == 5 and classSpells[j] or spell_db[catagory][j]
			local spellID, spellType, spec, race, item, item2, talent, pve = spell.spellID, spell.type, spell.spec, spell.race, spell.item, spell.item2, spell.talent, spell.pve

			local isValidSpell -- [62]
			if self.spell_enabled[spellID] and (guid ~= E.userGUID or (not self.isUserHidden or (E.db.extraBars.interruptBar.enabled and spellType == "interrupt") or (E.db.extraBars.raidCDBar.enabled and E.db.raidCDS[tostring(spellID)]))) then
				if i == 2 then
					if type(race) == "table" then
						for i = 1, #race do
							local id = race[i]
							if id == raceID then
								isValidSpell = true
							end
						end
					elseif race == raceID then
						isValidSpell = true
					end
				elseif isInspectedUnit then
					if i == 5 then
						isValidSpell = lvl >= GetSpellLevelLearned(spellID) and (not spec or IsSpellSpecTalent(guid, spec, spellID)) and (not talent or not IsSpellSpecTalent(guid, talent, spellID)) and (not pve or not self.isInPvPInstance)
					elseif i == 4 then
						isValidSpell = IsSpellSpecTalent(guid, spec, spellID)
					elseif i == 3 or i == 1 then
						isValidSpell = self:IsEquipped(item, guid, item2)
					end
				else
					if i == 5 then
						isValidSpell = lvl >= GetSpellLevelLearned(spellID) and not spec and not talent
					elseif i == 3 then
						isValidSpell = not item
					end
				end
			end

			if isValidSpell then
				local category, buffID, iconTexture = spell.class, spell.buff, spell.icon
				local cd = P:GetValueByType(spell.duration, guid, item2)
				local ch = P:GetValueByType(spell.charges, guid) or 1
				if isInspectedUnit then
					if i == 5 then
						if spell_cdmod_haste[spellID] then
							local haste = UnitSpellHaste(unit) or 0
							cd = cd * (1 - haste/100)
						end

						local cdData = spell_cdmod_talents[spellID]
						if cdData then
							if type(cdData[1]) == "table" then
								for i = 1, #cdData do
									local t = cdData[i]
									if P:IsTalent(t[1], guid) then
										cd = cd - t[2]
									end
								end
							else
								if P:IsTalent(cdData[1], guid) then
									cd = cd - cdData[2]
								end
							end
						end

						local conduitData = spell_cdmod_conduits[spellID]
						if conduitData then
							local rankValue = info.talentData[conduitData]
							if rankValue then
								if spellID == 212653 then --TODO: Shimmer
									rankValue = rankValue / 2
								end
								cd = cd - rankValue
							end
						end

						local cdMult = spell_cdmod_talents_mult[spellID]
						if cdMult then
							if type(cdMult[1]) == "table" then
								for i = 1, #cdMult do
									local t = cdMult[i]
									if P:IsTalent(t[1], guid) then
										cd = cd * t[2]
									end
								end
							else
								if P:IsTalent(cdMult[1], guid) then
									cd = cd * cdMult[2]
								end
							end
						end

						local conduitMult = spell_cdmod_conduits_mult[spellID]
						if conduitMult then
							local rankValue = info.talentData[conduitMult]
							if rankValue then
								cd = cd * rankValue
							end
						end

						local chData = spell_chmod_talents[spellID]
						if chData and P:IsTalent(chData[1], guid) then
							ch = ch + chData[2]
						end
					elseif i == 4 then
						local cdData = covenant_cdmod_conduits[spellID]
						if cdData and info.talentData[cdData[1]] then
							cd = cd - cdData[2]
						end

						local cdMult = covenant_cdmod_items_mult[spellID]
						if cdMult and self:IsEquipped(cdMult[1], guid) then
							cd = cd * cdMult[2]
						end

						local chData = covenant_chmod_conduits[spellID]
						if chData and info.talentData[chData[1]] then
							ch = ch + chData[2]
						end
					end
				end
				ch = ch > 1 and ch

				iconIndex = iconIndex + 1

				local icon = f.icons[iconIndex] or GetIcon(f, iconIndex)
				icon:Hide() -- [28]
				icon.guid = guid
				icon.spellID = spellID
				icon.class = class
				icon.type = spellType
				icon.category = category
				icon.buff = buffID
				icon.duration = cd
				icon.maxcharges = ch
				icon.Count:SetText(ch or "")
				icon.icon:SetTexture(iconTexture)
				icon.active = nil

				P:HideOverlayGlow(icon)

				local active = info.active[spellID]
				if active then
					local charges
					if icon.maxcharges then
						if not active.charges then -- [15]
							charges = icon.maxcharges - 1
							active.charges = charges
						else
							charges = active.charges
						end
						icon.Count:SetText(charges)
					else
						active.charges = nil -- [15]
						charges = -1
					end

					P:UpdateCooldown(icon, 0, charges) -- [40]
				else
					icon.cooldown:Clear()
				end

				if info.preActiveIcons[spellID] then
					info.preActiveIcons[spellID] = icon -- [40]
					if not icon.overlay then
						icon.icon:SetVertexColor(0.4, 0.4, 0.4)
					end
				else
					icon.icon:SetVertexColor(1, 1, 1)
				end

				info.spellIcons[spellID] = icon -- [40]

				if i == 2 then
					break
				end
			end
		end
	end
	f.numIcons = iconIndex

	self:RemoveUnusedIcons(f, iconIndex + 1)

	self:UpdateExBars(f) -- [26]

	if guid ~= E.userGUID or not self.isUserHidden then -- [82]
		self:SetIconLayout(f, true)
		self:ApplySettings(f)
	end
end

function P:UpdateBars()
	self:HideExBars() -- [27]

	for guid in pairs(self.groupInfo) do
		self:UpdateUnitBar(guid)
	end
end
