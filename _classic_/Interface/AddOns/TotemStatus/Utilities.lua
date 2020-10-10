local addonName, TS = ...; TS.Utils = { }

local function Totem(totemIndex, spellId, auraId, npcId, health, usefulTo, flags)
	return 
	{
		TotemIndex = totemIndex,
		SpellId = spellId,
		AuraId = auraId,
		NpcId = npcId, 
		Health = health,
		UsefulTo = usefulTo,
		Flags = (flags or 0)
	}
end

local TotemFlags = 
{
	IgnoredForAlarm = 1,
	IsStoneclawTotem = 2,
	IsWepEnchant = 4
}

local TotemData = 
{	
	[1] = Totem(1, 2484, 0, 2630, 5, 0),			--Earthbind
	
	[2] = Totem(2, 1535, 0, 5879, 5, 0, 1),			--Fire Nova Rank 1
	[3] = Totem(2, 8498, 0, 6110, 5, 0, 1),			--Fire Nova Rank 2
	[4] = Totem(2, 8499, 0, 6111, 5, 0, 1),			--Fire Nova Rank 3
	[5] = Totem(2, 11314, 0, 7844, 5, 0, 1),		--Fire Nova Rank 4
	[6] = Totem(2, 11315, 0, 7845, 5, 0, 1),		--Fire Nova Rank 5
	
	[7] = Totem(2, 8190, 0, 5929, 5, 0),			--Magma Rank 1
	[8] = Totem(2, 10585, 0, 7464, 5, 0),			--Magma Rank 2
	[9] = Totem(2, 10586, 0, 7465, 5, 0),			--Magma Rank 3
	[10] = Totem(2, 10587, 0, 7466, 5, 0),			--Magma Rank 4

	[11] = Totem(2, 3599, 0, 2523, 5, 0),			--Searing Rank 1
	[12] = Totem(2, 6363, 0, 3902, 5, 0),			--Searing Rank 2
	[13] = Totem(2, 6364, 0, 3903, 5, 0),			--Searing Rank 3
	[14] = Totem(2, 6365, 0, 3904, 5, 0),			--Searing Rank 4
	[15] = Totem(2, 10437, 0, 7400, 5, 0),			--Searing Rank 5
	[16] = Totem(2, 10438, 0, 7402, 5, 0),			--Searing Rank 6
	
	[17] = Totem(1, 5730, 0, 3579, 50, 0, 2),		--Stoneclaw Rank 1
	[18] = Totem(1, 6390, 0, 3911, 150, 0, 2),		--Stoneclaw Rank 2
	[19] = Totem(1, 6391, 0, 3912, 220, 0, 2),		--Stoneclaw Rank 3
	[20] = Totem(1, 6392, 0, 3913, 280, 0, 2),		--Stoneclaw Rank 4
	[21] = Totem(1, 10427, 0, 7398, 390, 0, 2),		--Stoneclaw Rank 5
	[22] = Totem(1, 10428, 0, 7399, 480, 0, 2),		--Stoneclaw Rank 6
	
	[23] = Totem(3, 8184, 8185, 5927, 5, 255),		--Fire Resistance Rank 1
	[24] = Totem(3, 10537, 10534, 7424, 5, 255), 	--Fire Resistance Rank 2
	[25] = Totem(3, 10538, 10535, 7425, 5, 255), 	--Fire Resistance Rank 3
	
	[26] = Totem(2, 8227, 124, 5950, 5, 5, 4),		--Flametongue Rank 1
	[27] = Totem(2, 8249, 285, 6012, 5, 5, 4),		--Flametongue Rank 2
	[28] = Totem(2, 10526, 543, 7423, 5, 5, 4), 	--Flametongue Rank 3
	[29] = Totem(2, 16387, 1683, 10557, 5, 5, 4),  	--Flametongue Rank 4
	
	[30] = Totem(2, 8181, 8182, 5926, 5, 255),		--Frost Resistance Rank 1
	[31] = Totem(2, 10478, 10476, 7412, 5, 255),  	--Frost Resistance Rank 2
	[32] = Totem(2, 10479, 10477, 7413, 5, 255),  	--Frost Resistance Rank 3
	
	[33] = Totem(4, 8835, 8836, 7486, 5, 151),  	--Grace of Air Rank 1
	[34] = Totem(4, 10627, 10626, 7487, 5, 151),  	--Grace of Air Rank 2
	[35] = Totem(4, 25359, 25360, 15463, 5, 151),  	--Grace of Air Rank 3
	
	[36] = Totem(4, 8177, 8178, 5925, 5, 255), 		--Grounding
	
	[37] = Totem(4, 10595, 10596, 7467, 5, 255),  	--Nature Resistance Rank 1
	[38] = Totem(4, 10600, 10598, 7468, 5, 255),  	--Nature Resistance Rank 2
	[39] = Totem(4, 10601, 10599, 7469, 5, 255),  	--Nature Resistance Rank 3
	
	[40] = Totem(4, 6495, 0, 3968, 100, 0),  		--Sentry
	
	[41] = Totem(1, 8071, 8072, 5873, 5, 149),  	--Stoneskin Rank 1
	[42] = Totem(1, 8154, 8156, 5919, 5, 149),  	--Stoneskin Rank 2
	[43] = Totem(1, 8155, 8157, 5920, 5, 149),  	--Stoneskin Rank 3
	[44] = Totem(1, 10406, 10403, 7366, 5, 149),  	--Stoneskin Rank 4
	[45] = Totem(1, 10407, 10404, 7367, 5, 149),  	--Stoneskin Rank 5
	[46] = Totem(1, 10408, 10405, 7368, 5, 149),  	--Stoneskin Rank 6
	
	[47] = Totem(1, 8075, 8076, 5874, 5, 149),  	--Strenth of Earth Rank 1
	[48] = Totem(1, 8160, 8162, 5921, 5, 149),  	--Strenth of Earth Rank 2
	[49] = Totem(1, 8161, 8163, 5922, 5, 149),  	--Strenth of Earth Rank 3
	[50] = Totem(1, 10442, 10441, 7403, 5, 149),  	--Strenth of Earth Rank 4
	[51] = Totem(1, 25361, 25362, 15464, 5, 149),  	--Strenth of Earth Rank 5

	[52] = Totem(4, 8512, 1783, 6112, 5, 5, 4),		--Windfury Rank 1
	[53] = Totem(4, 10613, 563, 7483, 5, 5, 4),		--Windfury Rank 2
	[54] = Totem(4, 10614, 564, 7484, 5, 5, 4),		--Windfury Rank 3
	
	[55] = Totem(4, 15107, 15108, 9687, 5, 255),  	--Windwall Rank 1
	[56] = Totem(4, 15111, 15109, 9688, 5, 255),  	--Windwall Rank 2
	[57] = Totem(4, 15112, 15110, 9689, 5, 255),  	--Windwall Rank 3
	
	[58] = Totem(3, 8170, 0, 5924, 5, 0),  			--Disease Cleansing
	
	[59] = Totem(3, 5394, 5672, 3527, 5, 255),  	--Healing Stream Rank 1
	[60] = Totem(3, 6375, 6371, 3906, 5, 255),  	--Healing Stream Rank 2
	[61] = Totem(3, 6377, 6372, 3907, 5, 255),  	--Healing Stream Rank 3
	[62] = Totem(3, 10462, 10460, 3908, 5, 255),  	--Healing Stream Rank 4
	[63] = Totem(3, 10463, 10461, 3909, 5, 255),  	--Healing Stream Rank 5
	
	[64] = Totem(3, 5675, 5677, 3573, 5, 250),  	--Mana Spring Rank 1
	[65] = Totem(3, 10495, 10491, 7414, 5, 250),  	--Mana Spring Rank 2
	[66] = Totem(3, 10496, 10493, 7415, 5, 250),  	--Mana Spring Rank 3
	[67] = Totem(3, 10497, 10494, 7416, 5, 250),  	--Mana Spring Rank 4

	[68] = Totem(3, 16190, 16191, 10467, 5, 250),  	--Mana Tide Rank 1
	[69] = Totem(3, 17354, 17355, 11100, 5, 250),  	--Mana Tide Rank 2
	[70] = Totem(3, 17359, 17360, 11101, 5, 250),  	--Mana Tide Rank 3
	
	[71] = Totem(3, 8166, 0, 5923, 5, 0),  			--Poison Cleansing

	[72] = Totem(4, 25908, 25909, 15803, 5, 255),  	--Tranquil Air
	
	[73] = Totem(1, 8143, 0, 5913, 5, 0), 			--Tremor
	
	[74] = Totem(3, 24854, 24853, 15304, 5, 250)	--Enamored Water Spirit (Trinket)
}

--map all totem data to different tables do they can be indexed by different IDs
TS.Totems = { }
local TotemsByNpcId = { }
local TotemsByAuraId = { }
for i, totem in ipairs(TotemData)
do
	TS.Totems[totem.SpellId] = totem
	TotemsByNpcId[totem.NpcId] = totem
	TotemsByAuraId[totem.AuraId] = totem
end

local function Suggestion(earthTotem, fireTotem, waterTotem, airTotem)
	return 
	{
		[1] = earthTotem,
		[2] = fireTotem,
		[3] = waterTotem,
		[4] = airTotem
	}
end

local TotemSuggestions = 
{
	[0] = Suggestion(nil, nil, nil, nil),			--Empty
	
	[12118] = Suggestion(8143, nil, 10538, nil),	--MC - Lucifron
	[11982] = Suggestion(8143, nil, 10538, nil),	--MC - Magmadar
	[12259] = Suggestion(nil, nil, 10538, nil),		--MC - Gehennas
	[12056] = Suggestion(nil, nil, 10538, nil),		--MC - Baron Geddon
	[12098] = Suggestion(nil, nil, 10538, nil),		--MC - Sulfuron Harbinger
	[11988] = Suggestion(nil, nil, 10538, nil),		--MC - Golemagg the Incinerator
	[12018] = Suggestion(nil, nil, 10538, nil),		--MC - Majordomo Executus
	[11502] = Suggestion(nil, nil, 10538, nil),		--MC - Ragnaros

	[12435] = Suggestion(nil, nil, 10538, nil),		--BWL - Razorgore the Untamed
	[13020] = Suggestion(nil, nil, 10538, nil),		--BWL - Vaelastrasz the Corrupt
	[12017] = Suggestion(nil, nil, 10538, nil),		--BWL - Broodlord Lashlayer
	[11983] = Suggestion(nil, nil, 10538, nil),		--BWL - Firemaw
	[11583] = Suggestion(8143, nil, nil, nil),		--BWL - Nefarian (dragon form)
	
	[14517] = Suggestion(8143, nil, nil, nil),		--ZG - High Priestess Jeklik
	[14507] = Suggestion(nil, nil, 8166, nil),		--ZG - High Priest Venoxis
	[14510] = Suggestion(nil, nil, 8166, nil),		--ZG - High Priestess Mar'li
	[11382] = Suggestion(8143, nil, nil, nil),		--ZG - Bloodlord Mandokir
	[14988] = Suggestion(8143, nil, nil, nil),		--ZG - Ohgan (Bloodlord Mandokir's raptor)
	[14834] = Suggestion(8143, nil, nil, nil),		--ZG - Hakkar the Soulflayer
	[15083] = Suggestion(nil, nil, nil, 8177),		--ZG - Hazza'rah (Edge of Madness)
	[15085] = Suggestion(nil, nil, nil, 8177),		--ZG - Wushoolay (Edge of Madness)
	[15114] = Suggestion(nil, 10479, nil, nil),		--ZG - Gahz'ranka
	
	[15369] = Suggestion(nil, nil, nil, 10601),		--AQ20 - Ayamiss the Hunter
	[15341] = Suggestion(nil, nil, nil, 10601),		--AQ20 - General Rajaxx
	
	[15543] = Suggestion(8143, nil, 8166, nil),		--AQ40 - Yauj (Bug Trio)
	[15544] = Suggestion(8143, nil, 8166, nil),		--AQ40 - Vem (Bug Trio)
	[15511] = Suggestion(8143, nil, 8166, nil),		--AQ40 - Lord Kri (Bug Trio)
	[15509] = Suggestion(8143, nil, nil, 10601),	--AQ40 - Princess Huhuran
	[15299] = Suggestion(nil, nil, 8166, 10601)		--AQ40 - Viscidus
}

local function IsFlagSet(flags, flag)
	return ((flags / flag) % 2 >= 1)
end

local ClassFlags = 
{ 
	[1] = 1, 	--Warrior
	[3] = 2, 	--Hunter
	[4] = 4, 	--Rogue
	[5] = 8, 	--Priest
	[7] = 16, 	--Shaman
	[8] = 32, 	--Mage
	[9] = 64, 	--Warlock 
	[11] = 128 	--Druid 
}
--[[
	Determines if the totem aura with the given aura spell ID 
	is useful to the unit with the given unit ID.
]]
function TS.Utils.IsAuraUsefulToUnit(unitId, auraId)
	local a, b, classId = UnitClass(unitId)
	local classFlag = ClassFlags[classId]
	
	return IsFlagSet(TotemsByAuraId[auraId].UsefulTo, classFlag)
end

--[[
	Updates health data of stoneclaw totem (determined by variables such as player level and talents).
	Should be called when either of these 2 change and when the addon is loaded.
]]
function TS.Utils.UpdateVariableData()
	--get player level, rank of Earth's Grasp talent and set the bonus multiplier based on rank
	local playerLevel = UnitLevel("player")
	local a, b, c, d, earthsGraspRank = GetTalentInfo(1, 3)
	local earthsGraspBonus = 1 + (0.25 * earthsGraspRank)	
	
	--loop over all stoneclaw ranks 1-6 starting from 1
	local levelGainedAt = 8
	for _, totem in ipairs(TotemData)
	do
		if (IsFlagSet(totem.Flags, TotemFlags.IsStoneclawTotem))
		then
			local levelBonus = (playerLevel - levelGainedAt) * 3
			TS.Totems[totem.SpellId].Health = (totem.Health + levelBonus) * earthsGraspBonus

			levelGainedAt = levelGainedAt + 10
		end
	end
end

--[[
	Determines if the totem with the provided spell ID should be ignored in the expiry alarm.
]]
function TS.Utils.IsTotemIgnoredForAlarm(spellId)
    if (not TS.Totems[spellId]) then return false end
	
	return IsFlagSet(TS.Totems[spellId].Flags, TotemFlags.IgnoredForAlarm)
end

function TS.Utils.IsWepEnchant(auraId)
    if (not TotemsByAuraId[auraId]) then return false end

	return IsFlagSet(TotemsByAuraId[auraId].Flags, TotemFlags.IsWepEnchant)
end

function TS.Utils.GetSpellTotemIndex(spellId)
	if (not TS.Totems[spellId]) then return nil end
	
	return TS.Totems[spellId].TotemIndex
end

--[[
	Get the unit ID string used by the Blizzard API for the given unit index (1-5).
	1 = player, 2, 3, 4, 5 = party members
]]
function TS.Utils.GetUnitId(unitIndex)
	if (unitIndex == 1) then return "player" else return "party" .. (unitIndex - 1) end
end

function TS.Utils.GetTotemIndexFromGuid(guid)
	local npcId = tonumber(guid:match("-(%d+)-%x+$"))
	if (TotemsByNpcId[npcId]) then return TotemsByNpcId[npcId].TotemIndex else return nil end
end

--[[
	Get the suggested totems to be used when in combat with the given unit ID for the given totem index.
]]
function TS.Utils.GetSuggestedTotem(unitId, totemIndex)
	local unitGuid = UnitGUID(unitId)
	if (unitGuid == nil or unitGuid == "") then return TotemSuggestions[0] end
	
	--get the mob ID from the unit GUID and corresponding suggestions
	local mobId = tonumber(unitGuid:match("-(%d+)-%x+$"))
	local suggestions = TotemSuggestions[mobId]
	if (suggestions == nil) then suggestions = TotemSuggestions[0] end
	
	return suggestions[totemIndex]
end