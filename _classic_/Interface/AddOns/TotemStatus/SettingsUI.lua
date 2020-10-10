local addonName, TS = ...; TS.Settings = { }

--do not load the addon if current player is not a shaman
local a, b, classId = UnitClass("player")
if (classId ~= 7) then return end

local _initializing = false
--the settings as selected by the user in the UI
local _selectedSettings
--references to temp fields and UI controls on this dialog
local _font, _color
local TotemComboBoxes, TotemComboBoxesByIndex 
local _showOuterFrame, _showTotemFrames, _showTooltip, _showTotemSuggestions, _showTotemExpiryAlarm, _totemExpirySound, _totemDestroyedSound, _fontComboBox, _fontSize, _uiScale, _transparency, _colorButton

local Elements = 
{
	[1] = "Earth",
	[2] = "Fire",
	[3] = "Water",
	[4] = "Air"
}
local StandardFonts = 
{
	["Fonts/FRIZQT__.ttf"] = "Friz Quadrata",
	["Fonts/ARIALN.ttf"] = "Arial Narrow",
	["Fonts/MORPHEUS.ttf"] = "Morpheus",
	["Fonts/skurri.ttf"] = "Skurri"
}
local DefaultSettings = 
{
	MainFrameX = nil,
	MainFrameY = nil,
	ShowOuterFrame = true,
	ShowTotemFrames = true,
	ShowTooltip = true,
	ShowTotemSuggestions = true,
	ShowTotemExpiryAlarm = true,
	TotemExpirySound = false,
	TotemDestroyedSound = false,
	Font = "Fonts/FRIZQT__.ttf",
	FontSize = 12.5,
	UIScale = 1.0,
	Transparency = 0.5,
	Color = { R = 0, G = 0, B = 0 },
	TotemOrder =
	{
		Totem1 = 1,
		Totem2 = 2,
		Totem3 = 3,
		Totem4 = 4
	}
}

function TS.Settings.SaveUILocation(mainFrameX, mainFrameY)
	TS_Settings.MainFrameX = mainFrameX
	TS_Settings.MainFrameY = mainFrameY
end

local function GetSelectedTotem(index)
	return TotemComboBoxes[TotemComboBoxesByIndex[index]].SelectedValue
end

--[[
	Save the provided settings.
]]
local function SaveSettings(settings)
	if (TS_Settings == nil) then TS_Settings = { } end
	
	TS_Settings.ShowOuterFrame = settings.ShowOuterFrame
	TS_Settings.ShowTotemFrames = settings.ShowTotemFrames
	TS_Settings.ShowTooltip = settings.ShowTooltip
	TS_Settings.ShowTotemSuggestions = settings.ShowTotemSuggestions
	TS_Settings.ShowTotemExpiryAlarm = settings.ShowTotemExpiryAlarm
	TS_Settings.TotemExpirySound = settings.TotemExpirySound
	TS_Settings.TotemDestroyedSound = settings.TotemDestroyedSound
	TS_Settings.Font = settings.Font
	TS_Settings.FontSize = settings.FontSize
	TS_Settings.UIScale = settings.UIScale
	TS_Settings.Transparency = settings.Transparency
	TS_Settings.Color = settings.Color	
	TS_Settings.TotemOrder =
	{
		Totem1 = GetSelectedTotem(1),
		Totem2 = GetSelectedTotem(2),
		Totem3 = GetSelectedTotem(3),
		Totem4 = GetSelectedTotem(4)
	}
end

--[[
	Load and apply the saved settings. 
	Initialize settings to defaults if this is the first run.
]]
function TS.Settings.LoadSettings()
	--if no settings exist (first run) save the default settings and then load
	if (TS_Settings == nil) then SaveSettings(DefaultSettings) end
	
	--init settings values that were added later and might not be present in existing saved settings
	if (TS_Settings.TotemOrder == nil) then TS_Settings.TotemOrder = DefaultSettings.TotemOrder end
	
	TS.UI.ApplySettings(TS_Settings)
	TS.Logic.ApplySettings(TS_Settings)
end

local function CreateFontString(parentFrame, x, y, text)
	local fontString = parentFrame:CreateFontString()
	fontString:SetPoint("TOPLEFT", parentFrame, x, y)
	fontString:SetFont(STANDARD_TEXT_FONT, 10, "OUTLINE")
	fontString:SetTextColor(1.0, 0.82, 0.0, 1.0)
	fontString:SetText(text)
end

--[[
	Called when user selects something in the dialog's UI.
	Keep the selected settings in memory and apply them to demonstrate changes.
]]
local function ChangeSettings()
	--if this flag is set then the changed event handler was called because the UI controls' values are being set and not because the user changed a setting. we are only interested in user-initiated changes so ignore this
	if (_initializing) then return end

	_selectedSettings = 
	{
		ShowOuterFrame = _showOuterFrame:GetChecked(),
		ShowTotemFrames = _showTotemFrames:GetChecked(),
		ShowTooltip = _showTooltip:GetChecked(),
		ShowTotemSuggestions = _showTotemSuggestions:GetChecked(),
		ShowTotemExpiryAlarm = _showTotemExpiryAlarm:GetChecked(),
		TotemExpirySound = _totemExpirySound:GetChecked(),
		TotemDestroyedSound = _totemDestroyedSound:GetChecked(),
		Font = _font,
		FontSize = _fontSize:GetValue(),
		UIScale = _uiScale:GetValue(),
		Transparency = 1 - _transparency:GetValue(),
		Color = _color,
		TotemOrder =
		{
			Totem1 = GetSelectedTotem(1),
			Totem2 = GetSelectedTotem(2),
			Totem3 = GetSelectedTotem(3),
			Totem4 = GetSelectedTotem(4)
		}
	}
	
	TS.UI.ApplySettings(_selectedSettings)
	TS.Logic.ApplySettings(_selectedSettings)
end

local function CreateCheckBox(parentFrame, x, y, text, onClickEventHandler)
	local checkBox = CreateFrame("CheckButton", nil, parentFrame, "ChatConfigCheckButtonTemplate");
	checkBox:SetPoint("TOPLEFT", parentFrame, x, y);
	checkBox:SetScript("OnClick", onClickEventHandler)
	
	CreateFontString(checkBox, 25, -6, text);

	return checkBox
end

local function CreateSlider(parentFrame, x, y, text, minValueText, maxValueText,
							minValue, maxValue, valueStep, valueChangedEvent)
	local slider = CreateFrame("Slider", x .. "" .. y, parentFrame, "OptionsSliderTemplate")
	slider:SetPoint("TOPLEFT", parentFrame, x, y);
	slider:SetObeyStepOnDrag(true)
	slider:SetWidth(100)
	slider:SetOrientation("HORIZONTAL")
	slider:SetThumbTexture("Interface/Buttons/UI-SliderBar-Button-Horizontal")
	slider:SetMinMaxValues(minValue, maxValue)
	slider:SetValueStep(valueStep)
	getglobal(slider:GetName() .. "Low"):SetText(minValueText)
	getglobal(slider:GetName() .. "High"):SetText(maxValueText)
	slider:SetScript("OnValueChanged", valueChangedEvent)

	CreateFontString(slider, -83, -6, text);

	return slider
end

--create the settings dialog
local settingsFrame = CreateFrame("FRAME", nil, UIParent)
settingsFrame:SetFrameStrata("DIALOG")
settingsFrame:SetWidth(380)
settingsFrame:SetHeight(305)
settingsFrame:SetPoint("CENTER", 0, 0)
settingsFrame:SetBackdrop({ 
	bgFile = "Interface/DialogFrame/UI-DialogBox-Background", 
	edgeFile = "Interface/DialogFrame/UI-DialogBox-Border", 
	tile = true, tileSize = 20, edgeSize = 20, insets = { left = 4, right = 4, top = 4, bottom = 4 }
})
--hidden by default, will be shown when user opens the dialog
settingsFrame:Hide()

local function CheckBox(text, x, y)
	return CreateCheckBox(settingsFrame, x, y, text, ChangeSettings)
end

--checkboxes
_showOuterFrame = CheckBox("Show Outer Frame", 12, -12)
_showTotemFrames = CheckBox("Show Totem Frames", 12, -37)
_showTooltip = CheckBox("Show Tooltip", 12, -62)
_showTotemSuggestions = CheckBox("Show Totem Suggestions", 12, -87)
_showTotemExpiryAlarm = CheckBox("Totem Expiry Blinking Timer", 170, -12)
_totemExpirySound = CheckBox("Totem Expiry Sound", 170, -37)
_totemDestroyedSound = CheckBox("Totem Destroyed Sound", 170, -62)

--[[
	Called when a font is selected in the font combo box drop down menu.
	Keep the selected font in memory and apply to the UI to demonstrate changes.
]]
local function FontSelected(newValue)
	_font = newValue.value
	UIDropDownMenu_SetText(_fontComboBox, StandardFonts[_font])
	
	CloseDropDownMenus()
	ChangeSettings()
end

--[[
	Shows the font drop down menu with all the different font choices when combo box is clicked.
]]
local function ShowFontDropDownMenu()
	for key, value in pairs(StandardFonts) 
	do
		local item = 
		{ 
			text = value, 
			value = key, 
			checked = (key == _font),
			func = FontSelected 
		}
		UIDropDownMenu_AddButton(item)
	end
end

--font combo box
CreateFontString(settingsFrame, 12, -133, "Font:")
_fontComboBox = CreateFrame("Frame", nil, settingsFrame, "UIDropDownMenuTemplate");
_fontComboBox:SetPoint("TOPLEFT", settingsFrame, 50, -125);
UIDropDownMenu_Initialize(_fontComboBox, ShowFontDropDownMenu)

--sliders
_fontSize = CreateSlider(settingsFrame, 94, -158, "Font Size:", "Small", "Big", 7.5, 17.5, 1, ChangeSettings)
_uiScale = CreateSlider(settingsFrame, 94, -188, "UI Scale:", "50%", "150%", 0.5, 1.5, 0.1, ChangeSettings)
_transparency = CreateSlider(settingsFrame, 94, -218, "Transparency:", "0%", "100%", 0, 1, 0.025, ChangeSettings)

--[[
	Called when the color in the color picker dialog changes.
	Keep the selected color in memory and apply to the UI to demonstrate changes.
]]
local function ColorSelected()
	local r, g, b = ColorPickerFrame:GetColorRGB()
	_color = { R = r, G = g, B = b }
	_colorButton.texture:SetColorTexture(r, g, b, 1)
	ChangeSettings()
end

--[[
	Called when the color picker is canceled. Will restore the original UI color.
]]
local function ColorPickerCanceled()
	_color = TS_Settings.Color
	_colorButton.texture:SetColorTexture(_color.R, _color.G, _color.B, 1)
	ChangeSettings()
end

--[[
	Shows the color picker dialog.
]]
local function ShowColorPicker()
	ColorPickerFrame:SetColorRGB( _color.R, _color.G, _color.B );
	ColorPickerFrame.hasOpacity = false
	ColorPickerFrame.func = ColorSelected
	ColorPickerFrame.cancelFunc = ColorPickerCanceled
	ColorPickerFrame:Show();
end

--color button that shows color picker dialog
_colorButton = CreateFrame("Button", nil, settingsFrame)
_colorButton.texture = _colorButton:CreateTexture(nil, "HIGH")
_colorButton.texture:SetAllPoints()
_colorButton:SetSize(14, 14)
_colorButton:SetPoint("TOPLEFT", settingsFrame, 94, -253)
_colorButton:SetBackdrop({ 
	bgFile = "Interface/ChatFrame/ChatFrameColorSwatch", 
	insets = { left = -5, right = -5, top = -5, bottom = -5 }
});
_colorButton:SetScript("OnClick", ShowColorPicker)
CreateFontString(_colorButton, -82, -2, "Color:")

--[[
	Update both the selected totem values and the ComboBoxes' displayed values.
]]
local function UpdateSelectedTotems(comboBox, newValue)
	--set new display value
	UIDropDownMenu_SetText(comboBox, Elements[newValue.value])

	--get old value and then set new selected value
	local oldValue = TotemComboBoxes[comboBox].SelectedValue
	TotemComboBoxes[comboBox].SelectedValue = newValue.value
	
	--this logic will help "switch" the values of 2 combo boxes
	for _, box in ipairs(TotemComboBoxesByIndex) 
	do
		if (box ~= comboBox and TotemComboBoxes[box].SelectedValue == newValue.value)
		then
			--set our old value as selected for the other combo box that still contains our new value
			TotemComboBoxes[box].SelectedValue = oldValue
			UIDropDownMenu_SetText(box, Elements[oldValue])
		end
	end
	
	--update
	CloseDropDownMenus()
	ChangeSettings()
end

local function Totem1Selected(newValue) UpdateSelectedTotems(TotemComboBoxesByIndex[1], newValue) end
local function Totem2Selected(newValue) UpdateSelectedTotems(TotemComboBoxesByIndex[2], newValue) end
local function Totem3Selected(newValue) UpdateSelectedTotems(TotemComboBoxesByIndex[3], newValue) end
local function Totem4Selected(newValue) UpdateSelectedTotems(TotemComboBoxesByIndex[4], newValue) end

--[[
	Shows the totem drop down menu with all the different totem choices when combo box is clicked.
]]
local function ShowTotemsDropDownMenu(comboBox)
	local comboBoxData = TotemComboBoxes[comboBox]
	
	for key, value in ipairs(Elements) 
	do
		local item = 
		{ 
			text = value, 
			value = key, 
			checked = (key == comboBoxData.SelectedValue),
			func = comboBoxData.OnChange
		}
		UIDropDownMenu_AddButton(item)
	end
end

local function CreateTotemComboBox(y)
	local comboBox = CreateFrame("Frame", nil, settingsFrame, "UIDropDownMenuTemplate")
	comboBox:SetPoint("TOPLEFT", settingsFrame, 275, y)
	UIDropDownMenu_SetWidth(comboBox, 60)
	UIDropDownMenu_SetText(comboBox, "Earth")
	
	return comboBox
end

--totem combo boxes
CreateFontString(settingsFrame, 210, -133, "Totem Order:")
TotemComboBoxesByIndex = 
{
	[1] = CreateTotemComboBox(-125),
	[2] = CreateTotemComboBox(-155),
	[3] = CreateTotemComboBox(-185),
	[4] = CreateTotemComboBox(-215)
}
TotemComboBoxes =
{
	[TotemComboBoxesByIndex[1]] = { OnChange = Totem1Selected, SelectedValue = 1 },
	[TotemComboBoxesByIndex[2]] = { OnChange = Totem2Selected, SelectedValue = 2 },
	[TotemComboBoxesByIndex[3]] = { OnChange = Totem3Selected, SelectedValue = 3 },
	[TotemComboBoxesByIndex[4]] = { OnChange = Totem4Selected, SelectedValue = 4 }
}
for comboBox, _ in pairs(TotemComboBoxes) 
do
	UIDropDownMenu_Initialize(comboBox, ShowTotemsDropDownMenu)
end

--[[
	"Close" button clicked. Clear selected settings and hide dialog.
]]
local function CloseDialog()
	_selectedSettings = nil
	settingsFrame:Hide()
end

--[[
	"Okay" button clicked. Save settings and hide settings dialog.
]]
local function OkayButtonClicked()
	if (_selectedSettings ~= nil) then SaveSettings(_selectedSettings) end	
	CloseDialog()
end

--Okay button
local okayButton = CreateFrame("Button", nil, settingsFrame, "UIPanelButtonTemplate")
okayButton:SetSize(80, 22)
okayButton:SetText("Okay")
okayButton:SetPoint("BOTTOMRIGHT", settingsFrame, -88, 12)
okayButton:SetScript("OnClick", OkayButtonClicked)

--[[
	"Cancel" button clicked. Revert to saved settings by reloading them and close settings dialog.
]]
local function CancelButtonClicked()
	CloseDialog()
	TS.Settings.LoadSettings()
end

--reset settings and UI location at "/totemstatus reset" command
SLASH_TotemStatusSettingsReset1 = "/totemstatus"
function SlashCmdList.TotemStatusSettingsReset(cmdArg)
	if (cmdArg == "reset")
	then
		SaveSettings(DefaultSettings)
		TS.Settings.LoadSettings()
		
		TS.Settings.SaveUILocation(nil, nil)
		TS.UI.SetLocation(TS_Settings.MainFrameX, TS_Settings.MainFrameY)
		CloseDialog()
	end
end

--Cancel button
local cancelButton = CreateFrame("Button", nil, settingsFrame, "UIPanelButtonTemplate")
cancelButton:SetSize(80, 22)
cancelButton:SetText("Cancel")
cancelButton:SetPoint("BOTTOMRIGHT", settingsFrame, -8, 12)
cancelButton:SetScript("OnClick", CancelButtonClicked)

local function GetTotemForSlot(settings, index)
	if (settings.TotemOrder == nil) then return index end
	
	if (index == 1) then return settings.TotemOrder.Totem1 or 1 end
	if (index == 2) then return settings.TotemOrder.Totem2 or 2 end
	if (index == 3) then return settings.TotemOrder.Totem3 or 3 end
	if (index == 4) then return settings.TotemOrder.Totem4 or 4 end
end

--[[
	Load the values from the provided settings and show them in the dialog's UI.
]]
local function InitSettings(settings)
	_initializing = true
	_showOuterFrame:SetChecked(settings.ShowOuterFrame)
	_showTotemFrames:SetChecked(settings.ShowTotemFrames)
	_showTooltip:SetChecked(settings.ShowTooltip)
	_showTotemSuggestions:SetChecked(settings.ShowTotemSuggestions)
	_showTotemExpiryAlarm:SetChecked(settings.ShowTotemExpiryAlarm)
	_totemExpirySound:SetChecked(settings.TotemExpirySound)
	_totemDestroyedSound:SetChecked(settings.TotemDestroyedSound)
	
	_font = settings.Font
	UIDropDownMenu_SetText(_fontComboBox, StandardFonts[_font])
	
	_fontSize:SetValue(settings.FontSize)
	_uiScale:SetValue(settings.UIScale)
	_transparency:SetValue(1 - settings.Transparency)
	
	_color = settings.Color
	_colorButton.texture:SetColorTexture(_color.R, _color.G, _color.B, 1)
	
	for i, comboBox in ipairs(TotemComboBoxesByIndex)
	do
		local totem = GetTotemForSlot(settings, i)
		TotemComboBoxes[comboBox].SelectedValue = totem
		UIDropDownMenu_SetText(comboBox, Elements[totem])
	end
	
	_initializing = false
end

--[[
	Show the settings dialog.
]]
function TS.Settings.ShowSettingsDialog()
	if (settingsFrame:IsVisible()) then return end
	
	InitSettings(TS_Settings)
	settingsFrame:Show()
end