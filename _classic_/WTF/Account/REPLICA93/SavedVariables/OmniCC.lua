
OmniCCDB = {
	["global"] = {
		["addonVersion"] = "8.3.6",
		["dbVersion"] = 5,
	},
	["profileKeys"] = {
		["Xuna - Gehennas"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["themes"] = {
				["Default"] = {
					["textStyles"] = {
						["soon"] = {
							["scale"] = 1.00000000745058,
						},
						["seconds"] = {
							["scale"] = 1.00000000745058,
							["r"] = 0.949019607843137,
							["g"] = 0.980392156862745,
							["b"] = 1,
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
					["minSize"] = 0.74,
					["fontSize"] = 15,
					["yOff"] = -1,
					["spiralOpacity"] = 1.00999997742474,
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
					["spiralOpacity"] = 1,
					["enableText"] = false,
				},
			},
			["rules"] = {
				{
					["id"] = "Ignore",
					["patterns"] = {
						"LossOfControl", -- [1]
						"TotemFrame", -- [2]
					},
					["theme"] = "Ignore",
					["priority"] = 1,
				}, -- [1]
			},
		},
	},
}
OmniCC4Config = {
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
	["version"] = "8.2.3",
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
	["engine"] = "AniUpdater",
}
