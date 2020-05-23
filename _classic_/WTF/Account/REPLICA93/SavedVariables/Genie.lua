
GenieDB = {
	["profiles"] = {
		["Default"] = {
			["classranking"] = {
				{
					["enabled"] = true,
					["type"] = "bool",
					["criteria"] = "QuestItem",
					["name"] = "Quest Item",
				}, -- [1]
				{
					["enabled"] = true,
					["type"] = "bool",
					["criteria"] = "Soulbound",
					["name"] = "Soulbound",
				}, -- [2]
				{
					["enabled"] = true,
					["type"] = "number",
					["criteria"] = "Rarity",
					["max"] = 9,
					["invert"] = true,
					["name"] = "Quality",
				}, -- [3]
				{
					["enabled"] = true,
					["type"] = "number",
					["criteria"] = "TStID",
					["max"] = 9999,
					["invert"] = false,
					["name"] = "Aic",
				}, -- [4]
				{
					["enabled"] = true,
					["type"] = "string",
					["criteria"] = "EquipLoc",
					["name"] = "Equip Location",
				}, -- [5]
				{
					["enabled"] = true,
					["type"] = "string",
					["criteria"] = "Name",
					["name"] = "Name",
				}, -- [6]
				{
					["enabled"] = true,
					["type"] = "number",
					["criteria"] = "Count",
					["max"] = 9999,
					["name"] = "Count",
				}, -- [7]
				{
					["enabled"] = false,
					["type"] = "bool",
					["criteria"] = "Unique",
					["invert"] = true,
					["name"] = "Unique",
				}, -- [8]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "iLvl",
					["max"] = 999,
					["name"] = "ItemLevel",
				}, -- [9]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "MinLevel",
					["max"] = 99,
					["name"] = "Minimum level",
				}, -- [10]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "StackCount",
					["max"] = 9999,
					["name"] = "Stackcount",
				}, -- [11]
				{
					["enabled"] = false,
					["type"] = "string",
					["criteria"] = "Texture",
					["name"] = "Texture",
				}, -- [12]
				{
					["enabled"] = false,
					["type"] = "string",
					["criteria"] = "Type",
					["name"] = "Type",
				}, -- [13]
				{
					["enabled"] = false,
					["type"] = "string",
					["criteria"] = "SubType",
					["name"] = "Subtype",
				}, -- [14]
				{
					["enabled"] = false,
					["type"] = "bool",
					["criteria"] = "boe",
					["name"] = "Binds when equipped",
				}, -- [15]
				{
					["enabled"] = false,
					["type"] = "bool",
					["criteria"] = "bop",
					["name"] = "Binds when picked up",
				}, -- [16]
				{
					["enabled"] = false,
					["type"] = "bool",
					["criteria"] = "bou",
					["name"] = "Binds when used",
				}, -- [17]
				{
					["enabled"] = false,
					["type"] = "bool",
					["criteria"] = "boa",
					["name"] = "Binds to account",
				}, -- [18]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "ItemID",
					["max"] = 999999,
					["invert"] = true,
					["name"] = "ItemID",
				}, -- [19]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "Price",
					["max"] = 9999999999,
					["invert"] = true,
					["name"] = "Sell price",
				}, -- [20]
				{
					["enabled"] = false,
					["type"] = "number",
					["criteria"] = "TradeskillLvl",
					["max"] = 999,
					["invert"] = true,
					["name"] = "Tradeskilllevel",
				}, -- [21]
				{
					["enabled"] = false,
					["type"] = "string",
					["criteria"] = "Tradeskill",
					["name"] = "Tradeskill",
				}, -- [22]
				{
					["enabled"] = false,
					["type"] = "family",
					["criteria"] = "<<set",
					["name"] = "Equipment sets",
				}, -- [23]
				{
					["enabled"] = false,
					["type"] = "family",
					["name"] = "pvp",
					["invert"] = true,
					["criteria"] = "pvp",
				}, -- [24]
				{
					["enabled"] = false,
					["type"] = "family",
					["name"] = "pve",
					["invert"] = true,
					["criteria"] = "pve",
				}, -- [25]
				{
					["enabled"] = false,
					["type"] = "family",
					["name"] = "ele",
					["invert"] = true,
					["criteria"] = "ele",
				}, -- [26]
			},
			["date"] = 1556695103,
			["bags"] = {
				["ignore"] = {
				},
			},
			["attachTo"] = {
				["tooltip"] = false,
				["minimap"] = true,
			},
			["events"] = {
				["EQUIPMENT_SWAP_FINISHED"] = "Stack,Sort,Move,",
				["LOOT_CLOSED"] = "Stack,",
				["TRADE_CLOSED"] = "Stack,Sort,Move,",
				["BANKFRAME_CLOSED"] = "Stack,Sort,Move,",
				["GUILDBANKFRAME_CLOSED"] = "Stack,Sort,Move,",
				["MERCHANT_CLOSED"] = "Stack,Sort,Move,",
				["TRADESKILL_CREATE"] = "Stack,Sort,Move,",
				["MAIL_CLOSED"] = "Stack,Sort,Move,",
				["BANKFRAME_OPENED"] = "Stack,Sort,Move,",
			},
			["version"] = 8000100,
			["mode"] = {
				["reverseslots"] = true,
				["reversebags"] = true,
				["automaticDelay"] = 1,
				["automatic"] = false,
				["sound"] = false,
				["waitAfterCombat"] = 1,
			},
			["customFamilies"] = {
				["ele"] = {
					[158075] = "Heart of Azeroth:2",
					[165535] = "Simian Berserker's Helm:1",
					[165919] = "Desecrated Blade of the Disciples:16",
					[159390] = "Sure-Grip Munition Handlers:10",
					[164796] = "Sinister Gladiator's Chain Sabatons:8",
					[165513] = "Silverback Cloak:15",
					[167842] = "Fa'thuul's Floodguards:7",
					["set"] = "ELE",
					[159360] = "Crashguard Spaulders:3",
					[164859] = "Sinister Gladiator's Chain Chestguard:5",
					[167865] = "Void Stone:13",
					[158357] = "Bindings of Enraged Earth:9",
					[159353] = "Chain-Linked Safety Cord:6",
					[165053] = "Sinister Gladiator's Band:12",
					[165807] = "Sinister Gladiator's Safeguard:14",
					[165565] = "Band of Multi-Sided Strikes:11",
					[165584] = "Sunburst Crest:17",
				},
				["pve"] = {
					[165569] = "Ward of Envelopment:14",
					[158075] = "Heart of Azeroth:2",
					[165919] = "Desecrated Blade of the Disciples:16",
					[159390] = "Sure-Grip Munition Handlers:10",
					[159398] = "Soulscarred Headgear:1",
					[165513] = "Silverback Cloak:15",
					[167842] = "Fa'thuul's Floodguards:7",
					["set"] = "pve",
					[165928] = "Eternal Alchemist Stone:13",
					[159360] = "Crashguard Spaulders:3",
					[159395] = "Deathslaver's Hauberk:5",
					[165053] = "Sinister Gladiator's Band:12",
					[165584] = "Sunburst Crest:17",
					[165533] = "Lightgrace Sabatons:8",
					[159353] = "Chain-Linked Safety Cord:6",
					[165565] = "Band of Multi-Sided Strikes:11",
					[158357] = "Bindings of Enraged Earth:9",
				},
				["pvp"] = {
					[165569] = "Ward of Envelopment:14",
					[164798] = "Sinister Gladiator's Chain Helm:1",
					[158075] = "Heart of Azeroth:2",
					[165919] = "Desecrated Blade of the Disciples:16",
					[159390] = "Sure-Grip Munition Handlers:10",
					[164796] = "Sinister Gladiator's Chain Sabatons:8",
					[165513] = "Silverback Cloak:15",
					[167842] = "Fa'thuul's Floodguards:7",
					["set"] = "pvp",
					[165537] = "Mantle of the Soulbinder's Caress:3",
					[164859] = "Sinister Gladiator's Chain Chestguard:5",
					[158357] = "Bindings of Enraged Earth:9",
					[165584] = "Sunburst Crest:17",
					[167865] = "Void Stone:13",
					[159353] = "Chain-Linked Safety Cord:6",
					[165565] = "Band of Multi-Sided Strikes:11",
					[165053] = "Sinister Gladiator's Band:12",
				},
			},
		},
	},
	["global"] = {
		["color"] = {
			["bool"] = {
				["a"] = 1,
				["r"] = 0.937254901960784,
				["g"] = 0.690196078431373,
				["b"] = 0.870588235294118,
			},
			["string"] = {
				["a"] = 1,
				["r"] = 0.886274509803922,
				["g"] = 0.937254901960784,
				["b"] = 0.4,
			},
			["disabled"] = {
				["a"] = 1,
				["r"] = 0.368627450980392,
				["g"] = 0.368627450980392,
				["b"] = 0.368627450980392,
			},
			["family"] = {
				["a"] = 1,
				["r"] = 0.968627450980392,
				["g"] = 0.443137254901961,
				["b"] = 0.443137254901961,
			},
			["combined"] = {
				["a"] = 1,
				["r"] = 0.537254901960784,
				["g"] = 0.658823529411765,
				["b"] = 1,
			},
			["number"] = {
				["a"] = 1,
				["r"] = 0.501960784313726,
				["g"] = 0.937254901960784,
				["b"] = 0.866666666666667,
			},
			["editHighlight"] = {
				["a"] = 0.510000020265579,
				["r"] = 0.450980392156863,
				["g"] = 1,
				["b"] = 0.894117647058824,
			},
		},
		["GB_Delay"] = 1,
		["edit"] = false,
	},
	["profileKeys"] = {
		["Xunapala - Arena Champions - EU"] = "Default",
		["Xunaorc - Valley of Heroes - EU"] = "Default",
		["Xüñâ - Stormscale"] = "Default",
		["Xunadwarf - Valley of Heroes - EU"] = "Default",
		["Xûñá - Ravencrest"] = "Default",
		["Xuna - Stormscale"] = "Default",
		["Spazshaman - Stormscale"] = "Default",
		["Xuna - Valley of Heroes - EU"] = "Default",
		["Hãllàáhø - Stormscale"] = "Default",
		["Xunaorc - Arena Champions - EU"] = "Default",
		["Xunadwarf - Arena Champions - EU"] = "Default",
		["Xunamonk - Arena Champions - EU"] = "Default",
		["Ghrwetgf - Stormscale"] = "Default",
		["Xunamonkh - Arena Champions - EU"] = "Default",
		["Xunadraenei - Arena Champions - EU"] = "Default",
		["Asdwetr - Stormscale"] = "Default",
		["Xûñä - Stormscale"] = "Default",
		["Xunapalah - Arena Champions - EU"] = "Default",
	},
	["factionrealm"] = {
		["Horde - Stormscale"] = {
			["gb"] = {
				["CyaThursday"] = {
					{
					}, -- [1]
					{
					}, -- [2]
					{
					}, -- [3]
					{
					}, -- [4]
					{
					}, -- [5]
					{
					}, -- [6]
					{
					}, -- [7]
				},
			},
		},
	},
}
