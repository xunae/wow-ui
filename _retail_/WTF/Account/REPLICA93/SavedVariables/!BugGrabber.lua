
BugGrabberDB = {
	["session"] = 70,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\Xunamate\\xunamate-0.1.lua:143: attempt to index global 'matchData' (a nil value)",
			["time"] = "2020/11/27 16:50:07",
			["stack"] = "[string \"@Interface\\AddOns\\Xunamate\\xunamate-0.1.lua\"]:143: in function `?'\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:145: in function <...nIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[3]\"]:4: in function <[string \"safecall Dispatcher[3]\"]:4>\n[string \"=[C]\"]: ?\n[string \"safecall Dispatcher[3]\"]:13: in function `?'\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:90: in function `Fire'\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...AddOns\\BigDebuffs\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 45,
			["counter"] = 3,
		}, -- [1]
		{
			["message"] = "Interface\\FrameXML\\LFGList.lua:1747: Usage: GetCategoryInfo(categoryID)",
			["time"] = "2020/11/29 14:56:45",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[string \"=[C]\"]: in function `GetCategoryInfo'\n[string \"@Interface\\FrameXML\\LFGList.lua\"]:1747: in function `LFGListSearchPanel_SetCategory'\n[string \"@Interface\\FrameXML\\LFGList.lua\"]:590: in function `LFGListCategorySelection_StartFindGroup'\n[string \"@Interface\\AddOns\\WorldQuestsList\\WorldQuestsList-96.lua\"]:8113: in function `LFG_Search'\n[string \"@Interface\\AddOns\\WorldQuestsList\\WorldQuestsList-96.lua\"]:1552: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:1535>\n[string \"=[C]\"]: ?",
			["session"] = 47,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:445: attempt to index field '?' (a nil value)",
			["time"] = "2020/11/29 18:23:12",
			["locals"] = "self = <table> {\n defaults = <table> {\n }\n messages = <table> {\n }\n Enable = <function> defined @Interface\\AddOns\\Gladius\\Gladius.lua:123\n UnregisterAllEvents = <function> defined @Interface\\AddOns\\Gladius\\Gladius.lua:119\n CastEnd = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:238\n UNIT_SPELLCAST_INTERRUPTIBLE = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:136\n UpdateColors = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:289\n enabled = true\n UNIT_SPELLCAST_NOT_INTERRUPTIBLE = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:150\n eventHandler = <unnamed> {\n }\n GetOptions = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:501\n attachTo = true\n name = \"CastBar\"\n IsEnabled = <function> defined @Interface\\AddOns\\Gladius\\Gladius.lua:139\n Disable = <function> defined @Interface\\AddOns\\Gladius\\Gladius.lua:131\n RegisterMessage = <function> defined @Interface\\AddOns\\Gladius\\Gladius.lua:143\n Update = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:321\n UNIT_SPELLCAST_DELAYED = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:205\n isBarOption = true\n UNIT_SPELLCAST_STOP = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:198\n GetAttachTo = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:83\n OnDisable = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:76\n isBar = true\n CreateBar = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:249\n GetFrame = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:91\n RegisterEvent = <function> defined @Interface\\AddOns\\Gladius\\Gladius.lua:108\n IsDetached = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:87\n Show = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:438\n UNIT_SPELLCAST_START = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:103\n UNIT_SPELLCAST_CHANNEL_START = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:164\n OnEnable = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:52\n GetIndicatorHeight = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:99\n SendMessage = <function> defined @Interface\\AddOns\\Gladius\\Gladius.lua:147\n Test = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:458\n frame = <table> {\n }\n UnregisterEvent = <function> defined @Interface\\AddOns\\Gladius\\Gladius.lua:115\n Reset = <function> defined @Interface\\AddOns\\Gladius\\Modules\\CastBar.lua:443\n}\nunit = \"arena3\"\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index field '?' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\Gladius\\Modules\\CastBar.lua\"]:445: in function `?'\n[string \"@Interface\\AddOns\\Gladius\\Gladius-7.0.3.lua\"]:64: in function `Call'\n[string \"@Interface\\AddOns\\Gladius\\Gladius-7.0.3.lua\"]:752: in function `ResetUnit'\n[string \"@Interface\\AddOns\\Gladius\\Gladius-7.0.3.lua\"]:488: in function `HideFrame'\n[string \"@Interface\\AddOns\\Gladius\\Gladius-7.0.3.lua\"]:356: in function `JoinedArena'\n[string \"@Interface\\AddOns\\Gladius\\Gladius-7.0.3.lua\"]:334: in function `?'\n[string \"@Interface\\AddOns\\Gladius\\Gladius-7.0.3.lua\"]:47: in function <Interface\\AddOns\\Gladius\\Gladius.lua:39>",
			["session"] = 49,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'Gladius' tried to call the protected function 'FocusUnit()'.",
			["time"] = "2020/11/29 18:24:05",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `FocusUnit'\n[string \"@Interface\\FrameXML\\SecureTemplates.lua\"]:503: in function `handler'\n[string \"@Interface\\FrameXML\\SecureTemplates.lua\"]:654: in function <Interface\\FrameXML\\SecureTemplates.lua:602>",
			["session"] = 49,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "Interface\\AddOns\\Xunamate\\xunamate-0.1.lua:123: Usage: GetPersonalRatedInfo(bracketIndex)",
			["time"] = "2020/11/29 18:25:24",
			["stack"] = "[string \"=[C]\"]: in function `GetPersonalRatedInfo'\n[string \"@Interface\\AddOns\\Xunamate\\xunamate-0.1.lua\"]:123: in function `?'\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:145: in function <...nIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[string \"=[C]\"]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:90: in function `Fire'\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...AddOns\\BigDebuffs\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 51,
			["counter"] = 2,
		}, -- [5]
		{
			["message"] = "Interface\\AddOns\\Xunamate\\xunamate-0.1.lua:51: attempt to index global 'matchData' (a nil value)",
			["time"] = "2020/11/30 20:14:12",
			["stack"] = "[string \"@Interface\\AddOns\\Xunamate\\xunamate-0.1.lua\"]:51: in function `updatePartyMembers'\n[string \"@Interface\\AddOns\\Xunamate\\xunamate-0.1.lua\"]:72: in function `?'\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:145: in function <...nIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[2]\"]:4: in function <[string \"safecall Dispatcher[2]\"]:4>\n[string \"=[C]\"]: ?\n[string \"safecall Dispatcher[2]\"]:13: in function `?'\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:90: in function `Fire'\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...AddOns\\BigDebuffs\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 53,
			["counter"] = 2,
		}, -- [6]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Leatrix_Maps' tried to call the protected function 'MultiBarBottomRightButton1:Hide()'.",
			["time"] = "2020/12/01 20:59:25",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:481: in function `HideGrid'\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:139: in function `MultiActionBar_UpdateGrid'\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:121: in function `MultiActionBar_ShowAllGrids'\n[string \"@Interface\\FrameXML\\SpellBookFrame.lua\"]:191: in function <Interface\\FrameXML\\SpellBookFrame.lua:181>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2910: in function `SetUIPanel'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2755: in function `ShowUIPanel'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2623: in function <Interface\\FrameXML\\UIParent.lua:2619>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:3468: in function <Interface\\FrameXML\\UIParent.lua:3447>\n[string \"=[C]\"]: in function `ShowUIPanel'\n[string \"@Interface\\FrameXML\\SpellBookFrame.lua\"]:75: in function `ToggleSpellBook'\n[string \"TOGGLESPELLBOOK\"]:1: in function <[string \"TOGGLESPELLBOOK\"]:1>",
			["session"] = 55,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:470: Action[FrameMeasurement] failed because[Can't measure restricted regions]: attempted from: <unnamed>:GetLeft().",
			["time"] = "2020/12/02 12:43:10",
			["locals"] = "(*temporary) = <unnamed> {\n otherHealPrediction = <unnamed> {\n }\n b = 0.407842\n myHealAbsorbLeftShadow = <unnamed> {\n }\n border = <unnamed> {\n }\n background = <unnamed> {\n }\n overAbsorbGlow = <unnamed> {\n }\n barTexture = <unnamed> {\n }\n 0 = <userdata>\n r = 0.999998\n totalAbsorb = <unnamed> {\n }\n myHealPrediction = <unnamed> {\n }\n g = 0.956861\n totalAbsorbOverlay = <unnamed> {\n }\n myHealAbsorbRightShadow = <unnamed> {\n }\n overHealAbsorbGlow = <unnamed> {\n }\n myHealAbsorb = <unnamed> {\n }\n}\n",
			["stack"] = "[string \"=[C]\"]: in function `GetLeft'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:470: in function `GetPreferredInsets'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:166: in function `UpdateInsetsForType'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:150: in function `ApplyFrameOptions'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:116: in function `OnNamePlateAdded'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:56: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:47>",
			["session"] = 59,
			["counter"] = 1,
		}, -- [8]
		{
			["message"] = "...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:216: Usage: GetRaidTargetIndex(unit)",
			["time"] = "2020/12/02 12:43:11",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[string \"=[C]\"]: in function `GetRaidTargetIndex'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:216: in function `OnRaidTargetUpdate'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:122: in function `OnNamePlateAdded'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:56: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:47>",
			["session"] = 59,
			["counter"] = 1,
		}, -- [9]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'NameplateAuras' tried to call the protected function 'SetTargetClampingInsets()'.",
			["time"] = "2020/12/02 12:53:26",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetTargetClampingInsets'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:305: in function `SetupClassNameplateBars'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:119: in function `OnNamePlateAdded'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:56: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:47>",
			["session"] = 59,
			["counter"] = 1,
		}, -- [10]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn '!BlizzardRaidFramesFix' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2020/11/27 21:15:02",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:574: in function `CompactRaidFrameManager_LockContainer'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:567: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:56: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:49>",
			["session"] = 64,
			["counter"] = 11,
		}, -- [11]
		{
			["message"] = "Interface\\AddOns\\Xunamate\\xunamate-0.1.lua:318: bad argument #2 to 'format' (string expected, got nil)",
			["time"] = "2020/11/29 18:25:27",
			["locals"] = "(*temporary) = \"%s (%s)\"\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"string expected, got nil\"\n",
			["stack"] = "[string \"=[C]\"]: in function `format'\n[string \"@Interface\\AddOns\\Xunamate\\xunamate-0.1.lua\"]:318: in function `?'\n[string \"@Interface\\AddOns\\AutoTurnIn\\Libs\\AceConsole-3.0\\AceConsole-3.0-7.lua\"]:94: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:5093: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4757: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4793: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 65,
			["counter"] = 5,
		}, -- [12]
		{
			["message"] = "Interface\\FrameXML\\ItemButtonTemplate.lua:201: attempt to index field 'IconOverlay2' (a nil value)",
			["time"] = "2020/12/02 18:57:29",
			["locals"] = "button = <unnamed> {\n 0 = <userdata>\n Glow = <unnamed> {\n }\n UpdateTooltip = <function> defined *:OnLoad:1\n IconBorder = <unnamed> {\n }\n IconOverlay = <unnamed> {\n }\n GlowWhite = <unnamed> {\n }\n}\nitemIDOrLink = \"|cffa335ee|Hitem:182608::::::::60:264::23:2:1511:7245:2:28:749:37:4:::|h[Virtuous Command]|h|r\"\nquality = 4\nisBound = nil\ncolor = <table> {\n GetRGB = <function> defined @Interface\\SharedXML\\Color.lua:20\n OnLoad = <function> defined @Interface\\SharedXML\\Color.lua:9\n b = 0.980390\n GenerateHexColorMarkup = <function> defined @Interface\\SharedXML\\Color.lua:51\n WrapTextInColorCode = <function> defined @Interface\\SharedXML\\Color.lua:55\n GenerateHexColor = <function> defined @Interface\\SharedXML\\Color.lua:47\n GetRGBA = <function> defined @Interface\\SharedXML\\Color.lua:28\n IsEqualTo = <function> defined @Interface\\SharedXML\\Color.lua:13\n g = 0.270590\n r = 0.784310\n SetRGBA = <function> defined @Interface\\SharedXML\\Color.lua:36\n GetRGBAsBytes = <function> defined @Interface\\SharedXML\\Color.lua:24\n SetRGB = <function> defined @Interface\\SharedXML\\Color.lua:43\n GetRGBAAsBytes = <function> defined @Interface\\SharedXML\\Color.lua:32\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <userdata>\n(*temporary) = true\n(*temporary) = 0.980390\n(*temporary) = \"attempt to index field 'IconOverlay2' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\FrameXML\\ItemButtonTemplate.lua\"]:201: in function `SetItemButtonOverlay'\n[string \"@Interface\\FrameXML\\ItemButtonTemplate.lua\"]:160: in function `SetItemButtonQuality'\n[string \"@Interface\\FrameXML\\LevelUpDisplay.lua\"]:1376: in function `BossBanner_ConfigureLootFrame'\n[string \"@Interface\\FrameXML\\LevelUpDisplay.lua\"]:1352: in function `onStartFunc'\n[string \"@Interface\\FrameXML\\LevelUpDisplay.lua\"]:1427: in function `BossBanner_SetAnimState'\n[string \"@Interface\\FrameXML\\LevelUpDisplay.lua\"]:1451: in function <Interface\\FrameXML\\LevelUpDisplay.lua:1438>",
			["session"] = 67,
			["counter"] = 2,
		}, -- [13]
	},
}
