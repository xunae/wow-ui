local addonName, TS = ...; TS.UI = { }

--do not load the addon if current player is not a shaman
local a, b, classId = UnitClass("player")
if (classId ~= 7) then return end

local Masque, MasqueGroup

local function CreateUiFrame(parentFrame, height)
	local frame = CreateFrame("Frame", nil, parentFrame)
	frame:SetFrameStrata("BACKGROUND")
	frame:SetWidth(175)
	frame:SetHeight(height)
	
	frame.texture = frame:CreateTexture(nil, "LOW")
	frame.texture:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 3, 3);
	frame.texture:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 3, 3);
	frame.texture:SetPoint("TOPLEFT", frame, "TOPLEFT", 3, -3);
	frame.texture:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -3, -3);
	frame.texture:SetColorTexture(0, 0, 0, 0.5)

	frame:SetBackdrop({ 
	  bgFile = nil, edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
	  tile = true, tileSize = 12, edgeSize = 12
	});
	frame:SetBackdropBorderColor(0.5, 0.5, 0.5, 1)
	
	return frame
end

local function CreateTextFrame(parentFrame, x, y, frameAnchor, textSize)
	local frame = CreateFrame("FRAME", nil, parentFrame)
	frame:SetPoint(frameAnchor, parentFrame, x, y)
	frame:SetWidth(39.375)
	frame:SetHeight(20)

	local fontString = frame:CreateFontString()
	fontString:SetAllPoints(true)
	fontString:SetJustifyH("CENTER")
	
	return fontString
end

local TotemFrames = { }
local function CreateSubFrame(parentFrame, x)
	local frame = CreateFrame("Button", "a", parentFrame, "ActionButtonTemplate")
	frame:SetPoint("LEFT", parentFrame, "LEFT", x, 2) 
	table.insert(TotemFrames, frame)
	frame:EnableMouse(false)
	frame:Disable()
	
	local texture = nil
	--if Masque is present we'll use the button's icon field with masque skins
	if (LibStub ~= nil and LibStub("Masque", true) ~= nil)
	then
		Masque = LibStub("Masque", true)
		MasqueGroup = Masque:Group("TotemStatus")
		MasqueGroup:AddButton(frame)
		frame.MasqueSkinned = true		
		texture = frame.icon
	else	
		--if not we'll use a separate texture so the frame can be made invisible but the texture remains visible
		texture = parentFrame:CreateTexture(nil, "OVERLAY")
		texture:SetAllPoints(frame)
		frame.texture = texture
		frame:SetFrameStrata("BACKGROUND")
		frame:SetWidth(36)
		frame:SetHeight(36)
	end
	
	--create a smaller frame within the frame for totem suggestions
	local subFrame = CreateFrame("Frame", nil, frame)
	subFrame:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, 0) 
	subFrame:SetFrameStrata("BACKGROUND")
	subFrame:SetWidth(20)
	subFrame:SetHeight(20)

	--now create the texture to display the totem suggestions within the small frame
	texture.SubImage = subFrame:CreateTexture(nil, "OVERLAY")
	texture.SubImage:SetAllPoints(subFrame)
	subFrame.texture = texture.SubImage
	
	return texture
end

local function Image(frame, x)
	return CreateSubFrame(frame, x)
end

local function Timer(frame, x)
	return CreateTextFrame(frame, x, -3, "TOPLEFT", 11);
end

local function Count(frame, x)
	return CreateTextFrame(frame, x, 5, "BOTTOMLEFT", 14);
end

local function Health(frame, x)
	--stoneclaw totem health bar
	local statusBar = CreateFrame("StatusBar", nil, mainFrame)
	statusBar:SetPoint("TOPLEFT", frame, x, -55.5)
	statusBar:SetWidth(29)
	statusBar:SetHeight(4)
	statusBar:SetStatusBarTexture("Interface/TargetingFrame/UI-StatusBar")
	statusBar:SetStatusBarColor(0, 1, 0)
	statusBar:SetMinMaxValues(0, 0)
	statusBar:SetValue(0)
	
	return statusBar
end

--create the main frame
local mainFrame = CreateUiFrame(UIParent, 85)
  
--create tooltip frame
local tooltipFrame = CreateUiFrame(mainFrame, 35)
tooltipFrame:SetPoint("TOP", mainFrame, 0, -83)
tooltipFrame:Hide()

local fontString = tooltipFrame:CreateFontString()
fontString:SetPoint("TOPLEFT", tooltipFrame, 9, -5)
fontString:SetFont(STANDARD_TEXT_FONT, 10, "OUTLINE")
fontString:SetTextColor(1.0, 0.82, 0.0, 1)
fontString:SetText("Ctrl + left click to reposition")

local fontString = tooltipFrame:CreateFontString()
fontString:SetPoint("TOPLEFT", tooltipFrame, 9, -18)
fontString:SetFont(STANDARD_TEXT_FONT, 10, "OUTLINE")
fontString:SetTextColor(1.0, 0.82, 0.0, 1)
fontString:SetText("Ctrl + right click for settings")

m = mainFrame
local Totems =
{
	[1] = { Image = Image(m, 10), Timer = Timer(m, 7), Count = Count(m, 10), Health = Health(m, 10.5) }, 
	[2] = { Image = Image(m, 50), Timer = Timer(m, 47), Count = Count(m, 50), Health = Health(m, 46.5) }, 
	[3] = { Image = Image(m, 90), Timer = Timer(m, 87), Count = Count(m, 90), Health = Health(m, 82.5) }, 
	[4] = { Image = Image(m, 130), Timer = Timer(m, 127), Count = Count(m, 130), Health = Health(m, 118.5) } 
}
TS.UIElements = 
{ 
	[1] = Totems[1],
	[2] = Totems[2],
	[3] = Totems[3],
	[4] = Totems[4]
}

--stuff for repositioning the frame and saving the location
local function SaveMainFrameLocation()
	local a, b, c, x, y = mainFrame:GetPoint()
	TS.Settings.SaveUILocation(x, y)
	mainFrame:StopMovingOrSizing()
end

local function MainFrameDragStart()
	mainFrame:StartMoving()
end

mainFrame:SetMovable(true)
mainFrame:RegisterForDrag("LeftButton")
mainFrame:SetScript("OnDragStart", MainFrameDragStart)
mainFrame:SetScript("OnDragStop", SaveMainFrameLocation)

local _showTooltip = true
function TS.UI.ApplySettings(settings)
	--show/hide outer frame
	frameAlpha = 0
	if (settings.ShowOuterFrame == true) then frameAlpha = 1 end
	mainFrame:SetBackdropBorderColor(0.5, 0.5, 0.5, frameAlpha)
	
	--show/hide totem frames
	for key, frame in pairs(TotemFrames)
	do
		if (settings.ShowTotemFrames) then frame:Show() else frame:Hide() end
	end

	--show tooltip
	_showTooltip = settings.ShowTooltip

	--font & font size
	for key, value in pairs(TS.UIElements)
	do
		value.Timer:SetFont(settings.Font, settings.FontSize - 1.5, "OUTLINE")
		value.Count:SetFont(settings.Font, settings.FontSize + 1.5, "OUTLINE")
	end

	--UI Scale
	mainFrame:SetScale(settings.UIScale)
	
	--color & transparency
	local color = settings.Color
	mainFrame.texture:SetColorTexture(color.R, color.G, color.B, settings.Transparency)
	
	--totem order
	for i, _ in ipairs(TS.UIElements)
	do
		TS.UIElements[i].Health:SetMinMaxValues(0, 0)
		TS.UIElements[i].Health:SetValue(0)
	end
	TS.UIElements[settings.TotemOrder.Totem1] = Totems[1]
	TS.UIElements[settings.TotemOrder.Totem2] = Totems[2]
	TS.UIElements[settings.TotemOrder.Totem3] = Totems[3]
	TS.UIElements[settings.TotemOrder.Totem4] = Totems[4]
end

function TS.UI.SetLocation(x, y)
	mainFrame:ClearAllPoints();
	
	if (x == nil or y == nil) 
	then
		--if location is not given in settings we want to show the UI in the center of the screen
		mainFrame:SetPoint("CENTER", 0, 0)
	else
		mainFrame:SetPoint("TOPLEFT", x, y)
	end
end

local function AddonLoaded(addonName)
	if (addonName ~= "TotemStatus") then return end
	
	TS.Utils.UpdateVariableData()
	TS.Settings.LoadSettings()
	TS.UI.SetLocation(TS_Settings.MainFrameX, TS_Settings.MainFrameY)
	TS.Logic.UpdateTotemData(1)
	TS.Logic.UpdateTotemData(2)
	TS.Logic.UpdateTotemData(3)
	TS.Logic.UpdateTotemData(4)
end

function mainFrame:OnEvent(eventName, arg1, arg2, arg3)
	if eventName == "CHAT_MSG_ADDON" then TS.Logic.AddonMessageReceived(arg1, arg2) end
	if eventName == "ADDON_LOADED" then AddonLoaded(arg1) end
	if eventName == "PLAYER_TOTEM_UPDATE" then TS.Logic.PlayerTotemUpdate(arg1) end
	if eventName == "UNIT_SPELLCAST_SUCCEEDED" then TS.Logic.SpellCastSucceeded(arg3) end
	if eventName == "COMBAT_LOG_EVENT_UNFILTERED" then TS.Logic.CombatLogEvent() end
	if eventName == "PLAYER_LEVEL_UP" then TS.Utils.UpdateVariableData() end
	if eventName == "CHARACTER_POINTS_CHANGED" then TS.Utils.UpdateVariableData() end
end

local function OnMouseDown(self, button)
	if (IsControlKeyDown() and button == "RightButton") then TS.Settings.ShowSettingsDialog() end
end

--[[
	Show/hide settings tooltip frame and enable/disable mouse.
	We shall enable the mouse only when mouse is over mainFrame AND the Ctrl key is down.
	Like this settings will open with Ctrl + Click while keeping the frame click-through at all other times.
]]
local function OnUpdate(self, elapsed)
	if (mainFrame:IsMouseOver())
	then
		if (_showTooltip) then tooltipFrame:Show() end
		mainFrame:EnableMouse(IsControlKeyDown())
	else
		tooltipFrame:Hide()
		mainFrame:EnableMouse(false)
	end
	
	--if Ctrl is released while dragging the frame it will get stuck to the mouse. this will avoid this
	if (not IsControlKeyDown()) then mainFrame:StopMovingOrSizing() end
	
	TS.Logic.OnUpdate(elapsed)
end

--register events and handlers
C_ChatInfo.RegisterAddonMessagePrefix("WF_STATUS")
mainFrame:RegisterEvent("ADDON_LOADED")
mainFrame:RegisterEvent("PLAYER_TOTEM_UPDATE")
mainFrame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
mainFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
mainFrame:RegisterEvent("PLAYER_LEVEL_UP")
mainFrame:RegisterEvent("CHAT_MSG_ADDON")
mainFrame:RegisterEvent("CHARACTER_POINTS_CHANGED")
mainFrame:SetScript("OnUpdate", OnUpdate)
mainFrame:SetScript("OnEvent", mainFrame.OnEvent)
mainFrame:SetScript("OnMouseDown", OnMouseDown)

--disable mouse (clickthrough) and enable keyboard
mainFrame:EnableMouse(false)
mainFrame:EnableKeyboard(true)
mainFrame:SetPropagateKeyboardInput(true)

mainFrame:Show()