local L = LibStub("AceLocale-3.0"):NewLocale("NameplateAuras", "ptBR");
L = L or {}
--@non-debug@
L["< 1min"] = "< 1min"
L["< 5sec"] = "< 5 seg"
L["> 1min"] = "> 1 min"
L["Add new spell: "] = "Adicionar nova magia:"
L["Add spell"] = "Adicionar magia"
L["All auras"] = "Todas as auras"
L["Always display icons at full opacity (ReloadUI is required)"] = "Sempre mostrar ícones sem transparência (requer recarregamento de interface)"
L["Always show auras cast by myself"] = "Sempre mostrar auras lançadas por mim"
L["Anchor point"] = "Ponto de ancoragem"
--[[Translation missing --]]
L["Anchor to icon"] = "Anchor to icon"
--[[Translation missing --]]
L["Any"] = "Any"
L["Aura type"] = "Tipo de aura"
--[[Translation missing --]]
L["Border thickness"] = "Border thickness"
L["BOTTOM"] = "Inferior"
L["BOTTOMLEFT"] = "Inferior esquerdo"
L["BOTTOMRIGHT"] = "Inferior direito"
L["Buff"] = "Buff"
L["By aura type (de/buff) + expire time"] = "Por tipo de aura (de/buff) + tempo para expirar"
L["By expire time, ascending"] = "Por tempo para expirar, crescente"
L["By expire time, descending"] = "Por tempo para expirar, decrescente"
L["By icon size, ascending"] = "Por tamanho de ícone, crescente"
L["By icon size, descending"] = "Por tamanho de ícone, decrescente"
L["CENTER"] = "Centro"
L["Check spell ID"] = "Checar ID de habilidade"
L["Circular"] = "Circular"
L["Circular with OmniCC support"] = "Circular com suporte à OmniCC"
L["Circular with timer"] = "Circular com temporizador"
L["Click to select spell"] = "Clique para selecionar a magia"
L["Curse"] = "Maldição"
L["Debuff"] = "Debuff"
L["Default icon size"] = "Tamanho de ícone padrão"
L["Delete all spells"] = "Deletar todas as magias"
L["Delete spell"] = "Deletar magia"
L["Disabled"] = "Desabilitado"
L["Disease"] = "Doença"
--[[Translation missing --]]
L["Display auras on nameplates of friendly units"] = "Display auras on nameplates of friendly units"
--[[Translation missing --]]
L["Display auras on player's nameplate"] = "Display auras on player's nameplate"
--[[Translation missing --]]
L["Display tenths of seconds"] = "Display tenths of seconds"
L["Do you really want to delete ALL spells?"] = "Você realmente quer deletar TODAS as magias?"
L["Font"] = "Fonte"
L["Font scale"] = "Escala da fonte"
L["Font size"] = "Tamanho da fonte"
--[[Translation missing --]]
L["Frame anchor:"] = "Frame anchor:"
L["General"] = "Geral"
L["Icon anchor:"] = "Âncora do ícone: "
L["Icon borders"] = "Bordas do ícone"
L["Icon size"] = "Tamanho do ícone"
L["Icon X-coord offset"] = "Descolamento da coordenada X do ícone"
L["Icon Y-coord offset"] = "Descolamento da coordenada Y do ícone"
L["LEFT"] = "Esquerda"
L["Magic"] = "Mágico"
L["Mode"] = "Modo"
L["No"] = "Não"
L["None"] = "Nenhum"
L["Only my auras"] = "Somente as minhas auras"
L["Open profiles dialog"] = "Abrir diálogo de perfis"
L["Options are not available in combat!"] = "Opções não estão disponíveis durante combate!"
L["options:apps:explosive-orbs:tooltip"] = "Mostrar aura especial em cima das placas de Explosivos(M+ Explosivo). Essa aura possui um brilho leve e tamanho padrão"
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
L["options:general:hide-blizz-frames"] = "Esconder os frames de auras da Blizzard (recarregar a interface é necessário)"
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
--[[Translation missing --]]
L["Other"] = "Other"
--[[Translation missing --]]
L["Please reload UI to apply changes"] = "Please reload UI to apply changes"
--[[Translation missing --]]
L["Poison"] = "Poison"
--[[Translation missing --]]
L["Profiles"] = "Profiles"
--[[Translation missing --]]
L["Reload UI"] = "Reload UI"
--[[Translation missing --]]
L["RIGHT"] = "Right"
--[[Translation missing --]]
L["Show border around buff icons"] = "Show border around buff icons"
--[[Translation missing --]]
L["Show border around debuff icons"] = "Show border around debuff icons"
--[[Translation missing --]]
L["Show this aura on nameplates of allies"] = "Show this aura on nameplates of allies"
--[[Translation missing --]]
L["Show this aura on nameplates of enemies"] = "Show this aura on nameplates of enemies"
--[[Translation missing --]]
L["Sort mode:"] = "Sort mode:"
--[[Translation missing --]]
L["Space between icons"] = "Space between icons"
--[[Translation missing --]]
L["Spell already exists (%s)"] = "Spell already exists (%s)"
--[[Translation missing --]]
L["Spell seems to be nonexistent"] = "Spell seems to be nonexistent"
--[[Translation missing --]]
L["Spells"] = "Spells"
--[[Translation missing --]]
L["Stack text"] = "Stack text"
--[[Translation missing --]]
L["Text"] = "Text"
--[[Translation missing --]]
L["Text color"] = "Text color"
--[[Translation missing --]]
L["Texture with timer"] = "Texture with timer"
--[[Translation missing --]]
L["Timer style:"] = "Timer style:"
L["Timer text"] = "Texto do temporizador"
L["TOP"] = "Superior"
L["TOPLEFT"] = "Superior esquerdo"
L["TOPRIGHT"] = "Superior direito"
L["Unknown spell: %s"] = "Magia desconhecida: %s"
L["Value must be a number"] = "O valor DEVE ser um número"
L["X offset"] = "Deslocamento X"
L["Y offset"] = "Deslocamento Y"
L["Yes"] = "Sim"

--@end-non-debug@
