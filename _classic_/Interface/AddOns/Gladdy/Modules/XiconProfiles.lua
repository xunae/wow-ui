local Gladdy = LibStub("Gladdy")
local L = Gladdy.L

local XiconProfiles = Gladdy:NewModule("XiconProfiles", nil, {
})

function XiconProfiles:ApplyKlimp()
    local deserialized = Gladdy.modules["Export Import"]:Decode(Gladdy:GetKlimpProfile())
    if deserialized then
        Gladdy.modules["Export Import"]:ApplyImport(deserialized, Gladdy.db)
    end
    Gladdy:Reset()
    Gladdy:HideFrame()
    Gladdy:ToggleFrame(3)
end

function XiconProfiles:ApplyKnall()
    local deserialized = Gladdy.modules["Export Import"]:Decode(Gladdy:GetKnallProfile())
    if deserialized then
        Gladdy.modules["Export Import"]:ApplyImport(deserialized, Gladdy.db)
    end
    Gladdy:Reset()
    Gladdy:HideFrame()
    Gladdy:ToggleFrame(3)
end

function XiconProfiles:ApplyClassic()
    local deserialized = Gladdy.modules["Export Import"]:Decode(Gladdy:GetClassicProfile())
    if deserialized then
        Gladdy.modules["Export Import"]:ApplyImport(deserialized, Gladdy.db)
    end
    Gladdy:Reset()
    Gladdy:HideFrame()
    Gladdy:ToggleFrame(3)
end

function XiconProfiles:ApplyBlizz()
    local deserialized = Gladdy.modules["Export Import"]:Decode(Gladdy:GetBlizzardProfile())
    if deserialized then
        Gladdy.modules["Export Import"]:ApplyImport(deserialized, Gladdy.db)
    end
    Gladdy:Reset()
    Gladdy:HideFrame()
    Gladdy:ToggleFrame(3)
end

function XiconProfiles:GetOptions()
    return {
        headerProfileBlizzard = {
            type = "header",
            name = "Blizzard " .. L["Profile"],
            order = 2,
        },
        blizzardProfile = {
            type = "execute",
            func = function()
                Gladdy.dbi:ResetProfile(Gladdy.dbi:GetCurrentProfile())
                XiconProfiles:ApplyBlizz()
            end,
            name = " ",
            desc = "Blizzard " .. L["Profile"],
            image = "Interface\\AddOns\\Gladdy\\Images\\BasicProfiles\\Blizz1.blp",
            imageWidth = 350,
            imageHeight = 175,
            width = "full",
            order = 3,
        },
        headerProfileClassic = {
            type = "header",
            name = "Classic " .. L["Profile"],
            order = 4,
        },
        classicProfile = {
            type = "execute",
            func = function()
                Gladdy.dbi:ResetProfile(Gladdy.dbi:GetCurrentProfile())
                XiconProfiles:ApplyClassic()
            end,
            name = " ",
            desc = "Classic " .. L["Profile"],
            image = "Interface\\AddOns\\Gladdy\\Images\\BasicProfiles\\Classic1.blp",
            imageWidth = 350,
            imageHeight = 175,
            width = "full",
            order = 5,
        },
        headerProfileKnall = {
            type = "header",
            name = "Knall's " .. L["Profile"],
            order = 6,
        },
        knallProfile = {
            type = "execute",
            func = function()
                Gladdy.dbi:ResetProfile(Gladdy.dbi:GetCurrentProfile())
                XiconProfiles:ApplyKnall()
            end,
            name = " ",
            desc = "Knall's " .. L["Profile"],
            image = "Interface\\AddOns\\Gladdy\\Images\\BasicProfiles\\Knall1.blp",
            imageWidth = 350,
            imageHeight = 175,
            width = "full",
            order = 7,
        },
        headerProfileKlimp = {
            type = "header",
            name = "Klimp's " .. L["Profile"],
            order = 8,
        },
        klimpProfiles = {
            type = "execute",
            func = function()
                Gladdy.dbi:ResetProfile(Gladdy.dbi:GetCurrentProfile())
                XiconProfiles:ApplyKlimp()
            end,
            image = "Interface\\AddOns\\Gladdy\\Images\\BasicProfiles\\Klimp1.blp",
            imageWidth = 350,
            imageHeight = 175,
            name = " ",
            desc = "Klimp's " .. L["Profile"],
            width = "full",
            order = 9,
        },

    }
end