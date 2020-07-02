
REAGENTBANKER_STRINGS = {

	AUTODEPOSIT = "Automatically deposit reagents when bank window opens";
	REAGENT_TAB_DEFAULT = "Open to reagent tab by default";

	ALT = "ALT";
	CTRL = "CTRL";
	SHIFT = "SHIFT";
	KEY = "%s key";

	DEPOSIT_MODIFIERKEY_LABEL_DONOT = "Do Not Deposit Key";
	DEPOSIT_MODIFIERKEY_LABEL_DO = "Immediate Deposit Key";
	DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DONOT = "Hold the \"%s\" key while opening the bank in order to NOT deposit reagents.|n|nUncheck the above option to reverse this behavior.";
	DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DO = "Hold the \"%s\" key while opening the bank in order to immediately deposit reagents.|n|nCheck the above option to reverse this behavior.";

	TAB_MODIFIERKEY_LABEL_DONOT = "Do Not Open to Reagent Tab Key";
	TAB_MODIFIERKEY_LABEL_DO = "Open to Reagent Tab Key";
	TAB_MODIFIERKEY_TOOLTIP_KEY_DONOT = "Hold the \"%s\" key while opening the bank in order to NOT open to the reagent tab.|n|nUncheck the above option to reverse this behavior.";
	TAB_MODIFIERKEY_TOOLTIP_KEY_DO = "Hold the \"%s\" key while opening the bank in order to open to the reagent tab.|n|nCheck the above option to reverse this behavior.";

	MODIFIERKEY_NONE = "None";
	MODIFIERKEY_NONE_TOOLTIP = "Do not apply a key.";

	DEPOSIT_IGNORED_LABEL = "Deposit Reagents From Bags Ignored by Cleanup (Sorting)";
	DEPOSIT_IGNORED_AUTO = "When there is an automatic deposit";
	DEPOSIT_IGNORED_AUTO_TIP = "Normally, bags flagged as Ignored for WoW's \"Clean Up Bags\" feature are also ignored by the \"Deposit All Reagents\" feature.|n|nCheck this to bypass that restriction when Reagent Banker automatically deposits reagents.";
	DEPOSIT_IGNORED_BUTTON = "When the \"Deposit All Reagents\" button is pressed";
	DEPOSIT_IGNORED_BUTTON_TIP = "Normally, bags flagged as Ignored for WoW's \"Clean Up Bags\" feature are also ignored by the \"Deposit All Reagents\" feature.|n|nCheck this to bypass that restriction when the deposit button on the reagent bank window is pressed.";

	CHATLOG_SHOW_DEPOSITED = "Output deposited items to the chat log";

	-- "Deposited: [Huge Emerald]x5, [Black Diamond], [Gold Bar]x7"
	CHATLOG_DEPOSITED = "Deposited: %s";
	CHATLOG_DEPOSITED_COUNT = "%sx%d";
	CHATLOG_DEPOSITED_SEP = ",";

}

local L, locale = REAGENTBANKER_STRINGS, GetLocale()

if (locale == "deDE") then  -- German
--[[Translation missing --]]
--[[ L["ALT"] = ""--]] 
--[[Translation missing --]]
--[[ L["AUTODEPOSIT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_COUNT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_SEP"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_SHOW_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CTRL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_LABEL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["KEY"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE_TOOLTIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["REAGENT_TAB_DEFAULT"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHIFT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 


elseif (locale == "frFR") then  -- French
--[[Translation missing --]]
--[[ L["ALT"] = ""--]] 
--[[Translation missing --]]
--[[ L["AUTODEPOSIT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_COUNT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_SEP"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_SHOW_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CTRL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_LABEL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["KEY"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE_TOOLTIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["REAGENT_TAB_DEFAULT"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHIFT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 


elseif (locale == "zhTW") then  -- Traditional Chinese
--[[Translation missing --]]
--[[ L["ALT"] = ""--]] 
--[[Translation missing --]]
--[[ L["AUTODEPOSIT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_COUNT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_SEP"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_SHOW_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CTRL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_LABEL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["KEY"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE_TOOLTIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["REAGENT_TAB_DEFAULT"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHIFT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 


elseif (locale == "zhCN") then  -- Simplified Chinese
L["ALT"] = "Alt"
L["AUTODEPOSIT"] = "打开银行时自动将材料存放到材料银行."
L["CHATLOG_DEPOSITED"] = "存放: %s"
L["CHATLOG_DEPOSITED_COUNT"] = "%sx%d"
L["CHATLOG_DEPOSITED_SEP"] = ","
L["CHATLOG_SHOW_DEPOSITED"] = "在聊天框显示存放物品提示."
L["CTRL"] = "Ctrl"
L["DEPOSIT_IGNORED_AUTO"] = "当自动存放时"
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_LABEL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DO"] = ""--]] 
L["DEPOSIT_MODIFIERKEY_LABEL_DONOT"] = "不自动存放按键"
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 
L["KEY"] = "%s 键"
L["MODIFIERKEY_NONE"] = "无"
L["MODIFIERKEY_NONE_TOOLTIP"] = "不设置按键"
L["REAGENT_TAB_DEFAULT"] = "默认开启材料银行"
L["SHIFT"] = "Shift"
L["TAB_MODIFIERKEY_LABEL_DO"] = "非默认开启材料银行界面按键"
L["TAB_MODIFIERKEY_LABEL_DONOT"] = "不开启材料银行按键"
L["TAB_MODIFIERKEY_TOOLTIP_KEY_DO"] = "打开银行时按下\"%s\" 打开材料银行界面.|n|n仅当非默认打开材料银行时."
L["TAB_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = "打开银行时按下\"%s\" 将不打开材料银行.|n|n仅当默认开启材料银行时."


elseif (locale == "ruRU") then  -- Russian
--[[Translation missing --]]
--[[ L["ALT"] = ""--]] 
--[[Translation missing --]]
--[[ L["AUTODEPOSIT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_COUNT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_SEP"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_SHOW_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CTRL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_LABEL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["KEY"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE_TOOLTIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["REAGENT_TAB_DEFAULT"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHIFT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 


elseif (locale == "koKR") then  -- Korean
--[[Translation missing --]]
--[[ L["ALT"] = ""--]] 
--[[Translation missing --]]
--[[ L["AUTODEPOSIT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_COUNT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_SEP"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_SHOW_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CTRL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_LABEL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["KEY"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE_TOOLTIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["REAGENT_TAB_DEFAULT"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHIFT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 


elseif (locale == "esES" or locale == "esMX") then  -- Spanish
--[[Translation missing --]]
--[[ L["ALT"] = ""--]] 
--[[Translation missing --]]
--[[ L["AUTODEPOSIT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_COUNT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_SEP"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_SHOW_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CTRL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_LABEL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["KEY"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE_TOOLTIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["REAGENT_TAB_DEFAULT"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHIFT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 


	if (locale == "esMX") then  -- Spanish (Mexican)
--[[Translation missing --]]
--[[ L["ALT"] = ""--]] 
--[[Translation missing --]]
--[[ L["AUTODEPOSIT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_COUNT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_SEP"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_SHOW_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CTRL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_LABEL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["KEY"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE_TOOLTIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["REAGENT_TAB_DEFAULT"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHIFT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 

	end

elseif (locale == "ptBR") then  -- Brazilian Portuguese
--[[Translation missing --]]
--[[ L["ALT"] = ""--]] 
--[[Translation missing --]]
--[[ L["AUTODEPOSIT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_COUNT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_SEP"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_SHOW_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CTRL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_LABEL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["KEY"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE_TOOLTIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["REAGENT_TAB_DEFAULT"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHIFT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 


elseif (locale == "itIT") then  -- Italian
--[[Translation missing --]]
--[[ L["ALT"] = ""--]] 
--[[Translation missing --]]
--[[ L["AUTODEPOSIT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_COUNT"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_DEPOSITED_SEP"] = ""--]] 
--[[Translation missing --]]
--[[ L["CHATLOG_SHOW_DEPOSITED"] = ""--]] 
--[[Translation missing --]]
--[[ L["CTRL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_AUTO_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_BUTTON_TIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_IGNORED_LABEL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["DEPOSIT_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["KEY"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE"] = ""--]] 
--[[Translation missing --]]
--[[ L["MODIFIERKEY_NONE_TOOLTIP"] = ""--]] 
--[[Translation missing --]]
--[[ L["REAGENT_TAB_DEFAULT"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHIFT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_LABEL_DONOT"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DO"] = ""--]] 
--[[Translation missing --]]
--[[ L["TAB_MODIFIERKEY_TOOLTIP_KEY_DONOT"] = ""--]] 


end
