local L = LibStub("AceLocale-3.0"):NewLocale("NameplateAuras", "zhTW");
L = L or {}
--@non-debug@
L["< 1min"] = "< 1分鐘"
L["< 5sec"] = "< 5秒"
L["> 1min"] = "> 1分鐘"
L["Add new spell: "] = "添加法術（名字）："
L["Add spell"] = "添加法術"
L["All auras"] = "所有光環"
L["Always display icons at full opacity (ReloadUI is required)"] = "總是 以不透明方式顯示圖示 (需/reload)"
L["Always show auras cast by myself"] = "總是 顯示自己施放的光環"
L["Anchor point"] = "錨點"
L["Anchor to icon"] = "在圖示上的錨點"
L["Any"] = "任意"
L["Aura type"] = "光環類型"
L["Border thickness"] = "邊框厚度"
L["BOTTOM"] = "底部"
L["BOTTOMLEFT"] = "底部左邊"
L["BOTTOMRIGHT"] = "底部右邊"
--[[Translation missing --]]
L["Buff"] = "Buff"
L["By aura type (de/buff) + expire time"] = "以光環類型（減／增益）＋過期時間"
L["By expire time, ascending"] = "以過期時間，升序"
L["By expire time, descending"] = "以過期時間，降序"
L["By icon size, ascending"] = "以圖示大小，升序"
L["By icon size, descending"] = "以圖示大小，降序"
--[[Translation missing --]]
L["CENTER"] = "Center"
--[[Translation missing --]]
L["Check spell ID"] = [=[Check spell IDs
(comma-separated)]=]
--[[Translation missing --]]
L["Circular"] = "Circular"
--[[Translation missing --]]
L["Circular with OmniCC support"] = "Circular with OmniCC support"
--[[Translation missing --]]
L["Circular with timer"] = "Circular with timer"
--[[Translation missing --]]
L["Click to select spell"] = "Click to select spell"
L["Curse"] = "詛咒"
--[[Translation missing --]]
L["Debuff"] = "Debuff"
L["Default icon size"] = "默認的圖示大小"
--[[Translation missing --]]
L["Delete all spells"] = "Delete all spells"
--[[Translation missing --]]
L["Delete spell"] = "Delete spell"
--[[Translation missing --]]
L["Disabled"] = "Disabled"
L["Disease"] = "疾病"
L["Display auras on nameplates of friendly units"] = "在友方單位的名條上顯示光環 "
L["Display auras on player's nameplate"] = "在玩家自己的名條上顯示光環 "
--[[Translation missing --]]
L["Display tenths of seconds"] = "Display tenths of seconds"
--[[Translation missing --]]
L["Do you really want to delete ALL spells?"] = "Do you really want to delete ALL spells?"
L["Font"] = "字型"
L["Font scale"] = "字體縮放"
L["Font size"] = "字體大小"
L["Frame anchor:"] = "框架錨點"
L["General"] = "一般"
L["Icon anchor:"] = "圖示錨點"
L["Icon borders"] = "圖示邊框"
L["Icon size"] = "圖示大小"
L["Icon X-coord offset"] = "圖示的水平位移"
L["Icon Y-coord offset"] = "圖示的垂直位移"
--[[Translation missing --]]
L["LEFT"] = "Left"
L["Magic"] = "魔法"
--[[Translation missing --]]
L["Mode"] = "Mode"
--[[Translation missing --]]
L["No"] = "No"
--[[Translation missing --]]
L["None"] = "None"
--[[Translation missing --]]
L["Only my auras"] = "Only my auras"
--[[Translation missing --]]
L["Open profiles dialog"] = "Open profiles dialog"
--[[Translation missing --]]
L["Options are not available in combat!"] = "Options are not available in combat!"
--[[Translation missing --]]
L["options:apps:explosive-orbs:tooltip"] = [=[Show special aura above Fel Explosive's nameplates (M+ Explosive Affix)
This aura have a bright glow and default size]=]
--[[Translation missing --]]
L["options:apps:raid-zul"] = [=[Highlight annoying mobs during '%s'
raid encounter]=]
--[[Translation missing --]]
L["options:apps:raid-zul:tooltip"] = "Special icon will be above nameplates of '%s' and '%s'"
--[[Translation missing --]]
L["options:aura-options:allow-multiple-instances"] = "Allow multiple instances of this aura"
--[[Translation missing --]]
L["options:aura-options:allow-multiple-instances:tooltip"] = [=[If this option is checked, you will see all instances of this aura, even on the same nameplate.
Otherwise you will see only one instance of this aura (the longest one)]=]
--[[Translation missing --]]
L["options:auras:add-new-spell:error1"] = [=[You should enter spell name instead of spell id.
Use "%s" option if you want to track spell with specific id]=]
--[[Translation missing --]]
L["options:auras:enabled-state:tooltip"] = [=[Enables/disables aura

%s: aura will not be shown
%s: aura will be shown if you've cast it
%s: show all auras]=]
--[[Translation missing --]]
L["options:auras:enabled-state-all"] = "Enabled, show all auras"
--[[Translation missing --]]
L["options:auras:enabled-state-mineonly"] = "Enabled, show only my auras"
--[[Translation missing --]]
L["options:auras:pvp-state-dontshowinpvp"] = "Don't show this aura during PvP combat"
--[[Translation missing --]]
L["options:auras:pvp-state-indefinite"] = "Show this aura during PvP combat"
--[[Translation missing --]]
L["options:auras:pvp-state-onlyduringpvpbattles"] = "Show this aura during PvP combat only"
--[[Translation missing --]]
L["options:category:apps"] = "Apps"
--[[Translation missing --]]
L["options:category:interrupts"] = "Interrupts"
--[[Translation missing --]]
L["options:general:always-show-my-auras:tooltip"] = [=[This is top priority filter. If you enable this feature,
your auras will be shown regardless of other filters]=]
--[[Translation missing --]]
L["options:general:error-omnicc-is-not-loaded"] = "You cannot select this option because OmniCC is not loaded!"
L["options:general:hide-blizz-frames"] = "隱藏暴雪內置名條光環 (需要 /reload)"
--[[Translation missing --]]
L["options:general:hide-player-blizz-frame"] = "Hide Blizzard's aura frames on player"
--[[Translation missing --]]
L["options:general:show-aura-tooltip"] = "Show aura name when mouse is over auras icon"
--[[Translation missing --]]
L["options:general:use-dim-glow"] = "Weak glow of icons"
--[[Translation missing --]]
L["options:general:use-dim-glow:tooltip"] = [=[If this option is selected you will not see constant inner and outer glow of the icons
(this option is valid only for those spells for which you explicitly turned on the glow of icons)]=]
--[[Translation missing --]]
L["options:interrupts:enable-interrupts"] = "Enable interrupt tracking"
--[[Translation missing --]]
L["options:interrupts:enable-only-during-pvp-battles"] = "Enable during PvP battles only"
--[[Translation missing --]]
L["options:interrupts:glow"] = "Icon glow"
--[[Translation missing --]]
L["options:interrupts:icon-size"] = "Icon size"
--[[Translation missing --]]
L["options:interrupts:use-shared-icon-texture"] = "Use the same texture for all interrupt spells"
--[[Translation missing --]]
L["options:selector:search"] = "Search:"
--[[Translation missing --]]
L["options:spells:appropriate-spell-ids"] = "Appropriate spell IDs:"
--[[Translation missing --]]
L["options:spells:disable-all-spells"] = "Disable all spells"
--[[Translation missing --]]
L["options:spells:enable-all-spells"] = "Enable all spells"
--[[Translation missing --]]
L["options:spells:icon-glow"] = "Show glow"
--[[Translation missing --]]
L["options:spells:icon-glow-always"] = "Show glow all the time"
--[[Translation missing --]]
L["options:spells:icon-glow-threshold"] = "Show glow if aura's remaining time is less than"
--[[Translation missing --]]
L["options:spells:please-push-once-more"] = "Please push once more"
--[[Translation missing --]]
L["options:spells:show-on-friends:warning0"] = [=[Please pay attention:
You will not see this aura on friendly nameplates until you enable this option: <General> --> <Display auras on nameplates of friendly units>]=]
--[[Translation missing --]]
L["options:timer-text:min-duration-to-display-tenths-of-seconds"] = "Minimum duration to display tenths of seconds"
--[[Translation missing --]]
L["options:timer-text:scale-font-size"] = [=[Scale font size
according to
icon size]=]
--[[Translation missing --]]
L["options:timer-text:text-color-note"] = [=[Text colour will change
depending on the time remaining:]=]
L["Other"] = "其他"
--[[Translation missing --]]
L["Please reload UI to apply changes"] = "Please reload UI to apply changes"
L["Poison"] = "中毒"
L["Profiles"] = "設定檔"
--[[Translation missing --]]
L["Reload UI"] = "Reload UI"
--[[Translation missing --]]
L["RIGHT"] = "Right"
L["Show border around buff icons"] = "在 增益光環周圍 顯示邊框"
L["Show border around debuff icons"] = "在 減益光環周圍 顯示邊框"
--[[Translation missing --]]
L["Show this aura on nameplates of allies"] = "Show this aura on nameplates of allies"
--[[Translation missing --]]
L["Show this aura on nameplates of enemies"] = "Show this aura on nameplates of enemies"
L["Sort mode:"] = "排列模式:"
L["Space between icons"] = "圖示間的間隔"
--[[Translation missing --]]
L["Spell already exists (%s)"] = "Spell already exists (%s)"
L["Spell seems to be nonexistent"] = "法術似乎不存在"
L["Spells"] = "法術"
L["Stack text"] = "堆疊文字"
L["Text"] = "文字"
L["Text color"] = "文字顏色"
--[[Translation missing --]]
L["Texture with timer"] = "Texture with timer"
L["Timer style:"] = "計時器風格:"
L["Timer text"] = "計時器文字"
--[[Translation missing --]]
L["TOP"] = "Top"
--[[Translation missing --]]
L["TOPLEFT"] = "Top left"
--[[Translation missing --]]
L["TOPRIGHT"] = "Top right"
--[[Translation missing --]]
L["Unknown spell: %s"] = "Unknown spell: %s"
--[[Translation missing --]]
L["Value must be a number"] = "Value must be a number"
--[[Translation missing --]]
L["X offset"] = "X offset"
--[[Translation missing --]]
L["Y offset"] = "Y offset"
--[[Translation missing --]]
L["Yes"] = "Yes"

--@end-non-debug@
