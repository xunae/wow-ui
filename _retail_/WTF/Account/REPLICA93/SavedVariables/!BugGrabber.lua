
BugGrabberDB = {
	["session"] = 358,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn '!BlizzardRaidFramesFix' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2020/12/18 18:27:05",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:574: in function `CompactRaidFrameManager_LockContainer'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:567: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:56: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:49>",
			["session"] = 323,
			["counter"] = 4,
		}, -- [1]
		{
			["message"] = "C stack overflow",
			["time"] = "2020/12/21 16:24:42",
			["locals"] = "(*temporary) = ActionButton1Cooldown {\n 0 = <userdata>\n _occ_priority = 1\n _occ_show = false\n _occ_gcd = true\n _occ_kind = \"default\"\n _occ_duration = 1.347000\n _occ_settings = <table> {\n }\n _occ_start = 873042.170000\n currentCooldownType = 2\n _occ_draw_swipe = true\n}\n(*temporary) = 0\n(*temporary) = 0\n(*temporary) = 1\n(*temporary) = false\n(*temporary) = 1\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = ActionButton1Cooldown {\n 0 = <userdata>\n _occ_priority = 1\n _occ_show = false\n _occ_gcd = true\n _occ_kind = \"default\"\n _occ_duration = 1.347000\n _occ_settings = <table> {\n }\n _occ_start = 873042.170000\n currentCooldownType = 2\n _occ_draw_swipe = true\n}\n(*temporary) = 0\n(*temporary) = 0\n(*temporary) = 1\n(*temporary) = false\n(*temporary) = 1\n = <function> defined =[C]:-1\n = <function> defined @Interface\\AddOns\\XunaTweaks\\core.lua:244\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n...\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `CooldownFrame_Set'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:584: in function `ActionButton_UpdateCooldown'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:793: in function `OnEvent'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:217: in function <Interface\\FrameXML\\ActionButton.lua:214>",
			["session"] = 327,
			["counter"] = 28,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\Xunamate\\xunamate-0.1.lua:19: bad argument #1 to 'select' (index out of range)",
			["time"] = "2020/12/21 16:42:27",
			["stack"] = "[string \"=[C]\"]: in function `select'\n[string \"@Interface\\AddOns\\Xunamate\\xunamate-0.1.lua\"]:19: in function `?'\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:145: in function <...nIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[string \"=[C]\"]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:90: in function `Fire'\n[string \"@Interface\\AddOns\\BagSync\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ce\\AddOns\\BagSync\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 331,
			["counter"] = 72,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\Xunamate\\xunamate-0.1.lua:14: Usage: RegisterEvent(\"eventname\", \"methodname\"): 'methodname' - method 'COMBAT_LOG_EVENT_UNFILTERED' not found on self.",
			["time"] = "2020/12/21 17:01:09",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:138: in function `RegisterEvent'\n[string \"@Interface\\AddOns\\Xunamate\\xunamate-0.1.lua\"]:14: in function <Interface\\AddOns\\Xunamate\\xunamate.lua:6>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <...ce\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:498: in function `InitializeAddon'\n[string \"@Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:623: in function <...ce\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 342,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "...ce\\AddOns\\BagSync\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:33: Attempt to register unknown event \"ARENA_MATCH_START\"",
			["time"] = "2020/12/21 17:30:00",
			["stack"] = "[string \"=[C]\"]: in function `RegisterEvent'\n[string \"@Interface\\AddOns\\BagSync\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:33: in function `OnUsed'\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:168: in function `RegisterEvent'\n[string \"@Interface\\AddOns\\Xunamate\\xunamate-0.1.lua\"]:15: in function <Interface\\AddOns\\Xunamate\\xunamate.lua:6>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <...ce\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:498: in function `InitializeAddon'\n[string \"@Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:623: in function <...ce\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 348,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'AutoTurnIn' tried to call the protected function 'UseQuestLogSpecialItem()'.",
			["time"] = "2020/12/21 18:39:55",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `UseQuestLogSpecialItem'\n[string \"@Interface\\AddOns\\Blizzard_ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua\"]:95: in function <...ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua:88>",
			["session"] = 350,
			["counter"] = 1,
		}, -- [6]
	},
}
