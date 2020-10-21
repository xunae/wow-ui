
BugGrabberDB = {
	["session"] = 5186,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\Favorites\\Favorites-3.4.lua:133: attempt to call global 'BNGetFriendInfo' (a nil value)",
			["time"] = "2020/10/20 17:22:10",
			["locals"] = "forceUpdate = true\nnumBNetTotal = 120\nnumBNetOnline = 63\nnumBNetFavorite = 13\nnumBNetFavoriteOnline = 6\nnumBNetOffline = 57\nnumBNetFavoriteOffline = 7\nnumWoWTotal = 0\nnumWoWOnline = 0\nnumWoWOffline = 0\naddButtonIndex = 16\ntotalButtonHeight = 517\nAddButtonInfo = <function> defined @Interface\\AddOns\\Favorites\\Favorites.lua:70\ni = 1\nnumInvites = 0\nfavs = <table> {\n}\n(for generator) = <function> defined =[C]:-1\n(for state) = <table> {\n Favorites = <table> {\n }\n}\n(for control) = \"Favorites\"\nl = \"Favorites\"\ns = <table> {\n}\n(for index) = 14\n(for limit) = 114\n(for step) = 1\ni = 14\n(*temporary) = nil\n(*temporary) = 14\n(*temporary) = \"attempt to call global 'BNGetFriendInfo' (a nil value)\"\nfriendSearchValue = \"\"\nBNET_HEADER_TEXT = 6\nFriendListEntries = <table> {\n 1 = <table> {\n }\n 2 = <table> {\n }\n 3 = <table> {\n }\n 4 = <table> {\n }\n 5 = <table> {\n }\n 6 = <table> {\n }\n 7 = <table> {\n }\n 8 = <table> {\n }\n 9 = <table> {\n }\n 10 = <table> {\n }\n 11 = <table> {\n }\n 12 = <table> {\n }\n 13 = <table> {\n }\n 14 = <table> {\n }\n 15 = <table> {\n }\n 16 = <table> {\n }\n}\nBNET_SEARCH = 20\n",
			["stack"] = "[string \"@Interface\\AddOns\\Favorites\\Favorites-3.4.lua\"]:133: in function `FriendsList_Update'\n[string \"@Interface\\FrameXML\\FriendsFrame.lua\"]:305: in function <Interface\\FrameXML\\FriendsFrame.lua:304>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2893: in function `SetUIPanel'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2738: in function `ShowUIPanel'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2606: in function <Interface\\FrameXML\\UIParent.lua:2602>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:3457: in function <Interface\\FrameXML\\UIParent.lua:3436>\n[string \"=[C]\"]: in function `ShowUIPanel'\n[string \"@Interface\\FrameXML\\FriendsFrame.lua\"]:1088: in function `ToggleFriendsFrame'\n[string \"TOGGLESOCIAL\"]:1: in function <[string \"TOGGLESOCIAL\"]:1>",
			["session"] = 5167,
			["counter"] = 3,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\ILD-Blizzard\\core.lua:4: attempt to index local 'module' (a nil value)",
			["time"] = "2020/10/20 16:49:02",
			["locals"] = "me = \"ILD-Blizzard\"\nns = <table> {\n print = <function> defined @Interface\\AddOns\\ItemLevelDisplay\\Bags.lua:27\n}\naddon = nil\nmodule = nil\n(*temporary) = <function> defined @Interface\\AddOns\\ILD-Blizzard\\core.lua:4\n(*temporary) = \"attempt to index local 'module' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\ILD-Blizzard\\core.lua\"]:4: in main chunk",
			["session"] = 5176,
			["counter"] = 12,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn '!BlizzardRaidFramesFix' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2020/10/20 19:27:54",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:574: in function `CompactRaidFrameManager_LockContainer'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:567: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:56: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:49>",
			["session"] = 5176,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "Interface\\FrameXML\\PartyUtil.lua:51: bad argument #2 to 'format' (string expected, got nil)",
			["time"] = "2020/10/20 19:27:14",
			["locals"] = "(*temporary) = \"%s\n\n%s\"\n(*temporary) = \"You are currently in |cffffffffTimewalking Campaigns: The Iron Horde|r\"\n(*temporary) = nil\n(*temporary) = \"string expected, got nil\"\n",
			["stack"] = "[string \"=[C]\"]: in function `format'\n[string \"@Interface\\FrameXML\\PartyUtil.lua\"]:51: in function <Interface\\FrameXML\\PartyUtil.lua:43>\n[string \"=(tail call)\"]: ?\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:352: in function `PartyMemberFrame_UpdateNotPresentIcon'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:180: in function `PartyMemberFrame_UpdateMember'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:69: in function `PartyMemberFrame_ToVehicleArt'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:25: in function `PartyMemberFrame_UpdateArt'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:436: in function `PartyMemberFrame_OnEvent'\n[string \"*:OnEvent\"]:1: in function `OnEvent'\n[string \"@Interface\\FrameXML\\UnitFrame.lua\"]:921: in function <Interface\\FrameXML\\UnitFrame.lua:919>",
			["session"] = 5176,
			["counter"] = 11,
		}, -- [4]
		{
			["message"] = "Interface\\AddOns\\AngryWorldQuests\\QuestFrame.lua:86: table index is nil",
			["time"] = "2020/10/20 16:49:01",
			["locals"] = "ADDON = \"AngryWorldQuests\"\nAddon = <table> {\n RegisterAddOnLoaded = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Core.lua:59\n RegisterEvent = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Core.lua:18\n NewModule = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Core.lua:110\n ForAllModules = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Core.lua:119\n Modules = <table> {\n }\n Version = \"v0.20.6\"\n Name = \"Angry World Quests\"\n PLAYER_ENTERING_WORLD = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Core.lua:128\n UnregisterAddOnLoaded = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Core.lua:77\n ADDON_LOADED = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Core.lua:47\n UnregisterEvent = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Core.lua:28\n ModulePrototype = <table> {\n }\n}\nMod = <table> {\n}\nConfig = nil\ndataProvder = nil\nhoveredQuestID = nil\nMAPID_BROKENISLES = 619\nMAPID_DALARAN = 627\nMAPID_AZSUNA = 630\nMAPID_STORMHEIM = 634\nMAPID_VALSHARAH = 641\nMAPID_HIGHMOUNTAIN = 650\nMAPID_SURAMAR = 680\nMAPID_EYEOFAZSHARA = 790\nMAPID_BROKENSHORE = 646\nMAPID_ARGUS = 905\nMAPID_ANTORANWASTES = 885\nMAPID_KROKUUN = 830\nMAPID_MACAREE = 882\nMAPID_DARKSHORE = 62\nMAPID_AZEROTH = 947\nMAPID_ZANDALAR = 875\nMAPID_VOLDUN = 864\nMAPID_NAZMIR = 863\nMAPID_ZULDAZAR = 862\nMAPID_KUL_TIRAS = 876\nMAPID_STORMSONG_VALLEY = 942\nMAPID_DRUSTVAR = 896\nMAPID_TIRAGARDE_SOUND = 895\nMAPID_TOL_DAGOR = 1169\nMAPID_ZONES_CONTINENTS = <table> {\n 864 = 875\n 942 = 876\n 896 = 876\n 680 = 619\n 634 = 619\n 650 = 619\n 790 = 619\n 885 = 905\n 641 = 619\n 627 = 619\n 1169 = 876\n 830 = 905\n 895 = 876\n 862 = 875\n 630 = 619\n 646 = 619\n 863 = 875\n 882 = 905\n}\nMAPID_CONTINENTS = <table> {\n 905 = true\n 619 = true\n 876 = true\n 875 = true\n}\nMAPID_ALL = <table> {\n 1 = 947\n 2 = 885\n 3 = 830\n 4 = 882\n}\nMAPID_ALL_ARGUS = <table> {\n 1 = 885\n 2 = 830\n 3 = 882\n}\nMAPID_ORDER = <table> {\n 864 = 1\n 942 = 4\n 896 = 5\n 680 = 51\n 634 = 55\n 650 = 54\n 790 = 57\n 885 = 59\n 641 = 53\n 627 = 56\n 882 = 61\n 830 = 60\n 646 = 58\n 862 = 3\n 630 = 52\n 863 = 2\n 1169 = 7\n 895 = 6\n}\nCURRENCYID_RESOURCES = 1220\nCURRENCYID_WAR_SUPPLIES = 1342\nCURRENCYID_NETHERSHARD = 1226\nCURRENCYID_VEILED_ARGUNITE = 1508\nCURRENCYID_WAKENING_ESSENCE = 1533\nCURRENCYID_AZERITE = 1553\nCURRENCYID_WAR_RESOURCES = 1560\n(*temporary) = <table> {\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"table index is nil\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\AngryWorldQuests\\QuestFrame.lua\"]:86: in main chunk",
			["session"] = 5177,
			["counter"] = 16,
		}, -- [5]
		{
			["message"] = "...ddOns\\ItemLevelDisplay\\libs\\LibInit\\localization.lua:3: Cannot find a library instance of \"LibInit\".",
			["time"] = "2020/10/20 16:49:02",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"LibInit\".\"\n",
			["stack"] = "[string \"=[C]\"]: in function `error'\n[string \"@Interface\\AddOns\\!KalielsTracker\\Libs\\LibStub\\LibStub.lua\"]:23: in function `LibStub'\n[string \"@Interface\\AddOns\\ItemLevelDisplay\\libs\\LibInit\\localization.lua\"]:3: in main chunk",
			["session"] = 5177,
			["counter"] = 16,
		}, -- [6]
		{
			["message"] = "...ce\\AddOns\\ItemLevelDisplay\\libs\\LibInit\\colorize-Colorize:.lua:24: Cannot find a library instance of \"LibInit\".",
			["time"] = "2020/10/20 16:49:02",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"LibInit\".\"\n",
			["stack"] = "[string \"=[C]\"]: in function `error'\n[string \"@Interface\\AddOns\\!KalielsTracker\\Libs\\LibStub\\LibStub.lua\"]:23: in function `LibStub'\n[string \"@Interface\\AddOns\\ItemLevelDisplay\\libs\\LibInit\\colorize-Colorize:.lua\"]:24: in main chunk",
			["session"] = 5177,
			["counter"] = 16,
		}, -- [7]
		{
			["message"] = "...ace\\AddOns\\ItemLevelDisplay\\libs\\LibInit\\factory.lua:19: Cannot find a library instance of \"LibInit\".",
			["time"] = "2020/10/20 16:49:02",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"LibInit\".\"\n",
			["stack"] = "[string \"=[C]\"]: in function `error'\n[string \"@Interface\\AddOns\\!KalielsTracker\\Libs\\LibStub\\LibStub.lua\"]:23: in function `LibStub'\n[string \"@Interface\\AddOns\\ItemLevelDisplay\\libs\\LibInit\\factory.lua\"]:19: in main chunk",
			["session"] = 5177,
			["counter"] = 16,
		}, -- [8]
		{
			["message"] = "...terface\\AddOns\\ItemLevelDisplay\\ItemLevelDisplay-2.2.5 70200.lua:36: Cannot find a library instance of \"LibInit\".",
			["time"] = "2020/10/20 16:49:02",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"LibInit\".\"\n",
			["stack"] = "[string \"=[C]\"]: in function `error'\n[string \"@Interface\\AddOns\\!KalielsTracker\\Libs\\LibStub\\LibStub.lua\"]:23: in function `LibStub'\n[string \"@Interface\\AddOns\\ItemLevelDisplay\\ItemLevelDisplay-2.2.5 70200.lua\"]:36: in main chunk",
			["session"] = 5177,
			["counter"] = 16,
		}, -- [9]
		{
			["message"] = "Interface\\AddOns\\ItemLevelDisplay\\RelNotes.lua:3: Usage: GetAddon(name): 'name' - Cannot find an AceAddon 'ItemLevelDisplay'.",
			["time"] = "2020/10/20 16:49:02",
			["locals"] = "(*temporary) = \"Usage: GetAddon(name): 'name' - Cannot find an AceAddon 'ItemLevelDisplay'.\"\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\!KalielsTracker\\Libs\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:155: in function `GetAddon'\n[string \"@Interface\\AddOns\\ItemLevelDisplay\\RelNotes.lua\"]:3: in main chunk",
			["session"] = 5177,
			["counter"] = 16,
		}, -- [10]
		{
			["message"] = "Interface\\AddOns\\ItemLevelDisplay\\Bags.lua:31: Cannot find a library instance of \"LibInit\".",
			["time"] = "2020/10/20 16:49:02",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"LibInit\".\"\n",
			["stack"] = "[string \"=[C]\"]: in function `error'\n[string \"@Interface\\AddOns\\!KalielsTracker\\Libs\\LibStub\\LibStub.lua\"]:23: in function `LibStub'\n[string \"@Interface\\AddOns\\ItemLevelDisplay\\Bags.lua\"]:31: in main chunk",
			["session"] = 5177,
			["counter"] = 28,
		}, -- [11]
		{
			["message"] = "Interface\\AddOns\\ILD-Litebag\\core.lua:4: attempt to index local 'module' (a nil value)",
			["time"] = "2020/10/20 17:23:28",
			["locals"] = "me = \"ILD-Litebag\"\nns = <table> {\n print = <function> defined @Interface\\AddOns\\ItemLevelDisplay\\Bags.lua:27\n}\naddon = nil\nmodule = nil\n(*temporary) = <function> defined @Interface\\AddOns\\ILD-Litebag\\core.lua:4\n(*temporary) = \"attempt to index local 'module' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\ILD-Litebag\\core.lua\"]:4: in main chunk",
			["session"] = 5177,
			["counter"] = 4,
		}, -- [12]
		{
			["message"] = "Interface\\AddOns\\AngryWorldQuests\\Config.lua:503: attempt to index field 'Filters' (a nil value)",
			["time"] = "2020/10/20 16:49:15",
			["locals"] = "self = <table> {\n GetFilterDisabled = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:166\n FilterKeyToMask = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:134\n HasFilters = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:139\n CharacterConfig = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:205\n GetFilter = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:148\n SetNoFilter = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:183\n GetFilterTable = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:154\n IsOnlyFilter = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:142\n InitializeDropdown = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:35\n Set = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:79\n Startup = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:496\n RegisterCallback = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:103\n SetOnlyFilter = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:187\n SetCharacterConfig = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:209\n UnregisterCallback = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:121\n BeforeStartup = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:465\n SetFilter = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:172\n CreatePanel = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:452\n ToggleFilter = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:192\n Get = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Config.lua:63\n}\nlastFilter = 22\nlastFilter2 = nil\nvalue = 3210996\nvalue2 = 0\nmaxFilter = 0\n(for generator) = <function> defined =[C]:-1\n(for state) = <table> {\n TRACKED = 13\n ARTIFACT_POWER = 2\n PROFESSION = 10\n EMISSARY = 1\n ORDER_RESOURCES = 4\n PETBATTLE = 11\n ITEMS = 6\n DUNGEON = 16\n ZONE = 14\n FACTION = 8\n VEILED_ARGUNITE = 19\n PVP = 9\n TIME = 7\n WAR_RESOURCES = 22\n AZERITE = 21\n WAKENING_ESSENCE = 20\n SORT = 12\n LOOT = 3\n NETHERSHARD = 18\n WAR_SUPPLIES = 17\n RARE = 15\n GOLD = 5\n}\n(for control) = \"TRACKED\"\nkey = \"TRACKED\"\nindex = 13\n(*temporary) = nil\n(*temporary) = 13\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index field 'Filters' (a nil value)\"\nFiltersConversion = <table> {\n TRACKED = 13\n ARTIFACT_POWER = 2\n PROFESSION = 10\n EMISSARY = 1\n ORDER_RESOURCES = 4\n PETBATTLE = 11\n ITEMS = 6\n DUNGEON = 16\n ZONE = 14\n FACTION = 8\n VEILED_ARGUNITE = 19\n PVP = 9\n TIME = 7\n WAR_RESOURCES = 22\n AZERITE = 21\n WAKENING_ESSENCE = 20\n SORT = 12\n LOOT = 3\n NETHERSHARD = 18\n WAR_SUPPLIES = 17\n RARE = 15\n GOLD = 5\n}\nAddon = <table> {\n RegisterAddOnLoaded = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Core.lua:59\n RegisterEvent = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Core.lua:18\n NewModule = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Core.lua:110\n ForAllModules = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Core.lua:119\n Modules = <table> {\n }\n Version = \"v0.20.6\"\n Name = \"Angry World Quests\"\n PLAYER_ENTERING_WORLD = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Core.lua:128\n UnregisterAddOnLoaded = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Core.lua:77\n ADDON_LOADED = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Core.lua:47\n UnregisterEvent = <function> defined @Interface\\AddOns\\AngryWorldQuests\\Core.lua:28\n ModulePrototype = <table> {\n }\n}\noptionPanel = nil\nADDON = \"AngryWorldQuests\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\AngryWorldQuests\\Config.lua\"]:503: in function `?'\n[string \"@Interface\\AddOns\\AngryWorldQuests\\Core.lua\"]:122: in function `ForAllModules'\n[string \"@Interface\\AddOns\\AngryWorldQuests\\Core.lua\"]:130: in function `?'\n[string \"@Interface\\AddOns\\AngryWorldQuests\\Core.lua\"]:10: in function <Interface\\AddOns\\AngryWorldQuests\\Core.lua:6>",
			["session"] = 5177,
			["counter"] = 25,
		}, -- [13]
		{
			["message"] = "Interface\\AddOns\\ItemLevelDisplay\\libs\\LibInit\\LibInit.lua:46: unexpected symbol near ']'",
			["time"] = "2020/10/20 16:49:02",
			["locals"] = "",
			["stack"] = "",
			["session"] = 5177,
			["counter"] = 48,
		}, -- [14]
		{
			["message"] = "(null)",
			["time"] = "2020/10/20 16:49:16",
			["session"] = 5177,
			["counter"] = 128,
		}, -- [15]
		{
			["message"] = "Interface\\AddOns\\OmniBar\\Options-Options.lua:108: Usage: NonEmptySpell:ContinueOnLoad(callbackFunction)",
			["time"] = "2020/10/20 16:49:14",
			["stack"] = "[string \"=[C]\"]: in function `error'\n[string \"@Interface\\FrameXML\\ObjectAPI\\Spell.lua\"]:51: in function `ContinueOnSpellLoad'\n[string \"@Interface\\AddOns\\OmniBar\\Options-Options.lua\"]:108: in function <Interface\\AddOns\\OmniBar\\Options.lua:53>\n[string \"@Interface\\AddOns\\OmniBar\\Options-Options.lua\"]:557: in function `AddBarToOptions'\n[string \"@Interface\\AddOns\\OmniBar\\OmniBar-v10.8.lua\"]:104: in function <Interface\\AddOns\\OmniBar\\OmniBar.lua:70>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\!KalielsTracker\\Libs\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <...s\\!KalielsTracker\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\!KalielsTracker\\Libs\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:527: in function `EnableAddon'\n[string \"@Interface\\AddOns\\!KalielsTracker\\Libs\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:630: in function <...s\\!KalielsTracker\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 5186,
			["counter"] = 20,
		}, -- [16]
	},
}
