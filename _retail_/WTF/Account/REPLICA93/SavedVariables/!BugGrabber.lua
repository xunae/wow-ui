
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 427,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'WorldQuestsList' tried to call the protected function 'UseQuestLogSpecialItem()'.",
			["time"] = "2020/12/28 17:40:41",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `UseQuestLogSpecialItem'\n[string \"@Interface\\AddOns\\Blizzard_ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua\"]:95: in function <...ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua:88>",
			["session"] = 409,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\Xunamate\\xunamate-0.1.lua:428: attempt to index field 'teamInfo' (a nil value)",
			["time"] = "2020/12/28 17:53:19",
			["locals"] = "insertTeam = <function> defined @Interface\\AddOns\\Xunamate\\xunamate.lua:396\nplayerTeam = nil\n(*temporary) = nil\n(*temporary) = <table> {\n player = <table> {\n }\n arena2 = <table> {\n }\n party1 = <table> {\n }\n party2 = <table> {\n }\n arena3 = <table> {\n }\n arena1 = <table> {\n }\n}\n(*temporary) = nil\n(*temporary) = <table> {\n player = <table> {\n }\n arena2 = <table> {\n }\n party1 = <table> {\n }\n party2 = <table> {\n }\n arena3 = <table> {\n }\n arena1 = <table> {\n }\n}\n(*temporary) = \"arena1\"\n(*temporary) = nil\n(*temporary) = \"attempt to index field 'teamInfo' (a nil value)\"\nframe = <unnamed> {\n 0 = <userdata>\n tooltip = XunamateTooltip {\n }\n TopRightCorner = <unnamed> {\n }\n SetBorderBlendMode = <function> defined @Interface\\SharedXML\\Backdrop.lua:309\n backdropInfo = <table> {\n }\n OnBackdropLoaded = <function> defined @Interface\\SharedXML\\Backdrop.lua:195\n header = <unnamed> {\n }\n Center = <unnamed> {\n }\n GetBackdropColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:433\n SetupTextureCoordinates = <function> defined @Interface\\SharedXML\\Backdrop.lua:257\n OnBackdropSizeChanged = <function> defined @Interface\\SharedXML\\Backdrop.lua:225\n HasBackdropInfo = <function> defined @Interface\\SharedXML\\Backdrop.lua:321\n SetBackdropBorderColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:465\n RightEdge = <unnamed> {\n }\n hide = <unnamed> {\n }\n BottomEdge = <unnamed> {\n }\n GetEdgeSize = <function> defined @Interface\\SharedXML\\Backdrop.lua:231\n BottomLeftCorner = <unnamed> {\n }\n BottomRightCorner = <unnamed> {\n }\n TopEdge = <unnamed> {\n }\n ApplyBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:337\n SetBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:372\n ClearBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:325\n sf = <unnamed> {\n }\n GetBackdropBorderColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:452\n GetBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:390\n TopLeftCorner = <unnamed> {\n }\n SetupPieceVisuals = <function> defined @Interface\\SharedXML\\Backdrop.lua:289\n SetBackdropColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:442\n LeftEdge = <unnamed> {\n }\n reset = <unnamed> {\n }\n}\nf = <unnamed> {\n 0 = <userdata>\n highlight = <unnamed> {\n }\n BottomEdge = <unnamed> {\n }\n OnBackdropLoaded = <function> defined @Interface\\SharedXML\\Backdrop.lua:195\n Center = <unnamed> {\n }\n startTime = 1608915806\n GetBackdropColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:433\n SetupTextureCoordinates = <function> defined @Interface\\SharedXML\\Backdrop.lua:257\n OnBackdropSizeChanged = <function> defined @Interface\\SharedXML\\Backdrop.lua:225\n HasBackdropInfo = <function> defined @Interface\\SharedXML\\Backdrop.lua:321\n SetBackdropBorderColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:465\n RightEdge = <unnamed> {\n }\n teamContainer = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n GetEdgeSize = <function> defined @Interface\\SharedXML\\Backdrop.lua:231\n BottomRightCorner = <unnamed> {\n }\n BottomLeftCorner = <unnamed> {\n }\n TopEdge = <unnamed> {\n }\n ApplyBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:337\n SetBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:372\n ClearBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:325\n TopLeftCorner = <unnamed> {\n }\n GetBackdropBorderColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:452\n GetBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:390\n backdropInfo = <table> {\n }\n SetupPieceVisuals = <function> defined @Interface\\SharedXML\\Backdrop.lua:289\n SetBackdropColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:442\n LeftEdge = <unnamed> {\n }\n SetBorderBlendMode = <function> defined @Interface\\SharedXML\\Backdrop.lua:309\n}\nself = <table> {\n SetDefaultModuleLibraries = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:367\n Enable = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:294\n RegisterChatCommand = <function> defined @Interface\\AddOns\\AutoTurnIn\\Libs\\AceConsole-3.0\\AceConsole",
			["stack"] = "[string \"@Interface\\AddOns\\Xunamate\\xunamate-0.1.lua\"]:428: in function <Interface\\AddOns\\Xunamate\\xunamate.lua:391>\n[string \"@Interface\\AddOns\\Xunamate\\xunamate-0.1.lua\"]:446: in function <Interface\\AddOns\\Xunamate\\xunamate.lua:444>",
			["session"] = 418,
			["counter"] = 3,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn '!BlizzardRaidFramesFix' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2020/12/28 17:41:47",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:574: in function `CompactRaidFrameManager_LockContainer'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:567: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:56: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:49>",
			["session"] = 421,
			["counter"] = 4,
		}, -- [3]
	},
}
