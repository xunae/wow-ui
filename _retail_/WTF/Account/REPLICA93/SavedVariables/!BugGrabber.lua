
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 595,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'Leatrix_Maps' tried to call the protected function 'UseQuestLogSpecialItem()'.",
			["time"] = "2021/01/06 15:59:01",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `UseQuestLogSpecialItem'\n[string \"@Interface\\AddOns\\Blizzard_ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua\"]:95: in function <...ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua:88>",
			["session"] = 483,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'AutoTurnIn' tried to call the protected function 'UseQuestLogSpecialItem()'.",
			["time"] = "2021/01/08 20:02:54",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `UseQuestLogSpecialItem'\n[string \"@Interface\\AddOns\\Blizzard_ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua\"]:95: in function <...ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua:88>",
			["session"] = 499,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "...ce\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3139: attempt to get length of local 'variantSets' (a number value)",
			["time"] = "2021/01/12 20:55:54",
			["locals"] = "self = <table> {\n ResetBaseSetNewStatus = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3236\n baseSets = <table> {\n }\n IsBaseSetNew = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3217\n SortSets = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3050\n sourceData = <table> {\n }\n GetIconForSet = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3285\n GetBaseSets = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3085\n GetSetSourceCounts = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3179\n GetSortedSetSources = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3243\n GetBaseSetData = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3184\n GetBaseSetByID = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3094\n ClearUsableSets = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3281\n RefreshFavorites = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3320\n GetSetSourceData = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3153\n variantSets = <table> {\n }\n GetVariantSets = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3130\n GetSetSources = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3175\n ClearBaseSets = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3273\n GetUsableSets = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3104\n ClearVariantSets = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3277\n DetermineFavorites = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3299\n ClearSets = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3265\n GetSetSourceTopCounts = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3208\n}\nbaseSetID = 2171\nvariantSets = 2171\n(*temporary) = <table> {\n 2171 = 2171\n}\n(*temporary) = 2171\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to get length of local 'variantSets' (a number value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua\"]:3139: in function `GetVariantSets'\n[string \"@Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua\"]:3487: in function `DisplaySet'\n[string \"@Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua\"]:3417: in function `Refresh'\n[string \"@Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua\"]:3400: in function <...ce\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3385>\n[string \"=[C]\"]: in function `UpdateUsableAppearances'\n[string \"@Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua\"]:992: in function <...ce\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:992>",
			["session"] = 528,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:470: Action[FrameMeasurement] failed because[Can't measure restricted regions]: attempted from: <unnamed>:GetLeft().",
			["time"] = "2021/01/13 19:29:03",
			["locals"] = "(*temporary) = <unnamed> {\n otherHealPrediction = <unnamed> {\n }\n b = 0.729410\n myHealAbsorbLeftShadow = <unnamed> {\n }\n border = <unnamed> {\n }\n background = <unnamed> {\n }\n overAbsorbGlow = <unnamed> {\n }\n barTexture = <unnamed> {\n }\n 0 = <userdata>\n r = 0.956861\n totalAbsorb = <unnamed> {\n }\n myHealPrediction = <unnamed> {\n }\n g = 0.549018\n totalAbsorbOverlay = <unnamed> {\n }\n myHealAbsorbRightShadow = <unnamed> {\n }\n overHealAbsorbGlow = <unnamed> {\n }\n myHealAbsorb = <unnamed> {\n }\n}\n",
			["stack"] = "[string \"=[C]\"]: in function `GetLeft'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:470: in function `GetPreferredInsets'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:166: in function `UpdateInsetsForType'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:150: in function `ApplyFrameOptions'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:116: in function `OnNamePlateAdded'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:56: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:47>",
			["session"] = 541,
			["counter"] = 3,
		}, -- [4]
		{
			["message"] = "...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:216: Usage: GetRaidTargetIndex(unit)",
			["time"] = "2021/01/13 19:29:03",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[string \"=[C]\"]: in function `GetRaidTargetIndex'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:216: in function `OnRaidTargetUpdate'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:122: in function `OnNamePlateAdded'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:56: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:47>",
			["session"] = 541,
			["counter"] = 24,
		}, -- [5]
		{
			["message"] = "Interface\\FrameXML\\AuraUtil.lua:58: Usage: local continuationToken, slot1, slot2, ... = UnitAuraSlots(\"unit\" [, \"filter\"][, maxSlots][, continuationToken])",
			["time"] = "2021/01/13 19:29:03",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"HARMFUL|INCLUDE_NAME_PLATE_ONLY\"\n(*temporary) = 32\n(*temporary) = nil\n",
			["stack"] = "[string \"=[C]\"]: in function `UnitAuraSlots'\n[string \"@Interface\\FrameXML\\AuraUtil.lua\"]:58: in function `ForEachAura'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:597: in function `UpdateBuffs'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:209: in function `OnUnitAuraUpdate'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:65: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:47>",
			["session"] = 541,
			["counter"] = 56,
		}, -- [6]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'NameplateAuras' tried to call the protected function 'SetTargetClampingInsets()'.",
			["time"] = "2021/01/13 19:29:12",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetTargetClampingInsets'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:305: in function `SetupClassNameplateBars'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:119: in function `OnNamePlateAdded'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:56: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:47>",
			["session"] = 541,
			["counter"] = 3,
		}, -- [7]
		{
			["message"] = "Interface\\AddOns\\Xunamate\\xunamate-0.1.lua:428: attempt to index field 'teamInfo' (a nil value)",
			["time"] = "2021/01/13 22:01:01",
			["locals"] = "insertTeam = <function> defined @Interface\\AddOns\\Xunamate\\xunamate.lua:396\nplayerTeam = nil\n(*temporary) = nil\n(*temporary) = <table> {\n player = <table> {\n }\n arena2 = <table> {\n }\n party2 = <table> {\n }\n party1 = <table> {\n }\n arena3 = <table> {\n }\n arena1 = <table> {\n }\n}\n(*temporary) = nil\n(*temporary) = <table> {\n player = <table> {\n }\n arena2 = <table> {\n }\n party2 = <table> {\n }\n party1 = <table> {\n }\n arena3 = <table> {\n }\n arena1 = <table> {\n }\n}\n(*temporary) = \"arena1\"\n(*temporary) = nil\n(*temporary) = \"attempt to index field 'teamInfo' (a nil value)\"\nframe = <unnamed> {\n 0 = <userdata>\n tooltip = XunamateTooltip {\n }\n TopRightCorner = <unnamed> {\n }\n SetBorderBlendMode = <function> defined @Interface\\SharedXML\\Backdrop.lua:309\n backdropInfo = <table> {\n }\n OnBackdropLoaded = <function> defined @Interface\\SharedXML\\Backdrop.lua:195\n header = <unnamed> {\n }\n Center = <unnamed> {\n }\n GetBackdropColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:433\n SetupTextureCoordinates = <function> defined @Interface\\SharedXML\\Backdrop.lua:257\n OnBackdropSizeChanged = <function> defined @Interface\\SharedXML\\Backdrop.lua:225\n HasBackdropInfo = <function> defined @Interface\\SharedXML\\Backdrop.lua:321\n SetBackdropBorderColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:465\n RightEdge = <unnamed> {\n }\n hide = <unnamed> {\n }\n BottomEdge = <unnamed> {\n }\n GetEdgeSize = <function> defined @Interface\\SharedXML\\Backdrop.lua:231\n BottomLeftCorner = <unnamed> {\n }\n BottomRightCorner = <unnamed> {\n }\n TopEdge = <unnamed> {\n }\n ApplyBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:337\n SetBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:372\n ClearBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:325\n sf = <unnamed> {\n }\n GetBackdropBorderColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:452\n GetBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:390\n TopLeftCorner = <unnamed> {\n }\n SetupPieceVisuals = <function> defined @Interface\\SharedXML\\Backdrop.lua:289\n SetBackdropColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:442\n LeftEdge = <unnamed> {\n }\n reset = <unnamed> {\n }\n}\nf = <unnamed> {\n 0 = <userdata>\n highlight = <unnamed> {\n }\n BottomEdge = <unnamed> {\n }\n OnBackdropLoaded = <function> defined @Interface\\SharedXML\\Backdrop.lua:195\n Center = <unnamed> {\n }\n startTime = 1610563862\n GetBackdropColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:433\n SetupTextureCoordinates = <function> defined @Interface\\SharedXML\\Backdrop.lua:257\n OnBackdropSizeChanged = <function> defined @Interface\\SharedXML\\Backdrop.lua:225\n HasBackdropInfo = <function> defined @Interface\\SharedXML\\Backdrop.lua:321\n SetBackdropBorderColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:465\n RightEdge = <unnamed> {\n }\n teamContainer = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n GetEdgeSize = <function> defined @Interface\\SharedXML\\Backdrop.lua:231\n BottomRightCorner = <unnamed> {\n }\n BottomLeftCorner = <unnamed> {\n }\n TopEdge = <unnamed> {\n }\n ApplyBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:337\n SetBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:372\n ClearBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:325\n TopLeftCorner = <unnamed> {\n }\n GetBackdropBorderColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:452\n GetBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:390\n backdropInfo = <table> {\n }\n SetupPieceVisuals = <function> defined @Interface\\SharedXML\\Backdrop.lua:289\n SetBackdropColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:442\n LeftEdge = <unnamed> {\n }\n SetBorderBlendMode = <function> defined @Interface\\SharedXML\\Backdrop.lua:309\n}\nself = <table> {\n SetDefaultModuleLibraries = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:367\n Enable = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:294\n RegisterChatCommand = <function> defined @Interface\\AddOns\\AutoTurnIn\\Libs\\AceConsole-3.0\\AceConsole",
			["stack"] = "[string \"@Interface\\AddOns\\Xunamate\\xunamate-0.1.lua\"]:428: in function <Interface\\AddOns\\Xunamate\\xunamate.lua:391>\n[string \"@Interface\\AddOns\\Xunamate\\xunamate-0.1.lua\"]:446: in function <Interface\\AddOns\\Xunamate\\xunamate.lua:444>",
			["session"] = 556,
			["counter"] = 2,
		}, -- [8]
		{
			["message"] = "Interface\\AddOns\\Xunamate\\xunamate-0.1.lua:409: Usage: GetClassInfo(Index)",
			["time"] = "2021/01/14 14:26:30",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[string \"=[C]\"]: in function `GetClassInfo'\n[string \"@Interface\\AddOns\\Xunamate\\xunamate-0.1.lua\"]:409: in function `insertTeam'\n[string \"@Interface\\AddOns\\Xunamate\\xunamate-0.1.lua\"]:440: in function <Interface\\AddOns\\Xunamate\\xunamate.lua:391>\n[string \"@Interface\\AddOns\\Xunamate\\xunamate-0.1.lua\"]:446: in function <Interface\\AddOns\\Xunamate\\xunamate.lua:444>",
			["session"] = 556,
			["counter"] = 4,
		}, -- [9]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn '!BlizzardRaidFramesFix' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2021/01/04 17:55:29",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:574: in function `CompactRaidFrameManager_LockContainer'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:567: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:56: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:49>",
			["session"] = 591,
			["counter"] = 29,
		}, -- [10]
	},
}
