-- scope stuff
gearquipper = gearquipper or {};
local c = gearquipper;

function c:SaveConditionsMet()
	return GQ_OPTIONS[c.OPT_SAVECHANGES] == c.OPTVALUE_SAVECHANGES_ALWAYS or
			(GQ_OPTIONS[c.OPT_SAVECHANGES] == c.OPTVALUE_SAVECHANGES_CHARMENU and c.paperDollFrame:IsVisible()) or
			(GQ_OPTIONS[c.OPT_SAVECHANGES] == c.OPTVALUE_SAVECHANGES_GQMENU and GqUiFrame:IsVisible());
end

function c:test1()
	for slotId = 0, 19 do
		local itemLink = GetInventoryItemLink("player", slotId);
		if itemLink then
			local itemString = string.match(itemLink, "item[%-?%d:]+");
			print(itemString);
		end
	end
end

----- [ actions ] -----
local actionBars = {"Action", "", "MultiBarRight", "MultiBarLeft", "MultiBarBottomRight", "MultiBarBottomLeft"};
function c:GetActionButton(slotId)
	slotId = tonumber(slotId);
	if slotId then
		local actionBar, buttonNo = math.floor((slotId - 1) / 12) + 1, ((slotId - 1) % 12) + 1;
		if actionBar and actionBars[actionBar] and buttonNo then
			local button = _G[actionBars[actionBar] .. "Button" .. buttonNo];
			if button and button:IsVisible() then
				return button;
			end
		end
	end
end

function c:IsSameAction(slotId, entry)
	if HasAction(slotId) and entry and entry ~= c.VALUE_NONE then
		local actionType, id, subType = GetActionInfo(slotId);
		if actionType == "macro" then
			-- macros are saved by name, not by id
			id = GetMacroInfo(id);
		end

		if actionType == entry[c.FIELD_TYPE] and id == entry[c.FIELD_ID] and subType == entry[c.FIELD_SUBTYPE] then
			return true;
		end
	elseif not HasAction(slotId) and entry == c.VALUE_NONE then
		return true;
	end
end

function c:IsSameActionConfiguration(setName)
	if setName then
		local desiredActionSlots = c:LoadActionSlots(setName);
		for slotId = 1, 120 do
			if not c:IsSameAction(slotId, desiredActionSlots[slotId]) then
				return false;
			end
		end
		return true;
	end
end

----- [ events ] -----

c.EVENT_MOUNT = "EVENT_MOUNT";
c.EVENT_DISMOUNT = "EVENT_DISMOUNT";
c.EVENT_STEALTH = "EVENT_STEALTH";
c.EVENT_UNSTEALTH = "EVENT_UNSTEALTH";
c.EVENT_PARTY_JOIN = "EVENT_PARTY_JOIN";
c.EVENT_PARTY_LEAVE = "EVENT_PARTY_LEAVE";
c.EVENT_RAID_JOIN = "EVENT_RAID_JOIN";
c.EVENT_RAID_LEAVE = "EVENT_RAID_LEAVE";
c.EVENT_BG_ENTER = "EVENT_BG_ENTER";
c.EVENT_BG_LEAVE = "EVENT_BG_LEAVE";
c.EVENT_ZONE_ENTER = "EVENT_ZONE_ENTER";
c.EVENT_ZONE_LEAVE = "EVENT_ZONE_LEAVE";
c.EVENT_PVP_ENABLE = "EVENT_PVP_ENABLE";
c.EVENT_PVP_DISABLE = "EVENT_PVP_DISABLE";
c.EVENT_AFK_ENABLE = "EVENT_AFK_ENABLE";
c.EVENT_AFK_DISABLE = "EVENT_AFK_DISABLE";
c.EVENT_SUBMERGE = "EVENT_SUBMERGE";
c.EVENT_EMERGE = "EVENT_EMERGE";
--c.EVENT_COMBAT_ENTER = "EVENT_COMBAT_ENTER";
c.EVENT_COMBAT_LEAVE = "EVENT_COMBAT_LEAVE";
--c.EVENT_SPELLCAST_START = "EVENT_SPELLCAST_START";
--c.EVENT_SPELLCAST_SUCCEED = "EVENT_SPELLCAST_SUCCEED";

c.EVENT_CUSTOMSCRIPT = "EVENT_CUSTOMSCRIPT";

local events, eventNamesSorted;
function c:GetEvents()
	if not events then
		events = {
			[c.EVENT_MOUNT] = c:GetText("on mount"),
			[c.EVENT_DISMOUNT] = c:GetText("on dismount"),
			[c.EVENT_STEALTH] = c:GetText("on entering stealth"),
			[c.EVENT_UNSTEALTH] = c:GetText("on leaving stealth"),
			[c.EVENT_PARTY_JOIN] = c:GetText("on joining party"),
			[c.EVENT_PARTY_LEAVE] = c:GetText("on leaving party"),
			[c.EVENT_RAID_JOIN] = c:GetText("on joining raid"),
			[c.EVENT_RAID_LEAVE] = c:GetText("on leaving raid"),
			[c.EVENT_BG_ENTER] = c:GetText("on entering battleground"),
			[c.EVENT_BG_LEAVE] = c:GetText("on leaving battleground"),
			[c.EVENT_ZONE_ENTER] = c:GetText("on entering zone"),
			[c.EVENT_ZONE_LEAVE] = c:GetText("on leaving zone"),
			[c.EVENT_PVP_ENABLE] = c:GetText("on enabling PvP"),
			[c.EVENT_PVP_DISABLE] = c:GetText("on disabling PvP"),
			[c.EVENT_AFK_ENABLE] = c:GetText("on enabling AFK"),
			[c.EVENT_AFK_DISABLE] = c:GetText("on disabling AFK"),
			[c.EVENT_SUBMERGE] = c:GetText("on submerge (water)"),
			[c.EVENT_EMERGE] = c:GetText("on emerge (water)"),
			--[c.EVENT_COMBAT_ENTER] = c:GetText("on enter combat"),
			[c.EVENT_COMBAT_LEAVE] = c:GetText("on leave combat"),
			--[c.EVENT_SPELLCAST_START] = c:GetText("on spell start"),
			--[c.EVENT_SPELLCAST_SUCCEED] = c:GetText("on spell succeed")
			--[c.EVENT_CUSTOMSCRIPT] = c:GetText("custom script")
		};
	end
	return events;
end

function c:GetEventNamesSorted()
	if not eventNamesSorted then
		eventNamesSorted = {
			c.EVENT_MOUNT,
			c.EVENT_DISMOUNT
		};

		local tmp = {};
		for eventName, eventDisplayName in pairs(c:GetEvents()) do
			table.insert(tmp, eventDisplayName);
		end

		table.sort(tmp); --, function(a, b) return a > b end); -- descending
		for index, sortedDisplayName in ipairs(tmp) do
			for eventName, eventDisplayName in pairs(c:GetEvents()) do
				if sortedDisplayName == eventDisplayName and not c:TableContains(eventNamesSorted, eventName) then
					table.insert(eventNamesSorted, eventName);
					break;
				end
			end
		end
	end
	return eventNamesSorted;
end

----- [ inventory ] -----
	---- [bank] ----

function c:IsAtBank()
	local noFreeSlots, bagType = GetContainerNumFreeSlots(-1);
	return bagType ~= nil;
end

function c:GetBankSpace()
	if c:IsAtBank() then
		local bankSpaceCache, sum = {}, 0;

		-- bank bags
		for i = NUM_BAG_SLOTS + 1, NUM_BAG_SLOTS + NUM_BANKBAGSLOTS do
			local invId, noFreeSlots, bagType = ContainerIDToInventoryID(i), GetContainerNumFreeSlots(i);
			if bagType == 0 then
				bankSpaceCache[invId] = noFreeSlots;
				sum = sum + noFreeSlots;
			else
				bankSpaceCache[invId] = 0;
			end
		end

		-- bank container
		for i = 48, 71 do
			if not GetInventoryItemLink("player", i) then
				bankSpaceCache[i] = 1;
				sum = sum + 1;
			end
		end

		return bankSpaceCache, sum;
	end
end

function c:CheckNeccessaryPushSpace(setName)
	if c:IsAtBank() and setName then
		local items = {};
		for _, slotId in ipairs(c:GetSlotSwitchOrder()) do
			local itemString = c:LoadSlot(slotId, setName);
			if (not c:LoadPartialOption(setName) or c:LoadSlotState(slotId, setName)) and not c:IsEmpty(itemString) and (c:IsSetItem(slotId, itemString) or c:FindItemInBags(itemString)) then
				items[slotId] = itemString;
			end
		end

		local bankSpaceCache, freeSpace = c:GetBankSpace();
		return freeSpace, items, bankSpaceCache;
	end
end

function c:CheckNeccessaryPullSpace(setName)
	if c:IsAtBank() and setName then
		local items = {};
		for _, slotId in ipairs(c:GetSlotSwitchOrder()) do
			local itemString = c:LoadSlot(slotId, setName);
			if (not c:LoadPartialOption(setName) or c:LoadSlotState(slotId, setName)) and not c:IsEmpty(itemString) and not (c:IsSetItem(slotId, itemString) or c:FindItemInBags(itemString)) then
				items[slotId] = itemString;
			end
		end

		local bagSpaceCache, freeSpace = c:GetBagSpace();
		return freeSpace, items, bagSpaceCache;
	end
end

function c:FindItemInBank(neededItemString)
	-- bank container
	for invId = 48, 71 do
		local itemString = c:GetItemString(GetInventoryItemLink("player", invId));
		if c:Equals(itemString, neededItemString) then
			return invId;
		end
	end

	-- bank bags
	for bagId = NUM_BAG_SLOTS + 1, NUM_BAG_SLOTS + NUM_BANKBAGSLOTS do
		for slotId = 1, GetContainerNumSlots(bagId) do
			local itemString = c:GetItemString(GetContainerItemLink(bagId, slotId));
			if c:Equals(itemString, neededItemString) then
				return bagId, slotId;
			end
		end
	end
end

	---- [bags] ----

function c:GetBagSpace()
	local bagSpaceCache, sum = {}, 0;
	for i = 0, NUM_BAG_SLOTS do
		local noFreeSlots, bagType = GetContainerNumFreeSlots(i);
		if bagType == 0 then
			bagSpaceCache[i] = noFreeSlots;
			sum = sum + noFreeSlots;
		else
			bagSpaceCache[i] = 0;
		end
	end
	return bagSpaceCache, sum;
end

function c:CheckNeccessaryBagSpace(setName)
	if setName then
		local count, maxCount = 0, 0;
		for _, slotId in ipairs(c:GetSlotSwitchOrder()) do
			local equippedItemString, desiredItemString = c:GetItemString(slotId), c:LoadSlot(slotId, setName);
			if (not c:LoadPartialOption(setName) or c:LoadSlotState(slotId, setName)) and not c:IsEmpty(equippedItemString) and c:IsEmpty(desiredItemString) then
				count = count + 1;
			--elseif c:IsEmpty(c:GetItemId(slotId)) and set[slotId] and not c:IsEmpty(set[slotId]) then
			--	count = count - 1;
			end

			if count > maxCount then
				maxCount = count;
			end
		end

		local bagSpaceCache, freeSpace = c:GetBagSpace();
		return freeSpace, maxCount, bagSpaceCache;
	end
end

function c:FindItemInBags(neededItemString)
	for bagId = 0, NUM_BAG_SLOTS do
		for slotId = 1, GetContainerNumSlots(bagId) do
			local itemString = c:GetItemString(GetContainerItemLink(bagId, slotId));
			if itemString == neededItemString then
				return bagId, slotId;
			end
		end
	end
end

----- [ items ] -----

function c:GetItemString(value)
	if value then
		if value == INVSLOT_AMMO then
			-- ammo slot workaround
			return GetInventoryItemID("player", INVSLOT_AMMO);
		elseif c:GetSlotInfo()[value] then
			-- slotId
			return c:GetItemString(GetInventoryItemLink("player", value));
		elseif c:StartsWith(value, "|c") then
			-- itemLink
			return string.match(value, "item[%-?%d:]+");
		end
	end
	return c.VALUE_NONE;
end

local ITEMINFO_NAME = "ITEMINFO_NAME";
local ITEMINFO_LINK = "ITEMINFO_LINK";
local ITEMINFO_RARITY = "ITEMINFO_RARITY";
local ITEMINFO_LEVEL = "ITEMINFO_LEVEL";
local ITEMINFO_MINLEVEL = "ITEMINFO_MINLEVEL";
local ITEMINFO_TYPE = "ITEMINFO_TYPE";
local ITEMINFO_SUBTYPE = "ITEMINFO_SUBTYPE";
local ITEMINFO_STACKCOUNT = "ITEMINFO_STACKCOUNT";
local ITEMINFO_EQUIPLOC = "ITEMINFO_EQUIPLOC";
local function GetItemInfos(itemString, info)
	if itemString and not c:IsEmpty(itemString) then
		local itemInfo = {};
		itemInfo[ITEMINFO_NAME], itemInfo[ITEMINFO_LINK], itemInfo[ITEMINFO_RARITY], itemInfo[ITEMINFO_LEVEL],
		itemInfo[ITEMINFO_MINLEVEL], itemInfo[ITEMINFO_TYPE], itemInfo[ITEMINFO_SUBTYPE], itemInfo[ITEMINFO_STACKCOUNT],
		itemInfo[ITEMINFO_EQUIPLOC] = GetItemInfo(itemString);

		return itemInfo[info];
	end
end

function c:GetItemName(itemString)
	local itemName = GetItemInfos(itemString, ITEMINFO_NAME);
	if itemName then
		return itemName;
	end
	return c:GetText("Empty");
end

function c:GetItemLink(itemString)
	local itemLink = GetItemInfos(itemString, ITEMINFO_LINK);
	if itemLink then
		return itemLink;
	end
	return c:GetText("Empty");
end

function c:GetItemEquipLoc(itemString)
	return GetItemInfos(itemString, ITEMINFO_EQUIPLOC);
end

function c:GetItemRarity(itemString)
	local itemRarity = GetItemInfos(itemString, ITEMINFO_RARITY);
	if itemRarity then
		return itemRarity;
	end
	return 1; -- rarity_common
end

function c:GetRarityColor(rarity)
	return ITEM_QUALITY_COLORS[rarity];
end

c.ITEM_STRING = "ITEM_STRING";
c.ITEM_SLOT_ID = "ITEM_SLOT_ID";
c.ITEM_BAG_ID = "ITEM_BAG_ID";
function c:GetMatchingItems(slotId)
	local equipLocs, result = {}, {};
	local equipLoc = c:GetItemEquipLoc(c:GetItemString(slotId));

	if slotId == INVSLOT_MAINHAND then
		table.insert(equipLocs, "INVTYPE_2HWEAPON");
		table.insert(equipLocs, "INVTYPE_WEAPON");
	elseif slotId == INVSLOT_OFFHAND then
		table.insert(equipLocs, "INVTYPE_WEAPON");
		table.insert(equipLocs, "INVTYPE_SHIELD");
	end

	if not tContains(equipLocs, equipLoc) then
		table.insert(equipLocs, equipLoc);
	end

	-- bags
	for bagId = 0, NUM_BAG_SLOTS do
		for slotId = 1, GetContainerNumSlots(bagId) do
			local itemString = c:GetItemString(GetContainerItemLink(bagId, slotId));
			if itemString and tContains(equipLocs, c:GetItemEquipLoc(itemString)) then
				local newEntry = {};
				newEntry[c.ITEM_BAG_ID] = bagId;
				newEntry[c.ITEM_SLOT_ID] = slotId;
				newEntry[c.ITEM_STRING] = itemString;
				table.insert(result, newEntry);
			end
		end
	end

	-- bank container
	for invId = 48, 71 do
		local itemString = c:GetItemString(GetInventoryItemLink("player", invId));
		if itemString and tContains(equipLocs, c:GetItemEquipLoc(itemString)) then
			local newEntry = {};
			newEntry[c.ITEM_BAG_ID] = -1;
			newEntry[c.ITEM_SLOT_ID] = invId - 47;
			newEntry[c.ITEM_STRING] = itemString;
			table.insert(result, newEntry);
		end
	end

	-- bank bags
	for bagId = NUM_BAG_SLOTS + 1, NUM_BAG_SLOTS + NUM_BANKBAGSLOTS do
		for slotId = 1, GetContainerNumSlots(bagId) do
			local itemString = c:GetItemString(GetContainerItemLink(bagId, slotId));
			if itemString and tContains(equipLocs, c:GetItemEquipLoc(itemString)) then
				local newEntry = {};
				newEntry[c.ITEM_BAG_ID] = bagId;
				newEntry[c.ITEM_SLOT_ID] = slotId;
				newEntry[c.ITEM_STRING] = itemString;
				table.insert(result, newEntry);
			end
		end
	end

	return result, table.getn(result);
end

----- [ macros ] -----

local MACROINFO_NAME = "MACROINFO_NAME";
local MACROINFO_TEXT = "MACROINFO_TEXT";
local function GetMacroInfos(macroSlotId, info)
	local macroInfo = {};
	macroInfo[MACROINFO_NAME], macroInfo["icon"], macroInfo[MACROINFO_TEXT], macroInfo["isLocal"] = GetMacroInfo(macroSlotId);
	if MACROINFO_NAME then
		return c:GetText("Macro \"%s\"", macroInfo[MACROINFO_NAME]);
	else
		return macroInfo[info];
	end
	return c:GetText("Empty");
end

function c:GetMacroName(macroSlotId)
	return GetMacroInfos(macroSlotId, MACROINFO_NAME);
end

function c:GetMacroText(macroSlotId)
	return GetMacroInfos(macroSlotId, MACROINFO_TEXT);
end

----- [ sets ] -----

function c:IsValidSetName(candidate)
	return candidate and candidate ~= "" and (not c:StringContains(candidate, "$")) and (not c:TableContains(c:LoadSetNames(), candidate, true));
end

function c:IsSetComplete(setName)
	setName = setName or c:LoadCurrentSetName();
	if setName then
		for slotId, _ in ipairs(c:GetSlotInfo()) do
			if (not c:LoadPartialOption(setName) or c:LoadSlotState(slotId, setName)) and not c:IsSetItem(slotId, c:LoadSlot(slotId, setName)) then
				return false;
			end
		end
		return true;
	end
end

function c:IsSetItem(slotId, itemString)
	itemString = itemString or c:LoadSlot(slotId);
	return c:GetItemString(slotId) == itemString or (c:IsEmpty(slotId) and c:IsEmpty(itemString));
end

function c:IsEmpty(value)
	if not value or c:Equals(value, c.VALUE_NONE) or c:Equals(value, 0) then
		return true;
	else
		local itemString;
		if c:GetSlotInfo()[value] then
			-- slotId
			itemString = c:GetItemString(value);
		else
			-- itemString or spellId
			itemString = value;
		end
		return c:Equals(itemString, c.VALUE_NONE) or c:Equals(itemString, 0);
	end
end

function c:GetItemSets(itemString)
	local result = {};
	for index, setName in ipairs(c:LoadSetNames()) do
		for slotId in pairs(c:GetSlotInfo()) do
			if c:LoadSlot(slotId, setName) == itemString then
				table.insert(result, setName);
				break;
			end
		end
	end
	table.sort(result);
	return result;
end

----- [ slots ] -----

local SLOT_AMMO = "AmmoSlot";				--  0
local SLOT_HEAD = "HeadSlot";				--  1
local SLOT_NECK = "NeckSlot";				--  2
local SLOT_SHOULDER = "ShoulderSlot";		--  3
local SLOT_SHIRT = "ShirtSlot";				--  4
local SLOT_CHEST = "ChestSlot";				--  5
local SLOT_WAIST = "WaistSlot";				--  6
local SLOT_LEGS = "LegsSlot";				--  7
local SLOT_FEET = "FeetSlot";				--  8
local SLOT_WRIST = "WristSlot";				--  9
local SLOT_HANDS = "HandsSlot";				-- 10
local SLOT_FINGER1 = "Finger0Slot";			-- 11
local SLOT_FINGER2 = "Finger1Slot";			-- 12
local SLOT_TRINKET1 = "Trinket0Slot";		-- 13
local SLOT_TRINKET2 = "Trinket1Slot";		-- 14
local SLOT_BACK = "BackSlot";				-- 15
local SLOT_MAINHAND = "MainHandSlot";		-- 16
local SLOT_OFFHAND = "SecondaryHandSlot";	-- 17
local SLOT_RANGED = "RangedSlot";			-- 18
local SLOT_TABARD = "TabardSlot";			-- 19

local slotInfo = {
	[INVSLOT_AMMO] = SLOT_AMMO,
	[INVSLOT_HEAD] = SLOT_HEAD,
	[INVSLOT_NECK] = SLOT_NECK,
	[INVSLOT_SHOULDER] = SLOT_SHOULDER,
	[INVSLOT_BODY] = SLOT_SHIRT,
	[INVSLOT_CHEST] = SLOT_CHEST,
	[INVSLOT_WAIST] = SLOT_WAIST,
	[INVSLOT_LEGS] = SLOT_LEGS,
	[INVSLOT_FEET] = SLOT_FEET,
	[INVSLOT_WRIST] = SLOT_WRIST,
	[INVSLOT_HAND] = SLOT_HANDS,
	[INVSLOT_FINGER1] = SLOT_FINGER1,
	[INVSLOT_FINGER2] = SLOT_FINGER2,
	[INVSLOT_TRINKET1] = SLOT_TRINKET1,
	[INVSLOT_TRINKET2] = SLOT_TRINKET2,
	[INVSLOT_BACK] = SLOT_BACK,
	[INVSLOT_MAINHAND] = SLOT_MAINHAND,
	[INVSLOT_OFFHAND] = SLOT_OFFHAND,
	[INVSLOT_RANGED] = SLOT_RANGED,
	[INVSLOT_TABARD] = SLOT_TABARD
};

function c:GetSlotInfo()
	return slotInfo;
end

local slotSwitchOrder;
function c:GetSlotSwitchOrder()
	if not slotSwitchOrder then
		slotSwitchOrder = {};
		table.insert(slotSwitchOrder, INVSLOT_MAINHAND);
		table.insert(slotSwitchOrder, INVSLOT_OFFHAND);
		table.insert(slotSwitchOrder, INVSLOT_RANGED);

		for i = 0, 19 do
			if not tContains(slotSwitchOrder, i) then
				table.insert(slotSwitchOrder, i);
			end
		end
	end
	return slotSwitchOrder;
end

function c:GetSlotId(slotName)
	for slotId, name in pairs(c:GetSlotInfo()) do
		if name == slotName then
			return slotId;
		end
	end
end

local displaySlotNames = {
	[0] = INVTYPE_AMMO,
	[1] = INVTYPE_HEAD,
	[2] = INVTYPE_NECK,
	[3] = INVTYPE_SHOULDER,
	[4] = INVTYPE_BODY,
	[5] = INVTYPE_CHEST,
	[6] = INVTYPE_WAIST,
	[7] = INVTYPE_LEGS,
	[8] = INVTYPE_FEET,
	[9] = INVTYPE_WRIST,
	[10] = INVTYPE_HAND,
	[11] = INVTYPE_FINGER .. " 1",
	[12] = INVTYPE_FINGER .. " 2",
	[13] = INVTYPE_TRINKET .. " 1",
	[14] = INVTYPE_TRINKET .. " 2",
	[15] = INVTYPE_CLOAK,
	[16] = INVTYPE_WEAPONMAINHAND,
	[17] = INVTYPE_WEAPONOFFHAND,
	[18] = INVTYPE_RANGED,
	[19] = INVTYPE_ROBE
};

function c:GetDisplaySlotName(slotId)
	if displaySlotNames[slotId] then
		return displaySlotNames[slotId];
	end
end

----- [ spells ] -----

local SPELLINFO_NAME = "SPELLINFO_NAME";
local SPELLINFO_RANK = "SPELLINFO_RANK";
local SPELLINFO_ICON = "SPELLINFO_ICON";
local SPELLINFO_CASTTIME = "SPELLINFO_CASTTIME";
local SPELLINFO_MINRANGE = "SPELLINFO_MINRANGE";
local SPELLINFO_MAXRANGE = "SPELLINFO_MAXRANGE";
local function GetSpellInfos(spellId, info)
	if spellId and not c:IsEmpty(spellId) then
		local spellInfo = {};
		spellInfo[SPELLINFO_NAME], spellInfo[SPELLINFO_RANK], spellInfo[SPELLINFO_ICON], spellInfo[SPELLINFO_CASTTIME],
		spellInfo[SPELLINFO_MINRANGE], spellInfo[SPELLINFO_MAXRANGE] = GetSpellInfo(spellId);
		return spellInfo[info];
	end
end

function c:GetSpellName(spellId)
	local spellName = GetSpellInfos(spellId, SPELLINFO_NAME);
	if spellName then
		return spellName;
	end
	return c:GetText("Empty");
end

function c:GetSpellSubText(spellId)
	return GetSpellSubtext(spellId);
end

function c:GetSpellLink(spellId)
	return GetSpellLink(spellId);
end

function c:GetSpellCache(refresh)
	if not GQ_AUX["spellCache"] or refresh then
		GQ_AUX["spellCache"] = {};
		for i = 0, 30000 do
			local name, rank, icon, castTime, minRange, maxRange, spellId = GetSpellInfo(i);
			if name and spellId then
				GQ_AUX["spellCache"][spellId] = {
					["name"] = name,
					["rank"] = rank,
					["icon"] = icon,
					["castTime"] = castTime,
					["minRange"] = minRange,
					["maxRange"] = maxRange,
					["spellId"] = spellId
				};
			end
		end
	end
	return GQ_AUX["spellCache"];
end

function c:SearchSpells(spellName, maxResults)
	if spellName and spellName ~= "" then
		maxResults = maxResults or 20;

		local result = {};
		for spellId, spell in pairs(c:GetSpellCache()) do
			if c:StringContains(spell["name"], spellName, true) then
				table.insert(result, spell);
				if table.getn(result) == maxResults then
					return result, maxResults;
				end
			end
		end
		return result;
	end
end

----- [ zones ] -----

local zoneCache = {};
function c:GetZoneChildrenSorted(parentMapId)
	if not zoneCache[parentMapId] then
		zoneCache[parentMapId] = {};
		for k, v in ipairs(C_Map.GetMapChildrenInfo(parentMapId)) do
			table.insert(zoneCache[parentMapId], v);
		end
		table.sort(zoneCache[parentMapId], function(a, b) return a["name"] < b["name"] end);
	end
	return zoneCache[parentMapId];
end

function c:GetZoneInfo(mapId)
	if mapId then
		return C_Map.GetMapInfo(mapId);
	end
end

function c:GetZoneDisplayName(mapId)
	local zoneInfo = c:GetZoneInfo(mapId);
	local parentZoneEntry = c:GetZoneInfo(zoneInfo["parentMapID"]);
	if parentZoneEntry["mapID"] ~= 947 then		
		return zoneInfo["name"] .. ", " .. parentZoneEntry["name"];
	end
	return zoneInfo["name"];
end

function c:IsZoneBattleground(mapId)
	return mapId == 1459 or mapId == 1460 or mapId == 1461;
end

----- [ lua ] -----
function c:DebugPrint(...)
	if c.debugMode then
		local values = {};
		for k, v in pairs({...}) do
			tinsert(values, tostring(v));
		end
		print("[GearQuipper][Debug] " .. strjoin(", ", unpack(values)));
	end
end

function c:Println(str)
	if str then
		print("[GearQuipper] " .. str);
	end
end

function c:StartsWith(str, substr, caseInsensitive)
	if caseInsensitive then
		str = string.upper(str);
		substr = string.upper(substr);
	end

   return string.sub(str, 1, string.len(substr)) == substr;
end

function c:StringContains(str, match, caseInsensitive)
	if caseInsensitive then
		str = string.upper(str);
		match = string.upper(match);
	end

	return string.find(str, "%" .. match);
end

function c:Trim(str)
	if str then
		return str:gsub("^%s*(.-)%s*$", "%1");
	end
	return "";
end

function c:BoolToText(value, trueText, falseText)
	if value then
		return trueText;
	end
	return falseText;
end

function c:GetTableSize(t)
    local count = 0
    for _, __ in pairs(t) do
        count = count + 1
    end
    return count
end

function c:TableIsArray(t)
	return t[1] and c:GetTableSize(t) == table.getn(t);
end

function c:TableContains(t, value, caseInsensitive)
	if caseInsensitive then
		value = string.upper(value);
	end

	if c:TableIsArray(t) then
		for k, v in ipairs(t) do
			if (not caseInsensitive and v == value) or (caseInsensitive and string.upper(v) == value) then
				return v;
			end
		end
	else
		for k, v in pairs(t) do
			if (not caseInsensitive and v == value) or (caseInsensitive and string.upper(v) == value) then
				return v;
			end
		end
	end
end

function c:FormatTextWithColor(text, colorHex)
	return string.format("|cff%s%s|r", colorHex, text);
end

function c:Equals(o1, o2)
	if o1 == o2 then
		return true;
	end;

	local o1Type, o2Type = type(o1), type(o2);
	if o1Type ~= o2Type then
		local o1Num, o2Num = tonumber(o1), tonumber(o2);
		return o1Num and o1Num == o2Num;
	elseif o1Type == "string" or o1Type == "number" then
		return o1 == o2;
	elseif o1Type == "table" then
		for k, v in pairs(o1) do
			if not c:Equals(v, o2[k]) then
				return false;
			end
		end
		for k, v in pairs(o2) do
			if not c:Equals(v, o1[k]) then
				return false;
			end
		end
		return true;
	end
end

function c:DumpTable(t)
	if t then
		for k, v in pairs(t) do
			print(k, v);
		end
	else
		print();
	end
end

function c:RemoveValueFromArray(array, value)
	for k, v in ipairs(array) do
		if v == value then
			return table.remove(array, k);
		end
	end
end

function c:Deepcopy(orig, copies)
    copies = copies or {};
    local orig_type, copy = type(orig);
    if orig_type == "table" then
        if copies[orig] then
            copy = copies[orig];
        else
            copy = {};
            copies[orig] = copy;
            setmetatable(copy, c:Deepcopy(getmetatable(orig), copies));
            for orig_key, orig_value in next, orig, nil do
                copy[c:Deepcopy(orig_key, copies)] = c:Deepcopy(orig_value, copies);
            end
        end
    else
        copy = orig;
    end
    return copy;
end

function c:ExtractArguments(msg)
	local results, arg, quote = {}, "", false;
	for char in msg:gmatch(".") do
		if char == ' ' and not quote then
			if strlen(arg) > 0 then
				table.insert(results, arg);
				arg = "";
			end
		elseif char == '"' then
			if quote == true and strlen(arg) > 0 then
				table.insert(results, arg);
				arg = "";
			end
			quote = not quote;
		else
			arg = arg .. char;
		end
	end

	if strlen(arg) > 0 then
		table.insert(results, arg);
	end

	return results;
end

function c:IsAddonEnabled(addonName)
	local name, title, notes, enabled, loadable, reason, security = GetAddOnInfo(addonName);
	return title and enabled;
end