
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 865,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\Details\\core\\control.lua:951: table index is nil",
			["time"] = "2021/02/20 16:34:31",
			["locals"] = "self = <table> {\n SetBarSpecIconSettings = <function> defined @Interface\\AddOns\\Details\\frames\\window_main.lua:4245\n APITopics = <table> {\n }\n InitializeRunCodeWindow = <function> defined @Interface\\AddOns\\Details\\frames\\window_runcode.lua:8\n EntrarEmCombate = <function> defined @Interface\\AddOns\\Details\\core\\control.lua:316\n hex = <function> defined @Interface\\AddOns\\Details\\core\\util.lua:654\n BuildSpellList = <function> defined @Interface\\AddOns\\Details\\functions\\spellcache.lua:322\n opened_windows = 2\n RefreshAttributeTextSize = <function> defined @Interface\\AddOns\\Details\\frames\\window_main.lua:7549\n PotionList = <table> {\n }\n EndRefresh = <function> defined @Interface\\AddOns\\Details\\core\\control.lua:1722\n FechaJanelaInfo = <function> defined @Interface\\AddOns\\Details\\frames\\window_playerbreakdown.lua:396\n GetMode = <function> defined @Interface\\AddOns\\Details\\classes\\class_instance.lua:173\n SetMode = <function> defined @Interface\\AddOns\\Details\\classes\\class_instance.lua:2724\n RestoreState_CurrentMythicDungeonRun = <function> defined @Interface\\AddOns\\Details\\functions\\profiles.lua:1474\n APIVersion = 144\n IsPluginEnabled = <function> defined @Interface\\AddOns\\Details\\core\\plugins.lua:58\n ImportProfile = <function> defined @Interface\\AddOns\\Details\\functions\\profiles.lua:1633\n show_totalhitdamage_on_overkill = false\n SetNickname = <function> defined @Interface\\AddOns\\Details\\Libs\\NickTag-1.0\\NickTag-1.0.lua:573\n color_by_arena_team = true\n SortKeyGroupHeal = <function> defined @Interface\\AddOns\\Details\\classes\\class_heal.lua:125\n SortKeyGroup = <function> defined @Interface\\AddOns\\Details\\classes\\class_damage.lua:134\n IsInEncounter = <function> defined @Interface\\AddOns\\Details\\core\\parser.lua:5624\n Check_ZONE_CHANGED_NEW_AREA = <function> defined @Interface\\AddOns\\Details\\core\\parser.lua:4385\n plugin_window_pos = <table> {\n }\n gump = <table> {\n }\n CaptureRefresh = <function> defined @Interface\\AddOns\\Details\\core\\parser.lua:4038\n NewModule = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:235\n InstancesToStoreData = <table> {\n }\n name_space_info = <function> defined @Interface\\AddOns\\Details\\core\\util.lua:1359\n ShowDelayMsg = <function> defined @Interface\\AddOns\\Details\\boot.lua:751\n Resize = <function> defined @Interface\\AddOns\\Details\\classes\\class_instance.lua:1899\n GetEncounterActorsName = <function> defined @Interface\\AddOns\\Details\\functions\\boss.lua:306\n RequestCloudData = <function> defined @Interface\\AddOns\\Details\\core\\network.lua:773\n RestauraJanela = <function> defined @Interface\\AddOns\\Details\\classes\\class_instance.lua:1458\n default_skin_to_use = \"Minimalistic\"\n GetOpenedWindowsAmount = <function> defined @Interface\\AddOns\\Details\\classes\\class_instance.lua:281\n GetInstanceGroup = <function> defined @Interface\\AddOns\\Details\\frames\\window_main.lua:8033\n deadlog_events = 32\n Dump = <function> defined @Interface\\AddOns\\Details\\frames\\window_dump.lua:14\n OpenNewsWindow = <function> defined @Interface\\AddOns\\Details\\frames\\window_news.lua:7\n last_instance_id = 2289\n Disable = <function> defined @Interface\\AddOns\\BagSync\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:314\n atributo_energy = <table> {\n }\n UnitDamageOnUnit = <function> defined @Interface\\AddOns\\Details\\functions\\api2.lua:1123\n name_space_generic = <function> defined @Interface\\AddOns\\Details\\core\\util.lua:1369\n storage = <table> {\n }\n AdjustAlphaByContext = <function> defined @Interface\\AddOns\\Details\\frames\\window_main.lua:7371\n AddOnStartTime = 244444.807000\n ContainerSortEnemies = <function> defined @Interface\\AddOns\\Details\\classes\\class_damage.lua:254\n ToolBar = <table> {\n }\n GetTitleBarText = <function> defined @Interface\\AddOns\\Details\\frames\\window_main.lua:7644\n FixToolbarMenu = <function> defined @Interface\\AddOns\\Details\\classes\\class_instance.lua:1446\n UseWestNumericalSystem = <function> defined @Interface\\AddOns\\Details\\core\\util.lua:292\n FazerAnimacao_Esquerda = <function> defined @Interface\\AddOns\\Details\\core\\windows.lua:234\n Desagrupar = <function> defined @Interface\\AddOns\\Details\\classes\\class_instance.lu",
			["stack"] = "[string \"@Interface\\AddOns\\Details\\core\\control.lua\"]:951: in function `GetPlayersInArena'\n[string \"@Interface\\AddOns\\Details\\core\\control.lua\"]:1057: in function `EnteredInArena'\n[string \"@Interface\\AddOns\\Details\\core\\parser.lua\"]:4480: in function `?'\n[string \"@Interface\\AddOns\\BagSync\\libs\\AceTimer-3.0\\AceTimer-3.0-17.lua\"]:55: in function <...ce\\AddOns\\BagSync\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:50>",
			["session"] = 858,
			["counter"] = 14,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\BigDebuffs\\BigDebuffs-v9.7.lua:982: attempt to index field '?' (a nil value)",
			["time"] = "2021/02/20 22:25:12",
			["stack"] = "[string \"@Interface\\AddOns\\BigDebuffs\\BigDebuffs-v9.7.lua\"]:982: in function `GetAuraPriority'\n[string \"@Interface\\AddOns\\BigDebuffs\\BigDebuffs-v9.7.lua\"]:1679: in function `UNIT_AURA'\n[string \"@Interface\\AddOns\\BigDebuffs\\BigDebuffs-v9.7.lua\"]:1867: in function `?'\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:145: in function <...nIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[string \"=[C]\"]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:90: in function `Fire'\n[string \"@Interface\\AddOns\\BagSync\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ce\\AddOns\\BagSync\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>\n[string \"=[C]\"]: in function `TurnOrActionStop'\n[string \"TURNORACTION\"]:4: in function <[string \"TURNORACTION\"]:1>",
			["session"] = 861,
			["counter"] = 8,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn '!BlizzardRaidFramesFix' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2021/02/20 11:59:45",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:574: in function `CompactRaidFrameManager_LockContainer'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:567: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:56: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:49>",
			["session"] = 864,
			["counter"] = 5,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'XunaTweaks' tried to call the protected function 'MainMenuBar:ClearAllPoints()'.",
			["time"] = "2021/02/21 15:20:00",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `ClearAllPoints'\n[string \"@Interface\\FrameXML\\MainMenuBar.lua\"]:43: in function `SetPositionForStatusBars'\n[string \"@Interface\\FrameXML\\MainMenuBar.lua\"]:109: in function <Interface\\FrameXML\\MainMenuBar.lua:65>",
			["session"] = 864,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "Error loading Interface\\AddOns\\PremadeGroupsFilter\\Plugins\\RaiderIO.lua",
			["session"] = 865,
			["time"] = "2021/02/20 11:52:28",
			["counter"] = 42,
		}, -- [5]
	},
}
