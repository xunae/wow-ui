local addonName = ...

f = CreateFrame('Frame', addonName, UIParent);
f.name = addonName;

f:SetScript('OnShow', function(frame)
  local settings = {{
      label       = 'Elite frame',
      description = 'Show elite frame around the player frame',
      dbKey       = 'eliteFrame',
      reloadUi    = false,
    }, {
      label       = 'Dark frames',
      description = 'Make unit frames, player frame and minimap more darker',
      dbKey       = 'darkFrames',
      reloadUi    = false,
    }, {
      label       = 'Class colored frames',
      description = 'Color the unit frames by class',
      dbKey       = 'classColorFrames',
      reloadUi    = false,
    }, {
      label       = 'Class icon portraits',
      description = 'Show class portraits in unit frames',
      dbKey       = 'classIconPortraits',
      reloadUi    = true,
    }, {
      label       = 'Custom health and mana',
      description = 'Show custom health and mana in unit frames',
      dbKey       = 'customHealthMana',
      reloadUi    = true,
    }, {
      label       = 'Bottom raid frame',
      description = 'Show yourself on the bottom of the raid frames',
      dbKey       = 'bottomRaidFrame',
      reloadUi    = true,
    }, {
      label       = 'Hide gryphons',
      description = 'Hide action bar gryphons',
      dbKey       = 'hideGryphons',
      reloadUi    = false,
    }, {
      label       = 'Out of range icons',
      description = 'Color the whole action bar icon when out of range or out of mana',
      dbKey       = 'outOfRangeIcons',
      reloadUi    = true,
    }, {
      label       = 'Hide binds',
      description = 'Hide action bar binds',
      dbKey       = 'hideBinds',
      reloadUi    = false,
    }, {
      label       = 'Hide macros',
      description = 'Hide action bar macros',
      dbKey       = 'hideMacros',
      reloadUi    = false,
    }, {
      label       = 'Fix mana color',
      description = 'Makes mana not so blue',
      dbKey       = 'manaColor',
      reloadUi    = true,
    }, {
      label       = 'Fix shaman color',
      description = 'Makes shaman blue again',
      dbKey       = 'shamanColor',
      reloadUi    = true,
    }
  }

  local reloadUi = CreateFrame('Button', 'XunaTweaksReloadUI', frame, 'UIPanelButtonTemplate')
	reloadUi:SetText('Reload UI')
	reloadUi:SetWidth(177)
	reloadUi:SetHeight(24)
	reloadUi:SetPoint('TOPRIGHT', -16, -16)
	reloadUi:SetScript('OnClick', function() ReloadUI() end)
  reloadUi:Disable()

  local function createCheckbox(label, description, dbKey, needReload)
    if needReload then
      label = '* ' .. label
    end

    local f = CreateFrame('CheckButton', addonName .. label, frame, 'InterfaceOptionsCheckButtonTemplate')
    f.label = _G[f:GetName() .. 'Text']
    f.label:SetText(label)
    f.tooltipText = label
    f.tooltipRequirement = description

    f:SetScript('OnClick', function(self)
      XunaTweaksDB[dbKey] = self:GetChecked() and true or false
      if needReload then
        reloadUi:Enable()
      else
        XunaTweaks:Initialize()
      end
    end)

    return f
  end

  local title = frame:CreateFontString(nil, 'ARTWORK', 'GameFontNormalLarge')
	title:SetPoint('TOPLEFT', 16, -16)
  title:SetText(addonName)

  local description = frame:CreateFontString(nil, 'ARTWORK', 'GameFontNormalSmall')
	description:SetPoint('TOPLEFT', title, 'BOTTOMLEFT', 0, -16)
  description:SetText('* requires reload UI')

  local firstRowFrame = nil
  local latestFrame = nil

  for i, v in pairs(settings) do
    local f = createCheckbox(v.label, v.description, v.dbKey, v.reloadUi)
    f:SetChecked(XunaTweaksDB[v.dbKey])
    
    if i == 1 then
      f:SetPoint('TOPLEFT', description, 'BOTTOMLEFT', 0, -32)
      firstRowFrame = f
      latestFrame = f
    else
      if (i - 1) % 3 == 0 then
        f:SetPoint('TOPLEFT', firstRowFrame, 'BOTTOMLEFT', 0, -16)
        firstRowFrame = f
      else
        f:SetPoint('CENTER', latestFrame, 'RIGHT', 175, 0)
      end
      latestFrame = f
    end
  end

  local dfcDescription = frame:CreateFontString(nil, 'ARTWORK', 'GameFontNormalSmall')
	dfcDescription:SetPoint('TOPLEFT', firstRowFrame, 'BOTTOMLEFT', 0, -32)
  dfcDescription:SetText('Dark frame color')

  local dfcSlider = CreateFrame('Slider', 'XunaTweaksDFCSLider', frame, 'OptionsSliderTemplate')
  dfcSlider:SetPoint('TOPLEFT', dfcDescription, 'BOTTOMLEFT', 0, -8)
  dfcSlider.textLow = _G['XunaTweaksDFCSLider'..'Low']
  dfcSlider.textHigh = _G['XunaTweaksDFCSLider'..'High']
  dfcSlider:SetMinMaxValues(0, 1)
  dfcSlider.minValue, dfcSlider.maxValue = dfcSlider:GetMinMaxValues() 
  dfcSlider.textLow:SetText('Darkest')
  dfcSlider.textHigh:SetText('Lightest')
  dfcSlider:SetValue(XunaTweaksDB.dfc)
  dfcSlider:SetValueStep(0.01)
  dfcSlider:SetScript('OnValueChanged', function(self, value)
    XunaTweaksDB.dfc = value
    XunaTweaks:Initialize()
  end)

  frame:SetScript('OnShow', nil)
end)

InterfaceOptions_AddCategory(f);
