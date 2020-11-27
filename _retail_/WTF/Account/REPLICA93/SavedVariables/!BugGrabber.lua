
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 27,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'NameplateAuras' tried to call the protected function 'SetTargetClampingInsets()'.",
			["time"] = "2020/11/26 09:11:54",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetTargetClampingInsets'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:305: in function `SetupClassNameplateBars'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:119: in function `OnNamePlateAdded'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:56: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:47>",
			["session"] = 11,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:470: Action[FrameMeasurement] failed because[Can't measure restricted regions]: attempted from: <unnamed>:GetLeft().",
			["time"] = "2020/11/26 09:18:22",
			["locals"] = "(*temporary) = <unnamed> {\n otherHealPrediction = <unnamed> {\n }\n b = 0\n myHealAbsorbLeftShadow = <unnamed> {\n }\n border = <unnamed> {\n }\n background = <unnamed> {\n }\n overAbsorbGlow = <unnamed> {\n }\n barTexture = <unnamed> {\n }\n 0 = <userdata>\n r = 1\n totalAbsorb = <unnamed> {\n }\n myHealPrediction = <unnamed> {\n }\n g = 0\n totalAbsorbOverlay = <unnamed> {\n }\n myHealAbsorbRightShadow = <unnamed> {\n }\n overHealAbsorbGlow = <unnamed> {\n }\n myHealAbsorb = <unnamed> {\n }\n}\n",
			["stack"] = "[string \"=[C]\"]: in function `GetLeft'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:470: in function `GetPreferredInsets'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:166: in function `UpdateInsetsForType'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:150: in function `ApplyFrameOptions'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:116: in function `OnNamePlateAdded'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:56: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:47>",
			["session"] = 11,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "Interface\\FrameXML\\CompactUnitFrame.lua:530: Usage: local nameplateShowsWidgetsOnly = UnitNameplateShowsWidgetsOnly(unit)",
			["time"] = "2020/11/26 09:18:25",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[string \"=[C]\"]: in function `UnitNameplateShowsWidgetsOnly'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:530: in function `ShouldShowName'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:596: in function `CompactUnitFrame_UpdateName'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:230: in function `OnUnitFactionChanged'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:76: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:47>",
			["session"] = 11,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\Xunamate\\xunamate-0.1.lua:143: attempt to index global 'matchData' (a nil value)",
			["time"] = "2020/11/26 14:39:22",
			["stack"] = "[string \"@Interface\\AddOns\\Xunamate\\xunamate-0.1.lua\"]:143: in function `?'\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:145: in function <...nIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[3]\"]:4: in function <[string \"safecall Dispatcher[3]\"]:4>\n[string \"=[C]\"]: ?\n[string \"safecall Dispatcher[3]\"]:13: in function `?'\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:90: in function `Fire'\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...AddOns\\BigDebuffs\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 15,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "Interface\\FrameXML\\ItemButtonTemplate.lua:201: attempt to index field 'IconOverlay2' (a nil value)",
			["time"] = "2020/11/26 12:34:50",
			["locals"] = "button = <unnamed> {\n 0 = <userdata>\n Glow = <unnamed> {\n }\n UpdateTooltip = <function> defined *:OnLoad:1\n IconBorder = <unnamed> {\n }\n IconOverlay = <unnamed> {\n }\n GlowWhite = <unnamed> {\n }\n}\nitemIDOrLink = \"|cffa335ee|Hitem:182135::::::::60:264::23:2:1511:7245:2:28:749:37:4:::|h[Focused Lightning]|h|r\"\nquality = 4\nisBound = nil\ncolor = <table> {\n GetRGB = <function> defined @Interface\\SharedXML\\Color.lua:20\n OnLoad = <function> defined @Interface\\SharedXML\\Color.lua:9\n b = 0.980390\n GenerateHexColorMarkup = <function> defined @Interface\\SharedXML\\Color.lua:51\n WrapTextInColorCode = <function> defined @Interface\\SharedXML\\Color.lua:55\n GenerateHexColor = <function> defined @Interface\\SharedXML\\Color.lua:47\n GetRGBA = <function> defined @Interface\\SharedXML\\Color.lua:28\n IsEqualTo = <function> defined @Interface\\SharedXML\\Color.lua:13\n g = 0.270590\n r = 0.784310\n SetRGBA = <function> defined @Interface\\SharedXML\\Color.lua:36\n GetRGBAsBytes = <function> defined @Interface\\SharedXML\\Color.lua:24\n SetRGB = <function> defined @Interface\\SharedXML\\Color.lua:43\n GetRGBAAsBytes = <function> defined @Interface\\SharedXML\\Color.lua:32\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <userdata>\n(*temporary) = true\n(*temporary) = 0.980390\n(*temporary) = \"attempt to index field 'IconOverlay2' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\FrameXML\\ItemButtonTemplate.lua\"]:201: in function `SetItemButtonOverlay'\n[string \"@Interface\\FrameXML\\ItemButtonTemplate.lua\"]:160: in function `SetItemButtonQuality'\n[string \"@Interface\\FrameXML\\LevelUpDisplay.lua\"]:1376: in function `BossBanner_ConfigureLootFrame'\n[string \"@Interface\\FrameXML\\LevelUpDisplay.lua\"]:1352: in function `onStartFunc'\n[string \"@Interface\\FrameXML\\LevelUpDisplay.lua\"]:1427: in function `BossBanner_SetAnimState'\n[string \"@Interface\\FrameXML\\LevelUpDisplay.lua\"]:1451: in function <Interface\\FrameXML\\LevelUpDisplay.lua:1438>",
			["session"] = 21,
			["counter"] = 8,
		}, -- [5]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn '!BlizzardRaidFramesFix' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2020/11/26 09:15:33",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:574: in function `CompactRaidFrameManager_LockContainer'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:567: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:56: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:49>",
			["session"] = 27,
			["counter"] = 7,
		}, -- [6]
	},
}
