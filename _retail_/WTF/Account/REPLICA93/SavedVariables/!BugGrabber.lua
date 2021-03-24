
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 1093,
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
			["time"] = "2021/03/08 12:53:51",
			["session"] = 982,
			["counter"] = 24,
		}, -- [2]
		{
			["message"] = "Interface\\SharedXML\\AddonList.lua:591: AddOn index must be in the range of 1 to 65",
			["time"] = "2021/03/12 15:34:25",
			["locals"] = "(*temporary) = 0\n",
			["stack"] = "[string \"=[C]\"]: in function `GetAddOnInfo'\n[string \"@Interface\\SharedXML\\AddonList.lua\"]:591: in function `AddonTooltip_Update'\n[string \"@Interface\\SharedXML\\AddonList.lua\"]:470: in function `AddonListScrollFrame_OnVerticalScroll'\n[string \"*:OnVerticalScroll\"]:1: in function <[string \"*:OnVerticalScroll\"]:1>\n[string \"=[C]\"]: in function `SetVerticalScroll'\n[string \"@Interface\\SharedXML\\SecureUIPanelTemplates.lua\"]:64: in function <Interface\\SharedXML\\SecureUIPanelTemplates.lua:63>\n[string \"=[C]\"]: in function `SetValue'\n[string \"@Interface\\SharedXML\\SharedUIPanelTemplates.lua\"]:191: in function <Interface\\SharedXML\\SharedUIPanelTemplates.lua:185>",
			["session"] = 990,
			["counter"] = 5,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'XunaTweaks' tried to call the protected function 'MainMenuBar:ClearAllPoints()'.",
			["time"] = "2021/03/07 21:00:22",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `ClearAllPoints'\n[string \"@Interface\\FrameXML\\MainMenuBar.lua\"]:43: in function `SetPositionForStatusBars'\n[string \"@Interface\\FrameXML\\MainMenuBar.lua\"]:109: in function <Interface\\FrameXML\\MainMenuBar.lua:65>",
			["session"] = 1003,
			["counter"] = 5,
		}, -- [4]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'AutoTurnIn' tried to call the protected function 'UseQuestLogSpecialItem()'.",
			["time"] = "2021/03/17 17:48:32",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `UseQuestLogSpecialItem'\n[string \"@Interface\\AddOns\\Blizzard_ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua\"]:95: in function <...ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua:88>",
			["session"] = 1019,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "...erface\\AddOns\\OmniCD\\Modules\\Cooldowns\\cooldowns.lua:1631: Usage: UnitHealthMax(\"unit\")",
			["time"] = "2021/03/10 20:55:25",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\OmniCD\\Modules\\Cooldowns\\cooldowns.lua\"]:1631: in function <...erface\\AddOns\\OmniCD\\Modules\\Cooldowns\\cooldowns.lua:1624>\n[string \"@Interface\\AddOns\\OmniCD\\Modules\\Cooldowns\\cooldowns.lua\"]:1640: in function `func'\n[string \"@Interface\\AddOns\\OmniCD\\Modules\\Cooldowns\\cooldowns.lua\"]:1678: in function `?'\n[string \"@Interface\\AddOns\\OmniCD\\Modules\\Cooldowns\\core.lua\"]:12: in function <Interface\\AddOns\\OmniCD\\Modules\\Cooldowns\\core.lua:11>",
			["session"] = 1021,
			["counter"] = 124,
		}, -- [6]
		{
			["message"] = "Interface\\FrameXML\\LFGList.lua:1741: Usage: GetCategoryInfo(categoryID)",
			["time"] = "2021/03/20 21:28:53",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[string \"=[C]\"]: in function `GetCategoryInfo'\n[string \"@Interface\\FrameXML\\LFGList.lua\"]:1741: in function `LFGListSearchPanel_SetCategory'\n[string \"@Interface\\FrameXML\\LFGList.lua\"]:590: in function `LFGListCategorySelection_StartFindGroup'\n[string \"@Interface\\AddOns\\WorldQuestsList\\WorldQuestsList-100.lua\"]:8225: in function `LFG_Search'\n[string \"@Interface\\AddOns\\WorldQuestsList\\WorldQuestsList-100.lua\"]:1585: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:1567>\n[string \"=[C]\"]: ?",
			["session"] = 1047,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'XunaTweaks' tried to call the protected function 'MainMenuBar:SetPoint()'.",
			["time"] = "2021/03/21 17:40:49",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetPoint'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:3255: in function `UIParentManageFramePositions'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2637: in function <Interface\\FrameXML\\UIParent.lua:2624>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:3427: in function `UIParent_ManageFramePositions'\n[string \"@Interface\\FrameXML\\ExtraAbilityContainer.lua\"]:76: in function `OnCleaned'\n[string \"@Interface\\SharedXML\\LayoutFrame.lua\"]:107: in function `MarkClean'\n[string \"@Interface\\SharedXML\\LayoutFrame.lua\"]:168: in function `Layout'\n[string \"@Interface\\SharedXML\\LayoutFrame.lua\"]:86: in function <Interface\\SharedXML\\LayoutFrame.lua:84>",
			["session"] = 1054,
			["counter"] = 1,
		}, -- [8]
		{
			["message"] = "AceLocale-3.0-6: OmniCD: Missing entry for 'A new update is available. (%s)'",
			["time"] = "2021/03/12 12:12:36",
			["stack"] = "[string \"@Interface\\AddOns\\OmniCD\\Core\\load.lua\"]:122: in function <Interface\\AddOns\\OmniCD\\Core\\load.lua:113>",
			["session"] = 1056,
			["counter"] = 2,
		}, -- [9]
		{
			["message"] = "...erface\\AddOns\\OmniCD\\Modules\\Cooldowns\\cooldowns.lua:1633: Usage: UnitHealthMax(\"unit\")",
			["time"] = "2021/03/22 20:24:26",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\OmniCD\\Modules\\Cooldowns\\cooldowns.lua\"]:1633: in function <...erface\\AddOns\\OmniCD\\Modules\\Cooldowns\\cooldowns.lua:1626>\n[string \"@Interface\\AddOns\\OmniCD\\Modules\\Cooldowns\\cooldowns.lua\"]:1642: in function `func'\n[string \"@Interface\\AddOns\\OmniCD\\Modules\\Cooldowns\\cooldowns.lua\"]:1680: in function `?'\n[string \"@Interface\\AddOns\\OmniCD\\Modules\\Cooldowns\\core.lua\"]:12: in function <Interface\\AddOns\\OmniCD\\Modules\\Cooldowns\\core.lua:11>",
			["session"] = 1080,
			["counter"] = 104,
		}, -- [10]
		{
			["message"] = "...ace\\AddOns\\SpellNotifications\\SpellNotifications-2.0.0.lua:210: attempt to concatenate local 'spellName' (a nil value)",
			["time"] = "2021/03/10 18:19:31",
			["locals"] = "event = \"COMBAT_LOG_EVENT_UNFILTERED\"\ncurrentSpec = 3\ncurrentSpecName = \"Restoration\"\ntimeStamp = 1615393170.559000\nevent = \"SPELL_DAMAGE\"\nhideCaster = false\nsourceGUID = \"Player-581-07B4C3E7\"\nsourceName = \"Elendren-Blackrock\"\nsourceFlags = 1352\nsourceRaidFlags = 0\ndestGUID = \"Creature-0-4242-1505-25157-5925-000048F191\"\ndestName = \"Grounding Totem\"\ndestFlags = 8465\ndestRaidFlags = 0\nspellName = nil\n(*temporary) = <function> defined @Interface\\AddOns\\SpellNotifications\\SpellNotifications.lua:286\n(*temporary) = \"Grounded \"\n(*temporary) = nil\n(*temporary) = \".\"\n(*temporary) = 701\n(*temporary) = 16\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to concatenate local 'spellName' (a nil value)\"\nreflected = <table> {\n}\n",
			["stack"] = "[string \"@Interface\\AddOns\\SpellNotifications\\SpellNotifications-2.0.0.lua\"]:210: in function `SpellNotifications_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 1081,
			["counter"] = 193,
		}, -- [11]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'Leatrix_Maps' tried to call the protected function 'ReportPlayerIsPVPAFK()'.",
			["time"] = "2021/03/23 20:40:26",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `ReportPlayerIsPVPAFK'\n[string \"@Interface\\AddOns\\Blizzard_SharedMapDataProviders\\GroupMembersDataProvider.lua\"]:189: in function `func'\n[string \"@Interface\\SharedXML\\UIDropDownMenu.lua\"]:905: in function `UIDropDownMenuButton_OnClick'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>",
			["session"] = 1082,
			["counter"] = 1,
		}, -- [12]
		{
			["message"] = "Interface\\AddOns\\MoveAnything\\Modules\\Position.lua:21: attempt to index local 'e' (a nil value)",
			["time"] = "2021/03/24 10:28:21",
			["locals"] = "self = <table> {\n IsValidObject = <function> defined @Interface\\AddOns\\MoveAnything\\Modules\\Position.lua:8\n Enable = <function> defined @Interface\\AddOns\\MoveAnything\\Modules\\Position.lua:11\n lSafeRelatives = <table> {\n }\n name = \"Position\"\n StoreOrgPoints = <function> defined @Interface\\AddOns\\MoveAnything\\Modules\\Position.lua:187\n GetFirstOrgPoint = <function> defined @Interface\\AddOns\\MoveAnything\\Modules\\Position.lua:246\n orgVar = \"orgPos\"\n var = \"pos\"\n RestoreOrgPoints = <function> defined @Interface\\AddOns\\MoveAnything\\Modules\\Position.lua:219\n Reset = <function> defined @Interface\\AddOns\\MoveAnything\\Modules\\Position.lua:112\n Apply = <function> defined @Interface\\AddOns\\MoveAnything\\Modules\\Position.lua:20\n Disable = <function> defined @Interface\\AddOns\\MoveAnything\\Modules\\Position.lua:18\n}\ne = nil\nf = Boss1TargetFrame {\n 0 = <userdata>\n debuffs = Boss1TargetFrameDebuffs {\n }\n showThreat = true\n raidTargetIcon = Boss1TargetFrameTextureFrameRaidTargetIcon {\n }\n elapsed = 0\n highLevelTexture = Boss1TargetFrameTextureFrameHighLevelTexture {\n }\n healAbsorbBarRightShadow = Boss1TargetFrameHealAbsorbBarRightShadow {\n }\n healAbsorbBarLeftShadow = Boss1TargetFrameHealAbsorbBarLeftShadow {\n }\n MAOrgParent = UIParent {\n }\n pvpIcon = Boss1TargetFrameTextureFramePVPIcon {\n }\n MASetPoint = <function> defined =[C]:-1\n isBossFrame = true\n petBattleIcon = Boss1TargetFrameTextureFramePetBattleIcon {\n }\n prestigePortrait = Boss1TargetFrameTextureFramePrestigePortrait {\n }\n questIcon = Boss1TargetFrameTextureFrameQuestIcon {\n }\n healthbar = Boss1TargetFrameHealthBar {\n }\n MAHooked = true\n orgX = 0\n MAScaled = 1\n MAWasMovable = true\n deadText = Boss1TargetFrameTextureFrameDeadText {\n }\n totalAbsorbBarOverlay = Boss1TargetFrameTotalAbsorbBarOverlay {\n }\n myHealPredictionBar = Boss1TargetFrameMyHealPredictionBar {\n }\n noTextPrefix = true\n overAbsorbGlow = Boss1TargetFrameTextureFrameOverAbsorbGlow {\n }\n MAMover = MAMover1 {\n }\n buffs = Boss1TargetFrameBuffs {\n }\n overHealAbsorbGlow = Boss1TargetFrameTextureFrameOverHealAbsorbGlow {\n }\n showLevel = true\n levelText = Boss1TargetFrameTextureFrameLevelText {\n }\n orgY = 0\n leaderIcon = Boss1TargetFrameTextureFrameLeaderIcon {\n }\n healAbsorbBar = Boss1TargetFrameHealAbsorbBar {\n }\n MAWasUserPlaced = true\n threatIndicator = Boss1TargetFrameFlash {\n }\n statusSign = -1\n unit = \"boss1\"\n name = Boss1TargetFrameTextureFrameName {\n }\n threatNumericIndicator = Boss1TargetFrameNumericalThreat {\n }\n spellbar = Boss1TargetFrameSpellBar {\n }\n borderTexture = Boss1TargetFrameTextureFrameTexture {\n }\n totalAbsorbBar = Boss1TargetFrameTotalAbsorbBar {\n }\n Background = Boss1TargetFrameBackground {\n }\n TOT_AURA_ROW_WIDTH = 101\n SetPoint = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:103\n maxDebuffs = 0\n statusCounter = 0\n unconsciousText = Boss1TargetFrameTextureFrameUnconsciousText {\n }\n nameBackground = Boss1TargetFrameNameBackground {\n }\n manabar = Boss1TargetFrameManaBar {\n }\n MAE = <table> {\n }\n unitHPPercent = 1\n OnEvent = <function> defined @Interface\\FrameXML\\TargetFrame.lua:155\n prestigeBadge = Boss1TargetFrameTextureFramePrestigeBadge {\n }\n auraRows = 0\n predictedPowerCost = 0\n powerBarAlt = Boss1TargetFramePowerBarAlt {\n }\n textureFrame = Boss1TargetFrameTextureFrame {\n }\n menu = <function> defined @Interface\\FrameXML\\TargetFrame.lua:101\n otherHealPredictionBar = Boss1TargetFrameOtherHealPredictionBar {\n }\n maxBuffs = 0\n}\nopt = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index local 'e' (a nil value)\"\nMovAny = <table> {\n GroupLayers = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:3027\n UpdateGUI = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:3386\n OnMoveCheck = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:2595\n modules = <table> {\n }\n MAFEFrameAtCursor = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:2284\n CopyProfil",
			["stack"] = "[string \"@Interface\\AddOns\\MoveAnything\\Modules\\Position.lua\"]:21: in function `Apply'\n[string \"@Interface\\AddOns\\MoveAnything\\FrameEditor.lua\"]:2414: in function `f'\n[string \"@Interface\\AddOns\\MoveAnything\\MoveAnything-18.0.5.lua\"]:1317: in function `SyncFrames'\n[string \"@Interface\\AddOns\\MoveAnything\\MoveAnything-18.0.5.lua\"]:1274: in function `SyncAllFrames'\n[string \"@Interface\\AddOns\\MoveAnything\\MoveAnything-18.0.5.lua\"]:5850: in function <Interface\\AddOns\\MoveAnything\\MoveAnything.lua:5452>",
			["session"] = 1089,
			["counter"] = 1,
		}, -- [13]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'MoveAnything' tried to call the protected function 'ArenaEnemyFrames:ClearAllPoints()'.",
			["time"] = "2021/03/23 20:45:51",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `ClearAllPoints'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:3389: in function `UIParentManageFramePositions'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2637: in function <Interface\\FrameXML\\UIParent.lua:2624>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:3427: in function `UIParent_ManageFramePositions'\n[string \"@Interface\\FrameXML\\MainMenuBar.lua\"]:60: in function `SetPositionForStatusBars'\n[string \"@Interface\\FrameXML\\MainMenuBar.lua\"]:109: in function <Interface\\FrameXML\\MainMenuBar.lua:65>",
			["session"] = 1091,
			["counter"] = 3,
		}, -- [14]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn '!BlizzardRaidFramesFix' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2021/03/07 20:50:30",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:574: in function `CompactRaidFrameManager_LockContainer'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:567: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:56: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:49>",
			["session"] = 1091,
			["counter"] = 41,
		}, -- [15]
	},
}
