
BugGrabberDB = {
	["session"] = 832,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\BigDebuffs\\BigDebuffs-v9.7.lua:982: attempt to index field '?' (a nil value)",
			["time"] = "2021/02/13 19:24:05",
			["locals"] = "self = <table> {\n NAME_PLATE_UNIT_REMOVED = <function> defined @Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:1940\n SetDefaultModuleLibraries = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:367\n SaveUnitFramePosition = <function> defined @Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:680\n EnableModule = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:332\n modules = <table> {\n }\n baseName = \"BigDebuffs\"\n IterateEmbeds = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:442\n IsDispellable = <function> defined @Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:910\n SecureHookScript = <function> defined @Interface\\AddOns\\BigDebuffs\\Libs\\AceHook-3.0\\AceHook-3.0.lua:410\n IsPriorityBigDebuff = <function> defined @Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:1613\n IsPriorityDebuff = <function> defined @Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:900\n PriorityDebuffs = <table> {\n }\n SetDefaultModulePrototype = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:409\n defaultModuleState = true\n IsEnabled = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:451\n DisableModule = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:350\n RegisterMessage = <function> defined @Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:116\n UnregisterMessage = <function> defined @Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:179\n frames = <table> {\n }\n hooks = <table> {\n }\n PLAYER_FOCUS_CHANGED = <function> defined @Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:1862\n WarningDebuffs = <table> {\n }\n UNIT_AURA = <function> defined @Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:1619\n SetEnabledState = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:424\n Hook = <function> defined @Interface\\AddOns\\BigDebuffs\\Libs\\AceHook-3.0\\AceHook-3.0.lua:274\n enabledState = true\n COMBAT_LOG_EVENT_UNFILTERED = <function> defined @Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:748\n RegisterEvent = <function> defined @Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:116\n units = <table> {\n }\n IterateModules = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:437\n AttachNameplate = <function> defined @Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:647\n RawHook = <function> defined @Interface\\AddOns\\BigDebuffs\\Libs\\AceHook-3.0\\AceHook-3.0.lua:313\n AttachUnitFrame = <function> defined @Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:543\n UNIT_AURA_NAMEPLATE = <function> defined @Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:1743\n OnInitialize = <function> defined @Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:468\n NewModule = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:235\n GetModule = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:210\n AttachedFrames = <table> {\n }\n defaultModuleLibraries = <table> {\n }\n options = <table> {\n }\n specDispel = <table> {\n }\n Spells = <table> {\n }\n GetName = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:279\n UNIT_AURA_ALL_UNITS = <function> defined @Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:794\n name = \"BigDebuffs\"\n GetNameplatesPriority = <function> defined @Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:1000\n specDispelTypes = <table> {\n }\n Nameplates = <table> {\n }\n Disable = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:314\n ShowInRaids = <function> defined @Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:1952\n UnitFrames = <table> {\n }\n db = <table> {\n }\n SetupOptions = <function> defined @Interface\\AddOns\\BigDebuffs\\Options.lua:213\n NAME_PLATE_UNIT_ADDED = <function> defined @Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:1874\n HookScript = <function> defined @Interface\\AddOns\\BigDebuffs\\Libs\\AceHook-3.0\\AceHook-3.0.lua:366\n UNIT_PET = <function> defined @Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:1870\n GetAuraPriority = <function>",
			["stack"] = "[string \"@Interface\\AddOns\\BigDebuffs\\BigDebuffs-v9.7.lua\"]:982: in function `GetAuraPriority'\n[string \"@Interface\\AddOns\\BigDebuffs\\BigDebuffs-v9.7.lua\"]:1679: in function `UNIT_AURA'\n[string \"@Interface\\AddOns\\BigDebuffs\\BigDebuffs-v9.7.lua\"]:552: in function <Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:552>",
			["session"] = 824,
			["counter"] = 242,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'XunaTweaks' tried to call the protected function 'MainMenuBar:ClearAllPoints()'.",
			["time"] = "2021/02/14 19:03:10",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `ClearAllPoints'\n[string \"@Interface\\FrameXML\\MainMenuBar.lua\"]:43: in function `SetPositionForStatusBars'\n[string \"@Interface\\FrameXML\\MainMenuBar.lua\"]:8: in function `OnStatusBarsUpdated'\n[string \"@Interface\\FrameXML\\StatusTrackingManager.lua\"]:181: in function `LayoutBars'\n[string \"@Interface\\FrameXML\\StatusTrackingManager.lua\"]:84: in function `UpdateBarsShown'\n[string \"@Interface\\FrameXML\\StatusTrackingManager.lua\"]:210: in function <Interface\\FrameXML\\StatusTrackingManager.lua:206>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `SetCVar'\n[string \"@Interface\\SharedXML\\CvarUtil.lua\"]:13: in function <Interface\\SharedXML\\CvarUtil.lua:9>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `SetCVar'\n[string \"@Interface\\SharedXML\\OptionsPanelTemplates.lua\"]:202: in function `BlizzardOptionsPanel_SetCVarSafe'\n[string \"@Interface\\SharedXML\\OptionsPanelTemplates.lua\"]:437: in function `SetValue'\n[string \"@Interface\\FrameXML\\InterfaceOptionsPanels.lua\"]:34: in function `InterfaceOptionsPanel_CheckButton_Update'\n[string \"@Interface\\FrameXML\\InterfaceOptionsPanels.lua\"]:20: in function `InterfaceOptionsPanel_CheckButton_OnClick'\n[string \"*:OnClick\"]:6: in function <[string \"*:OnClick\"]:1>",
			["session"] = 829,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn '!BlizzardRaidFramesFix' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2021/02/13 19:20:59",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:574: in function `CompactRaidFrameManager_LockContainer'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:567: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:56: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:49>",
			["session"] = 830,
			["counter"] = 3,
		}, -- [3]
		{
			["message"] = "Error loading Interface\\AddOns\\PremadeGroupsFilter\\Plugins\\RaiderIO.lua",
			["time"] = "2021/02/13 17:36:01",
			["session"] = 832,
			["counter"] = 33,
		}, -- [4]
	},
}
