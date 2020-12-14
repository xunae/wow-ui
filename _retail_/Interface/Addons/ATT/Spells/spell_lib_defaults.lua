local addon, ATTdefault = ...

 ATTdefault.Abilities = {
	["DRUID"] = {
		["ALL"] = {	-- All specs
			{5211, 60}, -- Mighty Bash
			{22812, 60}, -- Barkskin
		},
		[102] = {	-- Balance
			{78675, 60}, -- Solar Beam
			{102560, 180}, -- Solar Beam
			{194223, 180}, -- Celestial Alignment
		},
		[103] = {	-- Feral
			{106839, 15}, -- Skull Bash
			{61336, 180}, -- Survival Instincts
			{106951, 180}, -- Berserk
		},
		[104] = {	-- Guardian
		    {106839, 15}, -- Skull Bash
		},
		[105] = {	-- Restoration
			{102342, 90}, -- Ironbark
		},
	},
	["HUNTER"] = {
		["ALL"] = {	-- All specs
			{186265, 180}, 	-- Aspect of the Turtle
			{187650, 30}, -- Freezing Trap
			{53480, 60},  -- Roar of Sacrifice
			{5384, 30},  -- Feign Death
			{109304, 120},  -- Exhilaration
			{131894, 60},  -- A Murder of Crows
		},
		[253] = {	-- Beast Mastery
		    {147362, 24},  -- Counter Shot
		},
		[254] = {	-- Marksmanship
			{147362, 24},  -- Counter Shot
		},
		[255] = {	-- Survival
		},
	},
	["MAGE"] = 	{
		["ALL"] = {	-- All specs
			{198111, 45}, -- Temporal Shield
			{2139, 24}, 	-- Counterspell
			{45438, 240},   -- Ice Block
			{113724, 45}, -- Ring of Frost
		},
		[62] = {	-- Arcane
		    {12042, 120}, -- Arcane Power
		},
		[63] = {	-- Fire
			{31661, 20}, -- Dragon's Breath
			{190319, 120}, -- Combustion
		},
		[64] = {	-- Frost
            {12472, 180}, -- Icy Veins
		},
	},
	["PALADIN"] = {
		["ALL"] = {	-- All specs
			{853, 60}, 	-- Hammer of Justice
		},
		[65] = {	-- Holy
			{6940, 120}, -- Blessing of Sacrifice
			{642, 300}, -- Divine Shield
			{216331, 120}, -- Avenging Crusader
			{1022, 300}, -- Blessing of Protection
			{1044, 25}, -- Blessing of Freedom
			{20066, 15}, 	-- Repentance
			{31884, 180}, 	-- Avenging Wrath
		},
		[66] = {	-- Protection
			{96231, 15}, -- Rebuke
		},
		[70] = {	-- Retribution
			{642, 300}, -- Divine Shield
			{96231, 15},  -- Rebuke
			{1022, 300}, -- Blessing of Protection
			{1044, 25}, -- Blessing of Freedom
			{210256, 45}, -- Blessing of Sanctuary
			{205191, 60}, -- Eye for an Eye	
			{31884, 180}, 	-- Avenging Wrath
			{184662, 120}, 	-- Shield of Vengeance
			{231895, 120}, 	-- Crusade	
		},

	},
	["PRIEST"] = {
		["ALL"] = {	-- All specs
		},
		[256] = {	-- Discipline		
			{8122, 60}, 	-- Psychic Scream
			{33206, 180},	-- Pain Suppression
			{62618, 180}, -- Power Word: Barrier
			{271466, 180}, -- Power Word: Barrier
		},
		[257] = {	-- Holy
			{2050, 60}, -- Holy Word: Serenity
			{34861, 60}, -- Holy Word: Sanctify
			{289657, 45}, -- Holy Word: Concentration
			{213602, 45}, -- Greater Fade
			{197268, 60}, -- Ray of Hope
			{47788, 180}, -- Guardian Spirit
		},
		[258] = {	-- Shadow
			{47585, 120},  	-- Dispersion
			{8122, 60}, 	-- Psychic Scream
			{15487, 45},   	-- Silence
			{108968, 300},   	-- Void Shift
			{213602, 45},   	-- Greater Fade
		},
	},
	["ROGUE"] = {
		["ALL"] = {	-- All specs
			{1766, 15}, 	-- Kick
			{31224, 120},   -- Cloak of Shadows
			{1856, 120}, 	-- Vanish
		},
		[259] = {	-- Assassination
			{5277, 120}, -- Evasion
			{2094, 120},  -- Blind
			{212182, 180},  -- Smoke Bomb
			{79140, 120},  -- Vendetta
		},
		[260] = {	-- Combat
			{185311, 30},  -- Crimson Vial
			{199754, 120},  -- Riposte
		},
		[261] = {	-- Subtlety
			{5277, 120}, -- Evasion
			{212182, 180},  -- Smoke Bomb
		},
	},
	["SHAMAN"] = {
		["ALL"] = {	-- All specs
			{108271, 90}, -- Astral Shift
			{57994, 12}, 	-- Wind Shear
			{114052, 180},   -- Ascendance
		},
		[262] = {	-- Elemental
			{305483, 30},   -- Lightning Lasso
		},
		[263] = {	-- Enhancement
		{210918, 60},   -- Ethereal Form (fix)
		{193876, 60},   -- Shamanism (fix)	
		},
		[264] = {	-- Restoration
			{98008, 180},   -- Spirit Link Totem
			{198838, 60},   -- Earthen Wall Totem
		},
	},
	["WARLOCK"] = {
		["ALL"] = {	-- All specs
			{19647, 24}, 	-- Spell Lock
			{104773, 180}, -- Unending Resolve
			{108416, 60}, -- Dark Pact
			{212295, 45}, -- Nether Ward
			{6789, 45}, -- Mortal Coil
			{30283, 60}, -- Shadowfury
		},
		[265] = {	-- Affliction
		},
		[266] = {	-- Demonology
		},
		[267] = {	-- Destruction
		},
	},
	["WARRIOR"] = {
		["ALL"] = {	-- All specs
			{6552, 15}, 	-- Pummel
			{236077, 45}, -- Disarm
			{107570, 30}, -- Storm Bolt
			{23920, 25}, -- Spell Reflection
		},
		[71] = {	-- Arms
			{5246, 90}, 	-- Intimidating Shout
			{118038, 180}, -- Die by the Sword
			{107574, 90}, -- Avatar
		},
		[72] = {	-- Fury
			{5246, 90}, 	-- Intimidating Shout
			{1719, 90}, 	-- Recklessness
			{46924, 60}, 	-- Bladestorm
		},
		[73] = {	-- Protection
		},
	},
	["DEATHKNIGHT"] = {
		["ALL"] = {	-- All specs
			{47528, 15}, 	-- Mind Freeze
			{48707, 60},   	-- Anti-Magic Shell
			{48792, 180}, -- Icebound Fortitude
		},
		[250] = {	-- Blood
		},
		[251] = {	-- Frost
			{212552, 60}, -- Wraith Walk
			{196770, 20}, -- Remorseless Winter
		},
		[252] = {	-- Unholy
			{108194, 45}, -- Asphyxiate
			{47482, 30}, -- Leap (Interrupt pet)
			{51052, 120}, -- Anti-Magic Zone
			{42650, 480}, -- Army of the Dead
			{49206, 180}, -- Summon Gargoyle	
		},
	},
	["MONK"] = {
		["ALL"] = {	-- All specs
			{119381, 60}, -- Leg Sweep
			{116841, 30}, -- Tiger's Lust
		},
		[268] = {	-- Brewmaster
			 {116705, 15}, -- Spear Hand Strike
		},
		[269] = {	-- Windwalker
			{116705, 15}, -- Spear Hand Strike
			{122470, 90}, -- Touch of Karma
			{243435 , 420}, -- Fortifying Brew
			{137639 , 90}, -- Storm, Earth, and Fire
			{152173 , 90}, -- Serenity
			{115080, 120}, -- Touch of Death
		},
		[270] = {	-- Mistweaver
			{116849, 120}, 	-- Life Cocoon
			{243435 , 420}, -- Fortifying Brew
		},
	},
	["DEMONHUNTER"] = {
		["ALL"] = {
			{198589, 60}, -- Blur
			{217832, 45}, -- Imprison
			{183752, 15}, -- Disrupt
		},
		[577] = { -- Havoc
            {196718, 180}, -- Darkness
            {191427, 300}, -- Metamorphosis
            {196555, 180}, -- Netherwalk
		},
		[581] = { -- Vengeance
		     {187827, 300}, -- Metamorphosis
		},
	},
}