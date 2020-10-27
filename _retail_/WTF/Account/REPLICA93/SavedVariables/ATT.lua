
ATTDB = {
	["classSelected"] = "WARRIOR",
	["growLeft"] = false,
	["showRacial"] = false,
	["dampening"] = true,
	["showSelf"] = true,
	["flash"] = 1,
	["maledict"] = false,
	["tworows"] = true,
	["offsetX"] = 2,
	["lock"] = true,
	["biggroup"] = true,
	["Trinkets"] = {
		["maledict"] = false,
		["adapted"] = true,
		["pvptrinket"] = true,
	},
	["positions"] = {
	},
	["scale"] = 0.5,
	["scenarios"] = true,
	["showTrinket"] = true,
	["inraid"] = true,
	["iconOffsetY"] = 0,
	["attach"] = 1,
	["outside"] = true,
	["hidden"] = true,
	["dungeons"] = true,
	["offsetY"] = -6,
	["arena"] = true,
	["abilities"] = {
		["HUNTER"] = {
			["254"] = {
			},
			["255"] = {
			},
			["253"] = {
			},
			["ALL"] = {
				{
					["ability"] = "Aspect of the Turtle",
					["cooldown"] = 180,
					["id"] = 186265,
				}, -- [1]
				{
					["ability"] = "Roar of Sacrifice",
					["cooldown"] = 60,
					["id"] = 53480,
				}, -- [2]
			},
		},
		["WARRIOR"] = {
			["71"] = {
				{
					["ability"] = "Die by the Sword",
					["cooldown"] = 180,
					["id"] = 118038,
				}, -- [1]
			},
			["72"] = {
			},
			["73"] = {
			},
			["ALL"] = {
				{
					["ability"] = "Rallying Cry",
					["cooldown"] = 180,
					["id"] = 97462,
				}, -- [1]
			},
		},
		["SHAMAN"] = {
			["262"] = {
			},
			["264"] = {
			},
			["263"] = {
			},
			["ALL"] = {
				{
					["ability"] = "Astral Shift",
					["cooldown"] = 90,
					["id"] = 108271,
				}, -- [1]
			},
		},
		["MAGE"] = {
			["63"] = {
			},
			["64"] = {
			},
			["62"] = {
			},
			["ALL"] = {
				{
					["ability"] = "Temporal Shield",
					["cooldown"] = 45,
					["id"] = 198111,
				}, -- [1]
				{
					["ability"] = "Ice Block",
					["cooldown"] = 240,
					["id"] = 45438,
				}, -- [2]
			},
		},
		["PRIEST"] = {
			["257"] = {
			},
			["258"] = {
				{
					["ability"] = "Dispersion",
					["cooldown"] = 120,
					["id"] = 47585,
				}, -- [1]
			},
			["256"] = {
			},
			["ALL"] = {
				{
					["spellStatus"] = "ENABLED",
					["ability"] = "Mass Dispel",
					["order"] = 1,
					["cooldown"] = 45,
					["id"] = 32375,
				}, -- [1]
				{
					["ability"] = "Void Shift",
					["cooldown"] = 300,
					["id"] = 108968,
				}, -- [2]
				{
					["ability"] = "Greater Fade",
					["cooldown"] = 45,
					["id"] = 213602,
				}, -- [3]
			},
		},
		["PALADIN"] = {
			["65"] = {
			},
			["70"] = {
				{
					["ability"] = "Divine Shield",
					["cooldown"] = 300,
					["id"] = 642,
				}, -- [1]
				{
					["ability"] = "Blessing of Protection",
					["cooldown"] = 300,
					["id"] = 1022,
				}, -- [2]
				{
					["ability"] = "Blessing of Sanctuary",
					["cooldown"] = 45,
					["id"] = 210256,
				}, -- [3]
			},
			["66"] = {
			},
			["ALL"] = {
			},
		},
		["WARLOCK"] = {
			["265"] = {
			},
			["266"] = {
			},
			["267"] = {
			},
			["ALL"] = {
				{
					["ability"] = "Unending Resolve",
					["cooldown"] = 180,
					["id"] = 104773,
				}, -- [1]
				{
					["ability"] = "Nether Ward",
					["cooldown"] = 45,
					["id"] = 212295,
				}, -- [2]
			},
		},
		["DEMONHUNTER"] = {
			["577"] = {
				{
					["ability"] = "Darkness",
					["cooldown"] = 180,
					["id"] = 196718,
				}, -- [1]
			},
			["581"] = {
			},
			["ALL"] = {
				{
					["ability"] = "Blur",
					["cooldown"] = 60,
					["id"] = 198589,
				}, -- [1]
			},
		},
		["DEATHKNIGHT"] = {
			["252"] = {
			},
			["251"] = {
			},
			["250"] = {
			},
			["ALL"] = {
				{
					["ability"] = "Anti-Magic Shell",
					["cooldown"] = 60,
					["id"] = 48707,
				}, -- [1]
				{
					["ability"] = "Icebound Fortitude",
					["cooldown"] = 180,
					["id"] = 48792,
				}, -- [2]
				{
					["ability"] = "Anti-Magic Zone",
					["cooldown"] = 120,
					["id"] = 51052,
				}, -- [3]
			},
		},
		["DRUID"] = {
			["105"] = {
			},
			["104"] = {
			},
			["102"] = {
				{
					["ability"] = "Solar Beam",
					["cooldown"] = 60,
					["id"] = 78675,
				}, -- [1]
				{
					["ability"] = "Barkskin",
					["cooldown"] = 60,
					["id"] = 22812,
				}, -- [2]
				{
					["ability"] = "Renewal",
					["cooldown"] = 90,
					["id"] = 108238,
				}, -- [3]
			},
			["103"] = {
				{
					["maxcharges"] = 2,
					["id"] = 61336,
					["cooldown"] = 180,
					["ability"] = "Survival Instincts",
				}, -- [1]
			},
			["ALL"] = {
			},
		},
		["MONK"] = {
			["270"] = {
			},
			["269"] = {
				{
					["ability"] = "Touch of Karma",
					["cooldown"] = 90,
					["id"] = 122470,
				}, -- [1]
				{
					["ability"] = "Fortifying Brew",
					["cooldown"] = 90,
					["id"] = 201318,
				}, -- [2]
			},
			["268"] = {
			},
			["ALL"] = {
			},
		},
		["ROGUE"] = {
			["261"] = {
				{
					["ability"] = "Evasion",
					["cooldown"] = 120,
					["id"] = 5277,
				}, -- [1]
			},
			["260"] = {
			},
			["259"] = {
				{
					["ability"] = "Evasion",
					["cooldown"] = 120,
					["id"] = 5277,
				}, -- [1]
			},
			["ALL"] = {
				{
					["ability"] = "Cloak of Shadows",
					["cooldown"] = 120,
					["id"] = 31224,
				}, -- [1]
				{
					["ability"] = "Vanish",
					["cooldown"] = 120,
					["id"] = 1856,
				}, -- [2]
			},
		},
	},
	["glow"] = false,
	["iconOffsetX"] = 0,
	["horizontal"] = false,
	["showIconBorders"] = true,
	["Essence"] = {
	},
}
