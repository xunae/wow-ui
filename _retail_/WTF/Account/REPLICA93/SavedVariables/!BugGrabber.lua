
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 5077,
	["errors"] = {
		{
			["message"] = "Invalid quest item in SetQuestItem(\"type\", index)",
			["time"] = "2019/07/15 12:28:07",
			["locals"] = "(*temporary) = GameTooltip {\n 0 = <userdata>\n SetQuestLogRewardSpell = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n ItemTooltip = <unnamed> {\n }\n SetHyperlink = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetGuildBankItem = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetQuestRewardSpell = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n comparing = false\n TopOverlay = <unnamed> {\n }\n SetPetAction = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetLootItem = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetQuestItem = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetTrainerService = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetInboxItem = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetBuybackItem = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n shoppingTooltips = <table> {\n }\n SetMerchantItem = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetQuestLogItem = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n counted = false\n SetTradeTargetItem = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetTalent = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetTradePlayerItem = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetShapeshift = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetSendMailItem = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n updateTooltip = 0.194000\n SetInventoryItem = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetCurrencyToken = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n FadeOut = <function> defined @Interface\\AddOns\\TipTac\\ttCore.lua:853\n SetLootRollItem = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetRecipeReagentItem = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetAuctionSellItem = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetBagItem = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n needsReset = true\n BottomOverlay = <unnamed> {\n }\n Show = <function> defined =[C]:-1\n SetRecipeResultItem = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetAuctionItem = <function> defined @Interface\\AddOns\\TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:402\n}\n(*temporary) = \"required\"\n(*temporary) = 1\n",
			["stack"] = "[C]: ?\n[C]: ?\n...TheUndermineJournal\\libs\\LibExtraTip\\LibExtraTip.lua:408: in function `SetQuestItem'\n[string \"*:OnEnter\"]:4: in function <[string \"*:OnEnter\"]:1>",
			["session"] = 4970,
			["counter"] = 2,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WorldQuestsList' tried to call the protected function 'Search()'.",
			["time"] = "2019/07/16 19:22:26",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Search'\nInterface\\FrameXML\\LFGList.lua:1742: in function `LFGListSearchPanel_DoSearch'\nInterface\\FrameXML\\LFGList.lua:1914: in function <Interface\\FrameXML\\LFGList.lua:1908>\n[C]: ?\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-89.lua:7444: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:7440>\n[C]: in function `Click'\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-89.lua:7537: in function `LFG_Search'\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-89.lua:7942: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:7916>",
			["session"] = 4973,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "Interface\\FrameXML\\LFGList.lua:2694: assertion failed!",
			["time"] = "2019/07/17 11:04:49",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: in function `assert'\nInterface\\FrameXML\\LFGList.lua:2694: in function `LFGListUtil_AugmentWithBest'\nInterface\\FrameXML\\LFGList.lua:663: in function `LFGListEntryCreation_Select'\nInterface\\FrameXML\\LFGList.lua:621: in function `LFGListEntryCreation_Show'\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-89.lua:7301: in function `LFG_StartQuest'\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-89.lua:7940: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:7916>",
			["session"] = 4976,
			["counter"] = 2,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WorldQuestsList' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2019/07/17 11:05:17",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Hide'\n...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:571: in function `CompactRaidFrameManager_LockContainer'\n...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:564: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:57: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:50>",
			["session"] = 4976,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "Interface\\FrameXML\\CompactUnitFrame.lua:731: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2019/07/17 20:13:00",
			["locals"] = "(*temporary) = <unnamed> {\n 0 = <userdata>\n r = 0.999998\n otherHealPrediction = <unnamed> {\n }\n overAbsorbGlow = <unnamed> {\n }\n g = 0.956861\n barTexture = <unnamed> {\n }\n totalAbsorbOverlay = <unnamed> {\n }\n b = 0.407842\n myHealAbsorbLeftShadow = <unnamed> {\n }\n myHealAbsorb = <unnamed> {\n }\n myHealPrediction = <unnamed> {\n }\n border = <unnamed> {\n }\n totalAbsorb = <unnamed> {\n }\n background = <unnamed> {\n }\n overHealAbsorbGlow = <unnamed> {\n }\n myHealAbsorbRightShadow = <unnamed> {\n }\n}\n",
			["stack"] = "[C]: in function `GetMinMaxValues'\nInterface\\FrameXML\\CompactUnitFrame.lua:731: in function `CompactUnitFrame_UpdateHealPrediction'\nInterface\\FrameXML\\CompactUnitFrame.lua:314: in function <Interface\\FrameXML\\CompactUnitFrame.lua:297>\n[C]: ?\n[C]: ?\n[C]: in function `CompactUnitFrame_UpdateAll'\nInterface\\FrameXML\\CompactUnitFrame.lua:189: in function `CompactUnitFrame_SetUnit'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:378: in function `OnAdded'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:95: in function `OnNamePlateAdded'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:51: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:42>",
			["session"] = 4982,
			["counter"] = 4,
		}, -- [5]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Favorites' tried to call the protected function 'RaidFrame:SetParent()'.",
			["time"] = "2019/07/19 10:17:06",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetParent'\nInterface\\FrameXML\\RaidFrame.lua:343: in function `ClaimRaidFrame'\nInterface\\FrameXML\\FriendsFrame.lua:361: in function `FriendsFrame_Update'\nInterface\\FrameXML\\FriendsFrame.lua:315: in function `FriendsFrame_OnShow'\n[string \"*:OnClick\"]:2: in function <[string \"*:OnClick\"]:1>",
			["session"] = 4987,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'REFlex' tried to call the protected function 'FriendsFrame:Hide()'.",
			["time"] = "2019/07/19 10:31:49",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Hide'\nInterface\\AddOns\\REFlex\\REFlex-2.6.9.lua:38: in function <Interface\\AddOns\\REFlex\\REFlex.lua:32>\n[C]: in function `Communities_LoadUI'\nInterface\\FrameXML\\UIParent.lua:930: in function `ToggleCommunitiesFrame'\nInterface\\FrameXML\\UIParent.lua:817: in function `ToggleGuildFrame'\n[string \"TOGGLEGUILDTAB\"]:1: in function <[string \"TOGGLEGUILDTAB\"]:1>",
			["session"] = 4987,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ItemLevelDisplay' tried to call the protected function 'PickupInventoryItem()'.",
			["time"] = "2019/07/19 11:16:18",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `PickupInventoryItem'\nInterface\\FrameXML\\EquipmentManager.lua:116: in function `EquipmentManager_EquipContainerItem'\nInterface\\FrameXML\\EquipmentManager.lua:336: in function `EquipmentManager_RunAction'\nInterface\\FrameXML\\PaperDollFrame.lua:1956: in function `onClickFunc'\nInterface\\FrameXML\\EquipmentFlyout.lua:484: in function <Interface\\FrameXML\\EquipmentFlyout.lua:481>",
			["session"] = 4988,
			["counter"] = 1,
		}, -- [8]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Favorites' tried to call the protected function 'CompactRaidFrame3:Show()'.",
			["time"] = "2019/07/19 22:32:25",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Show'\nInterface\\FrameXML\\CompactUnitFrame.lua:367: in function `CompactUnitFrame_UpdateVisible'\nInterface\\FrameXML\\CompactUnitFrame.lua:299: in function <Interface\\FrameXML\\CompactUnitFrame.lua:297>\n[C]: ?\n[C]: ?\n[C]: in function `CompactUnitFrame_UpdateAll'\nInterface\\FrameXML\\CompactUnitFrame.lua:121: in function <Interface\\FrameXML\\CompactUnitFrame.lua:54>",
			["session"] = 4990,
			["counter"] = 1,
		}, -- [9]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Favorites' tried to call the protected function 'CompactRaidFrame2:Show()'.",
			["time"] = "2019/07/20 19:54:00",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Show'\nInterface\\FrameXML\\CompactUnitFrame.lua:367: in function `CompactUnitFrame_UpdateVisible'\nInterface\\FrameXML\\CompactUnitFrame.lua:299: in function <Interface\\FrameXML\\CompactUnitFrame.lua:297>\n[C]: ?\n[C]: ?\n[C]: in function `CompactUnitFrame_UpdateAll'\nInterface\\FrameXML\\CompactUnitFrame.lua:121: in function <Interface\\FrameXML\\CompactUnitFrame.lua:54>",
			["session"] = 4992,
			["counter"] = 1,
		}, -- [10]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'XunaTweaks' tried to call the protected function 'ArenaEnemyFrame3:SetPoint()'.",
			["time"] = "2019/07/20 20:02:58",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetPoint'\n...terface\\AddOns\\Blizzard_ArenaUI\\Blizzard_ArenaUI.lua:180: in function `ArenaEnemyFrame_UpdatePlayer'\n...terface\\AddOns\\Blizzard_ArenaUI\\Blizzard_ArenaUI.lua:224: in function <...terface\\AddOns\\Blizzard_ArenaUI\\Blizzard_ArenaUI.lua:218>",
			["session"] = 4992,
			["counter"] = 1,
		}, -- [11]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'XunaTweaks' tried to call the protected function 'ArenaEnemyFrame2:SetPoint()'.",
			["time"] = "2019/07/21 13:18:13",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetPoint'\n...terface\\AddOns\\Blizzard_ArenaUI\\Blizzard_ArenaUI.lua:180: in function `ArenaEnemyFrame_UpdatePlayer'\n...terface\\AddOns\\Blizzard_ArenaUI\\Blizzard_ArenaUI.lua:224: in function <...terface\\AddOns\\Blizzard_ArenaUI\\Blizzard_ArenaUI.lua:218>",
			["session"] = 4995,
			["counter"] = 1,
		}, -- [12]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'RaidInterfaceAntidote' tried to call the protected function 'CompactPartyFrameMember1:Show()'.",
			["time"] = "2019/07/14 10:33:45",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Show'\nInterface\\FrameXML\\CompactUnitFrame.lua:367: in function `CompactUnitFrame_UpdateVisible'\nInterface\\FrameXML\\CompactUnitFrame.lua:299: in function <Interface\\FrameXML\\CompactUnitFrame.lua:297>\n[C]: ?\n[C]: ?\n[C]: in function `CompactUnitFrame_UpdateAll'\nInterface\\FrameXML\\CompactUnitFrame.lua:121: in function <Interface\\FrameXML\\CompactUnitFrame.lua:54>",
			["session"] = 5002,
			["counter"] = 3,
		}, -- [13]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'XunaTweaks' tried to call the protected function 'PetFrame:SetPoint()'.",
			["time"] = "2019/07/14 10:33:45",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetPoint'\nInterface\\FrameXML\\PetFrame.lua:48: in function `PetFrame_UpdateAnchoring'\nInterface\\FrameXML\\PetFrame.lua:85: in function `PetFrame_Update'\n[string \"*:OnShow\"]:2: in function <[string \"*:OnShow\"]:1>\n[C]: in function `Show'\nInterface\\FrameXML\\PetFrame.lua:67: in function `PetFrame_Update'\nInterface\\FrameXML\\PetFrame.lua:103: in function `OnEvent'\nInterface\\FrameXML\\UnitFrame.lua:933: in function <Interface\\FrameXML\\UnitFrame.lua:931>",
			["session"] = 5008,
			["counter"] = 26,
		}, -- [14]
		{
			["message"] = "Interface\\AddOns\\Auctionator\\AuctionatorFilters.lua:70: attempt to call global 'GetAuctionItemSubClasses' (a nil value)",
			["time"] = "2020/04/11 20:18:06",
			["locals"] = "classID = 2\nparentName = \"Weapon\"\nparentKey = \"Weapon\"\n(*temporary) = <table> {\n}\n(*temporary) = nil\n(*temporary) = 2\n(*temporary) = \"attempt to call global 'GetAuctionItemSubClasses' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\Auctionator\\AuctionatorFilters.lua\"]:70: in function `GenerateSubClasses'\n[string \"@Interface\\AddOns\\Auctionator\\AuctionatorFilters.lua\"]:98: in main chunk",
			["session"] = 5013,
			["counter"] = 1,
		}, -- [15]
		{
			["message"] = "Interface\\AddOns\\Auctionator\\Auctionator-8.2.0.lua:146: Attempt to register unknown event \"AUCTION_ITEM_LIST_UPDATE\"",
			["time"] = "2020/04/11 20:18:07",
			["locals"] = "(*temporary) = Atr_core {\n 0 = <userdata>\n}\n(*temporary) = \"AUCTION_ITEM_LIST_UPDATE\"\n",
			["stack"] = "[string \"=[C]\"]: in function `RegisterEvent'\n[string \"@Interface\\AddOns\\Auctionator\\Auctionator-8.2.0.lua\"]:146: in function `Atr_RegisterEvents'\n[string \"*:OnLoad\"]:1: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 5013,
			["counter"] = 1,
		}, -- [16]
		{
			["message"] = "Interface\\AddOns\\Auctionator\\AuctionatorHints.lua:505: hooksecurefunc(): SetAuctionItem is not a function",
			["time"] = "2020/04/11 20:18:07",
			["locals"] = "",
			["stack"] = "[string \"=[C]\"]: in function `hooksecurefunc'\n[string \"@Interface\\AddOns\\Auctionator\\AuctionatorHints.lua\"]:505: in main chunk",
			["session"] = 5013,
			["counter"] = 1,
		}, -- [17]
		{
			["message"] = "(null)",
			["time"] = "2020/04/11 20:18:27",
			["session"] = 5013,
			["counter"] = 6,
		}, -- [18]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'RaidInterfaceAntidote' tried to call the protected function 'CompactRaidFrame1:Show()'.",
			["time"] = "2020/10/03 10:14:22",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:367: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:299: in function <Interface\\FrameXML\\CompactUnitFrame.lua:297>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:121: in function <Interface\\FrameXML\\CompactUnitFrame.lua:54>",
			["session"] = 5036,
			["counter"] = 1,
		}, -- [19]
		{
			["message"] = "Interface\\AddOns\\ILD-Bagnon\\core.lua:11: Usage: SecureHook([object], method, [handler]): Attempting to hook a non existing target",
			["time"] = "2020/10/03 19:07:05",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceHook-3.0\\AceHook-3.0-8.lua\"]:211: in function <...e\\AddOns\\BigDebuffs\\Libs\\AceHook-3.0\\AceHook-3.0.lua:118>\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceHook-3.0\\AceHook-3.0-8.lua\"]:341: in function `SecureHook'\n[string \"@Interface\\AddOns\\ILD-Bagnon\\core.lua\"]:11: in function `OnEnabled'\n[string \"@Interface\\AddOns\\ItemLevelDisplay\\Bags.lua\"]:104: in function <Interface\\AddOns\\ItemLevelDisplay\\Bags.lua:101>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <...AddOns\\BigDebuffs\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:527: in function `EnableAddon'\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:630: in function <...AddOns\\BigDebuffs\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 5041,
			["counter"] = 3,
		}, -- [20]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'RaidInterfaceAntidote' tried to call the protected function 'SetTargetClampingInsets()'.",
			["time"] = "2019/07/14 18:33:26",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetTargetClampingInsets'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:274: in function `SetupClassNameplateBars'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:96: in function `OnNamePlateAdded'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:51: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:42>",
			["session"] = 5046,
			["counter"] = 35,
		}, -- [21]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WeakAuras' tried to call the protected function 'MountJournal:SetShown()'.",
			["time"] = "2020/10/05 18:20:01",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetShown'\n[string \"@Interface\\AddOns\\Blizzard_Collections\\Blizzard_Collections-1.0.lua\"]:49: in function `CollectionsJournal_UpdateSelectedTab'\n[string \"@Interface\\AddOns\\Blizzard_Collections\\Blizzard_Collections-1.0.lua\"]:109: in function <...AddOns\\Blizzard_Collections\\Blizzard_Collections.lua:103>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2740: in function `SetUIPanel'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2585: in function `ShowUIPanel'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:2453: in function <Interface\\FrameXML\\UIParent.lua:2449>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:3307: in function <Interface\\FrameXML\\UIParent.lua:3290>\n[string \"=[C]\"]: in function `ShowUIPanel'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:1003: in function `SetCollectionsJournalShown'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:991: in function `ToggleCollectionsJournal'\n[string \"TOGGLECOLLECTIONS\"]:1: in function <[string \"TOGGLECOLLECTIONS\"]:1>",
			["session"] = 5046,
			["counter"] = 1,
		}, -- [22]
		{
			["message"] = "Interface\\AddOns\\RaidInterfaceAntidote\\Code.lua:83: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2020/10/05 18:20:06",
			["locals"] = "(*temporary) = ForbiddenNamePlate1UnitFrame {\n 0 = <userdata>\n selectionHighlight = <unnamed> {\n }\n classificationIndicator = <unnamed> {\n }\n myHealAbsorbLeftShadow = <unnamed> {\n }\n ClassificationFrame = <unnamed> {\n }\n castBar = <unnamed> {\n }\n maxDispelDebuffs = 0\n disableMouse = true\n unitExists = false\n LoseAggroAnim = <unnamed> {\n }\n maxBuffs = 0\n myHealAbsorb = <unnamed> {\n }\n totalAbsorbOverlay = <unnamed> {\n }\n healthBar = <unnamed> {\n }\n overAbsorbGlow = <unnamed> {\n }\n WidgetContainer = <unnamed> {\n }\n otherHealPrediction = <unnamed> {\n }\n BuffFrame = <unnamed> {\n }\n myHealPrediction = <unnamed> {\n }\n optionTable = <table> {\n }\n totalAbsorb = <unnamed> {\n }\n name = <unnamed> {\n }\n aggroHighlight = <unnamed> {\n }\n maxDebuffs = 0\n myHealAbsorbRightShadow = <unnamed> {\n }\n overHealAbsorbGlow = <unnamed> {\n }\n RaidTargetFrame = <unnamed> {\n }\n}\n",
			["stack"] = "[string \"=[C]\"]: in function `GetName'\n[string \"@Interface\\AddOns\\RaidInterfaceAntidote\\Code.lua\"]:83: in function <Interface\\AddOns\\RaidInterfaceAntidote\\Code.lua:81>\n[string \"=[C]\"]: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:220: in function `CompactUnitFrame_SetUpFrame'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:117: in function `ApplyFrameOptions'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:93: in function `OnNamePlateAdded'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:51: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:42>",
			["session"] = 5046,
			["counter"] = 2,
		}, -- [23]
		{
			["message"] = "Interface\\FrameXML\\CompactUnitFrame.lua:724: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2020/10/05 18:20:06",
			["locals"] = "(*temporary) = <unnamed> {\n 0 = <userdata>\n r = 0.999998\n otherHealPrediction = <unnamed> {\n }\n overAbsorbGlow = <unnamed> {\n }\n g = 0.505881\n barTexture = <unnamed> {\n }\n totalAbsorbOverlay = <unnamed> {\n }\n b = 0\n myHealAbsorbLeftShadow = <unnamed> {\n }\n myHealAbsorb = <unnamed> {\n }\n myHealPrediction = <unnamed> {\n }\n border = <unnamed> {\n }\n totalAbsorb = <unnamed> {\n }\n background = <unnamed> {\n }\n overHealAbsorbGlow = <unnamed> {\n }\n myHealAbsorbRightShadow = <unnamed> {\n }\n}\n",
			["stack"] = "[string \"=[C]\"]: in function `GetMinMaxValues'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:724: in function `CompactUnitFrame_UpdateHealPrediction'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:314: in function <Interface\\FrameXML\\CompactUnitFrame.lua:297>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:189: in function `CompactUnitFrame_SetUnit'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:383: in function `OnAdded'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:95: in function `OnNamePlateAdded'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:51: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:42>",
			["session"] = 5046,
			["counter"] = 2,
		}, -- [24]
		{
			["message"] = "Interface\\AddOns\\RaidInterfaceAntidote\\Code.lua:23: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2019/07/17 20:13:00",
			["locals"] = "(*temporary) = ForbiddenNamePlate1UnitFrame {\n 0 = <userdata>\n selectionHighlight = <unnamed> {\n }\n classificationIndicator = <unnamed> {\n }\n myHealAbsorbLeftShadow = <unnamed> {\n }\n ClassificationFrame = <unnamed> {\n }\n castBar = <unnamed> {\n }\n maxDispelDebuffs = 0\n disableMouse = true\n unitExists = false\n LoseAggroAnim = <unnamed> {\n }\n maxBuffs = 0\n myHealAbsorb = <unnamed> {\n }\n totalAbsorbOverlay = <unnamed> {\n }\n healthBar = <unnamed> {\n }\n overAbsorbGlow = <unnamed> {\n }\n WidgetContainer = <unnamed> {\n }\n otherHealPrediction = <unnamed> {\n }\n BuffFrame = <unnamed> {\n }\n myHealPrediction = <unnamed> {\n }\n optionTable = <table> {\n }\n totalAbsorb = <unnamed> {\n }\n name = <unnamed> {\n }\n aggroHighlight = <unnamed> {\n }\n maxDebuffs = 0\n myHealAbsorbRightShadow = <unnamed> {\n }\n overHealAbsorbGlow = <unnamed> {\n }\n RaidTargetFrame = <unnamed> {\n }\n}\n",
			["stack"] = "[C]: in function `GetName'\nInterface\\AddOns\\RaidInterfaceAntidote\\Code.lua:23: in function <Interface\\AddOns\\RaidInterfaceAntidote\\Code.lua:22>\n[C]: ?\n[C]: in function `CompactUnitFrame_UpdateAll'\nInterface\\FrameXML\\CompactUnitFrame.lua:220: in function `CompactUnitFrame_SetUpFrame'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:117: in function `ApplyFrameOptions'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:93: in function `OnNamePlateAdded'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:51: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:42>",
			["session"] = 5046,
			["counter"] = 12,
		}, -- [25]
		{
			["message"] = "Interface\\AddOns\\Details\\Libs\\DF\\slider.lua:444: Action[SetPoint] failed because[SetPoint would result in anchor family connection]: attempted from: DetailsFrameworkSliderButtons1:SetPoint.",
			["time"] = "2020/10/06 21:02:25",
			["locals"] = "(*temporary) = DetailsFrameworkSliderButtons1 {\n PrepareToHide = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\slider.lua:458\n host = <table> {\n }\n ShowMe = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\slider.lua:442\n 0 = <userdata>\n is_going_hide = false\n}\n(*temporary) = \"bottomleft\"\n(*temporary) = DetailsFrameworkImageEditBottomSlider {\n 0 = <userdata>\n amt = <unnamed> {\n }\n thumb = <table> {\n }\n MyObject = <table> {\n }\n}\n(*temporary) = \"topleft\"\n(*temporary) = -3\n(*temporary) = -5\n",
			["stack"] = "[string \"=[C]\"]: in function `SetPoint'\n[string \"@Interface\\AddOns\\Details\\Libs\\DF\\slider.lua\"]:444: in function `ShowMe'\n[string \"@Interface\\AddOns\\Details\\Libs\\DF\\slider.lua\"]:376: in function <Interface\\AddOns\\Details\\Libs\\DF\\slider.lua:371>",
			["session"] = 5052,
			["counter"] = 13,
		}, -- [26]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'Leatrix_Maps' tried to call the protected function 'UseQuestLogSpecialItem()'.",
			["time"] = "2020/10/07 17:26:13",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `UseQuestLogSpecialItem'\n[string \"@Interface\\AddOns\\Blizzard_ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua\"]:95: in function <...ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua:88>",
			["session"] = 5060,
			["counter"] = 2,
		}, -- [27]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn '!BlizzardRaidFramesFix' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2020/10/07 17:20:39",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:571: in function `CompactRaidFrameManager_LockContainer'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:564: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:57: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:50>",
			["session"] = 5070,
			["counter"] = 3,
		}, -- [28]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'AutoDrink' tried to call the protected function 'AutoDrink:SetAttribute()'.",
			["time"] = "2020/10/05 20:31:50",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface\\AddOns\\AutoDrink\\AutoDrink-v1.5.lua\"]:93: in function `Update'\n[string \"@Interface\\AddOns\\AutoDrink\\AutoDrink-v1.5.lua\"]:104: in function `?'\n[string \"@Interface\\AddOns\\AutoDrink\\AutoDrink-v1.5.lua\"]:5: in function <Interface\\AddOns\\AutoDrink\\AutoDrink.lua:5>",
			["session"] = 5072,
			["counter"] = 4,
		}, -- [29]
	},
}
