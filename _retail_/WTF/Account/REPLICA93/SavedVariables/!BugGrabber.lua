
BugGrabberDB = {
	["session"] = 1452,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "...ce\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3139: attempt to get length of local 'variantSets' (a number value)",
			["time"] = "2021/05/16 20:13:25",
			["locals"] = "self = <table> {\n ResetBaseSetNewStatus = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3236\n baseSets = <table> {\n }\n IsBaseSetNew = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3217\n SortSets = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3050\n sourceData = <table> {\n }\n GetIconForSet = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3285\n GetBaseSets = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3085\n GetSetSourceCounts = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3179\n GetSortedSetSources = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3243\n GetBaseSetData = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3184\n GetBaseSetByID = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3094\n ClearUsableSets = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3281\n RefreshFavorites = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3320\n GetSetSourceData = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3153\n variantSets = <table> {\n }\n GetVariantSets = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3130\n GetSetSources = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3175\n ClearBaseSets = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3273\n GetUsableSets = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3104\n ClearVariantSets = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3277\n DetermineFavorites = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3299\n ClearSets = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3265\n GetSetSourceTopCounts = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3208\n}\nbaseSetID = 435\nvariantSets = 435\n(*temporary) = <table> {\n 435 = 435\n}\n(*temporary) = 435\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to get length of local 'variantSets' (a number value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua\"]:3139: in function `GetVariantSets'\n[string \"@Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua\"]:3487: in function `DisplaySet'\n[string \"@Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua\"]:3417: in function `Refresh'\n[string \"@Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua\"]:3400: in function <...ce\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:3385>\n[string \"=[C]\"]: in function `UpdateUsableAppearances'\n[string \"@Interface\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua\"]:992: in function <...ce\\AddOns\\Blizzard_Collections\\Blizzard_Wardrobe.lua:992>",
			["session"] = 1362,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn '!BlizzardRaidFramesFix' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2021/05/11 20:06:48",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:574: in function `CompactRaidFrameManager_LockContainer'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:567: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:56: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:49>",
			["session"] = 1406,
			["counter"] = 8,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\WeakAuras-3.4.1.lua:2701: bad argument #1 to 'pairs' (table expected, got nil)",
			["time"] = "2021/05/24 15:37:02",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"table expected, got nil\"\n = <function> defined =[C]:-1\n",
			["stack"] = "[string \"=[C]\"]: in function `pairs'\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-3.4.1.lua\"]:2701: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2681>\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-3.4.1.lua\"]:2813: in function `Add'\n[string \"@Interface\\AddOns\\WeakAurasOptions\\OptionsFrames\\MoverSizer.lua\"]:645: in function <...AddOns\\WeakAurasOptions\\OptionsFrames\\MoverSizer.lua:564>",
			["session"] = 1432,
			["counter"] = 35,
		}, -- [3]
	},
}
