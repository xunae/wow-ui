
DominosDB = {
	["namespaces"] = {
		["ProgressBars"] = {
			["char"] = {
				["Xunae - Draenor"] = {
					["bars"] = {
						["artifact"] = {
							["mode"] = "azerite",
						},
						["exp"] = {
							["mode"] = "xp",
						},
					},
				},
			},
			["global"] = {
				["version"] = 2,
			},
		},
	},
	["profileKeys"] = {
		["Xunae - Draenor"] = "Shaman",
	},
	["global"] = {
		["configVersion"] = 1,
		["addonVersion"] = "9.0.5",
	},
	["profiles"] = {
		["Shaman"] = {
			["frames"] = {
				{
					["showInPetBattleUI"] = false,
					["point"] = "BOTTOM",
					["showInOverrideUI"] = false,
					["padW"] = 2,
					["spacing"] = 4,
					["padH"] = 2,
					["y"] = 29,
					["numButtons"] = 12,
					["pages"] = {
						["SHAMAN"] = {
							["page2"] = 1,
							["page5"] = 4,
							["page4"] = 3,
							["page3"] = 2,
							["page6"] = 5,
						},
					},
				}, -- [1]
				{
					["showInPetBattleUI"] = false,
					["point"] = "RIGHT",
					["showInOverrideUI"] = false,
					["hidden"] = true,
					["padW"] = 2,
					["x"] = -196,
					["y"] = 3,
					["spacing"] = 4,
					["anchor"] = "3TC",
					["pages"] = {
						["SHAMAN"] = {
						},
					},
					["numButtons"] = 12,
					["padH"] = 2,
				}, -- [2]
				{
					["showInPetBattleUI"] = false,
					["point"] = "RIGHT",
					["scale"] = 1,
					["showInOverrideUI"] = false,
					["hidden"] = true,
					["padW"] = 2,
					["x"] = -196,
					["y"] = -27,
					["spacing"] = 4,
					["anchor"] = "petRB",
					["pages"] = {
						["SHAMAN"] = {
						},
					},
					["numButtons"] = 12,
					["padH"] = 2,
				}, -- [3]
				{
					["showInPetBattleUI"] = false,
					["point"] = "RIGHT",
					["showInOverrideUI"] = false,
					["hidden"] = true,
					["padW"] = 2,
					["x"] = -277,
					["y"] = 200,
					["spacing"] = 4,
					["anchor"] = "2TC",
					["pages"] = {
						["SHAMAN"] = {
						},
					},
					["numButtons"] = 12,
					["padH"] = 2,
				}, -- [4]
				{
					["showInPetBattleUI"] = false,
					["point"] = "RIGHT",
					["showInOverrideUI"] = false,
					["hidden"] = true,
					["padW"] = 2,
					["x"] = -196,
					["y"] = 93,
					["spacing"] = 4,
					["anchor"] = "4TR",
					["pages"] = {
						["SHAMAN"] = {
						},
					},
					["numButtons"] = 12,
					["padH"] = 2,
				}, -- [5]
				{
					["showInPetBattleUI"] = false,
					["point"] = "BOTTOM",
					["showInOverrideUI"] = false,
					["padW"] = 2,
					["y"] = 83,
					["spacing"] = 4,
					["anchor"] = "1TC",
					["pages"] = {
						["SHAMAN"] = {
						},
					},
					["numButtons"] = 12,
					["padH"] = 2,
				}, -- [6]
				{
					["showInPetBattleUI"] = false,
					["point"] = "BOTTOM",
					["showInOverrideUI"] = false,
					["hidden"] = true,
					["padW"] = 2,
					["x"] = 0,
					["spacing"] = 4,
					["padH"] = 2,
					["y"] = 240,
					["numButtons"] = 12,
					["pages"] = {
						["SHAMAN"] = {
						},
					},
				}, -- [7]
				{
					["showInPetBattleUI"] = false,
					["point"] = "BOTTOM",
					["showInOverrideUI"] = false,
					["hidden"] = true,
					["padW"] = 2,
					["x"] = 0,
					["spacing"] = 4,
					["padH"] = 2,
					["y"] = 280,
					["numButtons"] = 12,
					["pages"] = {
						["SHAMAN"] = {
						},
					},
				}, -- [8]
				{
					["showInPetBattleUI"] = false,
					["point"] = "BOTTOM",
					["showInOverrideUI"] = false,
					["hidden"] = true,
					["padW"] = 2,
					["x"] = 0,
					["spacing"] = 4,
					["padH"] = 2,
					["y"] = 320,
					["numButtons"] = 12,
					["pages"] = {
						["SHAMAN"] = {
						},
					},
				}, -- [9]
				{
					["showInPetBattleUI"] = false,
					["point"] = "BOTTOM",
					["showInOverrideUI"] = false,
					["hidden"] = true,
					["padW"] = 2,
					["x"] = 0,
					["spacing"] = 4,
					["padH"] = 2,
					["y"] = 360,
					["numButtons"] = 12,
					["pages"] = {
						["SHAMAN"] = {
						},
					},
				}, -- [10]
				["artifact"] = {
					["showInPetBattleUI"] = false,
					["columns"] = 20,
					["point"] = "TOP",
					["alwaysShowText"] = true,
					["showInOverrideUI"] = false,
					["lockMode"] = true,
					["display"] = {
						["value"] = true,
						["bonus"] = true,
						["max"] = true,
						["label"] = true,
					},
					["y"] = 0,
					["x"] = 0,
					["font"] = "Friz Quadrata TT",
					["spacing"] = 1,
					["padH"] = 2,
					["padW"] = 2,
					["numButtons"] = 20,
					["texture"] = "blizzard",
				},
				["alerts"] = {
					["showInPetBattleUI"] = true,
					["point"] = "LEFT",
					["spacing"] = 2,
					["showInOverrideUI"] = true,
					["columns"] = 1,
				},
				["exp"] = {
					["showInPetBattleUI"] = false,
					["point"] = "TOP",
					["columns"] = 20,
					["alwaysShowText"] = true,
					["lockMode"] = true,
					["x"] = 0,
					["display"] = {
						["value"] = true,
						["bonus"] = true,
						["max"] = true,
						["label"] = true,
					},
					["y"] = 0,
					["font"] = "Friz Quadrata TT",
					["padW"] = 2,
					["spacing"] = 1,
					["padH"] = 2,
					["showInOverrideUI"] = false,
					["numButtons"] = 20,
					["texture"] = "blizzard",
				},
				["extra"] = {
					["y"] = 0,
					["x"] = -244,
					["point"] = "CENTER",
					["showInOverrideUI"] = false,
					["showInPetBattleUI"] = false,
				},
				["bags"] = {
					["showInPetBattleUI"] = false,
					["showInOverrideUI"] = false,
				},
				["pet"] = {
					["y"] = -32,
					["x"] = 0,
					["point"] = "CENTER",
					["spacing"] = 6,
					["showInOverrideUI"] = false,
					["showInPetBattleUI"] = false,
				},
				["mirrorTimer2"] = {
					["showInPetBattleUI"] = false,
					["point"] = "TOP",
					["showInOverrideUI"] = false,
					["w"] = 206,
					["y"] = -122,
					["x"] = 0,
					["padW"] = 1,
					["padH"] = 1,
					["display"] = {
						["time"] = false,
						["spark"] = false,
						["border"] = true,
						["label"] = true,
					},
					["font"] = "Friz Quadrata TT",
					["h"] = 26,
					["texture"] = "Blizzard",
				},
				["cast"] = {
					["showInPetBattleUI"] = false,
					["point"] = "CENTER",
					["showInOverrideUI"] = false,
					["y"] = 30,
					["latencyPadding"] = 40,
					["x"] = 0,
					["useSpellReactionColors"] = true,
					["padH"] = 1,
					["display"] = {
						["time"] = true,
						["spark"] = true,
						["border"] = true,
						["icon"] = false,
						["latency"] = true,
					},
					["font"] = "Friz Quadrata TT",
					["padW"] = 1,
					["texture"] = "blizzard",
				},
				["encounter"] = {
					["showInPetBattleUI"] = true,
					["showInOverrideUI"] = true,
					["point"] = "CENTER",
				},
				["roll"] = {
					["showInPetBattleUI"] = true,
					["point"] = "LEFT",
					["spacing"] = 2,
					["showInOverrideUI"] = true,
					["columns"] = 1,
				},
				["mirrorTimer3"] = {
					["showInPetBattleUI"] = false,
					["point"] = "TOP",
					["showInOverrideUI"] = false,
					["w"] = 206,
					["y"] = -148,
					["x"] = 0,
					["padW"] = 1,
					["padH"] = 1,
					["display"] = {
						["time"] = false,
						["spark"] = false,
						["border"] = true,
						["label"] = true,
					},
					["font"] = "Friz Quadrata TT",
					["h"] = 26,
					["texture"] = "Blizzard",
				},
				["mirrorTimer1"] = {
					["showInPetBattleUI"] = false,
					["point"] = "TOP",
					["showInOverrideUI"] = false,
					["w"] = 206,
					["y"] = -96,
					["x"] = 0,
					["padW"] = 1,
					["padH"] = 1,
					["display"] = {
						["time"] = false,
						["spark"] = false,
						["border"] = true,
						["label"] = true,
					},
					["font"] = "Friz Quadrata TT",
					["h"] = 26,
					["texture"] = "Blizzard",
				},
				["vehicle"] = {
					["y"] = 0,
					["x"] = -244,
					["point"] = "CENTER",
					["showInOverrideUI"] = false,
					["showInPetBattleUI"] = false,
				},
				["menu"] = {
					["y"] = 0,
					["x"] = -244,
					["point"] = "BOTTOMRIGHT",
					["showInOverrideUI"] = false,
					["showInPetBattleUI"] = false,
				},
				["zone"] = {
					["y"] = 160,
					["x"] = 0,
					["point"] = "BOTTOM",
					["showInOverrideUI"] = true,
					["showInPetBattleUI"] = true,
				},
			},
		},
	},
}
