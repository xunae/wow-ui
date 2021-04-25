
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 1225,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'XunaTweaks' tried to call the protected function 'MainMenuBar:ClearAllPoints()'.",
			["time"] = "2021/04/10 17:15:33",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `ClearAllPoints'\n[string \"@Interface\\FrameXML\\MainMenuBar.lua\"]:43: in function `SetPositionForStatusBars'\n[string \"@Interface\\FrameXML\\MainMenuBar.lua\"]:109: in function <Interface\\FrameXML\\MainMenuBar.lua:65>",
			["session"] = 1182,
			["counter"] = 2,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MoveAnything' tried to call the protected function 'ArenaEnemyFrames:ClearAllPoints()'.",
			["time"] = "2021/04/15 21:47:10",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `ClearAllPoints'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:3389: in function `UIParentManageFramePositions'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2637: in function <Interface\\FrameXML\\UIParent.lua:2624>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:3427: in function `UIParent_ManageFramePositions'\n[string \"@Interface\\FrameXML\\PetActionBarFrame.lua\"]:37: in function <Interface\\FrameXML\\PetActionBarFrame.lua:36>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\PetActionBarFrame.lua\"]:265: in function `ShowPetActionBar'\n[string \"@Interface\\FrameXML\\PetActionBarFrame.lua\"]:84: in function <Interface\\FrameXML\\PetActionBarFrame.lua:79>",
			["session"] = 1185,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "Interface\\FrameXML\\LFGList.lua:2740: assertion failed!",
			["time"] = "2021/04/16 22:26:57",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[string \"=[C]\"]: in function `assert'\n[string \"@Interface\\FrameXML\\LFGList.lua\"]:2740: in function `LFGListUtil_AugmentWithBest'\n[string \"@Interface\\FrameXML\\LFGList.lua\"]:677: in function `LFGListEntryCreation_Select'\n[string \"@Interface\\FrameXML\\LFGList.lua\"]:635: in function `LFGListEntryCreation_Show'\n[string \"@Interface\\AddOns\\WorldQuestsList\\WorldQuestsList-100.lua\"]:8034: in function `LFG_StartQuest'\n[string \"@Interface\\AddOns\\WorldQuestsList\\WorldQuestsList-100.lua\"]:8676: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:8652>",
			["session"] = 1189,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\Gladius\\Modules\\HealthBar.lua:139: attempt to index local 'color' (a nil value)",
			["time"] = "2021/04/17 12:07:33",
			["stack"] = "[string \"@Interface\\AddOns\\Gladius\\Modules\\HealthBar.lua\"]:139: in function `?'\n[string \"@Interface\\AddOns\\Gladius\\Gladius-7.0.4.lua\"]:64: in function `Call'\n[string \"@Interface\\AddOns\\Gladius\\Options-Options.lua\"]:175: in function <Interface\\AddOns\\Gladius\\Options.lua:154>\n[string \"=(tail call)\"]: ?\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceConfig-3.0-3\\AceConfigDialog-3.0\\AceConfigDialog-3.0-81.lua\"]:51: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:49>\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceConfig-3.0-3\\AceConfigDialog-3.0\\AceConfigDialog-3.0-81.lua\"]:847: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:668>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\BagSync\\libs\\AceGUI-3.0\\AceGUI-3.0-41.lua\"]:72: in function <...erface\\AddOns\\BagSync\\libs\\AceGUI-3.0\\AceGUI-3.0.lua:70>\n[string \"@Interface\\AddOns\\BagSync\\libs\\AceGUI-3.0\\AceGUI-3.0-41.lua\"]:306: in function `Fire'\n[string \"@Interface\\AddOns\\BagSync\\libs\\AceGUI-3.0-41\\widgets\\AceGUIWidget-ColorPicker.lua\"]:28: in function <...libs\\AceGUI-3.0\\widgets\\AceGUIWidget-ColorPicker.lua:21>\n[string \"@Interface\\AddOns\\BagSync\\libs\\AceGUI-3.0-41\\widgets\\AceGUIWidget-ColorPicker.lua\"]:67: in function `opacityFunc'\n[string \"*:OnValueChanged\"]:2: in function <[string \"*:OnValueChanged\"]:1>\n[string \"=[C]\"]: in function `SetValue'\n[string \"*:OnShow\"]:3: in function <[string \"*:OnShow\"]:1>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\AddOns\\BagSync\\libs\\AceGUI-3.0-41\\widgets\\AceGUIWidget-ColorPicker.lua\"]:80: in function <...libs\\AceGUI-3.0\\widgets\\AceGUIWidget-ColorPicker.lua:49>",
			["session"] = 1191,
			["counter"] = 6,
		}, -- [4]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'XunaTweaks' tried to call the protected function 'RaidFrame:Hide()'.",
			["time"] = "2021/04/24 13:23:54",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\FriendsFrame.lua\"]:85: in function `FriendsFrame_ShowSubFrame'\n[string \"@Interface\\FrameXML\\FriendsFrame.lua\"]:347: in function `FriendsFrame_Update'\n[string \"@Interface\\FrameXML\\FriendsFrame.lua\"]:323: in function <Interface\\FrameXML\\FriendsFrame.lua:304>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2915: in function `SetUIPanel'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2760: in function `ShowUIPanel'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2628: in function <Interface\\FrameXML\\UIParent.lua:2624>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:3473: in function <Interface\\FrameXML\\UIParent.lua:3452>\n[string \"=[C]\"]: in function `ShowUIPanel'\n[string \"@Interface\\FrameXML\\FriendsFrame.lua\"]:1088: in function `ToggleFriendsFrame'\n[string \"TOGGLESOCIAL\"]:1: in function <[string \"TOGGLESOCIAL\"]:1>",
			["session"] = 1211,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn '!BlizzardRaidFramesFix' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2021/04/10 17:15:33",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:574: in function `CompactRaidFrameManager_LockContainer'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:567: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:56: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:49>",
			["session"] = 1214,
			["counter"] = 14,
		}, -- [6]
	},
}
