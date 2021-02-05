--Neuron, a World of Warcraft® user interface addon.

--This file is part of Neuron.
--
--Neuron is free software: you can redistribute it and/or modify
--it under the terms of the GNU General Public License as published by
--the Free Software Foundation, either version 3 of the License, or
--(at your option) any later version.
--
--Neuron is distributed in the hope that it will be useful,
--but WITHOUT ANY WARRANTY; without even the implied warranty of
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
--GNU General Public License for more details.
--
--You should have received a copy of the GNU General Public License
--along with this add-on.  If not, see <https://www.gnu.org/licenses/>.
--
--Copyright for portions of Neuron are held by Connor Chenoweth,
--a.k.a Maul, 2014 as part of his original project, Ion. All other
--copyrights for Neuron are held by Britt Yazel, 2017-2020.

local L = LibStub("AceLocale-3.0"):NewLocale("Neuron", "frFR", false)

if not L then return end

L["Action Bar"] = "Barre d'action"
L["Action Data"] = "Donnée d'action"
L["Add"] = "Ajouter"
L["Add_Description"] = "Ajoute des boutons à la barre sélectionnée"
L["Alpha"] = "Opacité"
L["Alpha_Description"] = "Modifie l'opacité (transparence) de la barre sélectionnée"
L["AlphaUp"] = "Opacifier"
L["AlphaUp Speed"] = "Vit. d'opacification"
L["AlphaUp_Description"] = "Condition pour rendre opaque la barre sélectionnée"
L["Alt"] = "Alt"
L["Alt Down"] = "Alt pressé"
L["Alt Up"] = "Alt relâché"
L["Apply"] = "Appliquer"
L["Arc Length"] = "Long. de l'arc"
L["Arc Start"] = "Début de l'arc"
L["ArcLen"] = "LongArc"
L["ArcLen_Description"] = "Définit la longueur d'arc de la barre sélectionnée (en degrés)"
L["ArcStart"] = "DépartArc"
L["ArcStart_Description"] = "Définit le point de départ de la barre sélectionnée (en degrés)"
L["Assist"] = "Aider"
L["Attach Point"] = "Point d'encrage"
L["Attack"] = "Attaque"
L["AuraInd"] = "IndiAura"
L["AuraInd_Description"] = "Active l'indicateur d'aura actif sur les bouton de la barre sélectionnée"
L["AuraText"] = "DuréeAura"
L["AuraText_Description"] = "Active l'affichage du décompte effectif des auras sur la barre sélectionnée"
L["Auto Select"] = "Sélection auto."
L["AutoHide"] = "MasquerAuto"
L["AutoHide_Description"] = "Masque automatiquement la barre sélectionnée"
L["Bag Bar"] = "Barre de sac"
L["Bar Configuration"] = "Configuration de barre"
L["Bar Fill"] = "Texture"
L["Bar States"] = "États de la barre"
L["Bar Visibility Toggles"] = "Conditions d'affichage de la barre"
L["Bar_Alpha_Instructions"] = "La valeur d'opacité doit être comprise entre zéro (0) et un (1)"
L["Bar_ArcLength_Instructions"] = "La longueur de l'arc doit être comprise entre 0 et 359"
L["Bar_ArcStart_Instructions"] = "La valeur de départ de l'arc doit être comprise entre 0 et 359"
L["Bar_Column_Instructions"] = [=[Saisir un nombre supérieur à zéro (0) pour le nombre de colonnes de la barre.
Ne rien saisir désactive les colonnes]=]
L["Bar_Configuration_FAQ"] = [=[Mode Éditeur de Barre
Pour utiliser l’Éditeur de Barre, cliquer-gauche sur l'icône de NEURON ou taper "/neuron config" dans la fenêtre de discussion. Vous saurez que l'édition est activée car toutes les barres masquées (IE celle du familier ou la barre d'Extra) seront affichées et les barres passeront en surbrillance et afficheront leur nom au survole de la souris.

Pour sortir du Mode Éditeur de Barre, cliquer-gauche à nouveau sur l'icône NEURON, taper la ligne de commande, ou presser la touche ECHAP. Une fois sortie de l'édition, toutes barres configurées pour être masquées disparaîtront à nouveau.

Menu de Configuration des Barres
Pour ouvrir le Menu de Configuration des Barres, cliquer-droit sur n'importe quelle barre une fois entré dans le Mode Éditeur de Barre. La première fois que le menu est ouvert vous serez sur l'onglet "Options Générales". Une réouverture vous amènera sur le dernier onglet visité.]=]
L["Bar_Lock_Modifier_Instructions"] = [=[Touche de modification valide :

alt : Déverrouille la barre quand <alt> est pressé
ctrl : Déverrouille la barre quand <ctrl> est pressé
maj : Déverrouille la barre quand <maj> est pressé]=]
L["Bar_Shapes_List"] = [=[1=Linéaire
2=Circulaire
3=Circulaire + Un]=]
L["Bar_State_Configuration_FAQ"] = [=[Sélecteur d'États de la barre
Les options d'état de la barre permettent d'ajouter des états personnalisés et des conditions d'affichage à cette dernière. L'état d'une barre définit ce qui y sera affiché. Ajouter un état permettra de changer automatiquement ce qui sera affiché quand ce dernier sera atteint. L'état par défaut est appelé état de base.

États Prédéfinis

Paginé : Une fois sélectionné vous avez accès à 6 pages de boutons. Le passage d'une page à l'autre se fait par l'intermédiaire des raccourcies du jeu. Ces derniers sont "Barre d'actions précédente" et "Barre d'actions suivante" dans la catégorie "Barre d'actions".
Posture : Cette option n'est disponible que si votre personnage en dispose. Une fois sélectionné, changer de posture changera les boutons de la barre.
Familier : Une fois sélectionné, vous aurez un changement de la barre dès que vous aurez un familier sous votre contrôle.

États personnalisés
Neuron vous permet de créer vos propres états pour les barres. Pour ce faire, vous devez saisir la liste des états choisis délimitée par des points-virgules. En cas de saisie erronée, un message d'erreur s'affichera dans la fenêtre de discussion. Il est conseillé de ne pas utiliser les États Prédéfinis simultanément. Les états personnalisés peuvent inclure la grande majorité des conditions de macro du jeu, avec "no" préfixant la condition pour obtenir son état inverse. I.E. [nocombat]

Exemple : [actionbar:1];[stance:1];[stance3,stealth];[mounted]

Conditions d'Affichage de la Barre
Ces options vous permettent de personnaliser l'affichage ou le masquage de la barre. Un point vert à côté de la condition affichera la barre si cette dernière est remplie. A l'inverse, désélectionné, la barre sera masqué si la condition est remplie.]=]
L["Bar_Strata_List"] = [=[1=ARRIÈRE-PLAN
2=BAS
3=MOYEN
4=HAUT
5=DIALOGUE]=]
L["BarTypes"] = "TypesBarre"
L["BarTypes_Description"] = "Affiche la liste de type de barre possible à créer"
L["Bind"] = "Associer"
L["Bind_Description"] = "Bascule en mode association pour tous les boutons"
L["Bindings_Locked_Notice"] = [=[Les raccourcies de ce bouton sont verrouillés.
Clic-gauche sur ce dernier pour le déverrouiller.]=]
L["BindText"] = "Raccourcie"
L["BindText_Description"] = "Bascule l'affichage des raccourcies pour la barre sélectionnée"
L["BlizzUI"] = "BlizzUI"
L["BlizzUI_Description"] = "Active l'interface par défaut de Blizzard"
L["Border"] = "Bordure"
L["Bottom"] = "Bas"
L["Bottom-Left"] = "Bas gauche"
L["Bottom-Right"] = "Bas droite"
L["Bubbles"] = "Bulles"
L["Buff/Debuff Aura Border"] = "Bordure des auras de Bonus/Malus "
L["Buff/Debuff Aura Countdown"] = "Décompte des Bonus/Malus actifs "
L["Cancel"] = "Annuler"
L["Carpaint"] = "Carrosserie"
L["Cast Bar"] = "Barre d'incant."
L["Cast Icon"] = "Icône d'incant."
L["Caster Form"] = "Humanoïde"
L["CDAlpha"] = "EstomperTDR"
L["CDAlpha_Description"] = "Bascule l'estompage d'un bouton en rechargement"
L["CDText"] = "TexteTDR"
L["CDText_Description"] = "Bascule l'affichage du temps de rechargement pour la barre sélectionnée"
L["Center"] = "Centre"
L["Center Text"] = "Texte centré"
L["Changelog"] = "Journal des modifications"
L["Changelog_Latest_Version"] = [=[Journal des modifications :
Neuron 0.9.11, liste des changements :
Système de traduction complètement revu pour fonctionner avec le cadriciel de CurseForge. Nous pouvons maintenant avoir recours à la communauté pour ces dernières !
Reconstruction complète des chaînes de caractères localisées pour se conformer aux directives Ace3-Locale. En effet de bord, nous avons complètement reconstruit les fonctionnalités de /neuron tirant partie d'Ace3-Console et avons rendu le système plus flexible.]=]
L["Circle"] = "Circulaire"
L["Circle + One"] = "Circulaire + Un"
L["Click"] = "Clic"
L["Click here to edit macro note"] = "Cliquer ici pour éditer la note de la macro"
--[[Translation missing --]]
--[[ L["Close"] = ""--]] 
L["Columns"] = "Colonnes"
L["Columns_Description"] = "Définit le nombre de colonnes de la barre sélectionnée (pour la forme Multi-colonne)"
L["Combat"] = "En combat"
L["Combat + Mouseover"] = "En combat + Survol"
L["Command"] = "Commande"
L["Command List"] = "Liste des commandes"
L["Companion"] = "Mascotte"
L["Conceal"] = "Masquer"
L["Conceal_Description"] = "Masque ou affiche tout le temps la barre sélectionnée"
L["Config"] = "Config"
L["Config_Description"] = "Bascule en mode configuration pour l'ensemble des barres"
--[[Translation missing --]]
--[[ L["Configure Bars"] = ""--]] 
--[[Translation missing --]]
--[[ L["Configure Buttons"] = ""--]] 
L["Confirm"] = "Confirmer"
L["Contrast"] = "Contrasté"
L["Control Down"] = "Ctrl pressé"
L["Control Up"] = "Ctrl relâché"
L["Cooldown Countdown"] = "Décompte du temps de recharge "
L["Cooldown Transparency"] = "Estomper lors de la recharge "
L["Copy and Paste the text below"] = "Copier et coller le texte ci-dessous"
L["Count"] = "Compteur"
L["CountText"] = "TexteCompteur"
L["CountText_Description"] = "Bascule l'affichage du compteur pour les sorts/objets pour la barre sélectionnée"
L["Create"] = "Créer"
L["Create New Bar"] = "Nouvelle barre"
L["Create_Description"] = "Crée une barre vide du type souhaité"
L["Ctrl"] = "Ctrl"
L["Current Level/Rank"] = "Niveau actuel/rang"
L["Current/Next"] = "Actuel/Suivant"
L["Custom"] = "Personnalisé"
L["Custom Action States"] = "États personnalisés"
L["Custom Icon"] = "Icône personnalisé"
L["Custom States"] = "États personnalisés"
L["Custom_Option"] = "Pour les états personnalisés, ajouter l'état désiré (/neuron state custom <texte état>) où <texte état> est une liste délimitée par des points-virgule d'états conditionnels"
L["Default"] = "Défaut"
L["Default Alert"] = "Éclat par défaut"
L["Defensive"] = "Defensif"
L["Delete"] = "Supprimer"
L["Delete Current Bar"] = "Suppr. la barre actuelle"
L["Delete_Description"] = "Supprime la barre sélectionnée"
L["Dialog"] = "Dialogue"
L["Display button for specialization 1"] = "Afficher le bouton pour la spé. 1"
L["Display button for specialization 2"] = "Afficher le bouton pour la spé. 2"
L["Display button for specialization 3"] = "Afficher le bouton pour la spé. 3"
L["Display button for specialization 4"] = "Afficher le bouton pour la spé. 4"
L["Display Minimap Button"] = "Afficher le bouton de la mini-carte"
L["Display the Blizzard UI"] = "Afficher l'interface de Blizzard"
L["Done"] = "Fait"
L["Down Clicks"] = "Clics pressés"
L["DownClick"] = "ClicPress"
L["DownClick_Description"] = "Bascule l'activation des boutons sur un clic enfoncé"
L["Edit"] = "Editer"
L["Edit Bindings"] = "Editer les raccourcis"
L["Edit_Description"] = "Bascule en mode édition pour tous les boutons"
L["Empty Button"] = "Bouton vide"
L["Enable Tooltips"] = "Activer les info-bulles"
L["Enhanced"] = "Améliorées"
L["Extra Action Bar"] = "Barre d'action Extra"
L["Extra Bar"] = "Barre Extra"
L["Extrabar"] = "barre extra"
L["F.A.Q."] = "F.A.Q."
L["Faction"] = "Faction"
L["FAQ_Intro"] = [=[F.A.Q. Neuron :

Vous trouverez ci-dessous les réponses aux diverses questions qui peuvent survenir lorsque vous utilisez Neuron. Noter cependant que toutes les réponses ne se trouverons pas ici.

Pour les questions dont vous ne trouverez pas les réponses, rendez-vous ici : 
https://www.curseforge.com/wow/addons/neuron
ou là :
http://www.wowinterface.com/downloads/info10636-IonActionBars.html

De plus, si vous rencontrez des bugs ou des fonctions manquantes, s.v.p. rendez-vous ici pour en faire part :
https://github.com/brittyazel/Neuron/issues

Le code source se trouve quand à lui là :
https://github.com/brittyazel/Neuron

Et encore merci d'utiliser Neuron.]=]
L["Favorite"] = "Favoris"
L["Fishing"] = "pêche"
L["Fishing Pole"] = "Canne à pêche"
L["Flying"] = "Vole"
L["Flyout"] = "Déploiement"
L["Flyout Options"] = "Options de déploiement"
--[[Translation missing --]]
--[[ L["Flyout_FAQ"] = ""--]] 
L["Focus-Cast by modifier"] = "Mod. d'incant. sur focus"
L["Follow"] = "Suis"
L["Frequently Asked Questions"] = "Foire aux questions"
L["Friendly"] = "Amical"
L["Fun"] = "Jouet"
L["Gel"] = "Gelé"
L["General Options"] = "Options Générales"
L["General_Bar_Configuration_Option_FAQ"] = [=[Liste des barres
A l'extrême gauche du menu vous trouverez une section référençant toutes les barres qui ont été créées. Cliquer sur une entrée sélectionnera la barre et mettra à jour le menu pour afficher les options relatives à cette dernière.

Nom de la barre
A la droite de la liste des barres, vous trouverez un champ texte qui affiche en blanc le nom de la barre actuellement sélectionnée. Vous pouvez renommer cette dernière en cliquant sur ce champ. Afin de sauvegarder tout changement, taper sur la touche "Entrée" une fois terminé.

Options d'affichage de la barre
Sous le "Nom de la barre", vous trouverez des options relatives à l'affichage de cette dernière.

MasquerAuto : Si activé, la barre sera automatiquement masquée jusqu'à un survol de la souris.
Afficher la grille : Si activé, un maillage de case vide sera affiché sur la barre.
CollerA : Si activé, le déplacement de la barre à côté d'une autre la fera se coller à cette dernière et la centrera.
Clics relâchés : Si activé, les actions seront déclenchées au relâchement de la touche.
Clics pressés : Si activé, les actions seront déclenchées à l'enclenchement de la touche.
Mutli spé. : Si activé, la barre sera modifié automatiquement suivant votre spécialisation.
Masquer : Si activé, la barre sera masquée. Elle ne sera uniquement visible en mode édition et sera alors teintée de rouge.
Actions verrouillées : Si activé, vous ne pourrez plus déplacer les actions de la barre.
Déverrouillé avec <MAJ, CTRL, ALT> : Si l'option précédente est active, ces dernières seront disponible. Choisir n'importe laquelle de ces options permettra de déplacer les sorts de la barre en utilisant le modificateur voulu.
Activer les info-bulles : Si activé, les info-bulles relatives aux actions de la barre seront visibles au survole de la souris.
Améliorées : Si les info-bulles sont activées, cette option sera disponible. A l'activation les info-bulles améliorées seront affichées si elles existent.
Masquées en combat : Si les info-bulles sont activées, cette option sera disponible. A l'activation, les info-bulles seront masquées en combat.

Options de disposition de la barre
Situé à la droite des options d'affichage, ces dernières permettent de changer la disposition de la barre.

Echelle : Définie la mise à l'échelle de la barre. La valeur par défaut est 1. Un nombre inférieur la réduira tandis qu'un supérieur l'agrandira
Forme : Change la forme de la barre.
Colonnes : Sera uniquement affiché si la forme "Linéaire" est sélectionnée. La valeur par défaut est "off". Accroître le compteur divisera le nombre de bouton de la barre suivant le nombre de colonnes voulu.
Début de l'arc : Sera uniquement affiché une des formes "Circulaire" est sélectionnée. Définie le point d'origine de l'arc de cercle (en degré).
Long. de l'arc : Sera uniquement affiché une des formes "Circulaire" est sélectionnée. Définie la longueur de l’arc (en degré).
Esp. Horiz. : Définie l'espacement horizontale entre les boutons de la barre.
Esp. Vert. : Définie l'espacement verticale entre les boutons de la barre.
Esp. H + V : Ajuste l'espacement horizontale et verticale entre les boutons de la barre de manière incrémentale.
Strate : Change la profondeur d'affichage de la barre. Plus profonde elle sera, plus il sera possible de rencontrer l'affichage d'objets au-dessus de cette dernière.
Opacité : Change la transparence de la barre.
Opacifier : Choisir une de ces options rendra opaque la barre à réalisation de cette dernière.
Vit. d'opacification : Représente la vitesse à laquelle la barre deviendra opaque lors de l'exécution de l'option précédente.
Position X : Change le positionnement de la barre sur l'axe des abscisses.
Position Y : Change le positionnement de la barre sur l'axe des ordonnées.

Nouvelle barre
Vous trouverez ce bouton en bas à gauche de l'interface. Utilisez ce dernier pour ajouter de nouvelles barres. Une fois cliqué, le choix du type de barre vous sera proposé. Ce dernier sélectionné, une nouvelle barre sera alors disponible à l'écran et dans la liste des barres. Les barres nouvellement créées ont un nombre de bouton définie à 0.

Nombre de boutons et flèches d'ajout/suppression
Situé au centre bas, vous trouverez le nombre de bouton que possède la barre sélectionnée. De part et d'autre se trouve une flèche, qui cliquer augmentera ou diminuera ce nombre.

Suppr. la barre actuelle
Vous trouverez ce bouton en bas à droite de l'interface. Une fois enclenché, vous aurez alors une confirmation oui/non pour la suppression de la barre sélectionnée. Si vous choisissez oui, la barre sera alors définitivement supprimée de l'écran et de la liste des barres. Cette action est irréversible.]=]
L["Generate Macro"] = "Générer la macro"
L["Glassed"] = "Vitré"
L["Group"] = "Groupe"
L["Group: Party"] = "En groupe"
L["Group: Raid"] = "En raid"
L["H+V Padding"] = "Esp. H + V"
L["Harm"] = "Blessé"
L["Has Target"] = "A une cible"
L["Healer Form"] = "Soigneur"
L["Height"] = "Hauteur"
L["Help"] = "Aide"
L["Hidden"] = "Masquer"
L["Hide"] = "Masqué"
L["Hide in Combat"] = "Masquées en combat"
L["Home State"] = "État de base"
L["Horiz Padding"] = "Esp. Horiz."
L["Horizontal"] = "Horizontal"
L["Horozontal_and_Vertical_Padding_Instructions"] = "Saisir l’accroissement/la réduction désiré pour l'espacement horizontal ET vertical des boutons"
L["Horozontal_Padding_Instructions"] = "Saisir l'espacement horizontal désiré des boutons"
L["Hostile"] = "Hostile"
L["How to use"] = "Usage"
L["In Combat"] = "En combat"
L["Indoors"] = "Intérieurs"
L["Invalid index"] = "Index invalide"
L["Item"] = "Objet"
L["Keybind Label"] = "Label des raccourcis "
L["Keybind_Tooltip_1"] = "Taper une touche pour l'associer"
L["Keybind_Tooltip_2"] = "Association(s) actuelle(s) :"
L["Keybind_Tooltip_3"] = "Clic-gauche pour verrouiller l'association actuelle"
L["Keybind_Tooltip_4"] = "Clic-droit pour accorder une priorité maximum à ces associations"
L["Keybind_Tooltip_5"] = "Taper ECHAP pour effacer les associations actuelles "
L["Keys"] = "Mots-clés"
L["Last State"] = "Dernier état"
L["Left"] = "Gauche"
L["Left Text"] = "Texte ajuster à gauche"
L["Left-Click"] = "Clic gauche"
L["Level"] = "Niveau"
L["Levels"] = "Niveaux"
L["Linear"] = "Linéaire"
L["Lock"] = "Verrouiller"
L["Lock Actions"] = "Actions verrouillées"
L["Lock_Description"] = "Bascule le verrouillage des barres."
L["Locked"] = "Verrouillé"
L["Macro Data"] = "Code de la Macro"
L["Macro Name"] = "Nom de la macro "
L["MacroText"] = "TexteMacro"
L["MacroText_Description"] = "Bascule l'affichage des noms de macro pour la barre sélectionnée"
L["Melee"] = "Mêlée"
L["Menu"] = "Menu"
L["Menu Bar"] = "Barre de menu"
L["Menu_Description"] = "Ouvre le menu principal"
L["Mirror Bar"] = "Barre miroir"
L["Mount"] = "Monture"
L["Mounted"] = "Monté"
L["Mouseover"] = "Survol"
L["Mouse-Over Casting"] = "Incantation au survol"
L["Mouse-Over Casting Modifier"] = "Active le modificateur d'incantation au survol."
L["Mouseover Text"] = "Texte au survol"
L["Move To"] = "Déplacer"
L["MoveSpecButtons"] = "CopieBoutonSpe"
L["MoveSpecButtons_Description"] = "Copie les boutons d'une spé. à une autre"
L["Multi Spec"] = "Multi spé."
L["Name"] = "Nom"
L["Name_Description"] = "Modifie le nom de la barre sélectionnée"
L["No"] = "Non"
L["No bar selected or command invalid"] = "Pas de barre sélectionnée ou commande invalide"
L["No Extra Bar"] = "Pas de Barre Extra"
L["No Fishing Pole"] = "Pas de canne à pêche"
L["No Group"] = "Pas en groupe"
L["No Override Bar"] = "Pas de bar. surchargé"
L["No Pet"] = "Pas de familier"
L["No Possess"] = "Pas Possédé"
L["No Stealth"] = "Hors Camouflage"
L["No Target"] = "Pas de cible"
L["No Vehicle"] = "Pas en véhicule"
L["None"] = "Aucun"
L["Number of Buttons"] = "Nombre de boutons"
L["Object Editor"] = "Éditeur d'objets"
L["Off"] = "Off"
--[[Translation missing --]]
--[[ L["Open the Interface Menu"] = ""--]] 
L["Option"] = "Option"
L["Options"] = "Options"
L["Orientation"] = "Orientation"
L["Out of Combat"] = "Hors Combat"
L["Outdoors"] = "Extérieurs"
L["Out-of-Range Indicator"] = "Indicateur quand hors de portée "
L["Output"] = "Sortie"
L["Override"] = "Surcharge"
L["Override Bar"] = "Barre surchargé"
L["PadH"] = "EspaceH"
L["PadH_Description"] = "Définit l'espacement horizontal pour la barre sélectionnée"
L["PadHV"] = "EspaceHV"
L["PadHV_Description"] = "Ajuste, de manière incrémental, l'espacement horizontal et vertical de la barre sélectionnée"
L["PadV"] = "EspaceV"
L["PadV_Description"] = "Définit l'espacement vertical pour la barre sélectionnée"
L["Page 1"] = "Page 1"
L["Page 2"] = "Page 2"
L["Page 3"] = "Page 3"
L["Page 4"] = "Page 4"
L["Page 5"] = "Page 5"
L["Page 6"] = "Page 6"
L["Paged"] = "paginé"
L["Passive"] = "Passif"
L["Path"] = "chemin"
L["Percent"] = "Pourcent"
L["Pet"] = "Familier"
L["Pet Actions can not be added to Neuron bars at this time."] = "Les capacités des familiers ne peuvent être placées sur les barres de Neuron actuellement."
L["Pet Bar"] = "Barre de familier"
L["Pet Exists"] = "Familier présent"
L["Point"] = "Point"
L["Points"] = "Points"
L["Possess"] = "Possédé"
L["Preset Action States"] = "États prédéfinis"
L["Prestige"] = "Prestige"
L["Priority"] = "Priorité"
L["Profession"] = "Métier"
L["Radius"] = "Rayon"
L["Reaction"] = "Réaction"
L["Relative To"] = "Relatif à"
L["Remap selected stance to:"] = "Redéfinie la posture sélectionnée vers :"
L["Remove"] = "Retirer"
L["Remove_Description"] = "Retire des boutons de la barre sélectionnée"
L["Rep Bar"] = "Barre de rép."
L["Rested Levels"] = "Niveaux de repos"
L["Resting"] = "Repos"
L["Retreat"] = "Hors combat"
L["Retreat + Mouseover"] = "Hors combat+Survol"
L["Reward"] = "Récompense"
L["Right"] = "Droite"
L["Right Text"] = "Texte ajuster à droit"
L["Right-Click"] = "Clic droit"
L["Right-click Self-Cast"] = "Incant. perso. sur clic-droit"
L["Save"] = "Sauvegarder"
L["Scale"] = "Echelle"
L["Scale_Description"] = "Ajusté une barre à la taille désirée"
L["Search"] = "Rechercher"
L["Select a modifier for Mouse-Over Casting"] = "Choisissez le modificateur d'incant. au survol"
L["Select a stance to remap:"] = "Posture à redéfinir :"
--[[Translation missing --]]
--[[ L["Select an Option"] = ""--]] 
L["Select Bar Type"] = "Sélectionner le type de barre"
L["Select the Focus-Cast Modifier"] = "Choisissez le modificateur d'incant. sur focus"
L["Select the Self-Cast Modifier"] = "Choisissez le modificateur d'incant. perso"
L["Self-Cast by modifier"] = "Mod. d'incant. perso."
L["Shadow Dance"] = "Danse de l'ombre"
L["Shape"] = "Forme"
L["Shape_Description"] = "Modifie la forme de la barre sélectionnée"
L["Shapeshift"] = "Changeforme"
L["Shift"] = "maj"
L["Shift Down"] = "Maj pressé"
L["Shift Up"] = "Maj relâché"
L["Show"] = "Affiché"
--[[Translation missing --]]
--[[ L["Show Border Style"] = ""--]] 
L["Show Grid"] = "Afficher la grille"
L["Show On"] = "Afficher sur "
L["ShowGrid"] = "AfficheGrille"
L["ShowGrid_Description"] = "Bascule l'affichage de la grille pour la barre sélectionnée"
L["Shows / Hides the Default Blizzard UI"] = "Affiche / cache l'interface par défaut de Blizzard"
L["Slider"] = "Curseur"
L["SnapTo"] = "CollerA"
L["SnapTo_Description"] = "Active/désactive le \"Coller à\" pour la barre sélectionnée"
L["Soft"] = "Doux"
L["Spell"] = "Sort"
L["Spell Alerts"] = "Éclat des sorts"
L["Spell Target Options"] = "Cible des sorts"
L["Spell_Target_Options_FAQ"] = [=[Options concernant le ciblage de sorts

Cette option vous permet d'ajouter automatiquement certains modificateurs à des sorts placés sur la barre d'action. Seul les sorts déplacés du livre de sort jusqu'à la barre se verront attribués ces modificateurs. Un moyen simple de vérifier si un sort est affecté est de visionner ce bouton avec l'éditeur de macro. Si la macro contient "#autowrite" placé au début, alors l'option de ciblage est disponible.

Lancer sur soi même: Lorsqu'activé, tout sort lancé en maintenant le raccourci attribué au modificateur sera lancé sur votre personnage (si possible). À noter: le modificateur pour ce réglage est universel. Le changer pour une barre d'action revient à le changer sur les autres.

Lancer de sort sur la cible en focalisation: Lorsqu'activé, tout sort lancé en maintenant la touche attribuée à ce modificateur sera lancé sur la cible de votre focalisation. 
À noter: Ce modificateur est également universel.

Lancer sur soi même via clic droit: Faire un clic droit sur un sort avec cette option activée le lancera sur vous même (si possible).

Lancer de sort via survolage de la souris: Lorsqu'activé tout sort lancé en maintenant le raccourci attribué à ce modificateur sera lancé sur le personnage survolé par ce souris. Si vous sélectionnez "None" pou ce modificateur, il sera actif en permanence.



]=]
L["Spell_Targeting_Modifier_None_Reminder"] = [=["Aucun" comme modificateur pour soi et le focus signifie désactivé.
Pour l'incantation au survole cela signifie qu'il est toujours actif, aucun modificateur n'est requis."]=]
L["SpellGlow"] = "EclatSort"
L["SpellGlow_Description"] = "Bascule l'animation d'activation des sorts pour la barre sélectionnée"
L["Spellglow_Instructions"] = [=[Options valides:

défaut : Utilise l'animation par défaut d'éclat des sorts de Blizzard
alt. : Utilise alternativement l'animation d'éclat de soumission]=]
L["Stack/Charge Count Label"] = "Nombre de charges/d'objets "
L["Stance"] = "Posture"
L["Stance Bar"] = "Barre de posture"
L["State"] = "Etat"
L["State_Description"] = "Bascule un état d'action pour la barre sélectionnée"
L["StateList"] = "ListeEtat"
L["StateList_Description"] = "Affiche la liste des états valides"
L["Status Bar"] = "Barre d'état"
L["Stealth"] = "Camouflage"
L["Strata"] = "Strate"
L["Strata_Description"] = "Modifie le niveau de strate de la barre sélectionnée"
L["Subdued Alert"] = "Éclat alternatif"
L["Swimming"] = "Nage"
L["Target"] = "Cible"
L["Timer"] = "Durée"
L["Timer_Limit_Invalid_Message"] = "Limite de temps invalide"
L["Timer_Limit_Set_Message"] = "Limite de temps fixée à %d secondes"
L["TimerLimit"] = "LimiteTemps"
L["TimerLimit_Description"] = "Définie le minimum de secondes pour l'affichage de durée"
--[[Translation missing --]]
--[[ L["Toggle Keybind Mode"] = ""--]] 
L["Toggle the use of the modifier-based focus-cast functionality."] = "Active le modificateur d'incantation sur focus."
L["Toggle the use of the modifier-based mouse-over cast functionality."] = "Active le modificateur d'incantation au survol."
L["Toggle the use of the modifier-based self-cast functionality."] = "Active le modificateur d'incantation personnelle."
L["Toggle the use of the right-click self-cast functionality."] = "Active l'utilisation du clic-droit pour la fonction d'incantation personnelle."
L["Toggles the minimap button."] = "Active le bouton de la mini-carte"
L["Tooltip"] = "Info-bulle"
L["Tooltip Text"] = "Texte info-bulle"
L["Tooltip_Instructions"] = [=[Options valides:

améliorées : Affiche des informations additionnelles
combat : Affiche/masque les info-bulles en combat]=]
L["Tooltips"] = "Info-bulles"
L["Tooltips_Description"] = "Bascule les info-bulles pour les boutons de la barre sélectionnée"
L["Top"] = "Haut"
L["Top-Left"] = "Haut gauche"
L["Top-Right"] = "Haut droite"
L["Track Azerite Power"] = "Suivi de la puissance d'Azérite"
L["Track Character XP"] = "Suivi de l'expérience"
L["Track Honor Points"] = "Suivi des points d'honneur"
L["Type"] = "Type"
L["Unit"] = "Unité"
L["Unlock on ALT"] = "Déverrouillé avec ALT"
L["Unlock on CTRL"] = "Déverrouillé avec CTRL"
L["Unlock on SHIFT"] = "Déverrouillé avec MAJ"
L["Up Clicks"] = "Clics relâchés"
L["UpClick"] = "ClicRela"
L["UpClick_Description"] = "Bascule l'activation des boutons sur un clic relâché"
L["Use macro note as button tooltip"] = "Utiliser l'annotation de macro comme info-bulle du bouton"
L["Valid States"] = "États valides"
L["Vanish"] = "Disparition"
L["Vehicle"] = "Véhicule"
L["Vehicle Exit Bar"] = "Barre de sortie de véhicule"
L["Velvet"] = "Velours"
L["Vert Padding"] = "Esp. Vert."
L["Vertical"] = "Vertical"
L["Vertical_Padding_Instructions"] = "Saisir l'espacement vertical désiré des boutons"
L["Vis"] = "Visi"
L["Vis_Description"] = "Bascule les états de visibilité de la barre sélectionnée"
L["Width"] = "Longueur"
L["X"] = "X"
L["X Position"] = "Position X"
L["X_Description"] = "Modifie la position horizontale de la barre sélectionnée"
L["X_Position_Instructions"] = "Saisir le décalage d'abscisse désiré"
L["XP Bar"] = "Barre d'Exp."
L["Y"] = "Y"
L["Y Position"] = "Position Y"
L["Y_Description"] = "Modifie la position verticale de la barre sélectionnée"
L["Y_Position_Instructions"] = "Saisir le décalage d'ordonnée désiré"
L["Yes"] = "Oui"
L["Zone Action Bar"] = "Barre d'action de zone"


