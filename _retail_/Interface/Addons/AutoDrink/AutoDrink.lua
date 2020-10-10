
-- AutoDrink by Jordon

local AutoDrink = CreateFrame("Button", "AutoDrink", UIParent, "SecureActionButtonTemplate")
AutoDrink:SetScript("OnEvent", function(self, event, ...) self[event](self, ...) end)
AutoDrink:SetAttribute("type", "macro");
AutoDrink:SetAttribute("macrotext", "/run AutoDrink:Update()");
local AutoDrinks = {}
local AURAS = {Drink = true, Food = true, Refreshment = true}

local ICONS = {
  -- Drink
  [132792] = true,
  [132794] = true,
  [132796] = true,
  [132803] = true,
  [132805] = true,
  [132812] = true,
  [134062] = true,
  -- Food
  [133906] = true,
  [133907] = true,
  [133984] = true,
  [134032] = true,
  [134062] = true,
  [135457] = true,
  [135458] = true,
  [135459] = true,
  [135460] = true,
  [236570] = true,
  [237302] = true,
  -- Refreshment
  [134062] = true,
  [237043] = true,
}


AutoDrink:RegisterEvent("PLAYER_ENTERING_WORLD")
function AutoDrink:PLAYER_ENTERING_WORLD()
  -- Refresh macro icon
  if not IsAddOnLoaded("Blizzard_MacroUI") then
    LoadAddOn("Blizzard_MacroUI")
  end
  hooksecurefunc("MacroFrame_SaveMacro", function() AutoDrink:Fetch() AutoDrink:BAG_UPDATE() end)
	if GetMacroIndexByName("AutoDrink") == 0 then
		-- Max 36 macros per account
		if GetNumMacros() == 36 then
			DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99AutoDrink|r: |cffff0000WARNING|r: Unable to create macro. Please free up a macro slot and reload your UI.")
			return
		end
		CreateMacro("AutoDrink", "INV_MISC_QUESTIONMARK", "#showtooltip\n/AutoDrink Conjured Mana Fritter, Conjured Mana Pudding, Ley-Enriched Water, Highmountain Spring Water\n/click AutoDrink", nil)
	end
	self:Fetch()
end

function AutoDrink:Fetch()
	-- Try to fetch the list from the macro
	local list = select(3, GetMacroInfo("AutoDrink"))
	if not list then return end
	list = string.match(list, "/AutoDrink (.-)\n")
	if list then
		SlashCmdList.AutoDrink(list)
	end
end

SLASH_AutoDrink1 = "/AutoDrink"
function SlashCmdList.AutoDrink(list)
	AutoDrinks = {}
	for drink in string.gmatch(list, '[^,]+') do
		drink = drink:gsub("^%s*(.-)%s*$", "%1")
	    table.insert(AutoDrinks, drink)
	end
	AutoDrink:BAG_UPDATE()
end

function AutoDrink:HasDrinkAura()
  for i = 1, 40 do
    local aura, icon = UnitAura("player", i)
    if not aura or not icon then
      return false
    elseif AURAS[aura] or ICONS[icon] then
      return true
    end
  end
  return false
end

function AutoDrink:Update()
	if UnitAffectingCombat("player") or not self.drink then return end
	if AutoDrink:HasDrinkAura() then
		self:SetAttribute("macrotext", "/run AutoDrink:Update()");
	else
		self:SetAttribute("macrotext", "/run AutoDrink:Update()\n/use " .. self.drink);
	end
end

AutoDrink:RegisterEvent("BAG_UPDATE")
function AutoDrink:BAG_UPDATE()
	for i=1, #AutoDrinks do
		if GetItemCount(AutoDrinks[i]) > 0 then
			self.drink = AutoDrinks[i]
			if not UnitAffectingCombat("player") then
				SetMacroItem("AutoDrink", AutoDrinks[i])
				self:Update()
			end
			break
		end
	end
end

