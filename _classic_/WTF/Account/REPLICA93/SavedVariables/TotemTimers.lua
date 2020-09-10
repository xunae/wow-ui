
TotemTimers_GlobalSettings = {
	["Sink"] = {
	},
	["Version"] = 11,
	["Profiles"] = {
		["Xuna"] = {
			{
				["party"] = "default",
				["scenario"] = "default",
				["pvp"] = "default",
				["raid"] = "default",
				["arena"] = "default",
				["none"] = "default",
			}, -- [1]
			{
				["party"] = "default",
				["scenario"] = "default",
				["pvp"] = "default",
				["raid"] = "default",
				["arena"] = "default",
				["none"] = "default",
			}, -- [2]
			{
				["party"] = "default",
				["scenario"] = "default",
				["pvp"] = "default",
				["raid"] = "default",
				["arena"] = "default",
				["none"] = "default",
			}, -- [3]
		},
	},
}
TotemTimers_Profiles = {
	["default"] = {
		["ShowTimerBars"] = true,
		["CrowdControlHex"] = true,
		["EnhanceCDsTimeHeight"] = 12,
		["TimerSpacing"] = 5,
		["EnhanceCDs_Spells"] = {
			{
				true, -- [1]
				true, -- [2]
				true, -- [3]
				true, -- [4]
				true, -- [5]
				true, -- [6]
				true, -- [7]
				true, -- [8]
				true, -- [9]
				true, -- [10]
				true, -- [11]
				[20] = true,
			}, -- [1]
			{
				true, -- [1]
				true, -- [2]
				true, -- [3]
				true, -- [4]
				true, -- [5]
				true, -- [6]
				true, -- [7]
				true, -- [8]
				true, -- [9]
				true, -- [10]
				true, -- [11]
				true, -- [12]
				[21] = true,
				[22] = true,
				[20] = true,
			}, -- [2]
			{
				true, -- [1]
				true, -- [2]
				true, -- [3]
				true, -- [4]
				true, -- [5]
				true, -- [6]
				true, -- [7]
				[20] = true,
			}, -- [3]
		},
		["LastWeaponEnchant"] = "Windfury Weapon",
		["HideInVehicle"] = true,
		["EnhanceCDsOOCAlpha"] = 0.4,
		["TotemTimerBarWidth"] = 36,
		["TooltipsAtButtons"] = true,
		["TimeFont"] = "Friz Quadrata TT",
		["FulminationAura"] = true,
		["FlashRed"] = true,
		["Show"] = true,
		["EnhanceCDs"] = true,
		["EnhanceCDs_Clickthrough"] = false,
		["Warnings"] = {
			["TotemWarning"] = {
				["a"] = 1,
				["r"] = 1,
				["b"] = 0,
				["g"] = 0,
				["text"] = "Totem Expiring",
				["sound"] = "",
				["enabled"] = false,
			},
			["Shield"] = {
				["a"] = 1,
				["r"] = 1,
				["b"] = 0,
				["g"] = 0,
				["text"] = "Shield removed",
				["sound"] = "",
				["enabled"] = false,
			},
			["TotemExpiration"] = {
				["a"] = 1,
				["r"] = 1,
				["b"] = 0,
				["g"] = 0,
				["text"] = "Totem Expired",
				["sound"] = "",
				["enabled"] = false,
			},
			["TotemDestroyed"] = {
				["a"] = 1,
				["r"] = 1,
				["b"] = 0,
				["g"] = 0,
				["text"] = "Totem Destroyed",
				["sound"] = "",
				["enabled"] = false,
			},
			["EarthShield"] = {
				["a"] = 1,
				["r"] = 1,
				["b"] = 0,
				["g"] = 0,
				["text"] = "Shield removed",
				["sound"] = "",
				["enabled"] = true,
			},
			["Maelstrom"] = {
				["a"] = 1,
				["r"] = 1,
				["b"] = 0,
				["g"] = 0,
				["text"] = "Maelstrom Notifier",
				["sound"] = "",
				["enabled"] = true,
			},
			["Weapon"] = {
				["a"] = 1,
				["r"] = 1,
				["b"] = 0,
				["g"] = 0,
				["text"] = "Shield removed",
				["sound"] = "",
				["enabled"] = true,
			},
		},
		["ColorTimerBars"] = false,
		["TimerTimePos"] = "BOTTOM",
		["TimerTimeHeight"] = 12,
		["ShieldLeftButton"] = "Lightning Shield",
		["LastOffEnchants"] = {
		},
		["HiddenTotems"] = {
		},
		["Lock"] = false,
		["LavaSurgeAura"] = true,
		["CrowdControlArrange"] = "horizontal",
		["Tracker_Clickthrough"] = false,
		["StopPulse"] = true,
		["TrackerArrange"] = "horizontal",
		["EarthShieldTracker"] = true,
		["AnkhTracker"] = true,
		["CheckRaidRange"] = true,
		["ProcFlash"] = true,
		["EarthShieldButton4"] = "player",
		["FlameShockDurationOnTop"] = false,
		["CrowdControlSize"] = 30,
		["CrowdControlClickthrough"] = false,
		["LavaSurgeGlow"] = true,
		["EnhanceCDsMaelstromHeight"] = 14,
		["CheckPlayerRange"] = true,
		["LongCooldownsArrange"] = "horizontal",
		["ShowKeybinds"] = true,
		["TimerBarTexture"] = "Blizzard Raid Bar",
		["EnhanceCDsSize"] = 30,
		["ShowCooldowns"] = true,
		["TimerPositions"] = {
			{
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				-50, -- [4]
				-40, -- [5]
			}, -- [1]
			{
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				-70, -- [4]
				0, -- [5]
			}, -- [2]
			{
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				-30, -- [4]
				0, -- [5]
			}, -- [3]
			{
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				-50, -- [4]
				40, -- [5]
			}, -- [4]
		},
		["TotemMenuSpacing"] = 0,
		["ESMainTankMenu"] = true,
		["ReverseBarBindings"] = false,
		["ShowOmniCCOnEnhanceCDs"] = true,
		["TrackerTimeHeight"] = 12,
		["TimerSize"] = 32,
		["ShowRaidRangeTooltip"] = true,
		["ActivateHiddenTimers"] = false,
		["CrowdControlTimePos"] = "BOTTOM",
		["FulminationGlow"] = true,
		["ESMainTankMenuDirection"] = "auto",
		["TrackerTimeSpacing"] = 0,
		["TimerTimeSpacing"] = 0,
		["EarthShieldLeftButton"] = "recast",
		["CooldownSpacing"] = 5,
		["TimeColor"] = {
			["r"] = 1,
			["g"] = 1,
			["b"] = 1,
		},
		["TrackerSize"] = 30,
		["Arrange"] = "horizontal",
		["TrackerTimePos"] = "BOTTOM",
		["CrowdControlBindElemental"] = true,
		["ShieldChargesOnly"] = true,
		["TotemSets"] = {
			{
				"Searing Totem", -- [1]
				"Stoneskin Totem", -- [2]
				"Healing Stream Totem", -- [3]
				"Grace of Air Totem", -- [4]
			}, -- [1]
		},
		["TrackerTimerBarWidth"] = 36,
		["Order"] = {
			1, -- [1]
			2, -- [2]
			3, -- [3]
			4, -- [4]
		},
		["EnhanceCDs_Order"] = {
			{
				1, -- [1]
				2, -- [2]
				3, -- [3]
				4, -- [4]
				5, -- [5]
				6, -- [6]
				7, -- [7]
				8, -- [8]
				9, -- [9]
				10, -- [10]
				11, -- [11]
			}, -- [1]
			{
				1, -- [1]
				2, -- [2]
				3, -- [3]
				4, -- [4]
				5, -- [5]
				6, -- [6]
				7, -- [7]
				8, -- [8]
				9, -- [9]
				10, -- [10]
				11, -- [11]
				12, -- [12]
			}, -- [2]
			{
				1, -- [1]
				2, -- [2]
				3, -- [3]
				4, -- [4]
				5, -- [5]
				6, -- [6]
				7, -- [7]
				8, -- [8]
				9, -- [9]
			}, -- [3]
		},
		["MiniIcons"] = true,
		["ESChargesOnly"] = false,
		["ShieldTracker"] = true,
		["HideBlizzTimers"] = true,
		["MenusAlwaysVisible"] = false,
		["WeaponTracker"] = true,
		["EarthShieldTargetName"] = true,
		["CastBarDirection"] = "auto",
		["WeaponMenuOnRightclick"] = false,
		["BarBindings"] = true,
		["WeaponBarDirection"] = "auto",
		["Tooltips"] = true,
		["LastMainEnchants"] = {
			[7714] = {
				"Rockbiter Weapon", -- [1]
				136086, -- [2]
			},
		},
		["TimersOnButtons"] = false,
		["TimeStyle"] = "mm:ss",
		["FramePositions"] = {
			["TotemTimers_CastBar2"] = {
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				-200, -- [4]
				-225, -- [5]
			},
			["TotemTimers_CastBar4"] = {
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				50, -- [4]
				-225, -- [5]
			},
			["TotemTimers_LongCooldownsFrame"] = {
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				150, -- [4]
				-80, -- [5]
			},
			["TotemTimers_EnhanceCDsFrame"] = {
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				0, -- [4]
				-170, -- [5]
			},
			["TotemTimers_CastBar3"] = {
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				50, -- [4]
				-190.000015258789, -- [5]
			},
			["TotemTimers_CrowdControlFrame"] = {
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				-50, -- [4]
				-50, -- [5]
			},
			["TotemTimersFrame"] = {
				"BOTTOM", -- [1]
				nil, -- [2]
				"BOTTOM", -- [3]
				-292.266723632813, -- [4]
				98.0663146972656, -- [5]
			},
			["TotemTimers_TrackerFrame"] = {
				"BOTTOM", -- [1]
				nil, -- [2]
				"BOTTOM", -- [3]
				-293.466827392578, -- [4]
				148.300704956055, -- [5]
			},
			["TotemTimers_CastBar1"] = {
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				-200, -- [4]
				-190.000015258789, -- [5]
			},
		},
		["CrowdControlEnable"] = true,
		["EarthShieldRightButton"] = "target",
		["OpenOnRightclick"] = false,
		["CDTimersOnButtons"] = true,
		["LastTotems"] = {
			"Searing Totem", -- [1]
			"Stoneskin Totem", -- [2]
			"Healing Stream Totem", -- [3]
			"Grace of Air Totem", -- [4]
		},
		["TrackerSpacing"] = 5,
		["EarthShieldMiddleButton"] = "targettarget",
		["TimerBarColor"] = {
			["a"] = 0,
			["r"] = 0.501960784313726,
			["g"] = 0.501960784313726,
			["b"] = 1,
		},
		["Timer_Clickthrough"] = false,
		["TotemOrder"] = {
			{
				8181, -- [1]
				1535, -- [2]
				3599, -- [3]
				8190, -- [4]
				8227, -- [5]
			}, -- [1]
			{
				5730, -- [1]
				8071, -- [2]
				8075, -- [3]
				2484, -- [4]
				8143, -- [5]
			}, -- [2]
			{
				5394, -- [1]
				16190, -- [2]
				8166, -- [3]
				8170, -- [4]
				8184, -- [5]
				5675, -- [6]
			}, -- [3]
			{
				10595, -- [1]
				25908, -- [2]
				8177, -- [3]
				8835, -- [4]
				6495, -- [5]
				15107, -- [6]
				8512, -- [7]
			}, -- [4]
		},
	},
}
