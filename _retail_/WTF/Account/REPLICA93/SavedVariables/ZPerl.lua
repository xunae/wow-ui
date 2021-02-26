
ZPerlConfig = nil
ZPerlConfig_Global = nil
ZPerlConfigNew = {
	["global"] = {
		["highlight"] = {
			["HOT"] = 1,
			["SHIELD"] = 1,
			["enable"] = 1,
			["AGGRO"] = 1,
		},
		["highlightSelection"] = 1,
		["optionsColour"] = {
			["r"] = 0.7,
			["g"] = 0.2,
			["b"] = 0.2,
		},
		["rangeFinder"] = {
			["StatsFrame"] = {
				["spell"] = "Healing Surge",
				["FadeAmount"] = 0.5,
				["item"] = "",
				["HealthLowPoint"] = 0.85,
			},
			["Main"] = {
				["enabled"] = true,
				["spell"] = "Healing Surge",
				["item"] = "",
				["FadeAmount"] = 0.5,
				["HealthLowPoint"] = 0.85,
			},
			["NameFrame"] = {
				["spell"] = "Healing Surge",
				["FadeAmount"] = 0.5,
				["item"] = "",
				["HealthLowPoint"] = 0.85,
			},
		},
		["showAFK"] = 1,
		["combatFlash"] = 1,
		["buffHelper"] = {
			["enable"] = 1,
			["sort"] = "group",
			["visible"] = 1,
		},
		["raidpet"] = {
			["enable"] = 1,
		},
		["target"] = {
			["comboindicator"] = {
				["enable"] = 1,
			},
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 22,
			},
			["portrait"] = 1,
			["combo"] = {
				["enable"] = 1,
				["blizzard"] = 1,
				["pos"] = "top",
			},
			["enable"] = 1,
			["mana"] = 1,
			["elite"] = true,
			["castBar"] = {
				["enable"] = 1,
			},
			["absorbs"] = 1,
			["hitIndicator"] = 1,
			["level"] = 1,
			["sound"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["threat"] = 1,
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["mobType"] = 1,
			["highlightDebuffs"] = {
				["who"] = 2,
			},
			["raidIconAlternate"] = 1,
			["scale"] = 0.99666748046875,
			["threatMode"] = "portraitFrame",
			["healprediction"] = 1,
			["values"] = 1,
			["buffs"] = {
				["bigStealable"] = 1,
				["size"] = 22,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["raid"] = {
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 20,
			},
			["enable"] = 1,
			["class"] = {
				{
					["enable"] = 1,
					["name"] = "WARRIOR",
				}, -- [1]
				{
					["enable"] = 1,
					["name"] = "ROGUE",
				}, -- [2]
				{
					["enable"] = 1,
					["name"] = "HUNTER",
				}, -- [3]
				{
					["enable"] = 1,
					["name"] = "MAGE",
				}, -- [4]
				{
					["enable"] = 1,
					["name"] = "WARLOCK",
				}, -- [5]
				{
					["enable"] = 1,
					["name"] = "PRIEST",
				}, -- [6]
				{
					["enable"] = 1,
					["name"] = "DRUID",
				}, -- [7]
				{
					["enable"] = 1,
					["name"] = "SHAMAN",
				}, -- [8]
				{
					["enable"] = 1,
					["name"] = "PALADIN",
				}, -- [9]
				{
					["enable"] = 1,
					["name"] = "DEATHKNIGHT",
				}, -- [10]
				{
					["enable"] = 1,
					["name"] = "MONK",
				}, -- [11]
				{
					["enable"] = 1,
					["name"] = "DEMONHUNTER",
				}, -- [12]
			},
			["healprediction"] = 1,
			["precisionPercent"] = 1,
			["anchor"] = "TOP",
			["size"] = {
				["width"] = 0,
			},
			["group"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
				1, -- [6]
				1, -- [7]
				1, -- [8]
				1, -- [9]
				1, -- [10]
				1, -- [11]
				1, -- [12]
			},
			["percent"] = 1,
			["gap"] = 0,
			["manaPercent"] = 1,
			["titles"] = 1,
			["mana"] = 1,
			["absorbs"] = 1,
			["scale"] = 0.8,
			["spacing"] = 0,
			["buffs"] = {
				["castable"] = 0,
				["inside"] = 1,
				["right"] = 1,
				["size"] = 20,
				["maxrows"] = 2,
			},
			["precisionManaPercent"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
		},
		["targettarget"] = {
			["debuffs"] = {
				["size"] = 22,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healprediction"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7025585174560547,
			["absorbs"] = 1,
			["buffs"] = {
				["size"] = 22,
				["rows"] = 3,
				["wrap"] = 1,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["colour"] = {
			["classic"] = 1,
			["guildList"] = 1,
			["border"] = {
				["a"] = 1,
				["r"] = 0.5,
				["g"] = 0.5,
				["b"] = 0.5,
			},
			["frame"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["reaction"] = {
				["tapped"] = {
					["r"] = 0.5,
					["g"] = 0.5,
					["b"] = 0.5,
				},
				["enemy"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["neutral"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["unfriendly"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
				["friend"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0,
				},
				["none"] = {
					["r"] = 0.5,
					["g"] = 0.5,
					["b"] = 1,
				},
			},
			["classbarBright"] = 1,
			["class"] = 1,
			["gradient"] = {
				["enable"] = 1,
				["s"] = {
					["a"] = 1,
					["r"] = 0.25,
					["g"] = 0.25,
					["b"] = 0.25,
				},
				["e"] = {
					["a"] = 0,
					["r"] = 0.1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
			},
			["bar"] = {
				["rage"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["absorb"] = {
					["a"] = 0.7,
					["r"] = 0.14,
					["g"] = 0.33,
					["b"] = 0.7,
				},
				["fury"] = {
					["r"] = 0.788,
					["g"] = 0.259,
					["b"] = 0.992,
				},
				["mana"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 1,
				},
				["healthEmpty"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["lunar"] = {
					["r"] = 0.3,
					["g"] = 0.52,
					["b"] = 0.9,
				},
				["healprediction"] = {
					["a"] = 1,
					["r"] = 0,
					["g"] = 1,
					["b"] = 1,
				},
				["healthFull"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0,
				},
				["energy"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["focus"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0.25,
				},
				["insanity"] = {
					["r"] = 0.4,
					["g"] = 0,
					["b"] = 0.8,
				},
				["runic_power"] = {
					["r"] = 0,
					["g"] = 0.82,
					["b"] = 1,
				},
				["maelstrom"] = {
					["r"] = 0,
					["g"] = 0.5,
					["b"] = 1,
				},
				["pain"] = {
					["r"] = 1,
					["g"] = 0.611,
					["b"] = 0,
				},
			},
		},
		["targettargettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 22,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["scale"] = 0.7025585174560547,
			["mana"] = 1,
			["healprediction"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["absorbs"] = 1,
			["buffs"] = {
				["size"] = 22,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["xperlOldroleicons"] = 1,
		["minimap"] = {
			["enable"] = 1,
			["radius"] = 78,
			["pos"] = 186,
		},
		["focus"] = {
			["comboindicator"] = {
				["enable"] = 1,
			},
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 22,
			},
			["portrait"] = 1,
			["combo"] = {
				["enable"] = 1,
				["blizzard"] = 1,
				["pos"] = "top",
			},
			["enable"] = 1,
			["mana"] = 1,
			["castBar"] = {
				["enable"] = 1,
			},
			["hitIndicator"] = 1,
			["level"] = 1,
			["sound"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["absorbs"] = 1,
			["threat"] = 1,
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["mobType"] = 1,
			["highlightDebuffs"] = {
				["who"] = 2,
			},
			["raidIconAlternate"] = 1,
			["scale"] = 0.99666748046875,
			["threatMode"] = "portraitFrame",
			["elite"] = 1,
			["healprediction"] = 1,
			["values"] = 1,
			["buffs"] = {
				["size"] = 22,
				["enable"] = 1,
				["wrap"] = 1,
				["rows"] = 3,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["party"] = {
			["debuffs"] = {
				["halfSize"] = 1,
				["below"] = 1,
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 32,
			},
			["portrait"] = 1,
			["enable"] = 1,
			["castBar"] = {
				["enable"] = 1,
				["castTime"] = 1,
			},
			["spacing"] = 23,
			["anchor"] = "TOP",
			["level"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["healerMode"] = {
				["type"] = 1,
			},
			["threat"] = 1,
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["scale"] = 0.8,
			["healprediction"] = 1,
			["absorbs"] = 1,
			["values"] = 1,
			["target"] = {
				["enable"] = 1,
				["large"] = 1,
				["size"] = 120,
			},
			["threatMode"] = "portraitFrame",
			["name"] = 1,
			["hitIndicator"] = 1,
			["inRaid"] = 1,
			["buffs"] = {
				["size"] = 22,
				["castable"] = 0,
				["enable"] = 1,
				["wrap"] = 1,
				["rows"] = 2,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["focustarget"] = {
			["debuffs"] = {
				["curable"] = 0,
				["size"] = 22,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healprediction"] = 1,
			["healerMode"] = {
				["enable"] = false,
				["type"] = 1,
			},
			["scale"] = 0.7,
			["absorbs"] = 1,
			["buffs"] = {
				["size"] = 22,
				["castable"] = 0,
				["rows"] = 3,
				["wrap"] = 1,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["pettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["mana"] = 1,
			["healprediction"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["absorbs"] = 1,
			["buffs"] = {
				["size"] = 22,
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["partypet"] = {
			["enable"] = 1,
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 12,
			},
			["name"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["mana"] = 1,
			["buffs"] = {
				["enable"] = 1,
				["castable"] = 0,
				["size"] = 12,
				["maxrows"] = 2,
			},
			["size"] = {
				["width"] = 0,
			},
		},
		["transparency"] = {
			["frame"] = 1,
			["text"] = 1,
		},
		["player"] = {
			["partyNumber"] = 1,
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 25,
			},
			["portrait"] = 1,
			["scale"] = 0.99666748046875,
			["castBar"] = {
			},
			["fullScreen"] = {
				["enable"] = 1,
				["highHP"] = 40,
				["lowHP"] = 30,
			},
			["hitIndicator"] = 1,
			["dockRunes"] = 1,
			["level"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["threat"] = 1,
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["lockRunes"] = 1,
			["totems"] = {
				["enable"] = true,
				["offsetY"] = 0,
				["offsetX"] = 0,
			},
			["showRunes"] = 1,
			["healprediction"] = 1,
			["threatMode"] = "portraitFrame",
			["healerMode"] = {
				["enable"] = false,
				["type"] = 1,
			},
			["values"] = 1,
			["absorbs"] = 1,
			["buffs"] = {
				["size"] = 25,
				["count"] = 40,
				["maxrows"] = 2,
				["rows"] = 2,
				["wrap"] = 1,
				["cooldown"] = 1,
				["flash"] = 1,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["highlightDebuffs"] = {
			["enable"] = 1,
			["frame"] = 1,
			["border"] = 1,
			["class"] = 1,
		},
		["tooltip"] = {
			["enable"] = 1,
			["enableBuffs"] = 1,
			["modifier"] = "all",
		},
		["pet"] = {
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 18,
			},
			["portrait"] = 1,
			["scale"] = 0.7,
			["castBar"] = {
				["enable"] = 1,
			},
			["hitIndicator"] = 1,
			["level"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["threat"] = 1,
			["portrait3D"] = 1,
			["happiness"] = {
				["enabled"] = 1,
				["flashWhenSad"] = 1,
				["onlyWhenSad"] = 1,
			},
			["threatMode"] = "portraitFrame",
			["name"] = 1,
			["healprediction"] = 1,
			["absorbs"] = 1,
			["buffs"] = {
				["size"] = 18,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["maxrows"] = 2,
			},
			["values"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
		},
		["buffs"] = {
			["countdown"] = 1,
			["cooldown"] = 1,
			["countdownStart"] = 20,
		},
		["maximumScale"] = 1.5,
		["bar"] = {
			["texture"] = {
				"Perl v2", -- [1]
				"Interface\\Addons\\ZPerl\\Images\\XPerl_StatusBar", -- [2]
			},
			["background"] = 1,
			["fadeTime"] = 0.5,
			["fat"] = 1,
		},
	},
	["savedPositions"] = {
		["Stormscale"] = {
			["Xuna"] = {
				["XPerl_RosterTextAnchor"] = {
					["top"] = 335,
					["height"] = 249.9999694824219,
					["left"] = 678.3333740234375,
					["width"] = 350.0000305175781,
				},
				["XPerl_Assists_FrameAnchor"] = {
					["top"] = 542,
					["height"] = 124.0000076293945,
					["left"] = 688.3334350585938,
					["width"] = 330.0000305175781,
				},
				["XPerl_RaidMonitor_Anchor"] = {
					["top"] = 520,
					["height"] = 80.00001525878906,
					["left"] = 753.3334350585938,
					["width"] = 200,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 520,
					["height"] = 80.00001525878906,
					["left"] = 750.3333740234375,
					["width"] = 206.0000457763672,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 588.0000087618828,
					["height"] = false,
					["left"] = 425.6000063419342,
					["width"] = false,
				},
				["XPerl_AdminFrameAnchor"] = {
					["top"] = 555.0000610351562,
					["height"] = 150.0000305175781,
					["left"] = 783.3334350585938,
					["width"] = 140.0000152587891,
				},
				["XPerl_Player"] = {
					["top"] = 861.8669468857042,
					["height"] = false,
					["left"] = 148.6998230534082,
					["width"] = false,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 588.0000087618828,
					["height"] = false,
					["left"] = 60.80000700950632,
					["width"] = false,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 559.3337856406179,
					["height"] = false,
					["left"] = 338.2938357916246,
					["width"] = false,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 588.0000087618828,
					["height"] = false,
					["left"] = 182.4000027179718,
					["width"] = false,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 588.0000087618828,
					["height"] = false,
					["left"] = 0,
					["width"] = false,
				},
				["XPerl_OptionsAnchor"] = {
					["top"] = 749.3334350585938,
					["height"] = 540.0001220703125,
					["left"] = 802.667236328125,
					["width"] = 740.0000610351562,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 588.0000087618828,
					["height"] = false,
					["left"] = 243.2000280380253,
					["width"] = false,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 588.0000087618828,
					["height"] = false,
					["left"] = 486.4000560760505,
					["width"] = false,
				},
				["XPerl_PetTarget"] = {
					["top"] = 801.0333481748894,
					["height"] = false,
					["left"] = 248.766661412943,
					["width"] = false,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 801.0333481748894,
					["height"] = false,
					["left"] = 150.7666524007209,
					["width"] = false,
				},
				["XPerl_Raid_Title10"] = {
					["top"] = 588.0000087618828,
					["height"] = false,
					["left"] = 547.2000569820411,
					["width"] = false,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 588.0000087618828,
					["height"] = false,
					["left"] = 304.000004529953,
					["width"] = false,
				},
				["XPerl_CheckAnchor"] = {
					["top"] = 600.0000610351562,
					["height"] = 240,
					["left"] = 603.3334350585938,
					["width"] = 500.0000915527344,
				},
				["XPerl_Raid_Title11"] = {
					["top"] = 588.0000087618828,
					["height"] = false,
					["left"] = 608.000009059906,
					["width"] = false,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 840.0000125169754,
					["height"] = false,
					["left"] = 0,
					["width"] = false,
				},
				["XPerl_Raid_Title12"] = {
					["top"] = 588.0000087618828,
					["height"] = false,
					["left"] = 668.8000099658966,
					["width"] = false,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 588.0000087618828,
					["height"] = false,
					["left"] = 364.8000054359436,
					["width"] = false,
				},
				["XPerl_Focus"] = {
					["top"] = 517.3336997643346,
					["height"] = false,
					["left"] = 231.4668270729144,
					["width"] = false,
				},
				["XPerl_Target"] = {
					["top"] = 861.8669468857042,
					["height"] = false,
					["left"] = 368.9633415060525,
					["width"] = false,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 903.2002936892677,
					["height"] = false,
					["left"] = 475.1925884366501,
					["width"] = false,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 588.0000087618828,
					["height"] = false,
					["left"] = 121.6000140190126,
					["width"] = false,
				},
			},
		},
	},
	["ConfigVersion"] = "6.1.5 release",
}
ZPerlConfigSavePerCharacter = nil
ZPerlImportDone = nil
