 --[[
Name: Arena Team Tracker
Author(s): by Izy inspired by the old Party Ability Bars (PAB)
Contact/support at twitch.tv/imedia
Description: Track the cooldowns of your party members
--]]

local addon, SPELLDB = ...
local addon, ATTdefault = ...
local lower = string.lower
local match = string.match
local remove = table.remove
local GetSpellInfo = GetSpellInfo
local UnitClass = UnitClass
local UnitGUID = UnitGUID
local UnitName = UnitName
local IsInInstance = IsInInstance
local IsInGroup = IsInGroup
local IsInRaid = IsInRaid
local UnitRace = UnitRace
local UnitLevel = UnitLevel
local GetNumSubgroupMembers = GetNumSubgroupMembers
local CooldownFrame_Set = CooldownFrame_Set
local GetPvpTalentInfoByID = GetPvpTalentInfoByID
local GetSpecialization = GetSpecialization
local GetSpecializationInfo = GetSpecializationInfo
local GetTalentInfo = GetTalentInfo
local GetInventoryItemID = GetInventoryItemID
local GetInspectSelectedPvpTalent = C_SpecializationInfo.GetInspectSelectedPvpTalent
local LGlow = LibStub("LibButtonGlow-1.0")
local ChatPrefix  = "ATT-Check"
local ATTversion = 8.82
local ATTnewversion
local db
local dbModif = ATTdefault.dbModif
local dbReduce = ATTdefault.dbReduce
local dbRacial = ATTdefault.dbRacial
local dbImport = ATTdefault.dbImport
local dbConflict = ATTdefault.dbConflict
local dbEssVoP = ATTdefault.dbEssVoP
local dbReplace = ATTdefault.dbReplace
local dbEssences = ATTdefault.dbEssences
local dbCharge = ATTdefault.dbCharge
local dbModifCharge = ATTdefault.dbModifCharge
local ATT = CreateFrame("Frame","ATT",UIParent)
local ATTIcons = CreateFrame("Frame",nil,UIParent)
local ATTAnchor = CreateFrame("Frame",nil,UIParent)
local ATTTooltip = CreateFrame("GameTooltip", "ATTGameTooltip", nil, "GameTooltipTemplate")
local ATTTooltipsInspect = CreateFrame("GameTooltip", "ATTTooltipsInspect", nil, "GameTooltipTemplate")
ATTTooltipsInspect:SetOwner(UIParent, "ANCHOR_NONE")
local ATTDampframe = CreateFrame("Frame",nil,UIParent) 
ATTDampframe:SetPoint("TOP", UIWidgetTopCenterContainerFrame, "BOTTOM", 0, 0)
ATTDampframe:SetSize(150, 15) 

local iconlist = {}
local anchors = {}
local activeGUIDS = {}
local dbInspect = {}
local isFWW = {} -- workaround fix

local function print(...)
	for i=1,select('#',...) do
		ChatFrame1:AddMessage("|cff33ff99ATT|r: " .. select(i,...))
	end
end

local validUnits = {
	["player"] = true,
	["party1"] = true,
	["party2"] = true,
	["party3"] = true,
	["party4"] = true,
	["pet"] = true,
	["partypet1"] = true,
	["partypet2"] = true,
	["partypet3"] = true,
	["partypet4"] = true,
} 

--Info spells
local DampeningName = GetSpellInfo(110310)
local PvPTrinketName = GetSpellInfo(208683)
local AdaptedName = GetSpellInfo(336135)
local Adapted = GetSpellInfo(195901)
local RelentlessName = GetSpellInfo(196029)
local IFName = GetSpellInfo(316801)
local Stoneform = GetSpellInfo(20594)
local EveryMan = GetSpellInfo(59752)
local WillOfTheForsaken = GetSpellInfo(7744)
local Fireblood = GetSpellInfo(265221)
local MaledictName = GetSpellInfo(305252)
local Safeguard = GetSpellInfo(286342)
local Breach = GetSpellInfo(314517)
local Spite = GetSpellInfo(315362)
local Divine = GetSpellInfo(223819)
local Foj = GetSpellInfo(209785)
local Claw = GetSpellInfo(313148)
local Writhing = GetSpellInfo(313113)
local Badge = GetSpellInfo(277185)
local Medallion = GetSpellInfo(277179)
local Lingering = GetSpellInfo(314585)
local Voodoo = GetSpellInfo(266018)
local Emblem = GetSpellInfo(277187)


local function convertspellids(t)
	local temp = {}
	for class, table in pairs(t) do
		temp[class] = {}
		for spec, spells in pairs(table) do
			spec = tostring(spec)
			temp[class][spec] = {}
			for k, spell in pairs(spells) do
				local spellInfo = GetSpellInfo(spell[1])
				if spellInfo then temp[class][spec][#temp[class][spec]+1] = { ability = spellInfo, cooldown = spell[2], id = spell[1], maxcharges = spell[3], talent = spell.talent } end
			end
		end
	end
	return temp
end

local ATTdefaultAbilities = convertspellids(ATTdefault.Abilities)
local dbExtra = {
 {	["ability"] = PvPTrinketName, ["id"] = 336126, ["cooldown"] = 120,  ["sname"] = "pvptrinket",}, 
 {	["ability"] = AdaptedName,  ["id"] = 214027,["cooldown"] = 60, ["sname"] = "adapted"},
 {	["ability"] = RelentlessName,  ["id"] = 196029,[ "cooldown"] = 0, ["sname"] = "relentless"}, 
 {	["ability"] = MaledictName, ["id"] = 286348, ["cooldown"] = 120, ["sname"] = "maledict",}, 
 {	["ability"] = Safeguard, ["id"] = 286341, ["cooldown"] = 120, ["sname"] = "safeguard",}, 
 {	["ability"] = Breach, ["id"] = 314517, ["cooldown"] = 120, ["sname"] = "breach",},
 {	["ability"] = Spite, ["id"] = 315362, ["cooldown"] = 60, ["sname"] = "spite",},
 {	["ability"] = Claw, ["id"] = 313148, ["cooldown"] = 120, ["sname"] = "claw",},
 {	["ability"] = Writhing, ["id"] = 313113, ["cooldown"] = 120, ["sname"] = "writhing",},
 {	["ability"] = Badge, ["id"] = 277185, ["cooldown"] = 120, ["sname"] = "badge",},
 {	["ability"] = Voodoo, ["id"] = 266018, ["cooldown"] = 90, ["sname"] = "voodoo",},
 {	["ability"] = Lingering, ["id"] = 314585, ["cooldown"] = 60, ["sname"] = "lingering",},
 {	["ability"] = Medallion, ["id"] = 277179, ["cooldown"] = 120, ["sname"] = "medallion",},
  {	["ability"] = Emblem, ["id"] = 277187, ["cooldown"] = 90, ["sname"] = "emblem",},
 }

  local dbVisibility = {
 {	["ability"] = "arena" , ["atexture"] = "Show in Arena",}, 
 {	["ability"] = "dungeons" , ["atexture"] = "Show in Dungeons",}, 
 {	["ability"] = "scenarios" , ["atexture"] = "Show in Scenarios",}, 
 {	["ability"] = "inraid" , ["atexture"] = "Show in Raid/Battleground",}, 
 {	["ability"] = "outside" , ["atexture"] = "Show in Outside World",}, 
 }
		 
local cooldownResetters = {
	[11958] = { -- Cold Snap
		[120] = 1, 		-- Cone of Cold
		[45438] = 1,  	-- Ice Block
		[122] = 1, 		-- Frost Nova
	},
}

local temp = {}
for k, v in pairs(cooldownResetters) do
	local spellInfo = GetSpellInfo(k)
	if spellInfo then
		temp[spellInfo] = {}
		if type(v) == "table" then
			for id in pairs(v) do
				local spellInfo2 = GetSpellInfo(id)
				if spellInfo2 then temp[spellInfo][spellInfo2] = 1 end
			end
		else
			temp[GetSpellInfo(k)] = v
		end
	end
end

cooldownResetters = temp
temp = nil
convertspellids = nil

-- Player Inspect
local inspected = {}
local inspect_queue = {}
local nextInspectTick = 0

local supportedUnits = { "player", "party1", "party2", "party3", "party4" }
function ATT:FindUnitByGUID(guid)
    if guid then
        for i, unit in pairs(supportedUnits) do
            if UnitGUID(unit) == guid then
                return unit
            end
        end
    end
end

function ATT:GetSpecByGUID(guid)
    return inspected[guid]
end

function ATT:GetSpecByUnit(unit)
    local guid = UnitGUID(unit)
    if guid then return inspected[guid] end
end

function ATT:QueueInspect(unit)
    local guid = UnitGUID(unit)
    if guid and UnitIsConnected(unit) then
        if activeGUIDS[guid] == nil and not (dbInspect[unit] and dbInspect[unit][45]) then self:UpdateAnchors(unit) end
        self:DequeueInspectByGUID(guid)
        inspect_queue[#inspect_queue+1] = guid
    end
end 

function ATT:DequeueInspectByGUID(guid)
    local unit = self:FindUnitByGUID(guid)
    for i=1,#inspect_queue do
        if inspect_queue[i] == guid then
            table.remove(inspect_queue, i)
        end
    end
end

function ATT:InspectPlayer()
    self:InspectIsReady(UnitGUID("player"))
end

function ATT:InspectIsReady(guid)
    local inspectedUnit = ATT:FindUnitByGUID(guid)
    if not inspectedUnit then return end 
    local isInspect = inspectedUnit ~= "player"
    self:DequeueInspectByGUID(guid)
    if isInspect then
        inspected[guid] = GetInspectSpecialization(inspectedUnit)
        self:UpdateAnchors(inspectedUnit)
        dbInspect[inspectedUnit][45] = "inspected"
    else
        local spec = GetSpecialization()
        if spec and inspectedUnit == "player" then
            inspected[guid] = GetSpecializationInfo(spec)
            self:UpdateAnchors("player")
        end
    end
end

function ATT:EnqueueInspect()
    wipe(inspect_queue)
    for i=1, 4 do
       local unit = "party"..i
      self:QueueInspect(unit)
    end 
end
    
function ATT:ProcessInspectQueue()
        for i, guid in pairs(inspect_queue) do
            local unit = self:FindUnitByGUID(guid)
            if unit and not (InspectFrame and InspectFrame:IsShown()) and UnitIsConnected(unit) then
               NotifyInspect(unit)
               break
            end
        end
end

function ATT:INSPECT_READY(guid)
    if not self:FindUnitByGUID(guid) and not (InspectFrame and InspectFrame:IsShown()) then return end
    self:InspectIsReady(guid)
end

function ATT:InspectTimer(timer)
    if timerINUSE then return end
    timerINUSE = true
    local itimer = C_Timer.NewTicker(0.35, function(self)
        if #inspect_queue > 0 then ATT:ProcessInspectQueue() else
            self:Cancel() 
            timerINUSE = false
            ClearInspectPlayer()
        end
    end)
end

function ATT:SavePositions()
    for k,anchor in ipairs(anchors) do
        local scale = anchor:GetEffectiveScale()
        local worldscale = UIParent:GetEffectiveScale()
        local x = anchor:GetLeft() * scale
        local y = (anchor:GetTop() * scale) - (UIParent:GetTop() * worldscale)
        if not db.positions[k] then
            db.positions[k] = {}
        end
        db.positions[k].x = x
        db.positions[k].y = y
    end
end

local customframes = {
        "SUFHeaderpartyUnitButton%d",
        "Grid2LayoutHeader1UnitButton%d",
        "NugRaid1UnitButton%d",
        "XPerl_party%d",
        "Vd1H%d",
        "ElvUF_PartyGroup1UnitButton%d",
        "TukuiPartyUnitButton%d",
        "DUF_PartyFrame%d",
        "PitBull4_Groups_PartyUnitButton%d",
        "oUF_PartyUnitButton%d",
        "GwPartyFrame%d",
 }
 
function ATT:FindFrameByUnit(unit)
    if not unit or not UnitGUID(unit) then return end
    local index = UnitInRaid("player")  
    local _,_,raidgroup=GetRaidRosterInfo(index or 1)
    local compact = C_CVar.GetCVarBool("useCompactPartyFrames")
    local keepgr = CompactRaidFrameManager_GetSetting("KeepGroupsTogether")
    local inInstance, instanceType = IsInInstance()
    local isPartyGr = (not IsInRaid()) or (instanceType == "arena") or (instanceType == "party")
    local frametype , frame, name = nil , nil, nil
  --  local lfg = GetLFGMode(1) or GetLFGMode(2) or GetLFGMode(3)

    for i =1 ,#customframes do
        local name = format(string.gsub(customframes[i], "1RG", raidgroup), 1)
        if _G[name]  and string.find(name, "XPerl_party") then _G[name].unit = _G[name].partyid  end
        if _G[name] and string.find(name, "Vd1H") then _G[name].unit = _G[name].raidid end 
        if _G[name] and _G[name].unit and db.attach ~= 2 then
            frametype = string.gsub(customframes[i], "1RG", raidgroup)
               break
        end
    end 

     if not frametype then
        if isPartyGr and not compact then frametype = "PartyMemberFrame%d"
        elseif isPartyGr and keepgr and compact then frametype = "CompactPartyFrameMember%d"
        elseif not isPartyGr and keepgr then frametype = string.gsub("CompactRaidGroup1RGMember%d", "1RG", raidgroup);  
        elseif compact then frametype = "CompactRaidFrame%d" end
      end

    if frametype then
        for i =1, 40 do
            local name = format(frametype, i)
            if _G[name] and string.find(frametype, "XPerl") then _G[name].unit = _G[name].partyid end
            if _G[name] and string.find(frametype, "Vd1H") then _G[name].unit = _G[name].raidid end                   
            if _G[name] and _G[name].unit and (UnitGUID(_G[name].unit) == UnitGUID(unit)) then 
                frame = _G[name] 
                break
            end
        end
    end

    if frame and frame.unit and UnitGUID(frame.unit) == UnitGUID(unit) then
      return frame
    end
end 

function ATT:LoadPositions()
    db.positions = db.positions or {}
    for k,anchor in ipairs(anchors) do
        anchors[k]:ClearAllPoints()
        local raidFrame = self:FindFrameByUnit( k==5 and "player" or k~=5 and "party"..k )
        anchors[k]:ClearAllPoints()
        if raidFrame and db.attach and db.attach ~= 0 then
            if db.horizontal then
                anchors[k]:SetPoint(db.growLeft and "BOTTOMLEFT" or "BOTTOMRIGHT", raidFrame, db.growLeft and "BOTTOMRIGHT" or "BOTTOMLEFT", db.offsetX, db.offsetY)
            else
                anchors[k]:SetPoint(db.growLeft and "BOTTOMLEFT" or "BOTTOMRIGHT", raidFrame, db.growLeft and "TOPLEFT" or "TOPRIGHT", db.offsetX, db.offsetY)
            end
        else 
            if db.positions[k] then
                local x = db.positions[k].x
                local y = db.positions[k].y
                local scale = anchors[k]:GetEffectiveScale()
                anchors[k]:SetPoint("TOPLEFT", UIParent,"TOPLEFT", x/scale, y/scale)
            else
                anchors[k]:SetPoint("CENTER", UIParent, "CENTER")
            end
        end
    end
end

function ATT:CreateAnchors()
    local backdrop = {bgFile="Interface\\Tooltips\\UI-Tooltip-Background", edgeFile="", tile=false,}
    for i=1,5 do --here
        local anchor = CreateFrame("Frame","ATTAnchor"..i ,ATTAnchor, BackdropTemplateMixin and "BackdropTemplate")
        local index = anchor:CreateFontString(nil,"ARTWORK","GameFontNormal")
        anchor:SetBackdrop(backdrop)
        anchor:SetHeight(15)
        anchor:SetWidth(15)
        anchor:SetBackdropColor(1,0,0,1)
        anchor:EnableMouse(true)
        anchor:SetMovable(true)
        anchor:Show()
        anchor.icons = {}
        anchor.HideIcons = function() for k,icon in ipairs(anchor.icons) do icon:Hide(); icon.inUse = nil end end
        anchor:SetScript("OnMouseDown",function(self,button) if button == "LeftButton" and db.attach == 0 then self:StartMoving(); end end)
        anchor:SetScript("OnMouseUp",function(self,button) if button == "LeftButton" and db.attach == 0 then self:StopMovingOrSizing(); ATT:SavePositions() end end)
        anchor:Hide()
        anchors[i] = anchor
        index:SetPoint("CENTER")
        index:SetText(i)
    end
end

-- creates a new raw frame icon that can be used/reused to show cooldowns
local function CreateIcon(anchor)
    local unitanchor = tonumber(anchor:GetName():match("%d"))
    local icon = CreateFrame("Frame",anchor:GetName().."Icon".. (#anchor.icons+1),ATTIcons,"ATTButtonTemplate")
    icon:SetSize(40,40)
    local cd = CreateFrame("Cooldown",icon:GetName().."Cooldown",icon,"CooldownFrameTemplate")
    cd:SetHideCountdownNumbers(false)
    icon.cd = cd
    icon.Start = function(sentCD , nextcharge, rate)
        icon.cooldown = tonumber(sentCD)
        if icon.maxcharges then
            local charges = tonumber(icon.chargesText:GetText():match("^[0-9]+$"))
            if charges == 2 or nextcharge == icon.maxcharges then
                CooldownFrame_Set(cd,GetTime(),icon.cooldown, 1, 1, 1)
                icon.cd:SetDrawEdge(true)
                icon.cd:SetDrawSwipe(false)
                icon.cd:SetHideCountdownNumbers(true)
                icon.starttime = GetTime()
                charges = charges - 1
                icon.chargesText:SetText(charges)

            elseif charges == 1 and nextcharge == 5 then
                CooldownFrame_Set(cd,GetTime(),icon.cooldown, 1)
                icon.cd:SetDrawEdge(true)
                icon.cd:SetDrawSwipe(false)
                icon.cd:SetHideCountdownNumbers(true)
                icon.starttime = GetTime()
                icon.chargesText:SetText(charges) 

            elseif charges == 1 and nextcharge == 1 and icon.starttime < GetTime() then 
                icon.cd:SetDrawEdge(false)
                icon.cd:SetDrawSwipe(true)
                icon.cd:SetHideCountdownNumbers(false)
                charges = charges - 1
                icon.chargesText:SetText(charges)
            end

        else
            CooldownFrame_Set(cd,GetTime(),icon.cooldown, 1,1, rate)
            icon.starttime = GetTime() 
        end

        icon:Show()
        icon.active = true;

        activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
        activeGUIDS[icon.GUID][icon.ability] = activeGUIDS[icon.GUID][icon.ability] or {}
        activeGUIDS[icon.GUID][icon.ability].starttime = icon.starttime
        activeGUIDS[icon.GUID][icon.ability].cooldown = icon.cooldown
        if icon.maxcharges then activeGUIDS[icon.GUID][icon.ability].chargeleft = tonumber(icon.chargesText:GetText():match("^[0-9]+$")) end
        if db.hidden then ATT:ToggleIconDisplay(unitanchor) end
    end
    
    icon.Stop = function() 
       CooldownFrame_Set(cd,0,0,0);
       icon.starttime = 0
    end
    
    icon.SetTimer = function(starttime,cooldown,rate)
        CooldownFrame_Set(cd,starttime,cooldown,1,1,rate)
        icon.active = true
        icon.starttime = starttime
        icon.cooldown = cooldown
    end
    
    local texture = icon:CreateTexture(nil,"ARTWORK")
    texture:SetAllPoints(true)
    icon.texture = texture
    
    ATT:ApplyIconTextureBorder(icon)

    icon.chargesText = icon:CreateFontString(nil, nil, "DialogButtonHighlightText")
    icon.chargesText:SetTextColor(1, 1, 1)
    icon.chargesText:SetText("")
    icon.chargesText:SetPoint("BOTTOMRIGHT", icon, "BOTTOMRIGHT")

    -- tooltip:
    if not db.showTooltip then icon:EnableMouse(false) end
    icon:SetScript('OnEnter', function() 
        if db.showTooltip and icon.abilityID then
            ATTTooltip:ClearLines()
            ATTTooltip:SetOwner(WorldFrame, "ANCHOR_CURSOR")
            ATTTooltip:SetSpellByID(icon.abilityID)
            icon:EnableMouse(true)
        end
    end)
    
    icon:SetScript('OnLeave', function()
        if db.showTooltip and icon.abilityID then
            ATTTooltip:ClearLines()
            ATTTooltip:Hide()
            icon:EnableMouse(true)
        end
    end)

    icon.cd:SetScript("OnCooldownDone", function() 
         ATT:OnUpdate()
        if db.hidden then ATT:ToggleIconDisplay(unitanchor) 
        end 
    end)

    return icon
end

-- adds a new icon to icon list of anchor
function ATT:AddIcon(icons,anchor)
	local newicon = CreateIcon(anchor)
	iconlist[#iconlist+1] = newicon
	icons[#icons+1] = newicon
	return newicon
end

-- applies texture border to an icon
function ATT:ApplyIconTextureBorder(icon)
    if db.showIconBorders then
		icon.texture:SetTexCoord(0,1,0,1)
	else
		icon.texture:SetTexCoord(0.07,0.9,0.07,0.90)
	end
end

-- hides anchors currently not in use due to too few party members
function ATT:ToggleAnchorDisplay() 
	-- Player (Test):
	if db.showSelf and anchors[5] then anchors[5]:Show() end
	-- Party members:
	for i=1,4 do anchors[i]:Show() end
	for k=GetNumSubgroupMembers()+1,4 do
	    local anchor = anchors[k]
	    local icons = anchor.icons
        anchors[k]:Hide()
		anchors[k].HideIcons() 
	 for j=1,#icons do
        icons[j].ability = nil
        icons[j].spec = nil
        icons[j].seen = nil
        icons[j].active = nil
        icons[j].inUse = nil
        icons[j].showing = nil
        remove(icons[j])
    end
   end
	if not db.showSelf and anchors[5] then
		anchors[5]:Hide()
		anchors[5]:HideIcons() 
	end
end

function ATT:UpdateAnchor(unit, i)
    local _,class = UnitClass(unit)
    local guid = UnitGUID(unit)
    if not class or not guid then return end
    local anchor = anchors[i]
    anchor.GUID = guid
    anchor.class = class
    local icons = anchor.icons
    local numIcons = 1
    local _, instanceType = IsInInstance()
    local isInspect = unit ~= "player"
    local Warmode = select(1,AuraUtil.FindAuraByName(GetSpellInfo(269083), unit))
    if Warmode ~= isFWW["wmode"..unit] then isFWW["wmode"..unit] = Warmode end
    local pvpactive = (Warmode and instanceType == "none") or instanceType == "arena" or instanceType == "pvp"
    ATTTooltipsInspect:ClearLines()
    -- Talent Check
    dbInspect[unit] = {}
    local dbInspect = dbInspect[unit]
    local y = 1
    for k = 1, 3 do
        local abilityTid
        if unit == "player" then
            _, _, _, _, _,abilityTid =  GetPvpTalentInfoByID(C_SpecializationInfo.GetAllSelectedPvpTalentIDs()[k] or 0)
        elseif unit ~= "player" then
            _, _, _, _, _, abilityTid = GetPvpTalentInfoByID(GetInspectSelectedPvpTalent(unit,k) or 0) end
        dbInspect[y] = {["ability"] = abilityTid, ["isPVP"] = true }
        y = y + 1 end
    for j = 1 ,7 do
        for k = 1,3 do
            local  _,Nname, _, selected, _,abilityTid = GetTalentInfo(j, k, 1, isInspect, unit)
            if selected then
                dbInspect[y] = {["ability"] = abilityTid}
                y = y + 1 end
            if not selected then
                dbInspect[y] =  {["ability"] = Nname}
                y = y + 1 end
        end
    end
    -- Azerite check
    for k=1,5,2 do
        ATTTooltipsInspect:SetInventoryItem(unit, k)
        local _, itemLink = ATTTooltipsInspect:GetItem()
        local AzItem = itemLink and C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItemByID(itemLink)
        if AzItem then
            local lscan = ATTTooltipsInspect:NumLines()
            for i=4 ,lscan do
                local aztext = _G["ATTTooltipsInspectTextLeft" ..i]:GetText():match("^- (.*)")
                for z ,v in pairs(dbModif) do
                    local azmod = GetSpellInfo(dbModif[z].azTid)
                    if aztext and aztext == azmod then
                        dbInspect[40] = {["azzmod"] = dbModif[z].azTid}
                    end
                end
            end
        end
    end
    -- Conflict Check
    ATTTooltipsInspect:SetInventoryItem(unit, 2)
    local isMajor = _G["ATTTooltipsInspectTextLeft"..11]
    local Conflict = C_AzeriteEssence.GetEssenceInfo(32)
    local useClonflict
    if isMajor and Conflict and isMajor:GetText() == Conflict.name then useClonflict = true else useClonflict = false end
    -- Essence check (VoP)
    dbInspect[41] = {["VoP"] = false}
    local VoP = C_AzeriteEssence.GetEssenceInfo(22)
    for i =11 ,18 do
        local essCheck = _G["ATTTooltipsInspectTextLeft"..i]
        if VoP and essCheck and VoP.name == essCheck:GetText() then dbInspect[41] = {["VoP"] = true}  break end
    end
    --powerfix
    dbInspect[42] = {["cpower"] = 0}

    --Trinkets
    for abilityIndex, abilityTable in pairs(dbExtra) do
        local ability, id, cooldown, sname = abilityTable.ability, abilityTable.id, abilityTable.cooldown, abilityTable.sname
        local icon = icons[numIcons] or self:AddIcon(icons,anchor)
        local item1 = select(1,GetItemInfoInstant( GetInventoryItemLink(unit, 13) or 0 ))
        local item2 = select(1,GetItemInfoInstant( GetInventoryItemLink(unit, 14) or 0 ))
        if id == 277179 then ability = GetItemInfo(172846) end -- blizz spellname overlap
        if (id ~= select(2,GetItemSpell(item1)) and id ~= select(2,GetItemSpell(item2))) or not db.Trinkets[sname] then ability = nil end
      --  if (ability ~= GetItemSpell(item1) and ability ~= GetItemSpell(item2)) or not db.Trinkets[sname] then ability = nil end
        if ability == nil and id == 214027 and (item1 == 184060 or item2 == 184060) and db.Trinkets[sname] then ability = AdaptedName end --adapt fix
        if ability == nil and id == 196029 and (item1 == 184059 or item2 == 184059) and db.Trinkets[sname] then ability = RelentlessName end --relent fix
        if ability == nil and id == 286341 and (item1 == 172673 or item2 == 172673) and db.Trinkets[sname] then ability = Safeguard end --safeguard fix

        icon.texture:SetTexture(self:FindAbilityIcon(ability, id))
        icon.GUID = anchor.GUID
        icon.ability = ability
        icon.abilityID = id
        icon.cooldown = cooldown
        icon.maxcharges = nil
        icon.chargesText:SetText()
        icon.inUse = true
        icon.excluded = true
        icon.race = nil
        icon.spellStatus = spellStatus

        ATT:ApplyIconTextureBorder(icon)
        activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
        if activeGUIDS[icon.GUID][icon.ability] then
            icon.SetTimer(activeGUIDS[icon.GUID][ability].starttime,activeGUIDS[icon.GUID][ability].cooldown)
        else
            icon.Stop()
        end
        numIcons = numIcons + 1
    end
    
    -- Racials
    if db.showRacial then
        local _, _, raceID = UnitRace(unit);
        for abilityIndex, abilityTable in pairs(dbRacial) do
            local ability, id, cooldown, maxcharges, race = abilityTable.ability, abilityTable.id, abilityTable.cooldown, abilityTable.maxcharges, abilityTable.race
            local icon = icons[numIcons] or self:AddIcon(icons,anchor)
            local id = ability
            local ability = GetSpellInfo(ability)
            if raceID ~= race then ability = nil end

            icon.texture:SetTexture(self:FindAbilityIcon(ability, id))
            icon.GUID = anchor.GUID
            icon.ability = ability
            icon.abilityID = id
            icon.cooldown = cooldown
            icon.maxcharges = nil
            icon.chargesText:SetText()
            icon.inUse = true
            icon.race = raceID
            icon.excluded = true
            icon.spellStatus = spellStatus

            ATT:ApplyIconTextureBorder(icon)
            activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
            if activeGUIDS[icon.GUID][icon.ability] then
                icon.SetTimer(activeGUIDS[icon.GUID][ability].starttime,activeGUIDS[icon.GUID][ability].cooldown)
            else
                icon.Stop()
            end
            numIcons = numIcons + 1
        end
    end

    --Essences
    for abilityIndex, abilityTable in pairs(dbEssences) do
        local ability, id, cooldown, maxcharges, essID = abilityTable.ability, abilityTable.id, abilityTable.cooldown, abilityTable.maxcharges,  abilityTable.essID
        local icon = icons[numIcons] or self:AddIcon(icons,anchor)
        local id = ability
        local ability = GetSpellInfo(ability)
        if (not isMajor) or (isMajor and (not db.Essence[ability] or GetSpellInfo(essID) ~= isMajor:GetText())) then ability = nil end

        icon.texture:SetTexture(self:FindAbilityIcon(ability, id))
        icon.GUID = anchor.GUID
        icon.ability = ability
        icon.abilityID = id
        icon.cooldown = cooldown
        icon.race = nil
        icon.maxcharges = nil
        icon.chargesText:SetText()
        if self:FindAbilityByName(dbCharge, id) then icon.maxcharges = 2 end
        if mcharge and self:FindAbilityByName(dbInspect, mcharge.mod) then icon.maxcharges = 2 end
        icon.chargesText:SetText(icon.maxcharges or "")
        icon.inUse = true
        icon.spellStatus = spellStatus

        ATT:ApplyIconTextureBorder(icon)
        activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
        if activeGUIDS[icon.GUID][icon.ability] then
            icon.chargesText:SetText(activeGUIDS[icon.GUID][icon.ability].chargeleft)
            icon.SetTimer(activeGUIDS[icon.GUID][ability].starttime,activeGUIDS[icon.GUID][ability].cooldown)
        else
            icon.Stop()
        end
        numIcons = numIcons + 1
    end

    -- Abilities [All Specs]:
    if db.abilities[class]["ALL"] then
        for abilityIndex, abilityTable in pairs(db.abilities[class]["ALL"]) do
            local ability, id, cooldown, maxcharges, spellStatus = abilityTable.ability, abilityTable.id, abilityTable.cooldown, abilityTable.maxcharges, abilityTable.spellStatus
            local icon = icons[numIcons] or self:AddIcon(icons,anchor)
            local SpellText = GetSpellSubtext(id)
            local tcheck = self:FindAbilityByName(dbInspect, id)
            local modif = self:FindAbilityByName(dbModif, id)
            local mcharge = self:FindAbilityByName(dbModifCharge, id)
            local replace = self:FindAbilityByName(dbReplace, id)

            if useClonflict and SpellText == ("PvP Talent") then if self:FindAbilityByName(dbConflict, id) then SpellText = nil end end
            if replace and (self:FindAbilityByName(dbInspect, replace.mod) or self:FindAbilityByName(dbInspect, replace.mod2)) then ability = nil end
            if spellStatus == "DISABLED" or self:FindAbilityByName(dbInspect, ability) or (tcheck and tcheck.isPVP and not pvpactive) or (SpellText == ("PvP Talent") and not tcheck) then ability = nil;  end
            if ability and self:FindAbilityByName(dbEssVoP, id) and dbInspect[41] and dbInspect[41].VoP then cooldown = cooldown - (cooldown/4)  end
            if modif and dbInspect[40] and dbInspect[40].azzmod and modif.azTid == dbInspect[40].azzmod then cooldown = cooldown - modif.azCD end
            if ability and modif and modif.cooldown and self:FindAbilityByName(dbInspect, modif.mod) then cooldown = modif.cooldown end

            icon.texture:SetTexture(self:FindAbilityIcon(ability, id))
            icon.GUID = anchor.GUID
            icon.ability = ability
            icon.abilityID = id
            icon.cooldown = cooldown
            icon.excluded = nil
            icon.race = nil
            icon.maxcharges = nil
            if self:FindAbilityByName(dbCharge, id) then icon.maxcharges = 2 end
            if mcharge and self:FindAbilityByName(dbInspect, mcharge.mod) then icon.maxcharges = 2 end
            icon.chargesText:SetText(icon.maxcharges or "")
            icon.inUse = true
            icon.spellStatus = spellStatus

            ATT:ApplyIconTextureBorder(icon)
            activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
            if activeGUIDS[icon.GUID][icon.ability] then
                icon.chargesText:SetText(activeGUIDS[icon.GUID][icon.ability].chargeleft)
                icon.SetTimer(activeGUIDS[icon.GUID][ability].starttime,activeGUIDS[icon.GUID][ability].cooldown)
                if cooldown then icon.cooldown = cooldown end
            else
                icon.Stop()
            end
            numIcons = numIcons + 1
        end
    end

    -- Abilities [Current Spec]:
    local unitSpec = tostring(self:GetSpecByGUID(anchor.GUID))
    if unitSpec and unitSpec ~= "0" and unitSpec ~= "ALL" and unitSpec ~= "nil" and db.abilities[class][unitSpec] then
        for abilityIndex, abilityTable in pairs(db.abilities[class][unitSpec])  do
            local ability, id, cooldown, maxcharges, spellStatus = abilityTable.ability, abilityTable.id, abilityTable.cooldown, abilityTable.maxcharges, abilityTable.spellStatus
            local icon = icons[numIcons] or self:AddIcon(icons,anchor)
            local SpellText = GetSpellSubtext(id)
            local tcheck = self:FindAbilityByName(dbInspect, id)
            local modif = self:FindAbilityByName(dbModif, id)
            local mcharge = self:FindAbilityByName(dbModifCharge, id)
            local replace = self:FindAbilityByName(dbReplace, id)

            if useClonflict and SpellText == ("PvP Talent") then if self:FindAbilityByName(dbConflict, id) then SpellText = nil end end
            if replace and (self:FindAbilityByName(dbInspect, replace.mod) or self:FindAbilityByName(dbInspect, replace.mod2)) then ability = nil end
            if spellStatus == "DISABLED" or self:FindAbilityByName(dbInspect, ability) or (tcheck and tcheck.isPVP and not pvpactive) or (SpellText == ("PvP Talent") and not tcheck) then ability = nil end
            if ability and self:FindAbilityByName(dbEssVoP, id) and dbInspect[41] and dbInspect[41].VoP then cooldown = cooldown - (cooldown/4) end
            if modif and dbInspect[40] and dbInspect[40].azzmod and modif.azTid == dbInspect[40].azzmod then cooldown = cooldown - modif.azCD end
            if ability and modif and modif.cooldown and self:FindAbilityByName(dbInspect, modif.mod) then cooldown = modif.cooldown end

            icon.texture:SetTexture(self:FindAbilityIcon(ability, id))
            icon.GUID = anchor.GUID
            icon.ability = ability
            icon.abilityID = id
            icon.cooldown = cooldown
            icon.excluded = nil
            icon.race = nil
            icon.maxcharges = nil
            if self:FindAbilityByName(dbCharge, id) then icon.maxcharges = 2 end
            if mcharge and self:FindAbilityByName(dbInspect, mcharge.mod) then icon.maxcharges = 2 end
            icon.chargesText:SetText(icon.maxcharges or "")
            icon.inUse = true
            icon.spellStatus = spellStatus

            ATT:ApplyIconTextureBorder(icon)
            activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
            if activeGUIDS[icon.GUID][icon.ability] then
                icon.chargesText:SetText(activeGUIDS[icon.GUID][icon.ability].chargeleft)
                icon.SetTimer(activeGUIDS[icon.GUID][ability].starttime,activeGUIDS[icon.GUID][ability].cooldown)
                if cooldown then icon.cooldown = cooldown end
            else
                icon.Stop()
            end
            numIcons = numIcons + 1
        end
    end

    -- clean leftover icons
    for j=numIcons,#icons do
        icons[j].ability = nil
        icons[j].spec = nil
        icons[j].seen = nil
        icons[j].active = nil
        icons[j].inUse = nil
        icons[j].showing = nil
        remove(icons[j])
    end

    self:ToggleIconDisplay(i)
end

-- responsible for actual anchoring of icons
function ATT:ToggleIconDisplay(i)
    local anchor = anchors[i]
    local icons = anchor.icons
    local count = 1
    local lastActiveIndex = 0
    -- hiding all icons before anchoring and deciding whether to show them
    for k, icon in pairs(icons) do
        ATT:ApplyIconTextureBorder(icon)
        if db.showTooltip then icon:EnableMouse(true) else icon:EnableMouse(false) end     -- click-through
        if icon and icon.ability and icon.inUse then
            icon.showing = (activeGUIDS[icon.GUID] and activeGUIDS[icon.GUID][icon.ability] and icon.active) or (not db.hidden)
        end
        icon:ClearAllPoints()
        icon:Hide()
    end
    for k, icon in pairs(icons) do
        if icon and icon.ability and icon.showing then
            if db.tworows then
                if count == 1 then
                    icon:SetPoint(db.growLeft and "TOPRIGHT" or "TOPLEFT", anchor, db.growLeft and "BOTTOMLEFT" or "BOTTOMRIGHT", db.growLeft and -1 * db.iconOffsetX or db.iconOffsetX, 0)
                elseif (count % 2 == 0 )  then
                    icon:SetPoint(db.growLeft and "TOP" or "TOP", icons[lastActiveIndex], db.growLeft and "BOTTOM" or "BOTTOM", db.growLeft and 0 or 0, -1 * db.iconOffsetY )
                else
                    icon:SetPoint(db.growLeft and "BOTTOMRIGHT" or "BOTTOMLEFT", icons[lastActiveIndex], db.growLeft and "TOPLEFT" or "TOPRIGHT", db.growLeft and -1 * db.iconOffsetX or db.iconOffsetX, db.iconOffsetY)
                end
            else
                if count == 1  then
                    icon:SetPoint(db.growLeft and "TOPRIGHT" or "TOPLEFT", anchor, db.growLeft and "BOTTOMLEFT" or "BOTTOMRIGHT", db.growLeft and -1 * db.iconOffsetX or db.iconOffsetX, 0)
                else
                    icon:SetPoint(db.growLeft and "RIGHT" or "LEFT", icons[lastActiveIndex], db.growLeft and "LEFT" or "RIGHT", db.growLeft and -1 * db.iconOffsetX or db.iconOffsetX, 0)
                end
            end
            lastActiveIndex = k
            count = count + 1
            icon:Show()
        end
    end
end

function ATT:UpdateAnchors(unit)
    if not unit then return end	
    local _,class = UnitClass(unit)	
    if not class then return end
    local i = tonumber(match(unit, "party*([1-4])") or unit == "player" and 5)
    self:UpdateAnchor(unit, i)
    self:ToggleAnchorDisplay(); 
    self:ApplyAnchorSettings();
end

function ATT:UpdateIcons()
	-- Player (Test):
	if db.showSelf and anchors[5] then self:ToggleIconDisplay(5) end
	-- Party members:
	for i=1, 4 do
		self:ToggleIconDisplay(i)
	end
end

function ATT:ApplyAnchorSettings()
    local _, instanceType = IsInInstance()
    local isPartyGr = (not IsInRaid()) or (instanceType == "arena") or (instanceType == "party")
    ATTIcons:SetScale(db.scale or 1)

    if (db.arena and instanceType == "arena") or
        (db.dungeons and instanceType == "party") or
        (db.scenarios and instanceType == "scenario") or
        (db.inraid and (instanceType == "raid" or instanceType == "pvp") ) or
        (db.outside and instanceType == "none")
    then
    if db.biggroup and not isPartyGr then ATTIcons:Hide() ; self:Hide()
      else ATTIcons:Show() ; self:Show() end
    else ATTIcons:Hide() ; self:Hide() end

    self:UpdateIcons()
    C_Timer.After(0.01, function() self:LoadPositions() end)
    if db.lock then ATTAnchor:Hide() else ATTAnchor:Show() end
end

function ATT:UNIT_AURA(unit)
    if not ATT:IsShown() then return end
    local unit = self:ValidUnit(unit)
    if not unit then return end

    -- Feign Death workaround fix
    local fd = select(1, AuraUtil.FindAuraByName(GetSpellInfo(5384), unit))
    if not fd and isFWW["fd"..unit] == unit then C_Timer.After(0.12, function() self:StartCooldown(GetSpellInfo(5384), unit, 5384);  self:IconGlow(unit, unit,GetSpellInfo(5384), "SPELL_AURA_REMOVED"); isFWW["fd"..unit] = nil; end ) end

    -- Warmode check fix
    local Warmode = select(1, AuraUtil.FindAuraByName(GetSpellInfo(269083), unit))
    if Warmode ~= isFWW["wmode"..unit] then self:UpdateGroup(); isFWW["wmode"..unit] = Warmode ;  end

    -- Dampening
    local inInstance, instanceType = IsInInstance()
    if db.dampening and instanceType == "arena" then
        local percentage = select(16, AuraUtil.FindAuraByName(DampeningName, "player", "HARMFUL"))
        if percentage then
            if not ATTDampframe.text then
                ATTDampframe.text = ATTDampframe:CreateFontString(nil, "BACKGROUND")
                ATTDampframe.text:SetFontObject(GameFontNormal)
                ATTDampframe.text:SetAllPoints() end
            if not ATTDampframe:IsShown() then ATTDampframe:Show()end
            if ATTDampframe.dampening ~= percentage then
                ATTDampframe.dampening = percentage
                ATTDampframe.text:SetText(DampeningName..": |cffFF4500"..percentage.."%|r")
            end
        elseif ATTDampframe:IsShown() and not percentage then
            ATTDampframe.dampening = nil 
            ATTDampframe:Hide()
        end
    else
        ATTDampframe.dampening = nil
        ATTDampframe:Hide()
    end
end

function ATT:GROUP_ROSTER_UPDATE()
    if not ATT:IsShown() then  return end
    self:SendUpdate()
    self:UpdateGroup()
end

function ATT:UpdateGroup()
	self:InspectPlayer()
	self:EnqueueInspect()
	self:InspectTimer(GetTime())
	self:ToggleAnchorDisplay() 
	C_Timer.After(0.01, function() self:LoadPositions() self:OnUpdate() end)
 end

function ATT:AZERITE_ESSENCE_ACTIVATED(slot)
     if slot == 0 then self:InspectPlayer() end
end

function ATT:AZERITE_ESSENCE_UPDATE()
      self:InspectPlayer()
end      

function ATT:PLAYER_ENTERING_WORLD()
    C_Timer.After(0.1, function()
        local inInstance, instanceType = IsInInstance()
        self:UpdateGroup()
        if instanceType == "arena" then self:StopAllIcons(); end
    end)
end

function ATT:GROUP_JOINED()
    self:UpdateGroup() 
end

function ATT:FindAbilityByName(abilities, name)
	if abilities then
		for i, v in pairs(abilities) do
			if v and v.ability and v.ability == name then return v, i end
		end
	end
end

function ATT:GetUnitByGUID(guid)
	for k,v in pairs(validUnits) do
		if UnitGUID(k) == guid then
			return k
		end
	end
end

function ATT:ValidUnit(unit)
	for k,v in pairs(validUnits) do
		if k == unit then
			return k
		end 			
	end
end
   
function ATT:StartCooldown(spellName, unit, SentID)
    if not unit then return end
    local petunit = unit
    local index = match(unit, "party[pet]*([1-4])")
    if unit == "player" or unit == "pet" then
        if(not db.showSelf ) then return end
        unit = "player"
        index = 5
    elseif index then
        unit = "party"..index end
    local anchor = anchors[tonumber(index)]
    if not anchor or not index then return end
    local _,class = UnitClass(unit)
    local spec = self:GetSpecByUnit(unit)
    local racecheck = self:FindAbilityByName(dbRacial, SentID)
    if spellName == Adapted then spellName = AdaptedName end
    self:TrackCooldown(anchor, spellName, SentID, unit, spec, petunit)

    -- trinket racial fix
    if  db.showRacial and (spellName == PvPTrinketName or spellName == AdaptedName) then
        local _, _, race = UnitRace(unit)
        local cooldown
        for k,icon in ipairs(anchor.icons) do
            if icon.ability and icon.race == race and icon.excluded then
                if (icon.ability == EveryMan) then cooldown = 90
                else duration = icon.starttime + icon.cooldown - GetTime()
                    if duration and duration < 30  then cooldown = 30   end
                end
                if cooldown and icon.race == race then CooldownFrame_Set(icon.cd,GetTime(), cooldown ,1,1)  end 
            end
        end
    end

    if racecheck and racecheck.cdshare then
        local cooldown
        for k,icon in ipairs(anchor.icons) do
            if icon.ability == PvPTrinketName then
                if (spellName == EveryMan) then cooldown = 90
                else duration = icon.starttime + icon.cooldown - GetTime()
                    if duration and duration < 30  then cooldown = 30 end
                end
                if cooldown then CooldownFrame_Set(icon.cd,GetTime(), cooldown ,1,1) ; 
            --    icon.itprocent = nil 
                end
            elseif icon.ability == RelentlessName then
                if (spellName == EveryMan) then cooldown = 90
                else cooldown = 120  end
                if cooldown then CooldownFrame_Set(icon.cd,GetTime(), cooldown ,1,1)  end
            end
        end
    end
end

function ATT:TrackCooldown(anchor, ability, SentID, unit, spec, petunit)
    local dbInspect = dbInspect[unit]
    local rate = nil

    for k,icon in ipairs(anchor.icons) do
        if icon.cooldown then
            local cooldown = icon.cooldown
            -- Direct cooldown
            if icon.ability == ability and icon.spellStatus ~= "DISABLED" then
                if ability == AdaptedName then cooldown = select(5, AuraUtil.FindAuraByName(Adapted, unit, "HARMFUL")) - 1; end --adapt fix
                icon.seen = true
                icon.Start(cooldown, 1, rate)
                icon.flashAnim:Play()
                icon.newitemglowAnim:Play()
            end
        end
        local creduce = self:FindAbilityByName(dbReduce, SentID)
        if creduce and (self:FindAbilityByName(dbInspect, creduce.tid) or creduce.tid2 == 1) then
            for i = 1,3 do
                local reducecd = nil
                if (type(creduce.mod) == "table" and icon.abilityID == creduce.mod[i]) then
                    local reducecd = creduce.rcooldown
                    if not self:FindAbilityByName(dbInspect, creduce.tid) then reducecd = creduce.rcooldown2 end
                    if creduce.mod[i] == 42650 then reducecd = 5 end
                    if icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd then
                        icon.starttime = icon.starttime - reducecd * (rate or 1)
                        CooldownFrame_Set(icon.cd,icon.starttime,icon.cooldown ,1,1, rate)
                    end
                end
            end
        end
--[
       local power = GetSpellPowerCost(SentID)
       for z, powers in next, power do
        if powers.name == "HOLY_POWER" then power[1] = power[z] end
        if powers.name == "FOCUS" then power[1] = power[z] end
        if powers.name == "CHI" then power[1] = power[z]  end
        if powers.name == "COMBO_POINTS" then power[1] = power[z] end
        if powers.name == "RAGE" then power[1] = power[z] end
        if powers.name == "RUNES" then power[1] = power[z] end
        end 
        if spec == 260 and SentID == 408 then power[1] = { ["name"] = "fix"}  end -- outlaw fix
        if SentID == 209785 then power[1] = { ["name"] = "HOLY_POWER", ["cost"] = -1 } end
        if power and power[1] and petunit ~= "pet" then
            local pcheck = self:FindAbilityByName(dbReduce, spec)
            if pcheck and (self:FindAbilityByName(dbInspect, pcheck.tid) or pcheck.tid2 == 1) then
                for i = 1,8 do
                    local reducecd = nil
                    if (type(pcheck.mod) == "table" and icon.abilityID == pcheck.mod[i]) then
                        if not self:FindAbilityByName(dbInspect, pcheck.tid) then pcheck.crd = pcheck.crd2 end
                        if power[1].name == "HOLY_POWER" then reducecd = power[1].cost*pcheck.crd end
                        if power[1].name == "FOCUS" then reducecd = power[1].cost/pcheck.crd  end
                        if power[1].name == "CHI" and tonumber(icon.chargesText:GetText():match("^[0-9]+$")) <= 1 then reducecd = power[1].cost/pcheck.crd end
                        if power[1].name == "COMBO_POINTS" then reducecd = dbInspect[42].cpower*pcheck.crd end
                        if power[1].name == "RAGE" then reducecd = power[1].cost/pcheck.crd end
                        if power[1].name == "RUNES" then reducecd = power[1].cost/pcheck.crd end
                        if icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd then
                            icon.starttime = icon.starttime - reducecd * (rate or 1)
                            CooldownFrame_Set(icon.cd,icon.starttime,icon.cooldown ,1,1, rate) end
                    end
                end
            end
        end
        --]]
        -- Cooldown resetters
        if cooldownResetters[ability] then
            if type(cooldownResetters[ability]) == "table" then
                if cooldownResetters[ability][icon.ability] then icon.Stop() end
            else
                icon.Stop()
            end
        end
    end
end

function ATT:IconGlow(unit, destUnit, spellName, event)
    if not db.glow then return end
    if not unit then return end
    local auraunit = unit
    if unit ~= destUnit then auraunit = destUnit end
    local index = match(unit, "party[pet]*([1-4])")
    if unit == "player" or unit == "pet" then
        if(not db.showSelf ) then return end
        unit = "player"
        index = 5
    elseif index then
        unit = "party"..index end
    local anchor = anchors[tonumber(index)]
    if not anchor or not index then return end
    local duration = select(5,AuraUtil.FindAuraByName(spellName, auraunit))
    for k,icon in ipairs(anchor.icons) do 
        if spellName == icon.ability then
            local chargetxt = tonumber(icon.chargesText:GetText())
            if icon.cooldown and duration and duration > 1 and icon.cooldown > duration and (event == "SPELL_AURA_APPLIED")  then
                icon.cd:SetHideCountdownNumbers(true)
                C_Timer.After(0.05, function()  icon.cd:SetHideCountdownNumbers(true); LGlow.ShowOverlayGlow(icon.cd) end)
                C_Timer.After(duration , function() LGlow.HideOverlayGlow(icon.cd); if (not icon.maxcharges) or chargetxt == 0 then icon.cd:SetHideCountdownNumbers(false) end end)
            elseif (event == "SPELL_AURA_REMOVED") and icon.cooldown and not duration then
                LGlow.HideOverlayGlow(icon.cd) 
                if (not icon.maxcharges) or chargetxt == 0 then icon.cd:SetHideCountdownNumbers(false) end
            end
        end
    end
end

function ATT:COMBAT_LOG_EVENT_UNFILTERED()
    if not ATT:IsShown() then return end
    local _, event, _, sourceGUID, sourceName, _, _, destGUID, destName, _, _, SentID, spellName, _, auraType,test,test2,test3 = CombatLogGetCurrentEventInfo()
    
    if SentID == 277179 then spellName = GetItemInfo(172846) end -- blizz spellname overlap
    if self:GetUnitByGUID(sourceGUID) and ((event == "SPELL_CAST_SUCCESS") or ((event == "SPELL_AURA_APPLIED") and (spellName == Stoneform or spellName == Fireblood or spellName == Safeguard))) then
        self:StartCooldown(spellName, self:GetUnitByGUID(sourceGUID), SentID)
    end
    if self:GetUnitByGUID(sourceGUID) and (spellName == Adapted) and ((event == "SPELL_AURA_APPLIED") or (event == "SPELL_AURA_REFRESH")) then
        C_Timer.After(0.1, function() self:StartCooldown(spellName, self:GetUnitByGUID(sourceGUID), SentID) end)
    end   
    if self:GetUnitByGUID(sourceGUID) and ((event == "SPELL_AURA_REMOVED") and (auraType == "BUFF")) then
        if SentID == 209785 then self:StartCooldown(spellName, self:GetUnitByGUID(sourceGUID), SentID) end
    end
    if self:GetUnitByGUID(destGUID) and self:GetUnitByGUID(sourceGUID) and ((event == "SPELL_AURA_REMOVED") or (event == "SPELL_AURA_APPLIED")) and (auraType == "BUFF")  then
        self:IconGlow(self:GetUnitByGUID(sourceGUID), self:GetUnitByGUID(destGUID),spellName, event);
    end
end

function ATT:UNIT_SPELLCAST_SUCCEEDED(unit,_,spellid)
    local unit = ATT:ValidUnit(unit)
    if not unit then return end
    -- Feign Death workaround fix
    if spellid == 5384 then self:StartCooldown(GetSpellInfo(5384), unit, 5384); self:IconGlow(unit, unit,GetSpellInfo(5384), "SPELL_AURA_APPLIED"); isFWW["fd"..unit] = unit end
end

function ATT:OnUpdate()
    --  Update icon activity
    for k,icon in ipairs(iconlist) do
        if icon.active and icon.cooldown then
            icon.timeleft = icon.starttime + icon.cooldown - GetTime()
            if icon.timeleft <= 0 then
                if not icon.showing then icon:Hide() end
                if activeGUIDS[icon.GUID] and activeGUIDS[icon.GUID][icon.ability] then activeGUIDS[icon.GUID][icon.ability] = nil end -- fix
                icon.active = nil
                if icon.maxcharges then
                    local charges = tonumber(icon.chargesText:GetText():match("^[0-9]+$"))
                    charges = math.min(icon.maxcharges, charges+1)
                    icon.chargesText:SetText(charges)
                    if charges < icon.maxcharges then
                        icon.Start(icon.cooldown, 5)
                    end
                end
            end
        end
    end
    self:UpdateIcons()
end

-- resets all icons
function ATT:StopAllIcons()
    for k,v in ipairs(iconlist) do
        v.Stop()
        v.seen = nil
    end
      wipe(activeGUIDS)
end

function ATT:SendUpdate()
    if self.useCrossAddonCommunication and IsInGroup() and GetNumGroupMembers() >= 2 then 
       C_ChatInfo.SendAddonMessage(ChatPrefix, "Version|"..ATTversion, (IsInRaid(LE_PARTY_CATEGORY_INSTANCE) and "INSTANCE_CHAT") or (IsInRaid(LE_PARTY_CATEGORY_HOME) and "RAID") or "PARTY")
    end
end

function ATT:CHAT_MSG_ADDON(prefix, message, dist, sender)
    if prefix == ChatPrefix then
        local vfound, vversion = match(message,"(.+)|(%A+)")
        if vversion then vversion = tonumber(string.sub(vversion,1,4)) end
        if vversion and vversion > ATTversion and not ATTnewversion then ATTnewversion = message
            print("There is a new version of |cff33ff99Arena Team Tracker|r: |cffFF4500v"..vversion.."|r You are currently using: |cffFF4500v"..ATTversion.."|r")
        end
        --[[ debug update note
        if vversion and GetUnitName("player") == "Ize" and sender ~= "Ize-Sylvanas" then print("Sender: |cffFF4500"..sender.."|r Version: |cffFF4500"..vversion.."|r") end --]]
    end
end

function ATT:PLAYER_TALENT_UPDATE()
    self:InspectPlayer()
end

function ATT:PLAYER_EQUIPMENT_CHANGED(item)
    if InCombatLockdown() then return end
    if not item then return end
    if (item ~= 13) and (item ~= 14) then return end
    self:InspectPlayer()
end

function ATT:PLAYER_SPECIALIZATION_CHANGED(unit)
    local unit = ATT:ValidUnit(unit)
    if not unit then return end
    self:UpdateGroup()
end

function ATT:CVAR_UPDATE()
    C_Timer.After(0.05, function()
	self:ToggleAnchorDisplay();
	self:ApplyAnchorSettings(); end)
end

hooksecurefunc("CompactUnitFrameProfiles_ApplyProfile", function()
    C_Timer.After(0.05, function()
	ATT:ToggleAnchorDisplay();
	ATT:ApplyAnchorSettings(); end)
end)

function ATT:CHAT_MSG_BG_SYSTEM_NEUTRAL(text)
   local _, instanceType = IsInInstance()
   if (instanceType == "arena" and (string.find(text, "Thirty seconds until the Arena battle begins!"))) or
       (instanceType == "arena" and (string.find(text, "The Arena battle has begun!"))) or
      (instanceType == "pvp" and (string.find(text, "The battle has begun!"))) then
       self:UpdateGroup()
   end
end 

function ATT:CHALLENGE_MODE_START()
    self:UpdateGroup()
    self:StopAllIcons()
end

function ATT:UNIT_POWER_FREQUENT(unit,power)
    local dbInspect = dbInspect[unit]
    if ATT:ValidUnit(unit) and power == "COMBO_POINTS" then
        local powerunit = UnitPower(unit,4)
        C_Timer.After(0.03, function()
            if dbInspect[42].cpower ~= powerunit then dbInspect[42].cpower = powerunit end
        end )
    end
end

local function ATT_OnLoad(self)
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("PLAYER_TALENT_UPDATE")
    self:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
    self:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
    self:RegisterEvent("AZERITE_ESSENCE_ACTIVATED")
    self:RegisterEvent("AZERITE_ESSENCE_UPDATE")
    self:RegisterEvent("CHAT_MSG_BG_SYSTEM_NEUTRAL")
    self:RegisterEvent("INSPECT_READY")
    self:RegisterEvent("GROUP_JOINED")
    self:RegisterEvent("GROUP_ROSTER_UPDATE")
    self:RegisterEvent("UNIT_AURA")
    self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
    self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
    self:RegisterEvent("CHALLENGE_MODE_START")
    self:RegisterEvent("CVAR_UPDATE", "USE_RAID_STYLE_PARTY_FRAMES")
    self:RegisterEvent("UNIT_POWER_FREQUENT")
    
    if C_ChatInfo.RegisterAddonMessagePrefix(ChatPrefix) then self.useCrossAddonCommunication = true end
    if self.useCrossAddonCommunication then self:RegisterEvent("CHAT_MSG_ADDON") end
    self:SetScript("OnEvent",function(self,event, ...) if self[event] then self[event](self, ...) end end);
    ATTDB = ATTDB or { abilities = ATTdefaultAbilities, scale = 1, iconOffsetX = 5 , iconOffsetY = 2 , offsetX = 0, offsetY = 0, attach = 0, showSelf = true, outside = true, glow = true}
    db = ATTDB
    db.classSelected = "WARRIOR"
    
    --upd 8.3+ db fix
    if not tonumber(db.iconOffsetX or db.iconOffsetY or db.offsetX or db.offsetY) then db.iconOffsetX = 5 ; db.iconOffsetY = 2 ; db.offsetX = 0; db.offsetY = 0  end
    if db.attach == true then db.attach = 1 elseif db.attach == false then db.attach = 0 end
    if not db.Essence then db.Essence = {} end
    if not db.Trinkets then db.Trinkets = {} end
    ---
    self:CreateAnchors()
    self:CreateOptions()
    self:UpdateScrollBar()
 -- self:CheckProfile()
    print("|cff33ff99A|rrena |cff33ff99T|ream |cff33ff99T|rracker by |cff33ff99Izy|r. Type |cffFF4500/att|r to open options.")
end

function ATT:FindAbilityIcon(ability, id)
	local icon;
	if id then
		icon = GetSpellTexture(id)
	else
		icon = GetSpellTexture(self:FindAbilityID(ability))
	end
	return icon
end

function ATT:FindAbilityID(ability)
	for _,S in pairs(SPELLDB) do
		for _,v in pairs(S) do
			for _,sp in pairs(v) do
				for _,SPELLID in pairs(sp) do
					local spellName, spellRank, spellIcon = GetSpellInfo(SPELLID)
					if(spellName == ability) then
						return SPELLID
					end
				end
			end
		end
	end
end

-------------------------------------------------------------
-- Panel
-------------------------------------------------------------

local SO = LibStub("LibSimpleOptions-1.01")

local function CreateListButton(parent,index)
	local button = CreateFrame("Button",parent:GetName()..index,parent,"UIMenuButtonStretchTemplate")
	button:SetWidth(217)
	button:SetHeight(25)
    button.Text:SetFont(GameFontNormal:GetFont(),12)
    button.Text:SetPoint("LEFT")
	button:SetHighlightTexture("Interface\\ContainerFrame\\UI-Icon-QuestBorder")
	button:GetHighlightTexture():SetTexCoord(0.11,0.88,0.02,0.97)
	button:SetScript("OnClick",function(self) parent.currentButton = self:GetText(); ATT:UpdateScrollBar() end)
	return button
end

local function CreateEditBox(name,parent,width,height)
	local editbox = CreateFrame("EditBox",parent:GetName()..name,parent,"InputBoxTemplate")
	editbox:SetHeight(height)
	editbox:SetWidth(width)
	editbox:SetAutoFocus(false)	
	local label = editbox:CreateFontString(nil, "BACKGROUND", "GameFontNormal")
	label:SetText(name)
	label:SetPoint("BOTTOMLEFT", editbox, "TOPLEFT",-3,0)
	return editbox
end

function ATT:CreateOptions()
    local panel = SO.AddOptionsPanel("Arena Team Tracker", function() end)
    self.panel = panel
    SO.AddSlashCommand("Arena Team Tracker","/att")
    local title, subText = panel:MakeTitleTextAndSubText("Arena Team Tracker","General settings")

    local attach = panel:MakeDropDown(
        'name', ' Attach to raid frames',
        'description', 'Select hook mode behaviour',
        'values', {
            0, "Do Not Attach",
            1, "Auto Select (UI)",
            2, "Blizzard Only",
        },
        'default', 0,
        'current', tonumber(db.attach) or 0,
        'setFunc', function(value) db.attach = tonumber(string.format("%.1d",value)); self:LoadPositions() end)
    attach:SetPoint("TOPLEFT",panel,"TOPLEFT",5,-80)

    local scale = panel:MakeSlider(
        'name', 'Scale',
        'description', 'Adjust the scale of icons',
        'minText', 'Min',
        'maxText', 'Max',
        'minValue', 0.1,
        'maxValue', 5,
        'step', 0.1,
        'default', 1,
        'current', tonumber(db.scale) or 1,
        'setFunc', function(value) db.scale = tonumber(string.format("%.1f",value)); self:ApplyAnchorSettings() end,
        'currentTextFunc', function(value) return tonumber(string.format("%.1f",value)) end)
    scale:SetPoint("TOPLEFT",attach,"TOPLEFT", 20, -50)

    local growLeft = panel:MakeToggle(
        'name', 'Grow Left',
        'description', 'Grow icons to the left',
        'default', false,
        'getFunc', function() return db.growLeft end,
        'setFunc', function(value) db.growLeft = value; self:ApplyAnchorSettings() end)
    growLeft:SetPoint("TOP",panel,"TOP",-110,-45)

    local tworows = panel:MakeToggle(
        'name', 'Two rows',
        'description', 'Show icons on two rows',
        'default', false,
        'getFunc', function() return db.tworows end,
        'setFunc', function(value) db.tworows = value; self:ApplyAnchorSettings() end)
    tworows:SetPoint("TOP",growLeft,"BOTTOM",0,-5)

    local horizontal = panel:MakeToggle(
        'name', 'Horizontal',
        'description', 'Show icons under raid frames\n(when using horizontal groups)',
        'default', false,
        'getFunc', function() return db.horizontal end,
        'setFunc', function(value) db.horizontal = value; self:ApplyAnchorSettings(); end)
    horizontal:SetPoint("TOP",tworows,"BOTTOM",0,-5)

    local biggroup = panel:MakeToggle(
        'name', 'Max 5 Man',
        'description', 'Hide frames in groups\nhigher than 5 members',
        'default', false,
        'getFunc', function() return db.biggroup end,
        'setFunc', function(value) db.biggroup = value; self:UpdateGroup(); self:ApplyAnchorSettings() end)
    biggroup:SetPoint("TOP",horizontal,"BOTTOM",0,-5)

    local offsetX = panel:MakeSlider(
        'name', 'Offset X',
        'description', 'Adjust the anchor position X',
        'minText', 'Left',
        'maxText', 'Right',
        'minValue', -100,
        'maxValue', 100,
        'step', 1,
        'default', 0,
        'current', tonumber(db.offsetX) or 0,
        'setFunc', function(value) db.offsetX = tonumber(string.format("%.1d",value)); self:LoadPositions() end,
        'currentTextFunc', function(value) return tonumber(string.format("%.1d",value)); end)
    offsetX:SetPoint("TOPLEFT",scale,"TOPLEFT", 0, -55)

    local offsetY = panel:MakeSlider(
        'name', 'Offset Y',
        'description', 'Adjust the anchor position Y',
        'minText', 'Down',
        'maxText', 'Up',
        'minValue', -100,
        'maxValue', 100,
        'step', 1,
        'default', 0,
        'current', tonumber(db.offsetY) or 0,
        'setFunc', function(value) db.offsetY = tonumber(string.format("%.1d",value)); self:LoadPositions() end,
        'currentTextFunc', function(value) return tonumber(string.format("%.1d",value)); end)
    offsetY:SetPoint("LEFT", offsetX, "RIGHT", 15, 0)

    local iconOffsetX = panel:MakeSlider(
        'name', 'Icon X',
        'description', 'Adjust the space between icons',
        'minText', '0',
        'maxText', '100',
        'minValue', 0,
        'maxValue', 100,
        'step', 1,
        'default', 5,
        'current', tonumber(db.iconOffsetX) or 5,
        'setFunc', function(value) db.iconOffsetX = tonumber(string.format("%.1d",value)); self:ApplyAnchorSettings() end,
        'currentTextFunc', function(value) return tonumber(string.format("%.1d",value)); end)
    iconOffsetX:SetPoint("LEFT", offsetY, "RIGHT", 15, 0)

    local iconOffsetY = panel:MakeSlider(
        'name', 'Icon Y',
        'description', 'Adjust the space between rows',
        'minText', '0',
        'maxText', '100',
        'minValue', 0,
        'maxValue', 100,
        'step', 1,
        'default', 2,
        'current', tonumber(db.iconOffsetY) or 2,
        'setFunc', function(value) db.iconOffsetY = tonumber(string.format("%.1d",value)); self:ApplyAnchorSettings() end,
        'currentTextFunc', function(value) return tonumber(string.format("%.1d",value)); end)
    iconOffsetY:SetPoint("LEFT", iconOffsetX, "RIGHT", 15, 0)

    local lock = panel:MakeToggle(
        'name', 'Lock anchor',
        'description', 'Hide/Lock anchors',
        'default', false,
        'getFunc', function() return db.lock end,
        'setFunc', function(value) db.lock = value; self:ApplyAnchorSettings() end)
    lock:SetPoint("TOP",panel,"TOP",10,-45)

    local hidden = panel:MakeToggle(
        'name', 'Hidden',
        'description', 'Show icons only when\nthey are on cooldown',
        'default', false,
        'getFunc', function() return db.hidden end,
        'setFunc', function(value) db.hidden = value; self:ApplyAnchorSettings() end)
    hidden:SetPoint("TOP",lock,"BOTTOM",0,-5)

    local glow = panel:MakeToggle(
        'name', 'Glow Icons',
        'description', 'Glow icons blizzard style\nwhen ability is active',
        'default', true,
        'getFunc', function() return db.glow end,
        'setFunc', function(value) db.glow = value; self:ApplyAnchorSettings() end)
    glow:SetPoint("TOP",hidden,"BOTTOM",0,-5)
    
    local showIconBorders = panel:MakeToggle(
        'name', 'Draw borders',
        'description', 'Draw borders around icons',
        'default', true,
        'getFunc', function() return db.showIconBorders end,
        'setFunc', function(value) db.showIconBorders = value; self:ApplyAnchorSettings() end)
    showIconBorders:SetPoint("TOP",glow,"BOTTOM",0,-5)

    local dampening = panel:MakeToggle(
        'name', 'Dampening',
        'description', 'Show dampening procent ( % )\nunder remaining time in arena',
        'default', false,
        'getFunc', function() return db.dampening end,
        'setFunc', function(value) db.dampening = value; ATT:UNIT_AURA("player"); self:ApplyAnchorSettings() end)
    dampening:SetPoint("LEFT",lock,"RIGHT",90,0)

    local showRacial = panel:MakeToggle(
        'name', 'Show Racials',
        'description', 'Show Racial icons',
        'default', false,
        'getFunc', function() return db.showRacial end,
        'setFunc', function(value) db.showRacial = value; self:UpdateGroup(); self:ApplyAnchorSettings() end)
    showRacial:SetPoint("TOP",dampening,"BOTTOM",0,-5)

    local showSelf = panel:MakeToggle(
        'name', 'Show Self',
        'description', 'Show your own icons',
        'default', false,
        'getFunc', function() return db.showSelf end,
        'setFunc', function(value) db.showSelf = value; self:UpdateAnchors("player") end)
    showSelf:SetPoint("TOP",showRacial,"BOTTOM",0,-5)

    local showTooltip = panel:MakeToggle(
        'name', 'Show Tooltip',
        'description', 'Show tooltips over icons',
        'default', false,
        'getFunc', function() return db.showTooltip end,
        'setFunc', function(value) db.showTooltip = value; self:ApplyAnchorSettings() end)
    showTooltip:SetPoint("TOP",showSelf,"BOTTOM",0,-5)

    local authordesc2 =  panel:CreateFontString(nil,"ARTWORK","GameFontNormal")
    authordesc2:SetFont(GameFontNormal:GetFont(),13)
    authordesc2:SetText("Ability Editor")
    authordesc2:SetJustifyH("LEFT")
    authordesc2:SetPoint("TOPLEFT",panel,"TOPLEFT",20,-227)

    local title2, subText2 = panel:MakeTitleTextAndSubText("","Show (if equipped / inUse):")
    title2:ClearAllPoints()
    title2:SetPoint("TOPLEFT",panel,"TOPLEFT",20,-458)

    local cpanel = CreateFrame("Frame" ,"ATTFrame" , panel , BackdropTemplateMixin and "BackdropTemplate")
    cpanel:SetBackdrop( { edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 15});
    cpanel:SetSize(610,220)
    cpanel:SetPoint("TOP",panel,"TOP",0,-245)

    local cpanel2 = CreateFrame("Frame" ,"ATTFrame" , panel,BackdropTemplateMixin and "BackdropTemplate" )
    cpanel2:SetBackdrop( { edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 15});
    cpanel2:SetSize(240,42)
    cpanel2:SetPoint("TOPLEFT",panel,"TOPLEFT",10,-482)
    
    local authordesc =  panel:CreateFontString(nil,"ARTWORK","GameFontDisable")
    authordesc:SetText("|cffffff00Version:|r |cff33ff99v"..ATTversion.."|r by |cffffff00izy|r  ( Contact: ize @ Sylvanas EU / twitch.tv/imedia )")
    authordesc:SetJustifyH("LEFT")
    authordesc:SetSize(600,40)
    authordesc:SetPoint("TOP",panel,"TOP",0,-525)

    self:CreateAbilityEditor()
end


local function count(t) local i = 0 for k,v in pairs(t) do i = i + 1  end return i end

function ATT:UpdateScrollBar()
    local btns = self.btns
    local scrollframe = self.scrollframe
    local classSelectedSpecs = db.abilities[db.classSelected]
    local line = 1
    local spectexture , abilitytexture

    for specID, abilities in pairs(classSelectedSpecs) do
        for abilityIndex, abilityTable in pairs(abilities) do
            local ability, id, cooldown, maxcharges, talent, spellStatus = abilityTable.ability, abilityTable.id, abilityTable.cooldown, abilityTable.maxcharges, abilityTable.talent, abilityTable.spellStatus
            local order = abilityTable.order or 1
            if specID ~= "ALL" then
                spectexture = select(4,GetSpecializationInfoByID(specID))
            else
               spectexture  =  "Interface\\Icons\\ClassIcon_"..db.classSelected end
               abilitytexture = self:FindAbilityIcon(ability, id)
            if spellStatus ~= "DISABLED" then
                btns[line]:SetText("   |T"..spectexture..":18|t - |T"..abilitytexture..":17|t " .. ability:sub(1,25))
            else
                btns[line]:SetText("   |T"..spectexture..":18|t - |cff808080|T"..abilitytexture..":17|t " ..ability:sub(1,25).."|r")
            end
            if btns[line]:GetText() ~= scrollframe.currentButton then
                btns[line]:SetNormalTexture("")
            else
                btns[line]:SetNormalTexture("Interface\\ContainerFrame\\UI-Icon-QuestBorder")
                btns[line]:GetNormalTexture():SetTexCoord(0.11,0.88,0.02,0.97)
                btns[line]:GetNormalTexture():SetBlendMode("ADD")
                scrollframe.addeditbox:SetText(ability)
                scrollframe.ideditbox:SetText(id or "")
                scrollframe.cdeditbox:SetText(cooldown or "")
                scrollframe.order:SetValue(tostring(order or 1))
                scrollframe.spellStatusbox.initialize()
                scrollframe.spellStatusbox:SetValue(tostring(spellStatus or "ENABLED"))
                scrollframe.dropdown2.initialize()
                scrollframe.dropdown2:SetValue(tostring(specID))
            end
            btns[line]:SetScript('OnEnter', function() GameTooltip:ClearLines(); GameTooltip:SetOwner(scrollframe, "ANCHOR_CURSOR")
                GameTooltip:SetSpellByID(id)   end)
            btns[line]:SetScript('OnLeave', function()
                GameTooltip:ClearLines()
                GameTooltip:Hide()
            end)

            btns[line]:Show()
            line = line + 1
        end
    end
    for i=line,25 do btns[i]:Hide() end
end


function ATT:CreateAbilityEditor()
    local panel = self.panel
    local btns = {}
    self.btns = btns
    local scrollframe = CreateFrame("ScrollFrame", "ATTScrollFrame",panel, (BackdropTemplateMixin and "UIPanelScrollFrameTemplate, BackdropTemplate") or "UIPanelScrollFrameTemplate"  )
    local backdrop = {
        bgFile = [=[Interface\Buttons\WHITE8X8]=],
        insets = { left = 0, right = 0, top = -5, bottom = -5 }}
    scrollframe:SetBackdrop(backdrop)
    scrollframe:SetBackdropColor(0,0,0,0.50)
    local child = CreateFrame("ScrollFrame" ,"ATTScrollFrameChild" , scrollframe )
    child:SetSize(1, 1)
    scrollframe:SetScrollChild(child)
    local button1 = CreateListButton(child,"25")
    button1:SetPoint("TOPLEFT",child,"TOPLEFT",2,0)
    btns[#btns+1] = button1
    for i=2,25 do
        local button = CreateListButton(child,tostring(i))
        button:SetPoint("TOPLEFT",btns[#btns],"BOTTOMLEFT")
        btns[#btns+1] = button
    end

    scrollframe:SetScript("OnShow",function(self) if not db.classSelected then db.classSelected = "WARRIOR" end; if iFrame then iFrame:Hide();end ATT:UpdateScrollBar(); end)
    self.scrollframe = child
    scrollframe:SetSize(220,176)
    scrollframe:SetPoint('LEFT',16,-68)
    child.dropdown2 = nil

    local dropdown = panel:MakeDropDown(
        'name', ' Class',
        'description', 'Pick a class to edit abilities',
        'values', {
            "WARRIOR", "Warrior",
            "DEATHKNIGHT", "Deathknight",
            "PALADIN", "Paladin",
            "PRIEST", "Priest",
            "SHAMAN", "Shaman",
            "DRUID", "Druid",
            "ROGUE", "Rogue",
            "MAGE", "Mage",
            "WARLOCK", "Warlock",
            "HUNTER", "Hunter",
            "MONK", "Monk",
            "DEMONHUNTER", "Demon Hunter",
        },
        'default', 'WARRIOR',
        'getFunc', function() return db.classSelected end ,
        'setFunc', function(value)
            if iFrame and iFrame:IsShown() then iFrame:Hide() end
            db.classSelected = value; ATT:UpdateScrollBar();
            child.dropdown2.values = { "ALL", "All Specs" }
            for i=1, GetNumClasses() do
                local className, classTag, classID = GetClassInfo(i)
                if classTag == db.classSelected then
                    for j=1, GetNumSpecializationsForClassID(classID) do
                        local specID, specName = GetSpecializationInfoForClassID(classID, j)
                        child.dropdown2.values[#child.dropdown2.values+1] = tostring(specID)
                        child.dropdown2.values[#child.dropdown2.values+1] = specName
                    end
                    break
                end
            end
            child.dropdown2.initialize()
            child.dropdown2:SetValue("ALL")
        end)
    dropdown:SetPoint("TOPLEFT",scrollframe,"TOPRIGHT",30,-8)
    child.dropdown = dropdown

    local dropdown2 = panel:MakeDropDown(
        'name', ' Specialization',
        'description', 'Pick a spec',
        'values', {
            "ALL", "All Specs",
            "71", "Arms",
            "72", "Fury",
            "73", "Protection",
        },
        'default', 'ALL',
        'current', 'ALL',
        'setFunc', function(value) end)
    dropdown2:SetPoint("TOPLEFT",dropdown,"BOTTOMLEFT",0,-15)
    child.dropdown2 = dropdown2

    local spellStatusbox = panel:MakeDropDown(
        'name', ' Status',
        'description', 'Enable or disable ability',
        'values', {
            "ENABLED", "Enabled",
            "DISABLED", "Disabled",
        },
        'default', 'ENABLED',
        'current', 'ENABLED',
        'setFunc', function(value) end)
    spellStatusbox:SetPoint("TOPLEFT",dropdown,"BOTTOMLEFT",160,30)
    child.spellStatusbox = spellStatusbox

    local addeditbox = CreateEditBox("Ability Name",scrollframe,142,25)
    child.addeditbox = addeditbox
    addeditbox:SetPoint("TOPLEFT",dropdown2,"BOTTOMLEFT",25,-25)

    local ideditbox = CreateEditBox("Ability ID",scrollframe,70,25)
    ideditbox:SetPoint("LEFT",addeditbox,"RIGHT",20,0)
    child.ideditbox = ideditbox

    local cdeditbox = CreateEditBox("CD (s)",scrollframe,40,25)
    cdeditbox:SetPoint("LEFT",ideditbox,"RIGHT",15,0)
    child.cdeditbox = cdeditbox

    local order = panel:MakeSlider(
        'name', 'Icon Order',
        'description', 'Adjust icon order priority',
        'minText', '1',
        'maxText', '6',
        'minValue', 1,
        'maxValue', 6,
        'step', 1,
        'default', 1,
        'current',  1,
        'setFunc', function() end,
        'currentTextFunc', function(value) return tonumber(string.format("%.1d",value)) end)
    order:SetPoint("TOPLEFT",dropdown2,"BOTTOMLEFT",180,30)
    child.order = order

    local addbutton = panel:MakeButton(
        'name', 'Add/Update',
        'description', "Add / Update ability",
        'func', function()
            local id = ideditbox:GetText():match("^[0-9]+$")
            local spec = dropdown2.value
            local ability = addeditbox:GetText()
            local iconfound = ATT:FindAbilityIcon(ability, id)
            local cdtext = cdeditbox:GetText():match("^[0-9]+$")
            local spellStatus = spellStatusbox.value
            local order = string.format("%.0f",order.value)
            if iconfound and cdtext and id and (not spec or db.abilities[db.classSelected] and db.abilities[db.classSelected][spec]) then
                print("Added/Updated: |cffFF4500"..ability.."|r")
                local abilities = db.abilities[db.classSelected][spec or "ALL"]
                local _ability, _index = self:FindAbilityByName(abilities, ability)
                if _ability and _index then
                    -- editing:
                    abilities[_index] = {ability = ability, cooldown = tonumber(cdtext), id = tonumber(id), spellStatus = spellStatus and tostring(spellStatus), order = tonumber(string.format("%.0f",order)) }
                else
                    -- adding new:
                    table.insert(abilities, {ability = ability, cooldown = tonumber(cdtext), id = tonumber(id), spellStatus = spellStatus and tostring(spellStatus), order = tonumber(string.format("%.0f",order)) })
                end
                table.sort(abilities, function(a, b)
                    if (a.order or 1) == (b.order or 1) then return (a.id) < (b.id) end
                    return (a.order or 1) < (b.order or 1) end)                    
                child.currentButton = ability
                self:UpdateScrollBar();
                self:UpdateGroup()
            else
                print("Invalid/blank:|cffFF4500 Ability Name, ID or Cooldown|r")
            end
        end)
    addbutton:SetPoint("TOPLEFT",addeditbox,"BOTTOMLEFT",-6,-20)

    local function CreateListFrame(title)
        if iFrame and iFrame:IsShown() then iFrame:Hide() return end
        iFrame = CreateFrame("Frame", "ATI", panel, "TooltipBorderedFrameTemplate");
        iFrame:SetSize(255, 245);
        iFrame:SetPoint('LEFT',220,-76);
        iFrame:SetFrameLevel(iFrame:GetFrameLevel() + 3)
        iFrame:EnableMouse(true);

        local titleclass =  iFrame:CreateFontString(nil,"ARTWORK","GameFontNormalLarge")
        titleclass:SetText(title)
        titleclass:SetJustifyH("CENTER")
        titleclass:SetPoint("TOP", iFrame, "TOP", 0, -10)

        local closebtn = CreateFrame("button","closebtn", iFrame, "UIPanelButtonTemplate")
        closebtn:SetHeight(24)
        closebtn:SetWidth(60)
        closebtn:SetPoint("BOTTOM", iFrame, "BOTTOM", 0, 5)
        closebtn:SetText("Close")
        closebtn:SetScript("OnClick", function(self) self:GetParent():Hide() end)
        return iFrame
    end

    local importspell = panel:MakeButton(
        'name', 'Import Spell',
        'description', 'Open Import Spell\n(for selected class)',
        'func', function()
            local spectexture  =  "Interface\\Icons\\ClassIcon_"..db.classSelected
            local title = "|T"..spectexture..":12|t " ..db.classSelected
            CreateListFrame(title)

            local isFrame = CreateFrame("ScrollFrame", "ATC", iFrame, "UIPanelScrollFrameTemplate");
            isFrame:SetSize(210, 175);
            isFrame:SetPoint("TOPLEFT", iFrame, "TOPLEFT", 10, -35)

            local childiF = CreateFrame("Frame","ATC", isFrame )
            childiF:SetSize(1,1);
            isFrame:SetScrollChild(childiF)
            local btn = {}
            self.btn = btn
            self.isFrame = childiF

            local dbImports = dbImport[db.classSelected]
            for abilityIndex, abilityTable in pairs(dbImports) do
                local ability, id, cooldown, maxcharges = abilityTable.spellID, abilityTable.spellID, abilityTable.duration, abilityTable.maxcharges
                local ability = GetSpellInfo(ability)
                local button = CreateFrame("Button",ability,childiF,"UIMenuButtonStretchTemplate")
                button:SetWidth(210)
                button:SetHeight(29)
                button:SetHighlightTexture("Interface\\ContainerFrame\\UI-Icon-QuestBorder")
                button:GetHighlightTexture():SetTexCoord(0.11,0.88,0.02,0.97)
                button:SetScript("OnClick",function(self) childiF.currentButton = self:GetText();
                child.addeditbox:SetText(ability);
                child.ideditbox:SetText(id or "")
                child.cdeditbox:SetText(cooldown or "")
                iFrame:Hide(); return end)

                if abilityIndex == 1 then  btn[#btn+1] = 1 button:SetPoint("LEFT") end
                local spectexture  =  "Interface\\Icons\\ClassIcon_"..db.classSelected
                local abilitytexture = self:FindAbilityIcon(ability, id)
                button.Text:SetText("   |T"..spectexture..":18|t - |T"..abilitytexture..":17|t " ..ability:sub(1,25))
                button.Text:SetFont(GameFontNormal:GetFont(),11)
                button.Text:SetPoint("LEFT")
                button:SetPoint("TOPLEFT",btn[#btn],"BOTTOMLEFT")
                button:EnableMouse()
                button:SetScript('OnEnter', function() GameTooltip:ClearLines(); GameTooltip:SetOwner(iFrame, "ANCHOR_TOP")
                    GameTooltip:SetSpellByID(id)
                end)
                button:SetScript('OnLeave', function()
                    GameTooltip:ClearLines()
                    GameTooltip:Hide()
                end)
                btn[#btn+1] = button
            end
        end)
    importspell:SetPoint("LEFT", addbutton, "RIGHT", 10, 0)

    local removebutton = panel:MakeButton(
        'name', 'Remove',
        'description', 'Remove ability',
        'func', function()
            print("Removed ability |cffFF4500" .. addeditbox:GetText().."|r")
            local spec = dropdown2.value
            local spellStatus = spellStatusbox.value
            local _ability, _index = self:FindAbilityByName(db.abilities[db.classSelected][spec or "ALL"], addeditbox:GetText())
            if _ability and _index then table.remove(db.abilities[db.classSelected][spec], _index) end
            addeditbox:SetText("");
            ideditbox:SetText("");
            cdeditbox:SetText("");
            order:SetValue(1)
            child.currentButton = nil;
            self:UpdateScrollBar();
            self:UpdateGroup()
        end)
    removebutton:SetPoint("LEFT", importspell, "RIGHT", 10, 0)

    local showTrinkets = panel:MakeButton(
        'name', 'Trinkets Tab',
        'description', 'Open Trinkets tab',
        'extra', true,
        'func', function()
            local title =  "Trinkets Tab"
            CreateListFrame(title)

            local isFrame = CreateFrame("ScrollFrame", "ATC", iFrame, "UIPanelScrollFrameTemplate");
            isFrame:SetSize(210, 175);
            isFrame:SetPoint("TOPLEFT", iFrame, "TOPLEFT", 10, -35)

            local childiF = CreateFrame("Frame","ATCx", isFrame )
            childiF:SetSize(1,1);
            isFrame:SetScrollChild(childiF)
            self.isFrame = childiF
            local btn = {}
            self.btn = btn
            for abilityIndex, abilityTable in pairs(dbExtra) do
                local ability, id, cooldown, sname = abilityTable.ability, abilityTable.id, abilityTable.cooldown, abilityTable.sname
                local button = CreateFrame("CheckButton", ability,childiF, "InterfaceOptionsCheckButtonTemplate")
                if abilityIndex == 1 then  btn[#btn+1] = 1 button:SetPoint("LEFT") end
                local abilitytexture = self:FindAbilityIcon(ability, id)
                button.Text:SetText(" |T"..abilitytexture..":17|t " ..ability)
                button:SetHitRectInsets(0, -button.Text:GetWidth() , 0, 0)
                button:SetPoint("TOPLEFT",btn[#btn],"BOTTOMLEFT")
                button:SetChecked(db["Trinkets"][sname])
                button:SetScript("OnClick",  function() db["Trinkets"][sname] = button:GetChecked(); self:UpdateGroup();  end)
                button:SetScript('OnEnter', function() GameTooltip:ClearLines(); GameTooltip:SetOwner(iFrame, "ANCHOR_TOP")
                    GameTooltip:SetSpellByID(id)
                end)
                button:SetScript('OnLeave', function()
                    GameTooltip:ClearLines()
                    GameTooltip:Hide()
                end)
                btn[#btn+1] = button
            end

        end)
    showTrinkets:SetPoint("TOPLEFT",panel,"TOPLEFT",20,-488)

    local showEssence = panel:MakeButton(
        'name', 'Essences Tab',
        'description', 'Open Essences tab',
        'extra', true,
        'func', function()
            local title =  "Essence Tab"
            CreateListFrame(title)
            local isFrame = CreateFrame("ScrollFrame", "ATC", iFrame, "UIPanelScrollFrameTemplate");
            isFrame:SetSize(210, 175);
            isFrame:SetPoint("TOPLEFT", iFrame, "TOPLEFT", 10, -35)
            local childiF = CreateFrame("Frame","ATC", isFrame )
            childiF:SetSize(1,1);
            isFrame:SetScrollChild(childiF)
            self.isFrame = childiF
            local btn = {}
            self.btn = btn
            for abilityIndex, abilityTable in pairs(dbEssences) do
                local ability, id, cooldown = abilityTable.ability, abilityTable.id, abilityTable.cooldown
                local id = ability
                local ability = GetSpellInfo(ability)
                local button = CreateFrame("CheckButton", ability,childiF, "InterfaceOptionsCheckButtonTemplate")
                if abilityIndex == 1 then  btn[#btn+1] = 1 button:SetPoint("LEFT") end
                local abilitytexture = self:FindAbilityIcon(ability, id)
                button.Text:SetText(" |T"..abilitytexture..":17|t " ..ability)
                button:SetHitRectInsets(0, -button.Text:GetWidth() , 0, 0)
                button:SetPoint("TOPLEFT",btn[#btn],"BOTTOMLEFT")
                button:SetChecked(db["Essence"][ability])
                button:SetScript("OnClick",  function() db["Essence"][ability] = button:GetChecked(); self:UpdateGroup();  end)
                button:SetScript('OnEnter', function() GameTooltip:ClearLines(); GameTooltip:SetOwner(iFrame, "ANCHOR_TOP")
                    GameTooltip:SetSpellByID(id)
                end)
                button:SetScript('OnLeave', function()
                    GameTooltip:ClearLines()
                    GameTooltip:Hide()
                end)

                btn[#btn+1] = button
            end
        end)
    showEssence:SetPoint("LEFT", showTrinkets, "RIGHT", 20, 0)

    local selectVisibility = panel:MakeButton(
        'name', 'Visibility Tab',	
        'description', 'Open Visibility Options',
        'extra', true,
        'func', function()
            local title =  "Visibility Options Tab"
            CreateListFrame(title)
            local isFrame = CreateFrame("ScrollFrame", "ATC", iFrame);
            isFrame:SetSize(210, 175);
            isFrame:SetPoint("TOPLEFT", iFrame, "TOPLEFT", 10, -35)
            local childiF = CreateFrame("Frame","ATC", isFrame )
            childiF:SetSize(1,1);
            isFrame:SetScrollChild(childiF)
            self.isFrame = childiF
            local btn = {}
            self.btn = btn
            for abilityIndex, abilityTable in pairs(dbVisibility) do
                local ability, atexture = abilityTable.ability, abilityTable.atexture
                local button = CreateFrame("CheckButton", ability,childiF, "UICheckButtonTemplate")
                if abilityIndex == 1 then btn[#btn+1] = 1 button:SetPoint("LEFT")  end
                button.text:SetText(" "..atexture)
                button.text:SetFont(GameFontHighlight:GetFont(),12)
                button.text:SetTextColor(1, 1, 1);
                button:SetHitRectInsets(0, -button.text:GetWidth() , 0, 0)
                button:SetPoint("TOPLEFT",btn[#btn],"BOTTOMLEFT")
                button:SetChecked(db[ability])
                button:SetScript("OnClick",  function() db[ability] = button:GetChecked(); self:ApplyAnchorSettings()  end)
                button:SetScript('OnEnter', function() GameTooltip:ClearLines(); GameTooltip:SetOwner(iFrame, "ANCHOR_TOP")
                  GameTooltip:SetText(atexture)
                  GameTooltip:Show()
                end)
                button:SetScript('OnLeave', function()
                    GameTooltip:ClearLines()
                    GameTooltip:Hide()
                end)
                btn[#btn+1] = button
            end
        end)
   selectVisibility:SetPoint("LEFT", showTrinkets, "RIGHT", 250, 0)
    
      local showProfiles = panel:MakeButton(
        'name', 'Profiles Tab',	
        'description', 'Open Profiles tab',
        'extra', true,
        'func', function()
            local title =  "Profiles Options Tab"
            CreateListFrame(title)
            local isFrame = CreateFrame("ScrollFrame", "ATC", iFrame);
            isFrame:SetSize(210, 175);
            isFrame:SetPoint("TOPLEFT", iFrame, "TOPLEFT", 10, -35)
            local childiF = CreateFrame("Frame","ATC", isFrame )
            childiF:SetSize(1,1);
            isFrame:SetScrollChild(childiF)
            self.isFrame = childiF
       local desc =  iFrame:CreateFontString(nil,"ARTWORK","GameFontNormal")
        desc:SetText("work in progress")
        desc:SetJustifyH("CENTER")
        desc:SetPoint("TOP", iFrame, "TOP", 0, -50)
        end)
    showProfiles:SetPoint("LEFT", showTrinkets, "RIGHT", 370, 0)

end

ATT:RegisterEvent("ADDON_LOADED")
ATT:SetScript("OnEvent",ATT_OnLoad)