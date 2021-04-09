
OmniCCDB = {
	["profileKeys"] = {
		["Xunay - Draenor"] = "Default",
		["Xunapala - Arena Champions - EU"] = "Default",
		["Zunae - Draenor"] = "Default",
		["Xunae - Draenor"] = "Default",
		["Xunac - Draenor"] = "Default",
		["Æñ - Draenor"] = "Default",
		["Mktja - Draenor"] = "Default",
		["Xuna - Stormscale"] = "Default",
		["Xûñá - Ravencrest"] = "Default",
		["Xunap - Draenor"] = "Default",
		["Mktja - Stormreaver"] = "Default",
		["Drmscp - Draenor"] = "Default",
		["Xñä - Draenor"] = "Default",
		["Uñ - Draenor"] = "Default",
		["Xunaw - Draenor"] = "Default",
		["Nakolx - Stormscale"] = "Default",
		["Xunaj - Draenor"] = "Default",
		["Wñä - Stormscale"] = "Default",
		["Xñ - Draenor"] = "Default",
		["Dkuna - Draenor"] = "Default",
		["Lightescp - Draenor"] = "Default",
		["Xã - Draenor"] = "Default",
		["Xunae - Stormreaver"] = "Default",
		["Xñæ - Draenor"] = "Default",
		["Xunamonk - Arena Champions - EU"] = "Default",
		["Xunawl - Draenor"] = "Default",
		["Xunz - Stormscale"] = "Default",
		["Xunan - Arena Champions - EU"] = "Default",
		["Xuna - Arena Champions - EU"] = "Default",
		["Xûñä - Stormscale"] = "Default",
		["Wluna - Draenor"] = "Default",
	},
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "9.0.8",
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
						["soon"] = {
						},
						["seconds"] = {
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
					["spiralOpacity"] = 1.00999997742474,
					["yOff"] = -2,
					["fontSize"] = 14,
				},
				["Ignore"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["minutes"] = {
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
	["groupSettings"] = {
		["base"] = {
			["enabled"] = true,
			["fontFace"] = "Interface\\Addons\\Details\\fonts\\Oswald-Regular.otf",
			["fontSize"] = 15,
			["effect"] = "pulse",
			["scaleText"] = true,
			["minEffectDuration"] = 30,
			["minSize"] = 0.74,
			["spiralOpacity"] = 1.00999997742474,
			["minDuration"] = 2,
			["xOff"] = 0,
			["tenthsDuration"] = 0,
			["fontOutline"] = "OUTLINE",
			["anchor"] = "CENTER",
			["mmSSDuration"] = 0,
			["yOff"] = -1,
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
		},
		["Ignore"] = {
			["enabled"] = false,
			["fontFace"] = "Fonts\\FRIZQT__.TTF",
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
			["effect"] = "pulse",
			["yOff"] = 0,
			["mmSSDuration"] = 0,
			["anchor"] = "CENTER",
			["spiralOpacity"] = 1,
			["scaleText"] = true,
			["xOff"] = 0,
			["tenthsDuration"] = 0,
			["fontOutline"] = "OUTLINE",
			["minSize"] = 0.5,
			["minEffectDuration"] = 30,
			["minDuration"] = 2,
			["fontSize"] = 18,
		},
	},
	["engine"] = "AniUpdater",
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
}
