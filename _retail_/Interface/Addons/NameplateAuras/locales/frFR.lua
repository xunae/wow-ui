local L = LibStub("AceLocale-3.0"):NewLocale("NameplateAuras", "frFR");
L = L or {}
--@non-debug@
L["< 1min"] = "< 1 min."
L["< 5sec"] = "< 5 sec."
L["> 1min"] = "> 1 min."
L["Add new spell: "] = "Ajouter un nouveau sort :"
L["Add spell"] = "Ajouter un sort :"
L["All auras"] = "Toutes les auras"
L["Always show auras cast by myself"] = "Toujours montrer mes auras."
L["Anchor point"] = "Point d'ancrage"
L["Anchor to icon"] = "Lier à l'icône."
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
L["Any"] = "Toutes"
L["Aura type"] = "Type d'aura."
L["Border thickness"] = "Épaisseur des bordures."
L["Buff"] = [=[Améliorations
(But french say "Buff" in WoW for this word)]=]
L["Check spell ID"] = "Vérifier ID du sort."
L["Click to select spell"] = "Cliquez pour sélectionner un sort."
L["Curse"] = "Malédiction."
L["Debuff"] = "Affaiblissement."
L["Default icon size"] = "Taille d'icône par défaut."
L["Delete all spells"] = "Supprimer tous les sorts"
L["Delete spell"] = "Supprimer le sort."
L["Disabled"] = "Désactivé."
L["Disease"] = "Maladie."
L["Display auras on nameplates of friendly units"] = "Afficher les auras sur les barres de vie des alliés."
L["Display auras on player's nameplate"] = "Afficher les auras sur les barres de vie des joueurs."
L["Display tenths of seconds"] = "Afficher les dixièmes de secondes. (0.00)"
L["Do you really want to delete ALL spells?"] = "Voulez-vous vraiment supprimer TOUS les sorts ?"
L["Font"] = "Police d'écriture."
L["Font scale"] = "Échelle de la police d'écriture."
L["Font size"] = "Taille de la police d'écriture."
L["Frame anchor:"] = "Ancre de cadre :"
L["General"] = "Général"
L["Icon anchor:"] = "Ancre d'icône :"
L["Icon borders"] = "Bordures d'icônes."
L["Icon size"] = "Taille de l'icône."
L["Icon X-coord offset"] = "Icône axe X."
L["Icon Y-coord offset"] = "Icône axe Y."
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
L["Magic"] = "Magie."
L["Mode"] = "Mode."
L["No"] = "Non."
L["Only my auras"] = "Seulement mes auras."
L["Open profiles dialog"] = "Ouvrir la fenêtre de profiles."
L["Options are not available in combat!"] = "Les options sont indisponibles en combat !"
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
L["options:apps:explosive-orbs:tooltip"] = "Afficher une aura au dessus des barres de vie (Affixe explosif). Cette aura a une taille par défaut et apparait en surbrillance."
L["options:aura-options:allow-multiple-instances"] = "Autoriser plusieurs instances de cette aura."
L["options:aura-options:allow-multiple-instances:tooltip"] = "Si cette option est cochée, vous verrez toutes les instances de cette aura, même sur la même barre de vie. Sinon, vous ne verrez qu'une seule instance de cette aura (la plus longue)."
L["options:auras:add-new-spell:error1"] = "Vous devez saisir le nom du sort au lieu de l'ID du sort. Utilisez l'option \"% s\" si vous souhaitez afficher le sort avec un identifiant spécifique."
L["options:auras:enabled-state:tooltip"] = [=[Activés/Désactives l'aura %s :
L'aura n'apparaitra pas %s :
L'aura n'apparaitra pas si vous lancez %s :
Montrer toutes les auras.]=]
L["options:auras:enabled-state-all"] = "Activé, affiche toutes les auras."
L["options:auras:enabled-state-mineonly"] = "Activé, montre seulement mes auras."
L["options:auras:pvp-state-dontshowinpvp"] = "Ne pas afficher ces auras en combat JcJ."
L["options:auras:pvp-state-indefinite"] = "Afficher cette aura en combat JcJ"
L["options:auras:pvp-state-onlyduringpvpbattles"] = "Afficher cette aura uniquement en combat JcJ."
--[[Translation missing --]]
L["options:category:alpha"] = "Alpha"
L["options:category:apps"] = "Appliquer."
--[[Translation missing --]]
L["options:category:dispel"] = "Purge/steal"
L["options:category:interrupts"] = "Interruptions."
--[[Translation missing --]]
L["options:category:size-and-position"] = "Size & position"
L["options:general:always-show-my-auras:tooltip"] = "Il s'agit du filtre prioritaire. Si vous activez cette fonction, vos auras seront affichées indépendamment des autres filtres"
L["options:general:hide-blizz-frames"] = "Masqué les cadres par défauts de Blizzard (sauf pour les joueurs) "
L["options:general:hide-player-blizz-frame"] = "Masqué les auras par défauts de Blizzard sur les joueurs."
--[[Translation missing --]]
L["options:general:icon-grow-direction"] = "Icon growing direction"
L["options:general:show-aura-tooltip"] = "Afficher les noms d'auras quand la souris passe dessus."
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
L["options:interrupts:enable-interrupts"] = "Activer le suivi d'interruption."
L["options:interrupts:enable-only-during-pvp-battles"] = "Activer seulement en bataille JcJ"
L["options:interrupts:icon-size"] = "Taille d'icône."
L["options:interrupts:use-shared-icon-texture"] = "Utiliser la même texture d'icône pour tous les sorts d'interruptions."
L["options:selector:search"] = "Chercher :"
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
L["options:spells:appropriate-spell-ids"] = "ID de sort approprié :"
L["options:spells:disable-all-spells"] = "Désactiver tous les sorts."
L["options:spells:enable-all-spells"] = "Activer tous les sorts."
--[[Translation missing --]]
L["options:spells:icon-animation"] = "Icon animation"
--[[Translation missing --]]
L["options:spells:icon-animation-always"] = "Show animation all the time"
--[[Translation missing --]]
L["options:spells:icon-animation-threshold"] = "Show animation if aura's remaining time is less than"
L["options:spells:icon-glow"] = "Afficher en surbrillance."
L["options:spells:icon-glow-always"] = "Afficher tout le temps en surbrillance."
L["options:spells:icon-glow-threshold"] = "Afficher en surbrillance si le temps restant est inférieur à :  "
L["options:spells:please-push-once-more"] = "Merci de cliquer une fois de plus."
L["options:spells:show-on-friends:warning0"] = "Attention: vous ne verrez pas cette aura sur les barres de vie amis tant que vous n'aurez pas activé l'option: <Général> -> <Afficher les auras sur les barres de vie amis>"
L["options:timer-text:min-duration-to-display-tenths-of-seconds"] = "Durée minimale pour afficher les dixièmes de secondes"
L["options:timer-text:scale-font-size"] = "Ajuster la taille de la police en fonction de la taille de l'icône"
L["options:timer-text:text-color-note"] = "La couleur du texte changera en fonction du temps restant:"
L["Other"] = "Autre"
L["Please reload UI to apply changes"] = "Merci de recharger l'interface pour appliquer les changements."
L["Poison"] = "Poison"
L["Profiles"] = "Profiles"
L["Reload UI"] = "Recharger l'interface"
L["Show border around buff icons"] = "Afficher les bordures sur les icônes d'améliorations."
L["Show border around debuff icons"] = "Afficher les bordures sur les icônes d’affaiblissements."
L["Show this aura on nameplates of allies"] = "Afficher cette aura sur la barre de vie des alliés."
L["Show this aura on nameplates of enemies"] = "Afficher cette aura sur la barre de vie des ennemis."
L["Sort mode:"] = "Tri :"
L["Space between icons"] = "Espace entre les icônes."
L["Spell already exists (%s)"] = "Sort déjà existant (%s)."
L["Spell seems to be nonexistent"] = "Le sort semble inexistant."
L["Spells"] = "Sorts"
L["Stack text"] = "Empiler le texte."
L["Text"] = "Texte."
L["Text color"] = "Couleur du texte."
L["Timer text"] = "Texte du minuteur."
L["Unknown spell: %s"] = "Sort inconnu : %s."
L["Value must be a number"] = "La valeur doit être un nombre."
L["X offset"] = "Décalage en X."
L["Y offset"] = "Décalage en Y."
L["Yes"] = "Oui."

--@end-non-debug@
