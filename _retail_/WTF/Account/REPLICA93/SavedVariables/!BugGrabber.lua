
BugGrabberDB = {
	["session"] = 1038,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[string \"error('Invalid RaceID')\"]:1: Invalid RaceID",
			["time"] = "2021/03/08 17:09:08",
			["locals"] = "(*temporary) = \"Invalid RaceID\"\n",
			["stack"] = "[string \"=[C]\"]: in function `error'\n[string \"error('Invalid RaceID')\"]:1: in main chunk\n[string \"=[C]\"]: in function `SetAlternateRace'\n[string \"Load1\"]:566: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4793: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 978,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Error loading Interface\\AddOns\\PremadeGroupsFilter\\Plugins\\RaiderIO.lua",
			["session"] = 982,
			["time"] = "2021/03/08 12:53:51",
			["counter"] = 24,
		}, -- [2]
		{
			["message"] = "AceLocale-3.0-6: OmniCD: Missing entry for 'A new update is available. (%s)'",
			["time"] = "2021/03/12 12:12:36",
			["stack"] = "[string \"@Interface\\AddOns\\OmniCD\\Core\\load.lua\"]:122: in function <Interface\\AddOns\\OmniCD\\Core\\load.lua:113>",
			["session"] = 989,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "Interface\\SharedXML\\AddonList.lua:591: AddOn index must be in the range of 1 to 65",
			["time"] = "2021/03/12 15:34:25",
			["locals"] = "(*temporary) = 0\n",
			["stack"] = "[string \"=[C]\"]: in function `GetAddOnInfo'\n[string \"@Interface\\SharedXML\\AddonList.lua\"]:591: in function `AddonTooltip_Update'\n[string \"@Interface\\SharedXML\\AddonList.lua\"]:470: in function `AddonListScrollFrame_OnVerticalScroll'\n[string \"*:OnVerticalScroll\"]:1: in function <[string \"*:OnVerticalScroll\"]:1>\n[string \"=[C]\"]: in function `SetVerticalScroll'\n[string \"@Interface\\SharedXML\\SecureUIPanelTemplates.lua\"]:64: in function <Interface\\SharedXML\\SecureUIPanelTemplates.lua:63>\n[string \"=[C]\"]: in function `SetValue'\n[string \"@Interface\\SharedXML\\SharedUIPanelTemplates.lua\"]:191: in function <Interface\\SharedXML\\SharedUIPanelTemplates.lua:185>",
			["session"] = 990,
			["counter"] = 5,
		}, -- [4]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'XunaTweaks' tried to call the protected function 'MainMenuBar:ClearAllPoints()'.",
			["time"] = "2021/03/07 21:00:22",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `ClearAllPoints'\n[string \"@Interface\\FrameXML\\MainMenuBar.lua\"]:43: in function `SetPositionForStatusBars'\n[string \"@Interface\\FrameXML\\MainMenuBar.lua\"]:109: in function <Interface\\FrameXML\\MainMenuBar.lua:65>",
			["session"] = 1003,
			["counter"] = 5,
		}, -- [5]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'AutoTurnIn' tried to call the protected function 'UseQuestLogSpecialItem()'.",
			["time"] = "2021/03/17 17:48:32",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `UseQuestLogSpecialItem'\n[string \"@Interface\\AddOns\\Blizzard_ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua\"]:95: in function <...ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua:88>",
			["session"] = 1019,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "...ace\\AddOns\\SpellNotifications\\SpellNotifications-2.0.0.lua:210: attempt to concatenate local 'spellName' (a nil value)",
			["time"] = "2021/03/10 18:19:31",
			["locals"] = "event = \"COMBAT_LOG_EVENT_UNFILTERED\"\ncurrentSpec = 3\ncurrentSpecName = \"Restoration\"\ntimeStamp = 1615393170.559000\nevent = \"SPELL_DAMAGE\"\nhideCaster = false\nsourceGUID = \"Player-581-07B4C3E7\"\nsourceName = \"Elendren-Blackrock\"\nsourceFlags = 1352\nsourceRaidFlags = 0\ndestGUID = \"Creature-0-4242-1505-25157-5925-000048F191\"\ndestName = \"Grounding Totem\"\ndestFlags = 8465\ndestRaidFlags = 0\nspellName = nil\n(*temporary) = <function> defined @Interface\\AddOns\\SpellNotifications\\SpellNotifications.lua:286\n(*temporary) = \"Grounded \"\n(*temporary) = nil\n(*temporary) = \".\"\n(*temporary) = 701\n(*temporary) = 16\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to concatenate local 'spellName' (a nil value)\"\nreflected = <table> {\n}\n",
			["stack"] = "[string \"@Interface\\AddOns\\SpellNotifications\\SpellNotifications-2.0.0.lua\"]:210: in function `SpellNotifications_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 1021,
			["counter"] = 162,
		}, -- [7]
		{
			["message"] = "...erface\\AddOns\\OmniCD\\Modules\\Cooldowns\\cooldowns.lua:1631: Usage: UnitHealthMax(\"unit\")",
			["time"] = "2021/03/10 20:55:25",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\OmniCD\\Modules\\Cooldowns\\cooldowns.lua\"]:1631: in function <...erface\\AddOns\\OmniCD\\Modules\\Cooldowns\\cooldowns.lua:1624>\n[string \"@Interface\\AddOns\\OmniCD\\Modules\\Cooldowns\\cooldowns.lua\"]:1640: in function `func'\n[string \"@Interface\\AddOns\\OmniCD\\Modules\\Cooldowns\\cooldowns.lua\"]:1678: in function `?'\n[string \"@Interface\\AddOns\\OmniCD\\Modules\\Cooldowns\\core.lua\"]:12: in function <Interface\\AddOns\\OmniCD\\Modules\\Cooldowns\\core.lua:11>",
			["session"] = 1021,
			["counter"] = 124,
		}, -- [8]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn '!BlizzardRaidFramesFix' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2021/03/07 20:50:30",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:574: in function `CompactRaidFrameManager_LockContainer'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:567: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:56: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:49>",
			["session"] = 1032,
			["counter"] = 27,
		}, -- [9]
	},
}
