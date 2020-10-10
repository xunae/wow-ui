local addonName, TS = ...; TS.Logic = { }

--do not load the addon if current player is not a shaman
local a, b, classId = UnitClass("player")
if (classId ~= 7) then return end

local _settings = nil

local PartyWepEnchants = { }
if (TS_ActiveTotems == nil)
then
	TS_ActiveTotems = 
	{
		[1] = { Guid = "", SpellId = 0, StartTime = 0, Health = nil, AlarmFlags = 0 },
		[2] = { Guid = "", SpellId = 0, StartTime = 0, Health = nil, AlarmFlags = 0 },
		[3] = { Guid = "", SpellId = 0, StartTime = 0, Health = nil, AlarmFlags = 0 },
		[4] = { Guid = "", SpellId = 0, StartTime = 0, Health = nil, AlarmFlags = 0 }
	}
end

--[[
	Determine if the totem with the specified totem index is active.
]]
local function IsTotemActive(totemIndex)
	return (TS_ActiveTotems[totemIndex].StartTime ~= 0)
end

--[[
	In Blizzard's API earth and fire indexes are switched. Switch them back with this function.
]]
local function SwitchTotemSlotAndIndex(fromValue)
	if (fromValue == 1) then return 2 end
	if (fromValue == 2) then return 1 end
	
	return fromValue
end

--[[
	Clear all data for the totem with the specified totem index.
]]
local function ClearTotem(totemIndex)
	TS_ActiveTotems[totemIndex].Guid = ""
	TS_ActiveTotems[totemIndex].SpellId = 0
	TS_ActiveTotems[totemIndex].StartTime = 0
	TS_ActiveTotems[totemIndex].Health = nil
	TS_ActiveTotems[totemIndex].AlarmFlags = 0

	TS.UIElements[totemIndex].Timer:SetTextColor(1.0, 1.0, 1.0, 1.0)
	TS.UIElements[totemIndex].Image:SetTexture(nil)	
	if (totemIndex == 1)
	then
		TS.UIElements[1].Health:SetMinMaxValues(0, 0)
		TS.UIElements[1].Health:SetValue(0)
	end
	
	TS.Logic.UpdateTotemData(totemIndex)
end

--[[
	Get the time left for the totem with the specified totem index. 0 if totem not active.
]]
local function GetTimeLeft(totemIndex)
	if (not IsTotemActive(totemIndex)) then return nil end

	local totemSlot = SwitchTotemSlotAndIndex(totemIndex)
	local a, b, startTime, duration = GetTotemInfo(totemSlot)
	
	--startTime from Blizzard's API is sometimes incorrectly returned as around -31k when it should be nil. fix here
	if (startTime < -1000) then return nil end
	
	local timeElapsed = GetTime() - startTime
	local timeLeft = duration - timeElapsed
	
	return timeLeft
end

--[[
	Refreshes stoneclaw totem's health bar.
]]
local function RefreshHealth(totemIndex)
	if (totemIndex ~= 1 or TS_ActiveTotems[1].SpellId == 0) then return end
	
	local spellId = TS_ActiveTotems[1].SpellId
	local maxHealth = TS.Totems[spellId].Health
	if (maxHealth < 6) then return end
	
	TS.UIElements[1].Health:SetMinMaxValues(0, TS.Totems[spellId].Health)
	TS.UIElements[1].Health:SetValue(TS_ActiveTotems[1].Health)
end

--[[
	Refreshes the time left until expiry of the totem with the given index.
]]
local function RefreshTimer(totemIndex)
	local timeLeftText = ""
	
	if (IsTotemActive(totemIndex)) 
	then
		local timeLeft = GetTimeLeft(totemIndex)
		if (timeLeft < 0) then timeLeft = 0 end

		local minutes = string.format("%2.f", math.floor(timeLeft / 60))
		local seconds = string.format("%02.f", math.floor(timeLeft  - minutes * 60))
		timeLeftText = minutes .. ":" .. seconds
	end
	
	TS.UIElements[totemIndex].Timer:SetText(timeLeftText)
end

--[[
	Refreshes the suggested totem for the given totem index.
]]
local function RefreshSuggestion(totemIndex)
	if (not _settings.ShowTotemSuggestions) then return end
	local icon = nil
	
	--get the suggested totem and the corresponding icon if player is in a raid and his target is alive
	if (UnitInRaid("player") ~= nil and not UnitIsDead("playertarget"))
	then
		local suggestedTotem = TS.Utils.GetSuggestedTotem("playertarget", totemIndex)
		icon = GetSpellTexture(suggestedTotem)
		
		--if the suggested totem is already active there's no point showing the suggestion
		if (TS.UIElements[totemIndex].Image:GetTexture() == icon) then icon = nil end
	end
	
	--show suggestion
	TS.UIElements[totemIndex].Image.SubImage:SetTexture(icon)
end

--[[
	Determine if the unit with the given ID is affected with the given spell ID.
]]
function IsUnitAffected(unitId, spellId)
	for buffIndex = 1, 40 
	do
		--get the spell ID for this buff index
		local a, b, c, d, e, f, g, h, i, unitSpellId = UnitAura(unitId, buffIndex, "HELPFUL")
		if (unitSpellId == spellId) then return true end
	end
	
	--see if the aura is a weapon enchant (WF/firetongue)
	local wepEnchantData = PartyWepEnchants[UnitGUID(unitId)]
	if (wepEnchantData ~= nil and 
		wepEnchantData.EnchantId == spellId and 
		wepEnchantData.ExpiresAt > GetTime()) 
	then 
		return true 
	end
	
	return false
end

--[[
	Determine if the unit is able to receive totem buffs.
]]
function CanUnitReceiveTotemBuffs(unitId)
    return (UnitIsConnected(unitId) and UnitExists(unitId) and not UnitIsDeadOrGhost(unitId))
end

--[[
	Get the number of players affected by the totem with the given index.
	returns:
	* unitsAffected - The number of units affected.
	* affectedStatus -
		* 0 = not all units affected
		* 1 = all units affected
		* 2 = not all units have correct weakaura installed
]]
local function GetAffectedCount(totemIndex, spellId)
	local unitsAffected = 0
	local affectedStatus = 1
	local anyUserWithoutWeakaura = false

	--get the number of units = 1 (player) + party members
	local unitCount = 1 + math.min(4, GetNumGroupMembers())
	for unitIndex = 1, unitCount 
	do
		--get ID of this unit and the totem aura (spell) ID we are looking for
		local unitId = TS.Utils.GetUnitId(unitIndex)
		local totemAuraId = TS.Totems[spellId].AuraId
		
		if (CanUnitReceiveTotemBuffs(unitId))
		then
			if (IsUnitAffected(unitId, totemAuraId)) 
			then 
				--if unit is affected by this totem increment affected counted
				unitsAffected = unitsAffected + 1
			else
				--check if totem is useful for this class
				if (TS.Utils.IsAuraUsefulToUnit(unitId, totemAuraId))
				then
					--see if the aura is a weapon enchant
					if (TS.Utils.IsWepEnchant(totemAuraId))
					then
						--see if a wep enchant entry exists for this unit ID
						if (PartyWepEnchants[UnitGUID(unitId)]) 
						then
							--wep enchant, useful, weakaura installed and not affected => status 0
							affectedStatus = 0
						else
							--wep enchant, useful, no weakaura installed
							anyUserWithoutWeakaura = true
						end
					else
						--not a weap enchant, useful and not affected => set status to 0
						affectedStatus = 0
					end
				end
			end
		end
	end
	
	--someone has weakaura but not all users have it => status 2
	if (unitsAffected > 0 and anyUserWithoutWeakaura) then affectedStatus = 2 end
	
	return unitsAffected, affectedStatus
end

--[[
	Refresh the number of players affected by the totem with the given index.
]]
local function RefreshAffectedCount(totemIndex)
	local spellId = TS_ActiveTotems[totemIndex].SpellId
	totemCountText = TS.UIElements[totemIndex].Count
	
	--if no totem found set empty text and return
	if (spellId == 0)
	then
		totemCountText:SetText("")
		return
	end
	
	--if the totem has no buff aura set white text and —
	local auraId = TS.Totems[spellId].AuraId
	if (auraId == 0)
	then
		totemCountText:SetText("—")
		totemCountText:SetTextColor(1.0, 1.0, 1.0, 1.0)
		return
	end
	
	--get units affected data
	local unitsAffected, affectedStatus = GetAffectedCount(totemIndex, spellId)
	totemCountText:SetText(unitsAffected)

	--if no units are affected by weapon enchant and nobody has weakaura show white text and —
	if (TS.Utils.IsWepEnchant(auraId) and unitsAffected == 0 and affectedStatus ~= 0)
	then
		totemCountText:SetText("—")
		totemCountText:SetTextColor(1.0, 1.0, 1.0, 1.0)
		return
	end
	
	if (affectedStatus == 0) then totemCountText:SetTextColor(1.0, 0.0, 0.0, 1.0) end
	if (affectedStatus == 1) then totemCountText:SetTextColor(0.0, 1.0, 0.0, 1.0) end
	if (affectedStatus == 2) then totemCountText:SetTextColor(0.27, 0.64, 0.75, 1.0) end
end

--alarm-related bit flags and functions
local TIMER_COLOR_CHANGE = 1
local EXPIRY_SOUND_PLAYED = 2
local TOTEM_DESTROYED = 4
local TOTEM_DESTROYED_AND_EVENT_RAISED = 8

local function IsAlarmFlagSet(totemIndex, flag)
	return ((TS_ActiveTotems[totemIndex].AlarmFlags / flag) % 2 >= 1)
end

local function RemoveAlarmFlag(totemIndex, flag)
	TS_ActiveTotems[totemIndex].AlarmFlags = TS_ActiveTotems[totemIndex].AlarmFlags - flag
end

local function SetAlarmFlag(totemIndex, flag)
	TS_ActiveTotems[totemIndex].AlarmFlags = TS_ActiveTotems[totemIndex].AlarmFlags + flag
end

--[[
	Show blinking timer and play sound when totem is expiring.
	Destroyed sound is played from PlayerTotemUpdate function.
]]
local function Alarm()
	for totemIndex = 1, 4 
	do
		local spellId = TS_ActiveTotems[totemIndex].SpellId
		local isIgnored = TS.Utils.IsTotemIgnoredForAlarm(spellId)
		
		if (IsTotemActive(totemIndex) and GetTimeLeft(totemIndex) < 7 and not isIgnored)
		then
			--blinking expiry timer
			if (_settings.ShowTotemExpiryAlarm)
				then
				if (IsAlarmFlagSet(totemIndex, TIMER_COLOR_CHANGE))
				then
					TS.UIElements[totemIndex].Timer:SetTextColor(1.0, 1.0, 1.0, 1.0)
					RemoveAlarmFlag(totemIndex, TIMER_COLOR_CHANGE)
				else
					TS.UIElements[totemIndex].Timer:SetTextColor(1.0, 0.0, 0.0, 1.0)
					SetAlarmFlag(totemIndex, TIMER_COLOR_CHANGE)
				end
			end
			
			--expiry sound alarm
			if (_settings.TotemExpirySound and InCombatLockdown() and not IsAlarmFlagSet(totemIndex, EXPIRY_SOUND_PLAYED))
			then
				PlaySoundFile("Interface/AddOns/TotemStatus/totem_expiring.mp3", "Master")
				SetAlarmFlag(totemIndex, EXPIRY_SOUND_PLAYED)
			end
		end
	end
end

function TS.Logic.AddonMessageReceived(prefix, message)
	if (prefix ~= "WF_STATUS" or message == nil) then return end
	
	--split message string to table
	local data = { }
	for token in string.gmatch(message, "[^:]+") do
		if (token ~= "nil") then table.insert(data, token) end
	end
	
	--return if any data is missing
	if (data[1] == nil or data[2] == nil or data[3] == nil) then return end

	--set data
	PartyWepEnchants[data[1]] =
	{
		EnchantId = tonumber(data[2]),
		ExpiresAt = GetTime() + (tonumber(data[3]) * 0.001)
	}
end

local function IsActiveTotemEvent(destGuid)
	if (destGuid == nil) then return false end
	
	return 
	(TS_ActiveTotems[1].Guid == destGuid or 
	TS_ActiveTotems[2].Guid == destGuid or 
	TS_ActiveTotems[3].Guid == destGuid or 
	TS_ActiveTotems[4].Guid == destGuid)
end

function TS.Logic.PlayerTotemUpdate(totemSlot)
	local totemIndex = SwitchTotemSlotAndIndex(totemSlot)

	--play sound if totem destroyed
	if (_settings.TotemDestroyedSound and IsAlarmFlagSet(totemIndex, TOTEM_DESTROYED)) 
	then
		PlaySoundFile("Interface/AddOns/TotemStatus/totem_destroyed.mp3", "Master")
	end

	--if the last start time for this totem type is less than 0.75 sec ago from now ignore this event. this is necessary because sometimes PLAYER_TOTEM_UPDATE gets raised twice for the same totem event for no apparent reason
	local startTime = TS_ActiveTotems[totemIndex].StartTime
	if (GetTime() < (startTime + 0.75)) then return end
	
	--if a totem currently exists for this slot then it must have been destroyed. clear data
	if (TS_ActiveTotems[totemIndex].SpellId ~= 0) then ClearTotem(totemIndex) end
	
	TS.Logic.UpdateTotemData(totemIndex)
end

function TS.Logic.SpellCastSucceeded(spellId)
	local totemIndex = TS.Utils.GetSpellTotemIndex(spellId)
	if (totemIndex == nil) then return end
	
	--clear previous totem for this slot. PLAYER_TOTEM_UPDATE is not raised when one totem replaces another
	ClearTotem(totemIndex)
	
	--update active totems and totem data
	TS_ActiveTotems[totemIndex].SpellId = spellId
	TS_ActiveTotems[totemIndex].StartTime = GetTime()
	TS_ActiveTotems[totemIndex].Health = TS.Totems[spellId].Health
	TS.Logic.UpdateTotemData(totemIndex)
end

--[[
	Update data (icon, expiry timer, affected count) for all totems.
]]
function TS.Logic.UpdateTotemData(totemIndex)
	--set icon
	local spellId = TS_ActiveTotems[totemIndex].SpellId
	local icon = GetSpellTexture(spellId)
	if (spellId == 24854) then icon = GetItemIcon(20503) end	--Enamored Water Spirit
	TS.UIElements[totemIndex].Image:SetTexture(icon)
	
	--update expiry timer, health and affected count
	RefreshTimer(totemIndex)
	RefreshHealth(totemIndex)
	RefreshAffectedCount(totemIndex)
end

--[[
	Updates all totem data at a certain interval.
]]
local _timeSinceLastUpdate = 0
local UPDATE_INTERVAL = 0.95
local _timeSinceLastAlarmColorChange = 0
function TS.Logic.OnUpdate(elapsed)
	--update time since last update
    _timeSinceLastUpdate = _timeSinceLastUpdate + elapsed
	_timeSinceLastAlarmColorChange = _timeSinceLastAlarmColorChange + elapsed
		
	--change color for expiring totems every 0.3 sec
	if (_timeSinceLastAlarmColorChange > 0.3) 
	then
		Alarm()
		_timeSinceLastAlarmColorChange = 0
	end

	--update totem data every 1 second
    if (_timeSinceLastUpdate > UPDATE_INTERVAL) 
	then
		for totemSlot = 1, 4 
		do
			local totemIndex = SwitchTotemSlotAndIndex(totemSlot)
			local haveTotem = GetTotemInfo(totemSlot)
			
			if (haveTotem) 
			then
				TS.Logic.UpdateTotemData(totemIndex)
			else
				ClearTotem(totemIndex)
			end
			
			RefreshSuggestion(totemIndex)
		end

		_timeSinceLastUpdate = _timeSinceLastUpdate - UPDATE_INTERVAL
	end
end

--[[
	This is called when settings are changed.
]]
function TS.Logic.ApplySettings(settings)
	_settings = settings
	
	--reset timer color to white and clear totem suggestions
	for totemIndex = 1, 4 
	do
		TS.UIElements[totemIndex].Timer:SetTextColor(1.0, 1.0, 1.0, 1.0)
		TS.UIElements[totemIndex].Image.SubImage:SetTexture(nil)
	end
end

function TS.Logic.CombatLogEvent()
	--get event info and corresponding totem index, if not found then this event is not relevant for us
	local a, eventName, b, c, playerName, e, f, destGuid, g, h, i, damage, j, k, spellDamage = CombatLogGetCurrentEventInfo()
	local totemIndex = TS.Utils.GetTotemIndexFromGuid(destGuid)
	if (totemIndex == nil) then return end
	
	--SPELL_SUMMON event is raised when totem is first created, set GUID
	if (eventName == "SPELL_SUMMON" and playerName == UnitName("player")) then TS_ActiveTotems[totemIndex].Guid = destGuid end
	
	--from here on disregard anything not related to an active totem and not a damage event
	if (not IsActiveTotemEvent(destGuid) or not string.find(eventName, "._DAMAGE")) then return end
	
	--return if no damage was made, not relevant to an existing totem or totem health is nil
	if (damage == 0) then damage = spellDamage end
	if ((tonumber(damage) or 0) < 1 or TS_ActiveTotems[totemIndex].Health == nil) then return end
	
	--subtract damage made from totem health
	TS_ActiveTotems[totemIndex].Health = TS_ActiveTotems[totemIndex].Health - damage
	
	--set as destroyed if health is zero or below
	if (TS_ActiveTotems[totemIndex].Health <= 0) then SetAlarmFlag(totemIndex, TOTEM_DESTROYED) end
end