local L = LibStub("AceLocale-3.0"):NewLocale("NameplateAuras", "esES");
L = L or {}
--@non-debug@
L["< 1min"] = "< 1min"
L["< 5sec"] = "< 5seg"
L["> 1min"] = "> 1min"
L["Add new spell: "] = "Agregar nuevo hechizo:"
L["Add spell"] = "Agregar hechizo"
L["All auras"] = "Todas las auras"
L["Always show auras cast by myself"] = "Siempre mostrar auras lanzadas por mí"
L["Anchor point"] = "Punto de anclaje"
L["Anchor to icon"] = "Anclar al icono"
--[[Translation missing --]]
L["anchor-point:bottom"] = "Bottom"
--[[Translation missing --]]
L["anchor-point:bottomleft"] = "Bottom left"
--[[Translation missing --]]
L["anchor-point:bottomright"] = "Bottom right"
--[[Translation missing --]]
L["anchor-point:center"] = "Center"
--[[Translation missing --]]
L["anchor-point:left"] = "Left"
--[[Translation missing --]]
L["anchor-point:right"] = "Right"
--[[Translation missing --]]
L["anchor-point:top"] = "Top"
--[[Translation missing --]]
L["anchor-point:topleft"] = "Top left"
--[[Translation missing --]]
L["anchor-point:topright"] = "Top right"
L["Any"] = "Cualquiera"
L["Aura type"] = "Tipo de aura"
L["Border thickness"] = "Grosor del borde"
L["Buff"] = "Beneficio"
L["Check spell ID"] = [=[Comprobar ID de hechizo
(comma-separated)]=]
L["Click to select spell"] = "Haz click para elegir el hechizo"
L["Curse"] = "Maldición"
L["Debuff"] = "Perjuicio"
L["Default icon size"] = "Tamaño de icono por defecto"
L["Delete all spells"] = "Eliminar todos los hechizos"
L["Delete spell"] = "Eliminar hechizo"
L["Disabled"] = "Desactivado"
L["Disease"] = "Enfermedad"
L["Display auras on nameplates of friendly units"] = "Mostrar auras en los nombres de las unidades aliadas"
L["Display auras on player's nameplate"] = "Mostrar auras en el nombre del jugador"
L["Display tenths of seconds"] = "Mostrar décimas de segundo"
L["Do you really want to delete ALL spells?"] = "¿Seguro que quieres eliminar TODOS los hechizos?"
L["Font"] = "Fuente de letra"
L["Font scale"] = "Tamaño de la fuente"
L["Font size"] = "Tamaño de fuente"
--[[Translation missing --]]
L["Frame anchor:"] = "Frame anchor:"
L["General"] = "General"
--[[Translation missing --]]
L["Icon anchor:"] = "Icon anchor:"
L["Icon borders"] = "Bordes del icono"
L["Icon size"] = "Tamaño del icono"
--[[Translation missing --]]
L["Icon X-coord offset"] = "Icon X-coord offset"
--[[Translation missing --]]
L["Icon Y-coord offset"] = "Icon Y-coord offset"
--[[Translation missing --]]
L["icon-grow-direction:down"] = "Down"
--[[Translation missing --]]
L["icon-grow-direction:left"] = "Left"
--[[Translation missing --]]
L["icon-grow-direction:right"] = "Right"
--[[Translation missing --]]
L["icon-grow-direction:up"] = "Up"
--[[Translation missing --]]
L["icon-sort-mode:by-aura-type+by-expire-time"] = "By aura type + by expiration time"
--[[Translation missing --]]
L["icon-sort-mode:by-expire-time"] = "By expiration time"
--[[Translation missing --]]
L["icon-sort-mode:by-icon-size"] = "By icon size"
--[[Translation missing --]]
L["icon-sort-mode:none"] = "Without sorting"
L["Magic"] = "Magia"
--[[Translation missing --]]
L["Mode"] = "Mode"
L["No"] = "No"
L["Only my auras"] = "Solo mis auras"
--[[Translation missing --]]
L["Open profiles dialog"] = "Open profiles dialog"
L["Options are not available in combat!"] = "¡Las opciones no están disponibles en combate!"
--[[Translation missing --]]
L["options:alpha:alpha"] = "Alpha of the icons (except the nameplate of your target)"
--[[Translation missing --]]
L["options:alpha:alpha-target"] = "Alpha of the icons on the nameplate of your target"
--[[Translation missing --]]
L["options:animation-type:ICON_ANIMATION_TYPE_ALPHA"] = "Alpha"
--[[Translation missing --]]
L["options:animation-type:ICON_ANIMATION_TYPE_SCALE"] = "Scale"
--[[Translation missing --]]
L["options:apps:dispellable-spells"] = "Show dispellable/stealable auras on enemy nameplates"
--[[Translation missing --]]
L["options:apps:dispellable-spells:black-list-button"] = "Open blacklist"
--[[Translation missing --]]
L["options:apps:dispellable-spells:tooltip"] = [=[Show dispellable/stealable auras on nameplates of enemies
These auras have a dim glow and default size]=]
--[[Translation missing --]]
L["options:apps:explosive-orbs:tooltip"] = [=[Show special aura above Fel Explosive's nameplates (M+ Explosive Affix)
This aura have a bright glow and default size]=]
L["options:aura-options:allow-multiple-instances"] = "Permitir instancias múltiples de este aura"
L["options:aura-options:allow-multiple-instances:tooltip"] = [=[Si marcas esta opción, podrás ver todas las instancias de este aura, incluso en el mismo nombre.
De lo contrario, verás una sola instancia de este aura (la más extensa).]=]
L["options:auras:add-new-spell:error1"] = [=[Debes ingresar el nombre del hechizo en vez del ID del hechizo.
Utiliza la opción "%s" si deseas rastrear un hechizo con un ID específico.]=]
L["options:auras:enabled-state:tooltip"] = [=[Activar/desactivar aura

%s: el aura no se mostrará
%s: el aura se mostrará si tú la lanzaste
%s: mostrar todas las auras]=]
L["options:auras:enabled-state-all"] = "Activado, mostrar todas las auras"
L["options:auras:enabled-state-mineonly"] = "Activado, mostrar solo mis auras"
L["options:auras:pvp-state-dontshowinpvp"] = "No mostrar este aura durante combate de JcJ"
L["options:auras:pvp-state-indefinite"] = "Mostrar este aura durante combate de JcJ"
L["options:auras:pvp-state-onlyduringpvpbattles"] = "Mostrar este aura solo en combate de JcJ"
--[[Translation missing --]]
L["options:category:alpha"] = "Alpha"
--[[Translation missing --]]
L["options:category:apps"] = "Apps"
--[[Translation missing --]]
L["options:category:dispel"] = "Purge/steal"
--[[Translation missing --]]
L["options:category:interrupts"] = "Interrupts"
--[[Translation missing --]]
L["options:category:size-and-position"] = "Size & position"
--[[Translation missing --]]
L["options:general:always-show-my-auras:tooltip"] = [=[This is top priority filter. If you enable this feature,
your auras will be shown regardless of other filters]=]
L["options:general:hide-blizz-frames"] = "Ocultar los marcos de aura de Blizzard (es necesario recargar la UI)"
--[[Translation missing --]]
L["options:general:hide-player-blizz-frame"] = "Hide Blizzard's aura frames on player"
--[[Translation missing --]]
L["options:general:icon-grow-direction"] = "Icon growing direction"
--[[Translation missing --]]
L["options:general:show-aura-tooltip"] = "Show aura name when mouse is over auras icon"
--[[Translation missing --]]
L["options:general:show-cooldown-animation"] = "Show cooldown animation"
--[[Translation missing --]]
L["options:general:show-cooldown-text"] = "Show aura's remaining time"
--[[Translation missing --]]
L["options:general:show-stacks"] = "Show aura's stacks"
--[[Translation missing --]]
L["options:general:test-mode"] = "Test mode on/off"
--[[Translation missing --]]
L["options:glow-type"] = "Glow type"
--[[Translation missing --]]
L["options:glow-type:GLOW_TYPE_ACTIONBUTTON"] = "Action button"
--[[Translation missing --]]
L["options:glow-type:GLOW_TYPE_ACTIONBUTTON_DIM"] = "Action button (dim)"
--[[Translation missing --]]
L["options:glow-type:GLOW_TYPE_AUTOUSE"] = "Auto-use button"
--[[Translation missing --]]
L["options:glow-type:GLOW_TYPE_NONE"] = "None"
--[[Translation missing --]]
L["options:glow-type:GLOW_TYPE_PIXEL"] = "Pixel"
--[[Translation missing --]]
L["options:interrupts:enable-interrupts"] = "Enable interrupt tracking"
--[[Translation missing --]]
L["options:interrupts:enable-only-during-pvp-battles"] = "Enable during PvP battles only"
--[[Translation missing --]]
L["options:interrupts:icon-size"] = "Icon size"
--[[Translation missing --]]
L["options:interrupts:use-shared-icon-texture"] = "Use the same texture for all interrupt spells"
--[[Translation missing --]]
L["options:selector:search"] = "Search:"
--[[Translation missing --]]
L["options:size-and-position:anchor-point-of-frame"] = "Anchor point to group of icons"
--[[Translation missing --]]
L["options:size-and-position:anchor-point-of-frame:tooltip"] = "'Group of icons' is collection of icons per nameplate"
--[[Translation missing --]]
L["options:size-and-position:anchor-point-to-nameplate"] = "Anchor point to nameplate"
--[[Translation missing --]]
L["options:size-and-position:icon-align"] = "Alignment of icons"
--[[Translation missing --]]
L["options:size-and-position:icon-align:bottom-left"] = "Horizontal: bottom / Vertical: left"
--[[Translation missing --]]
L["options:size-and-position:icon-align:center"] = "Center"
--[[Translation missing --]]
L["options:size-and-position:icon-align:top-right"] = "Horizontal: top / Vertical: right"
--[[Translation missing --]]
L["options:size-and-position:non-target-strata"] = "Layer of icons on non-target nameplates"
--[[Translation missing --]]
L["options:size-and-position:scale-target"] = "Scale of the icons on the nameplate of your target"
--[[Translation missing --]]
L["options:size-and-position:target-strata"] = "Layer of icons on target nameplate"
--[[Translation missing --]]
L["options:spells:animation-type"] = "Animation type"
--[[Translation missing --]]
L["options:spells:appropriate-spell-ids"] = "Appropriate spell IDs:"
--[[Translation missing --]]
L["options:spells:disable-all-spells"] = "Disable all spells"
--[[Translation missing --]]
L["options:spells:enable-all-spells"] = "Enable all spells"
--[[Translation missing --]]
L["options:spells:icon-animation"] = "Icon animation"
--[[Translation missing --]]
L["options:spells:icon-animation-always"] = "Show animation all the time"
--[[Translation missing --]]
L["options:spells:icon-animation-threshold"] = "Show animation if aura's remaining time is less than"
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
L["options:timer-text:min-duration-to-display-tenths-of-seconds"] = "Duración mínima para mostrar décimas de segundo"
L["options:timer-text:scale-font-size"] = [=[Modificar el tamaño de fuente
de acuerdo con
el tamaño del icono]=]
L["options:timer-text:text-color-note"] = [=[El color de texto cambiará
de acuerdo con el tiempo restante:]=]
L["Other"] = "Otras"
L["Please reload UI to apply changes"] = "Por favor, recargue la UI para aplicar los cambios."
L["Poison"] = "Veneno"
L["Profiles"] = "Perfiles"
L["Reload UI"] = "Recargar UI"
--[[Translation missing --]]
L["Show border around buff icons"] = "Show border around buff icons"
--[[Translation missing --]]
L["Show border around debuff icons"] = "Show border around debuff icons"
L["Show this aura on nameplates of allies"] = "Mostrar este aura en los nombres de los aliados"
L["Show this aura on nameplates of enemies"] = "Mostrar este aura en los nombres de los enemigos"
L["Sort mode:"] = "Ordenar por:"
L["Space between icons"] = "Espacio entre iconos"
L["Spell already exists (%s)"] = "El hechizo ya existe (%s)"
L["Spell seems to be nonexistent"] = "El hechizo no existe"
L["Spells"] = "Hechizos"
--[[Translation missing --]]
L["Stack text"] = "Stack text"
L["Text"] = "Texto"
L["Text color"] = "Color de texto"
--[[Translation missing --]]
L["Timer text"] = "Timer text"
L["Unknown spell: %s"] = "Hechizo desconocido: %s"
L["Value must be a number"] = "El valor debe ser numérico"
--[[Translation missing --]]
L["X offset"] = "X offset"
--[[Translation missing --]]
L["Y offset"] = "Y offset"
L["Yes"] = "Sí"

--@end-non-debug@
