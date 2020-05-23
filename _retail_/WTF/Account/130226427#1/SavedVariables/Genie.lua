
GenieDB = {
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
	["profileKeys"] = {
		["Asdwetr - Stormscale"] = "Default",
		["Ghrwetgf - Stormscale"] = "Default",
		["Hãllàáhø - Stormscale"] = "Default",
		["Xuna - Stormscale"] = "Default",
		["Xûñä - Stormscale"] = "Default",
		["Xuna - Valley of Heroes - EU"] = "Default",
	},
	["global"] = {
		["color"] = {
			["bool"] = {
				["a"] = 1,
				["b"] = 0.870588235294118,
				["g"] = 0.690196078431373,
				["r"] = 0.937254901960784,
			},
			["string"] = {
				["a"] = 1,
				["b"] = 0.4,
				["g"] = 0.937254901960784,
				["r"] = 0.886274509803922,
			},
			["disabled"] = {
				["a"] = 1,
				["b"] = 0.368627450980392,
				["g"] = 0.368627450980392,
				["r"] = 0.368627450980392,
			},
			["family"] = {
				["a"] = 1,
				["b"] = 0.443137254901961,
				["g"] = 0.443137254901961,
				["r"] = 0.968627450980392,
			},
			["combined"] = {
				["a"] = 1,
				["b"] = 1,
				["g"] = 0.658823529411765,
				["r"] = 0.537254901960784,
			},
			["number"] = {
				["a"] = 1,
				["b"] = 0.866666666666667,
				["g"] = 0.937254901960784,
				["r"] = 0.501960784313726,
			},
			["editHighlight"] = {
				["a"] = 0.510000020265579,
				["b"] = 0.894117647058824,
				["g"] = 1,
				["r"] = 0.450980392156863,
			},
		},
		["GB_Delay"] = 1,
		["edit"] = false,
	},
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
					["name"] = "resto",
					["invert"] = true,
					["criteria"] = "resto",
				}, -- [24]
				{
					["enabled"] = false,
					["type"] = "family",
					["name"] = "enha",
					["invert"] = true,
					["criteria"] = "enha",
				}, -- [25]
				{
					["enabled"] = false,
					["type"] = "family",
					["name"] = "pve",
					["invert"] = true,
					["criteria"] = "pve",
				}, -- [26]
			},
			["date"] = 1539787757,
			["bags"] = {
				["ignore"] = {
				},
			},
			["attachTo"] = {
				["minimap"] = true,
				["tooltip"] = false,
			},
			["version"] = 8000100,
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
			["mode"] = {
				["reverseslots"] = true,
				["sound"] = false,
				["automaticDelay"] = 1,
				["automatic"] = false,
				["reversebags"] = true,
				["waitAfterCombat"] = 1,
			},
			["customFamilies"] = {
				["resto"] = {
					[158075] = "Heart of Azeroth:2",
					[161675] = "Dread Gladiator's Emblem:14",
					[159385] = "Amalgamated Abomination Spaulders:3",
					[158366] = "Charged Sandstone Band:11",
					[161695] = "Dread Gladiator's Shield Wall:17",
					[159293] = "Turncoat's Cape:15",
					[155868] = "Kilt of Fanatical Consumption:7",
					[158356] = "Shell-Kickers:8",
					["set"] = "RESTO",
					[161898] = "Dread Gladiator's Signet:12",
					[161662] = "Dread Gladiator's Chain Armbands:9",
					[161674] = "Dread Gladiator's Medallion:13",
					[161644] = "Dread Gladiator's Chain Gauntlets:10",
					[163446] = "Honorbound Vanguard's Skullguard:1",
					[160725] = "C'thraxxi General's Hauberk:5",
					[159402] = "Waistguard of Sanguine Fervor:6",
					[161706] = "Dread Gladiator's Gavel:16",
				},
				["pve"] = {
					[158075] = "Heart of Azeroth:2",
					[161644] = "Dread Gladiator's Chain Gauntlets:10",
					[161695] = "Dread Gladiator's Shield Wall:17",
					[159398] = "Soulscarred Headgear:1",
					[155868] = "Kilt of Fanatical Consumption:7",
					[158356] = "Shell-Kickers:8",
					["set"] = "pve",
					[161898] = "Dread Gladiator's Signet:12",
					[161662] = "Dread Gladiator's Chain Armbands:9",
					[161635] = "Dread Gladiator's Chain Armor:5",
					[160731] = "Spaulders of Coagulated Viscera:3",
					[161674] = "Dread Gladiator's Medallion:13",
					[161706] = "Dread Gladiator's Gavel:16",
					[161899] = "Dread Gladiator's Seal:11",
					[159402] = "Waistguard of Sanguine Fervor:6",
					[161907] = "Dread Gladiator's Cape:15",
					[161675] = "Dread Gladiator's Emblem:14",
				},
				["enha"] = {
					[158075] = "Heart of Azeroth:2",
					[161644] = "Dread Gladiator's Chain Gauntlets:10",
					[161679] = "Dread Gladiator's Cleaver:17",
					[161676] = "Dread Gladiator's Insignia:14",
					[159398] = "Soulscarred Headgear:1",
					[155868] = "Kilt of Fanatical Consumption:7",
					[158356] = "Shell-Kickers:8",
					["set"] = "ENHA",
					[161898] = "Dread Gladiator's Signet:12",
					[161662] = "Dread Gladiator's Chain Armbands:9",
					[157950] = "Bilewing Jerkin:5",
					[161674] = "Dread Gladiator's Medallion:13",
					[161899] = "Dread Gladiator's Seal:11",
					[160632] = "Flame-Sterilized Spaulders:3",
					[161907] = "Dread Gladiator's Cape:15",
					[159402] = "Waistguard of Sanguine Fervor:6",
				},
			},
		},
	},
}
