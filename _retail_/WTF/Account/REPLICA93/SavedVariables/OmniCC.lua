
OmniCCDB = {
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "9.1.0",
	},
	["profileKeys"] = {
		["Xunay - Draenor"] = "Default",
		["Xunac - Draenor"] = "Default",
		["Xûñá - Ravencrest"] = "Default",
		["Spazshaman - Stormscale"] = "Default",
		["Xunae - Stormreaver"] = "Default",
		["Mktja - Stormreaver"] = "Default",
		["Xunae - Stormscale"] = "Default",
		["Uñ - Draenor"] = "Default",
		["Xunaw - Draenor"] = "Default",
		["Xñ - Stormscale"] = "Default",
		["Xñ - Draenor"] = "Default",
		["Xunaj - Draenor"] = "Default",
		["Lightescp - Draenor"] = "Default",
		["Xunamonk - Arena Champions - EU"] = "Default",
		["Xunawl - Draenor"] = "Default",
		["Xunz - Stormscale"] = "Default",
		["Xunan - Arena Champions - EU"] = "Default",
		["Wluna - Draenor"] = "Default",
		["Xunapala - Arena Champions - EU"] = "Default",
		["Zunae - Draenor"] = "Default",
		["Xunae - Draenor"] = "Default",
		["Xã - Draenor"] = "Default",
		["Mktja - Draenor"] = "Default",
		["Xuna - Stormscale"] = "Default",
		["Drmscp - Draenor"] = "Default",
		["Xñä - Draenor"] = "Default",
		["Xuna - Arena Champions - EU"] = "Default",
		["Xñæ - Draenor"] = "Default",
		["Dkuna - Draenor"] = "Default",
		["Wñä - Stormscale"] = "Default",
		["Xunap - Draenor"] = "Default",
		["Nakolx - Stormscale"] = "Default",
		["Xûñä - Stormscale"] = "Default",
		["Æñ - Draenor"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["rules"] = {
				{
					["patterns"] = {
						"LossOfControl", -- [1]
						"TotemFrame", -- [2]
						"TargetFrame", -- [3]
						"FocusFrame", -- [4]
					},
					["id"] = "Ignore",
					["priority"] = 1,
					["theme"] = "Ignore",
				}, -- [1]
				{
					["patterns"] = {
						"PlaterMainAuraIcon", -- [1]
						"PlaterSecondaryAuraIcon", -- [2]
						"ExtraIconRowIcon", -- [3]
					},
					["id"] = "Plater Nameplates Rule",
					["priority"] = 2,
					["theme"] = "Plater Nameplates Theme",
				}, -- [2]
			},
			["themes"] = {
				["Plater Nameplates Theme"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["soon"] = {
						},
						["minutes"] = {
						},
					},
				},
				["Default"] = {
					["textStyles"] = {
						["soon"] = {
							["scale"] = 1.00000000745058,
						},
						["seconds"] = {
							["b"] = 1,
							["scale"] = 1.00000000745058,
							["g"] = 0.980392156862745,
							["r"] = 0.949019607843137,
						},
						["minutes"] = {
							["scale"] = 1.00000000745058,
						},
						["hours"] = {
							["scale"] = 1.00000000745058,
						},
						["charging"] = {
							["scale"] = 1.00000000745058,
						},
						["controlled"] = {
							["scale"] = 1.00000000745058,
						},
					},
					["fontFace"] = "Interface\\Addons\\Details\\fonts\\Oswald-Regular.otf",
					["minSize"] = 0.55,
					["mmSSDuration"] = 120,
					["fontShadow"] = {
						["y"] = -2,
						["x"] = 2,
						["r"] = 0.1254901960784314,
						["b"] = 0.1254901960784314,
						["g"] = 0.1254901960784314,
						["a"] = 0.5,
					},
					["effect"] = "none",
					["spiralOpacity"] = 1.00999997742474,
					["yOff"] = -2,
					["fontSize"] = 14,
				},
				["Ignore"] = {
					["textStyles"] = {
						["minutes"] = {
						},
						["seconds"] = {
						},
						["soon"] = {
						},
					},
					["enableText"] = false,
					["spiralOpacity"] = 1,
				},
			},
		},
	},
}
OmniCC4Config = {
	["version"] = "8.2.3",
	["groups"] = {
		{
			["id"] = "Ignore",
			["rules"] = {
				"LossOfControl", -- [1]
				"TotemFrame", -- [2]
			},
			["enabled"] = true,
		}, -- [1]
	},
	["engine"] = "AniUpdater",
	["groupSettings"] = {
		["base"] = {
			["enabled"] = true,
			["fontFace"] = "Interface\\Addons\\Details\\fonts\\Oswald-Regular.otf",
			["styles"] = {
				["soon"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1.00000000745058,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["seconds"] = {
					["a"] = 1,
					["r"] = 0.949019607843137,
					["scale"] = 1.00000000745058,
					["g"] = 0.980392156862745,
					["b"] = 1,
				},
				["minutes"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1.00000000745058,
					["g"] = 1,
					["b"] = 1,
				},
				["hours"] = {
					["a"] = 1,
					["r"] = 0.7,
					["scale"] = 1.00000000745058,
					["g"] = 0.7,
					["b"] = 0.7,
				},
				["charging"] = {
					["a"] = 0.8,
					["r"] = 0.8,
					["scale"] = 1.00000000745058,
					["g"] = 1,
					["b"] = 0.3,
				},
				["controlled"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1.00000000745058,
					["g"] = 0.1,
					["b"] = 0.1,
				},
			},
			["effect"] = "pulse",
			["minDuration"] = 2,
			["mmSSDuration"] = 0,
			["anchor"] = "CENTER",
			["spiralOpacity"] = 1.00999997742474,
			["yOff"] = -1,
			["xOff"] = 0,
			["tenthsDuration"] = 0,
			["fontOutline"] = "OUTLINE",
			["minSize"] = 0.74,
			["minEffectDuration"] = 30,
			["scaleText"] = true,
			["fontSize"] = 15,
		},
		["Ignore"] = {
			["enabled"] = false,
			["fontFace"] = "Fonts\\FRIZQT__.TTF",
			["fontSize"] = 18,
			["effect"] = "pulse",
			["scaleText"] = true,
			["minEffectDuration"] = 30,
			["minSize"] = 0.5,
			["spiralOpacity"] = 1,
			["minDuration"] = 2,
			["xOff"] = 0,
			["tenthsDuration"] = 0,
			["fontOutline"] = "OUTLINE",
			["anchor"] = "CENTER",
			["mmSSDuration"] = 0,
			["yOff"] = 0,
			["styles"] = {
				["seconds"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1,
					["g"] = 1,
					["b"] = 0.1,
				},
				["minutes"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["soon"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1.5,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["hours"] = {
					["a"] = 1,
					["r"] = 0.7,
					["scale"] = 0.75,
					["g"] = 0.7,
					["b"] = 0.7,
				},
				["charging"] = {
					["a"] = 0.8,
					["r"] = 0.8,
					["scale"] = 0.75,
					["g"] = 1,
					["b"] = 0.3,
				},
				["controlled"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1.5,
					["g"] = 0.1,
					["b"] = 0.1,
				},
			},
		},
	},
}
