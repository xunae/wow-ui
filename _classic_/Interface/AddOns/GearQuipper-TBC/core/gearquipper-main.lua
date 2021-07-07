-- scope stuff
gearquipper = gearquipper or {};
local c = gearquipper;

local switchId, switchQueue, switching, bankAction = 0, {};
local inCombat, interruptedByCombat;

local lastRealmname, lastCharname;
local lastMountState, lastStealthState, lastPvPState, lastAfkState, lastPartyState, lastRaidState, lastSubmergedState;
local lastRaidRoster, lastMapId;

local BANKCONTAINER_BAGID_OFFSET = 47;

c.SWITCHARG_FIRST = "SWITCHARG_FIRST";
c.SWITCHARG_ID = "SWITCHARG_ID";
c.SWITCHARG_NOTIFY = "SWITCHARG_NOTIFY";
c.SWITCHARG_ONFINISHED = "SWITCHARG_ONFINISHED";
c.SWITCHARG_SETNAME = "SWITCHARG_SETNAME";

function c:GetCharName()
    return UnitName("player");
end

function c:GetRealmName()
    return GetRealmName();
end

local function GetNextSwitchId()
    switchId = switchId + 1;
    return switchId;
end

function c:NotifyInChat(msg)
    if GQ_OPTIONS[c.OPT_HIGHLIGHTCHANGES] then
        c:Println(msg);
    end
end

local function HighlightButton(button)
    if button then
        ActionButton_ShowOverlayGlow(button);
        C_Timer.After(1, function()
            ActionButton_HideOverlayGlow(button);
        end);
    end
end

function c:HighlightInventorySlot(slotId)
    if GQ_OPTIONS[c.OPT_HIGHLIGHTCHANGES] then
        if c:GetSlotInfo()[slotId] then
            HighlightButton(_G["Character" .. c:GetSlotInfo()[slotId]]);
        end
    end
end

function c:HighlightActionSlot(slotId)
    if GQ_OPTIONS[c.OPT_HIGHLIGHTCHANGES] then
        HighlightButton(c:GetActionButton(slotId));
    end
end

function c:IsSwitching()
    return switching;
end

-- command handling
SLASH_GEARQUIPPER1 = "/gq";
local CMD_DEBUG = "debug";
local CMD_RESET = "reset";
local CMD_SAVE = "save";
local CMD_SWITCH = "switch";
local CMD_SWITCHWAIT = "switchwait";
local CMD_TOGGLEEVENTS = "toggleevents";

SlashCmdList["GEARQUIPPER"] = function(msg)
    if msg then
        if c.initFinished then
            msg = c:Trim(msg);

            if msg == CMD_DEBUG then
                c.debugMode = not c.debugMode;
                if c.debugMode then
                    c:Println("Debug mode enabled. Type '/gq debug' or relog/reload to disable.");
                else
                    c:Println("Debug mode disabled.");
                end
                return;
            elseif msg == CMD_RESET then
                c:ShowResetDialog();
                return;
            elseif c:StartsWith(msg, CMD_SWITCHWAIT, true) then
                msg = c:Trim(msg:gsub(CMD_SWITCHWAIT, ""));

                if msg ~= "" then
                    local args = c:ExtractArguments(msg);

                    if args and table.getn(args) == 2 then
                        local setName, onFinished = args[1], args[2];

                        local existingSetName = c:TableContains(c:LoadSetNames(), setName, true);
                        if existingSetName then
                            c:QueueSwitch({
                                [c.SWITCHARG_SETNAME] = existingSetName,
                                [c.SWITCHARG_ONFINISHED] = onFinished
                            });
                            return;
                        else
                            c:Println(c:GetText("Macro warning: There is no set named \"%s\".", setName));
                        end
                    end
                end
            elseif c:StartsWith(msg, CMD_SWITCH, true) then
                msg = c:Trim(msg:gsub(CMD_SWITCH, ""));
                local existingSets, setNames = c:LoadSetNames(), {};

                if msg ~= "" then
                    for _, v in ipairs(c:ExtractArguments(msg)) do
                        if string.upper(v) == c.KEYWORD_PREVIOUS then
                            table.insert(setNames, c.KEYWORD_PREVIOUS);
                        elseif string.upper(v) == c.KEYWORD_PREVIOUSEQUIPMENT then
                            table.insert(setNames, c.KEYWORD_PREVIOUSEQUIPMENT);
                        else
                            local existingSetName = c:TableContains(existingSets, v, true);
                            if existingSetName then
                                table.insert(setNames, existingSetName);
                            else
                                c:Println(c:GetText("Macro warning: There is no set named \"%s\".", v));
                            end
                        end
                    end
                else
                    setNames = c:Deepcopy(existingSets);
                end

                local noSets = table.getn(setNames);
                if noSets == 1 then
                    c:QueueSwitch({
                        [c.SWITCHARG_SETNAME] = setNames[1]
                    });
                elseif noSets > 1 then
                    local currentSet = c:LoadCurrentSetName();
                    for k, v in ipairs(setNames) do
                        if v == currentSet then
                            local index = k + 1;
                            if index > noSets then
                                index = 1;
                            end
                            c:QueueSwitch({
                                [c.SWITCHARG_SETNAME] = setNames[index]
                            });
                            return;
                        end
                    end

                    c:ResetIgnoredSlots();
                    c:QueueSwitch({
                        [c.SWITCHARG_SETNAME] = setNames[1]
                    });
                end
                return;
            elseif c:StartsWith(msg, CMD_SAVE, true) then
                msg = c:Trim(msg:gsub(CMD_SAVE, ""));

                if msg ~= "" then
                    local existingSetName = c:TableContains(c:LoadSetNames(), msg, true);
                    if existingSetName then
                        c:SaveSet(existingSetName);
                    else
                        c:Println(c:GetText("Macro warning: There is no set named \"%s\".", msg));
                    end
                else
                    local currentSetName = c:LoadCurrentSetName();
                    if currentSetName then
                        c:SaveSet(currentSetName);
                    end
                end
                return;
            elseif msg == CMD_TOGGLEEVENTS then
                local newVal, text = not c:IsEventsEnabled();
                c:SetEventsEnabled(newVal);
                c:ToggleEvents(newVal);
                if newVal then
                    text = c:GetText("enabled");
                else
                    text = c:GetText("disabled");
                end
                c:Println(c:GetText("Event bindings %s.", text));
                return;
            end

            c:Println(c:GetText("Unknown command. Possible parameters are: /gq ..."));
            c:Println(c:GetText("reset -> Resets the GearQuipper addon (e.g. in case of errors)."));
            c:Println(c:GetText("save [setname] -> Saves the specified set or the current set if omitted."));
            c:Println(c:GetText("switch [setname1] [setname2] ... -> Switches between specified sets. For macro use."));
            c:Println(c:GetText("toggleevents -> Toggles event bindings enabled or disabled."));
        else
            c:Println(c:GetText("The AddOn has not been initialized due to an error. Please relog and try again."));
        end
    end
end

-- event handling
c.eventFrame = c.eventFrame or CreateFrame("Frame");
c.eventFrame:RegisterEvent("ADDON_LOADED");
c.eventFrame:RegisterEvent("PLAYER_LOGIN");
c.eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD");

-- event bindings
c.eventFrame:RegisterEvent("PLAYER_FLAGS_CHANGED");
c.eventFrame:RegisterEvent("PLAYER_REGEN_ENABLED");
c.eventFrame:RegisterEvent("PLAYER_REGEN_DISABLED");
c.eventFrame:RegisterEvent("SPELL_UPDATE_USABLE");
c.eventFrame:RegisterEvent("MIRROR_TIMER_START");
c.eventFrame:RegisterEvent("MIRROR_TIMER_STOP");
c.eventFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
c.eventFrame:RegisterEvent("ZONE_CHANGED");
c.eventFrame:RegisterEvent("ZONE_CHANGED_INDOORS");
c.eventFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA");
c.eventFrame:RegisterEvent("UNIT_AURA");
c.eventFrame:RegisterEvent("GROUP_ROSTER_UPDATE");
c.eventFrame:RegisterEvent("RAID_ROSTER_UPDATE");

-- core features
c.eventFrame:RegisterEvent("UNIT_INVENTORY_CHANGED");
c.eventFrame:RegisterEvent("PLAYER_EQUIPMENT_CHANGED");
c.eventFrame:RegisterEvent("ACTIONBAR_SLOT_CHANGED");
c.eventFrame:RegisterEvent("ITEM_LOCKED");
c.eventFrame:RegisterEvent("ITEM_UNLOCKED");
c.eventFrame:RegisterEvent("BANKFRAME_OPENED");
c.eventFrame:RegisterEvent("BANKFRAME_CLOSED");

-- additional core features
c.eventFrame:RegisterEvent("PLAYER_LEVEL_UP");
c.eventFrame:RegisterEvent("UPDATE_MACROS");

-- socketing (new in tbc classic)
c.eventFrame:RegisterEvent("SOCKET_INFO_SUCCESS");
c.eventFrame:RegisterEvent("SOCKET_INFO_CLOSE");

-- c.eventFrame:RegisterEvent("UNIT_SPELLCAST_SENT");
-- c.eventFrame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED");

c.eventFrame:HookScript("OnEvent", function(self, event, arg1, arg2, arg3, ...)
    if event then
        if c.initFinished then
            c:DebugPrint("Event: ", event, arg1, arg2);
        end

        if event == "ADDON_LOADED" and arg1 == "GearQuipper-TBC" and not c.initFinished then
            c:Init();
        elseif event == "PLAYER_LOGIN" then
            if GwCharacterWindow then
                -- GW2_UI support
                c:InitUI(GwCharacterWindow);
            end
        elseif event == "PLAYER_ENTERING_WORLD" then
            local currentRealmName, currentCharName = GetRealmName(), c:GetCharName();
            if not c.currentSession or c.currentSession["realmName"] ~= currentRealmName or c.currentSession["charName"] ~=
                currentCharName then
                c:CreateDefaultSet();
                c:CreatePreviousEquipmentSet();

                -- set initial states
                lastMountState = IsMounted() and not UnitOnTaxi("player");
                lastStealthState = IsStealthed();
                lastPartyState = IsInGroup();
                lastRaidState = IsInRaid();
                lastPvPState = UnitIsPVP("player");
                lastAfkState = UnitIsAFK("player");
                lastSubmergedState = IsSwimming();
                lastMapId = C_Map.GetBestMapForUnit("player");

                c:GetMacros();
                c:LoadCloakAndHelmet();
                c.currentSession = {
                    ["realmName"] = currentRealmName,
                    ["charName"] = currentCharName
                };
            else
                c:NewZone();
            end
        elseif event == "SOCKET_INFO_UPDATE" then
            if c.socketingAction then
                local currentSetName = c:LoadCurrentSetName();
                if currentSetName then
                    if c:SaveSlot(c.socketingAction, currentSetName) then
                        c.eventFrame:UnregisterEvent("SOCKET_INFO_UPDATE");
                    end
                end
            end
        elseif event == "SOCKET_INFO_SUCCESS" then
            c.eventFrame:RegisterEvent("SOCKET_INFO_UPDATE");
        elseif event == "SOCKET_INFO_CLOSE" then
            c.eventFrame:UnregisterEvent("SOCKET_INFO_UPDATE");
            c.socketingAction = nil;
        elseif event == "UNIT_INVENTORY_CHANGED" and arg1 == "player" then
            -- ammo slot workaround
            c:EquipmentChanged();
        elseif event == "PLAYER_EQUIPMENT_CHANGED" and arg1 ~= INVSLOT_AMMO then
            c:EquipmentChanged(arg1);
        elseif event == "ACTIONBAR_SLOT_CHANGED" then
            if not c:IsSwitching() and c:LoadActionSlotsOption() and arg1 and arg1 > 0 and arg1 < 121 then
                c:SaveActionSlot(arg1);
            end
        elseif event == "PLAYER_LEVEL_UP" then
            c:LevelUp(arg1);
        elseif event == "UPDATE_MACROS" and c.initFinished then
            c:ProcessMacroUpdate();
        elseif event == "COMBAT_LOG_EVENT_UNFILTERED" then
            local currentPvPState = UnitIsPVP("player");
            if lastPvPState ~= currentPvPState then
                if currentPvPState then
                    c:HandleEvent(c.EVENT_PVP_ENABLE);
                else
                    c:HandleEvent(c.EVENT_PVP_DISABLE);
                end
                lastPvPState = currentPvPState;
            end
        elseif event == "ITEM_LOCKED" and not arg2 then
            if not c:IsSwitching() and not bankAction then
                local bagOrSlotId = tonumber(arg1);
                if IsShiftKeyDown() then
                    -- opened socketing frame
                    c.socketingAction = bagOrSlotId;
                else
                    if bagOrSlotId >= 0 and bagOrSlotId <= 19 then
                        c:OpenQuickBar(bagOrSlotId);
                    end
                end
            end
        elseif event == "ITEM_UNLOCKED" then
            c:CloseQuickBars();
        elseif event == "UNIT_AURA" then
            C_Timer.After(1, function()
                local currentMountState, currentStealthState = IsMounted() and not UnitOnTaxi("player"), IsStealthed();
                if currentMountState ~= lastMountState then
                    if currentMountState then
                        c:HandleEvent(c.EVENT_MOUNT);
                    else
                        c:HandleEvent(c.EVENT_DISMOUNT);
                    end
                    lastMountState = currentMountState;
                end
                if currentStealthState ~= lastStealthState then
                    if currentStealthState then
                        c:HandleEvent(c.EVENT_STEALTH);
                    else
                        c:HandleEvent(c.EVENT_UNSTEALTH);
                    end
                    lastStealthState = currentStealthState;
                end
            end);
        elseif event == "BANKFRAME_OPENED" or event == "BANKFRAME_CLOSED" and GqUiFrame:IsVisible() then
            C_Timer.After(0.25, function()
                c:RefreshSetList(true);
            end);
        elseif event == "PLAYER_REGEN_ENABLED" then
            c:LeaveCombat();
        elseif event == "PLAYER_REGEN_DISABLED" then
            c:EnterCombat();
        elseif event == "PLAYER_FLAGS_CHANGED" then
            local currentAfkState = UnitIsAFK("player");
            if lastAfkState ~= currentAfkState then
                if currentAfkState then
                    c:HandleEvent(c.EVENT_AFK_ENABLE);
                else
                    c:HandleEvent(c.EVENT_AFK_DISABLE);
                end
                lastAfkState = currentAfkState;
            end
        elseif event == "GROUP_ROSTER_UPDATE" or event == "RAID_ROSTER_UPDATE" then
            local currentPartyState, currentRaidState = IsInGroup(), IsInRaid();
            if lastPartyState ~= currentPartyState then
                if currentPartyState then
                    c:HandleEvent(c.EVENT_PARTY_JOIN);
                else
                    c:HandleEvent(c.EVENT_PARTY_LEAVE);
                end
                lastPartyState = currentPartyState;
            end

            if lastRaidState ~= currentRaidState then
                if currentRaidState then
                    c:HandleEvent(c.EVENT_RAID_JOIN);
                else
                    c:HandleEvent(c.EVENT_RAID_LEAVE);
                end
                lastRaidState = currentRaidState;
            end
        elseif c:StartsWith(event, "ZONE_CHANGED") then
            if c.firstZoneEntered then
                c:NewZone();
            else
                c.firstZoneEntered = true;
            end
        elseif event == "SPELL_UPDATE_USABLE" or "MIRROR_TIMER_START" or "MIRROR_TIMER_STOP" then
            local currentSubmergedState = IsSwimming();
            if lastSubmergedState ~= currentSubmergedState then
                if currentSubmergedState then
                    c:HandleEvent(c.EVENT_SUBMERGE);
                else
                    c:HandleEvent(c.EVENT_EMERGE);
                end
                lastSubmergedState = currentSubmergedState;
            end
        end
    end
end);

function c:EquipmentChanged(slotId)
    if not slotId then
        -- ammo slot workaround
        local previousAmmo, currentAmmo = c:LoadSlot(INVSLOT_AMMO, c.KEYWORD_PREVIOUSEQUIPMENT),
            c:GetItemString(INVSLOT_AMMO);
        if previousAmmo ~= currentAmmo then
            slotId = INVSLOT_AMMO;
        end
    end

    if slotId and c:GetSlotInfo()[slotId] and not c:IsSwitching() and not bankAction then
        local currentSetName = c:LoadCurrentSetName();
        if currentSetName then
            if c:SaveConditionsMet() and (not c:LoadPartialOption() or c:LoadSlotState(slotId)) and
                (slotId == INVSLOT_AMMO or not c:IsSetItem(slotId, c:LoadSlot(slotId, currentSetName))) then
                c:SaveSlot(slotId, currentSetName);
            elseif GQ_OPTIONS[c.OPT_IGNOREMANUALITEMS] then
                c:AddIgnoredSlot(slotId);
            end

            c:SetSlotInfo(slotId);
        end
    end

    if slotId == INVSLOT_AMMO or not c:IsSetItem(slotId, c:LoadSlot(slotId, c.KEYWORD_PREVIOUSEQUIPMENT)) then
        c:SaveSlot(slotId, c.KEYWORD_PREVIOUSEQUIPMENT, false);
    end
end

function c:HandleEvent(eventType, eventSubType)
    if eventType == c.EVENT_MOUNT then
        lastMountState = true;
    elseif eventType == c.EVENT_DISMOUNT then
        lastMountState = false;
    elseif eventType == c.EVENT_STEALTH then
        lastStealthState = true;
    elseif eventType == c.EVENT_UNSTEALTH then
        lastStealthState = false;
    end

    if c:IsEventsEnabled() then
        local filter = {
            [c.FIELD_TYPE] = eventType
        };
        if eventType == c.EVENT_ZONE_ENTER or eventType == c.EVENT_ZONE_LEAVE then
            filter[c.FIELD_SUBTYPE] = c:GetZoneInfo(eventSubType);
        else

        end
        local setBindings = c:LoadEventBindings(filter);
        if setBindings then
            local currentPvPState = UnitIsPVP("player");
            for index, binding in pairs(setBindings) do
                if (binding[c.FIELD_ENABLED] == nil or binding[c.FIELD_ENABLED]) and
                    (binding[c.FIELD_PVE] and not currentPvPState) or (binding[c.FIELD_PVP] and currentPvPState) then
                    c:QueueSwitch({
                        [c.SWITCHARG_SETNAME] = binding[c.FIELD_NAME]
                    });
                    return;
                end
            end
        end
    end
end

function c:NewZone()
    local currentMapId = C_Map.GetBestMapForUnit("player");
    if currentMapId ~= lastMapId then
        if lastMapId then
            -- leave bg
            if c:IsZoneBattleground(lastMapId) then
                c:HandleEvent(c.EVENT_BG_LEAVE);
            end

            -- leave zone
            local lastParentMapId = c:GetZoneInfo(lastMapId)["parentMapId"];
            if lastParentMapId and lastParentMapId ~= 947 then
                -- leave parent zone
                c:HandleEvent(c.EVENT_ZONE_LEAVE, lastParentMapId);
            end
            c:HandleEvent(c.EVENT_ZONE_LEAVE, lastMapId);
        end
        lastMapId = currentMapId;

        if currentMapId then
            -- enter bg
            if c:IsZoneBattleground(currentMapId) then
                c:HandleEvent(c.EVENT_BG_ENTER);
            end

            -- enter zone
            local currentParentMapId = c:GetZoneInfo(currentMapId)["parentMapId"];
            if currentParentMapId and currentParentMapId ~= 947 then
                -- enter parent zone
                c:HandleEvent(c.EVENT_ZONE_ENTER, currentParentMapId);
            end
            c:HandleEvent(c.EVENT_ZONE_ENTER, currentMapId);
        end
    end
end

function c:EnterCombat()
    inCombat = true;
    -- c:HandleEvent(c.EVENT_COMBAT_ENTER);
    c:LockUI();
end

function c:LeaveCombat()
    inCombat = false;
    c:HandleEvent(c.EVENT_COMBAT_LEAVE);

    if table.getn(switchQueue) > 0 then
        local nextSet = table.remove(switchQueue, 1);
        c:SwitchToSet(nextSet);
    else
        c:UnlockUI();
    end
end

function c:IsInCombat()
    return InCombatLockdown() or inCombat;
end

function c:IsOnBattleground()
    local bgPosition = UnitInBattleground("player");
    if not bgPosition then
        return false;
    end
    return bgPosition;
end

function c:FinishSwitch(switchArgs)
    C_Timer.After(1, function()
        if interruptedByCombat and c:IsSetComplete(switchArgs[c.SWITCHARG_SETNAME]) and GQ_OPTIONS[c.OPT_NOTIFYQUEUES] then
            c:Println(c:GetText("Combat ended. Switch to set \"%s\" complete.", switchArgs[c.SWITCHARG_SETNAME]));
        end
        c:ResetIgnoredSlots();
        interruptedByCombat = false;
        switching = nil;

        if table.getn(switchQueue) > 0 then
            local nextSet = table.remove(switchQueue, 1);
            c:SwitchToSet(nextSet);
        else
            c:LoadCloakAndHelmet(switchArgs[c.SWITCHARG_SETNAME]);
            c:UpdateBroker();
            c:UnlockUI();
            if c.paperDollFrame:IsVisible() then
                c:SetPaperDollLabelText();
                c:SetSlotInfo();
                c:ShowSlotStateBoxes();
                c:RefreshSetList(switchArgs[c.SWITCHARG_SETNAME]);

                if switchArgs[c.SWITCHARG_ONFINISHED] and strlen(switchArgs[c.SWITCHARG_ONFINISHED]) > 0 then
                    RunMacroText(switchArgs[c.SWITCHARG_ONFINISHED]);
                end
            end
            CloseDropDownMenus();
            PlaySound(1264);
        end
    end);
end

function c:QueueSwitch(switchArgs)
    if switchArgs then
        switchArgs[c.SWITCHARG_ID] = GetNextSwitchId();
        if not c:IsSwitching() and not c:IsInCombat() then
            c:SwitchToSet(switchArgs);
            return;
        end

        if switchArgs[c.SWITCHARG_FIRST] and (not switchQueue[1] or switchQueue[1] ~= setName) then
            local tmp = c:Deepcopy(switchQueue);
            switchQueue = {switchArgs};
            for _, set in ipairs(tmp) do
                tinsert(switchQueue, set);
            end
        else
            local lastQueuedSet = switchQueue[table.getn(switchQueue)];
            if not lastQueuedSet or lastQueuedSet[c.SWITCHARG_ID] ~= switchArgs[c.SWITCHARG_ID] then
                tinsert(switchQueue, switchArgs);
            else
                return;
            end
        end

        if switchArgs[c.SWITCHARG_NOTIFY] == nil or switchArgs[c.SWITCHARG_NOTIFY] then
            if switchArgs[c.SWITCHARG_SETNAME] == c.KEYWORD_PREVIOUS then
                switchArgs[c.SWITCHARG_SETNAME] = c:LoadPreviousSetName();
            end

            if GQ_OPTIONS[c.OPT_NOTIFYQUEUES] then
                c:Println(c:GetText("Switch to \"%s\" queued.", switchArgs[c.SWITCHARG_SETNAME]));
            end
            interruptedByCombat = true;
        end
    end
end

function c:SwitchToSet(switchArgs)
    if not c:IsSwitching() and switchArgs then
        local setName = switchArgs[c.SWITCHARG_SETNAME];
        if setName == c.KEYWORD_PREVIOUS then
            setName = c:LoadPreviousSetName();
        end

        setName = c:TableContains(c:LoadSetNames(true), setName, true); -- case insensitive
        if setName then
            local desiredSet = c:LoadSet(setName);
            c:SaveSet(c.KEYWORD_PREVIOUSEQUIPMENT, false);

            local freeSpace, neededSpace, bagSpaceCache = c:CheckNeccessaryBagSpace(setName);
            if neededSpace > freeSpace then
                c:Println(c:GetText("Not enough bag space. Current space: %s, needed: %s", freeSpace, neededSpace));
                c:RefreshSetList();
            else
                switching = setName;
                CloseMerchant();
                c:LockUI(setName);
                PlaySound(1264);

                for _, slotId in ipairs(c:GetSlotSwitchOrder()) do
                    local desiredItemString = desiredSet[slotId];

                    if not c:IsSetItem(slotId, desiredItemString) and
                        (not c:LoadPartialOption(setName) or c:LoadSlotState(slotId, setName)) and
                        (not GQ_OPTIONS[c.OPT_IGNOREMANUALITEMS] or not c:IsIgnoredItem(slotId)) then
                        if c:IsInCombat() then
                            -- breaks loop if combat starts
                            if GQ_OPTIONS[c.OPT_NOTIFYQUEUES] then
                                c:Println(c:GetText(
                                    "Switching interrupted by combat. It will be re-attempted once combat is over."));
                            end
                            c:QueueSwitch({
                                [c.SWITCHARG_SETNAME] = setName,
                                [c.SWITCHARG_FIRST] = true
                            });
                            c:RefreshSetList();
                            interruptedByCombat = true;
                            return;
                        end

                        if c:IsEmpty(desiredItemString) then
                            if not c:UnequipItem(slotId, bagSpaceCache, c:GetItemString(slotId)) then
                                return;
                            end
                        else
                            -- prevents mh/oh swapping issues
                            if (slotId == INVSLOT_MAINHAND and c:GetItemString(INVSLOT_OFFHAND) == desiredItemString) then
                                if not c:UnequipItem(slotId, bagSpaceCache, c:GetItemString(INVSLOT_MAINHAND)) then
                                    return;
                                end
                            end

                            -- equip item
                            local itemLink = c:GetItemLink(desiredItemString);
                            if itemLink then
                                local bagId, bagSlotId = c:FindItemInBags(desiredItemString);

                                if not bagId and c:IsAtBank() then
                                    -- item not in bag -> check in bank
                                    if c:GetItemFromBank(c:GetItemString(itemLink), bagSpaceCache) then
                                        C_Timer.After(0.6, function()
                                            c:EquipItem(slotId, itemLink, bagSpaceCache);
                                        end);
                                    end
                                else
                                    c:EquipItem(slotId, itemLink, bagSpaceCache);
                                end
                            end
                        end

                        if GQ_OPTIONS[c.OPT_HIGHLIGHTCHANGES] then
                            c:HighlightInventorySlot(slotId);
                        end
                    end
                end

                if setName ~= c.KEYWORD_PREVIOUSEQUIPMENT then
                    if c:LoadActionSlotsOption(setName) then
                        c:LoadActionConfiguration(setName);
                    end
                    c:SaveCurrentSetName(setName);
                else
                    if c:LoadActionSlotsOption(c:LoadPreviousSetName()) then
                        c:LoadActionConfiguration(c:LoadPreviousSetName());
                    end
                    c:SaveCurrentSetName(c:LoadPreviousSetName());
                end

                c:FinishSwitch(switchArgs);
            end
        end
    end
end

function c:UnequipItem(slotId, bagSpaceCache, itemString)
    ClearCursor();
    PickupInventoryItem(slotId);
    if not c:PutInBag(bagSpaceCache, itemString) then
        c:Println(c:GetText("Not enough bag space. Switching aborted."));
        c:RefreshSetList();
        switching = nil;
        c:UnlockUI();
        return false;
    end
    ClearCursor();
    return true;
end

function c:EquipItem(slotId, itemLink, bagSpaceCache)
    local itemString = c:GetItemString(itemLink);
    local bagId, bagSlotId = c:FindItemInBags(itemString);
    if bagId then
        c:SaveLastBagLocation(itemString, bagId, bagSlotId);
        if c:IsEmpty(slotId) then
            bagSpaceCache[bagId] = bagSpaceCache[bagId] + 1;
        end
    end

    if slotId == 0 then
        -- ammo workaround
        EquipItemByName(itemLink);
    else
        EquipItemByName(itemLink, slotId);
    end
end

function c:LoadActionConfiguration(setName)
    local actionSlots = c:LoadActionSlots(setName);
    for slotId, entry in pairs(actionSlots) do
        if slotId > 0 and slotId < 121 and entry and not c:IsSameAction(slotId, entry) then
            if c:IsInCombat() then
                -- breaks loop if combat starts
                if GQ_OPTIONS[c.OPT_NOTIFYQUEUES] then
                    c:Println(c:GetText("Switching interrupted by combat. It will be re-attempted once combat is over."));
                end
                c:QueueSwitch({
                    [c.SWITCHARG_SETNAME] = setName,
                    [c.SWITCHARG_FIRST] = true
                });
                interruptedByCombat = true;
                return;
            end

            ClearCursor();
            PickupAction(slotId);
            ClearCursor();

            if not c:IsEmpty(entry) then
                if entry[c.FIELD_TYPE] == "spell" then
                    PickupSpell(entry[c.FIELD_ID]);
                elseif entry[c.FIELD_TYPE] == "item" then
                    PickupItem(entry[c.FIELD_ID]);
                elseif entry[c.FIELD_TYPE] == "macro" then
                    PickupMacro(entry[c.FIELD_ID]);
                end

                PlaceAction(slotId);
                ClearCursor();
            end

            c:HighlightActionSlot(slotId);
        end
    end

    return true;
end

function c:PutInBag(bagSpaceCache, itemString)
    if itemString then
        local lastBagId = c:LoadLastBagLocation(itemString);
        if lastBagId and bagSpaceCache[lastBagId] and bagSpaceCache[lastBagId] > 0 and
            c:PutInBackpack(bagSpaceCache, lastBagId) then
            return true;
        end
    end

    local bagIdsSorted = {};
    for bagId, freeSlots in pairs(bagSpaceCache) do
        tinsert(bagIdsSorted, bagId);
    end
    table.sort(bagIdsSorted);

    for _, bagId in ipairs(bagIdsSorted) do
        if bagSpaceCache[bagId] > 0 then
            return c:PutInBackpack(bagSpaceCache, bagId);
        end
    end
end

function c:PutInBackpack(bagSpaceCache, bagId)
    if CursorHasItem() then
        if bagId == 0 then
            PutItemInBackpack();
        else
            PutItemInBag(ContainerIDToInventoryID(bagId));
        end

        if not CursorHasItem() then
            bagSpaceCache[bagId] = bagSpaceCache[bagId] - 1;
            return true;
        end
    end
end

function c:PutInBank(bankSpaceCache, itemString)
    if itemString then
        local lastBagId, lastSlotId = c:LoadLastBankLocation(itemString);
        if lastBagId then
            if not lastSlotId and bankSpaceCache[lastBagId] > 0 then
                PutItemInBag(lastBagId);
                bankSpaceCache[lastBagId] = bankSpaceCache[lastBagId] - 1;
                return;
            else
                local invId = ContainerIDToInventoryID(lastBagId);
                if bankSpaceCache[invId] > 0 then
                    PutItemInBag(invId);
                    bankSpaceCache[invId] = bankSpaceCache[invId] - 1;
                    return;
                end
            end
        end
    end

    local invIdsSorted = {};
    for invId, freeSlots in pairs(bankSpaceCache) do
        tinsert(invIdsSorted, invId);
    end
    table.sort(invIdsSorted);

    for _, invId in ipairs(invIdsSorted) do
        if bankSpaceCache[invId] > 0 then
            PutItemInBag(invId);
            bankSpaceCache[invId] = bankSpaceCache[invId] - 1;
            return;
        end
    end
end

function c:PushSetToBank(setName)
    if setName and not bankAction then
        local freeSpace, items, bankSpaceCache = c:CheckNeccessaryPushSpace(setName);
        if freeSpace >= c:GetTableSize(items) then
            CloseMerchant();
            bankAction = "push";
            for slotId, itemString in pairs(items) do
                if not c:LoadPartialOption(setName) or c:LoadSlotState(slotId, setName) then
                    ClearCursor();

                    if c:IsSetItem(slotId, itemString) then
                        PickupInventoryItem(slotId);
                    else
                        local bagId, bagSlotId = c:FindItemInBags(itemString);
                        if bagId then
                            PickupContainerItem(bagId, bagSlotId);
                        end
                    end

                    if CursorHasItem() then
                        c:PutInBank(bankSpaceCache, itemString);
                    else
                        c:Println(c:GetText("Error while pushing set to bank."));
                    end
                end
            end

            C_Timer.After(1, function()
                c:SetSlotInfo();
                bankAction = nil;
            end);
            return true;
        else
            c:Println(c:GetText("Not enough bank space to push \"%s\" to bank. Free: %s, needed: %s.", setName,
                freeSpace, c:GetTableSize(items)));
        end
    end
end

function c:PullSetFromBank(setName)
    if setName and not bankAction then
        local freeSpace, items, bagSpaceCache = c:CheckNeccessaryPullSpace(setName);
        if freeSpace >= c:GetTableSize(items) then
            CloseMerchant();
            bankAction = "pull";
            for slotId, itemString in pairs(items) do
                if not c:LoadPartialOption(setName) or c:LoadSlotState(slotId, setName) then
                    if not c:GetItemFromBank(itemString, bagSpaceCache) then
                        c:Println(c:GetText("Error while pulling set from bank."));
                        return;
                    end
                end
            end

            C_Timer.After(1, function()
                c:SetSlotInfo();
                bankAction = nil;
            end);
            return true;
        else
            c:Println(c:GetText("Not enough bag space to pull \"%s\" from bank. Free: %s, needed: %s.", setName,
                freeSpace, c:GetTableSize(items)));
        end
    end
end

function c:GetItemFromBank(itemString, bagSpaceCache)
    ClearCursor();

    local bagId, bagSlotId = c:FindItemInBank(itemString);
    if bagId then
        c:SaveLastBankLocation(itemString, bagId, bagSlotId);
        if not bagSlotId then
            PickupContainerItem(-1, bagId - BANKCONTAINER_BAGID_OFFSET);
        else
            PickupContainerItem(bagId, bagSlotId);
        end
    end

    if CursorHasItem() then
        return c:PutInBag(bagSpaceCache, itemString);
    end
end
