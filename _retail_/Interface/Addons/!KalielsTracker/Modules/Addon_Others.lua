--- Kaliel's Tracker
--- Copyright (c) 2012-2020, Marouan Sabbagh <mar.sabbagh@gmail.com>
--- All Rights Reserved.
---
--- This file is part of addon Kaliel's Tracker.

local addonName, KT = ...
local M = KT:NewModule(addonName.."_AddonOthers")
KT.AddonOthers = M

local MSQ = LibStub("Masque", true)
local _DBG = function(...) if _DBG then _DBG("KT", ...) end end

-- WoW API
local _G = _G

local db
local OTF = ObjectiveTrackerFrame
local msqGroup1, msqGroup2

local KTwarning = "  |cff00ffffAddon "..KT.title.." is active.  "

--------------
-- Internal --
--------------

-- Masque
local function Masque_SetSupport()
    if db.addonMasque and MSQ then
        msqGroup1 = MSQ:Group(KT.title, "Quest Item Button")
        msqGroup2 = MSQ:Group(KT.title, "Active Button")
        hooksecurefunc(msqGroup2, "Enable", function(self)
            for button in pairs(self.Buttons) do
                if button.Style then
                    button.Style:SetAlpha(0)
                end
            end
        end)
        hooksecurefunc(msqGroup2, "Disable", function(self)
            for button in pairs(self.Buttons) do
                if button.Style then
                    button.Style:SetAlpha(1)
                end
            end
        end)
    end
end

-- ElvUI
local function ElvUI_SetSupport()
    if KT:CheckAddOn("ElvUI", "12.06", true) then
        local E = unpack(_G.ElvUI)
        local B = E:GetModule("Blizzard")
        B.SetObjectiveFrameAutoHide = function() end  -- preventive
        B.SetObjectiveFrameHeight = function() end
        B.MoveObjectiveFrame = function() end
        hooksecurefunc(E, "CheckIncompatible", function(self)
            self.private.skins.blizzard.objectiveTracker = false
        end)
        hooksecurefunc(E, "ToggleOptionsUI", function(self)
            if E.Libs.AceConfigDialog.OpenFrames[self.name] then
                local options = self.Options.args.general.args.blizzUIImprovements.args.objectiveFrameGroup
                options.disabled = true
                options.args[addonName.."Warning"] = {
                    name = KTwarning,
                    type = "description",
                    order = 0.1,
                }
            end
        end)
    end
end

-- Tukui
local function Tukui_SetSupport()
    if KT:CheckAddOn("Tukui", "20.04", true) then
        local T = unpack(_G.Tukui)
        T.Miscellaneous.ObjectiveTracker.Enable = function() end
    end
end

-- RealUI
local function RealUI_SetSupport()
    if KT:CheckAddOn("nibRealUI", "2.2.3", true) then
        local R = _G.RealUI
        R:SetModuleEnabled("Objectives Adv.", false)
        -- Fade
        local bck_UIFrameFadeIn = UIFrameFadeIn
        function UIFrameFadeIn(frame, ...)
            if frame ~= OTF then bck_UIFrameFadeIn(frame, ...) end
        end
        local bck_UIFrameFadeOut = UIFrameFadeOut
        function UIFrameFadeOut(frame, ...)
            if frame ~= OTF then bck_UIFrameFadeOut(frame, ...) end
        end
        if not IsAddOnLoaded("Aurora_Extension") then
            StaticPopup_Show(addonName.."_Info", nil, "Please install/activate addon |cff00ffe3Aurora - Extension|r\nand disable Objective Tracker skin.")
        end
    end
end

-- SyncUI
local function SyncUI_SetSupport()
    if KT:CheckAddOn("SyncUI", "8.3.0.3", true) then
        SyncUI_ObjTracker.Show = function() end
        SyncUI_ObjTracker:Hide()
        SyncUI_ObjTracker:SetScript("OnLoad", nil)
        SyncUI_ObjTracker:SetScript("OnEvent", nil)
        SyncUI_UnregisterDragFrame(_G["SyncUI_ObjTracker"])
    end
end

-- SpartanUI
local function SpartanUI_SetSupport()
    if KT:CheckAddOn("SpartanUI", "6.0.10", true) then
        SUI.DB.DisabledComponents.Objectives = true
        local module = SUI:GetModule("Component_Objectives")
        local bck_module_OnEnable = module.OnEnable
        function module:OnEnable()
            if SUI.DB.DisabledComponents.Objectives then
                module:BuildOptions()
                local options = SUI.opt.args.ModSetting.args
                options.Objectives.disabled = true
                options.Components.args.Objectives.disabled = true
                options.Components.args[addonName.."Warning"] = {
                    name = "\n"..KTwarning,
                    type = "description",
                    order = 1000,
                }
                return
            end
            bck_module_OnEnable(self)
        end
    end
end

local function Aurora_SetCompatibility()
    if IsAddOnLoaded("Aurora") then
        if not IsAddOnLoaded("Aurora_Extension") then
            StaticPopup_Show(addonName.."_Info", nil, "Please install/activate addon |cff00ffe3Aurora - Extension|r\nand disable Objective Tracker skin.")
        end
    end
end

-- Chinchilla
local function Chinchilla_SetCompatibility()
    if IsAddOnLoaded("Chinchilla") then
        Chinchilla:GetModule("QuestTracker"):Disable()
        local bck_Chinchilla_CreateConfig = Chinchilla.CreateConfig
        function Chinchilla:CreateConfig()
            local options = bck_Chinchilla_CreateConfig(self)
            options.args.QuestTracker.args.enabled.disabled = true
            options.args.QuestTracker.args[addonName.."Warning"] = {
                name = KTwarning,
                type = "description",
            }
            options.args.Position.args.questWatch.disabled = true
            options.args.Position.args.questWatch.args[addonName.."Warning"] = {
                name = KTwarning,
                type = "description",
            }
            return options
        end
    end
end

-- Dugi Questing Essential
local function DQE_SetCompatibility()
    if IsAddOnLoaded("DugisGuideViewerZ") then
        DugisGuideViewer:SetDB(false, DGV_MOVEWATCHFRAME)
        DugisGuideViewer:SetDB(false, DGV_WATCHFRAMEBORDER)
        function DugisGuideViewer:IncompatibleAddonLoaded()    -- R
            return true
        end
    end
end

--------------
-- External --
--------------

function M:OnInitialize()
    _DBG("|cffffff00Init|r - "..self:GetName(), true)
    db = KT.db.profile
    KT:CheckAddOn("Masque", "9.0.2")
end

function M:OnEnable()
    _DBG("|cff00ff00Enable|r - "..self:GetName(), true)
    Masque_SetSupport()
    ElvUI_SetSupport()
    Tukui_SetSupport()
    RealUI_SetSupport()
    SyncUI_SetSupport()
    SpartanUI_SetSupport()
    Aurora_SetCompatibility()
    Chinchilla_SetCompatibility()
    DQE_SetCompatibility()
end

-- Masque
function KT:Masque_AddButton(button, group)
    if db.addonMasque and MSQ and msqGroup1 then
        if not group or group == 1 then
            group = msqGroup1
        elseif group == 2 then
            group = msqGroup2
        end
        group:AddButton(button)
        if button.Style then
            if not group.db.Disabled then
                button.Style:SetAlpha(0)
            end
        end
    end
end