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

local L = LibStub("AceLocale-3.0"):NewLocale("Neuron", "deDE", false)

if not L then return end

L["Action Bar"] = "Aktionsleiste"
--[[Translation missing --]]
--[[ L["Action Data"] = ""--]] 
L["Add"] = "Hinzufügen"
L["Add_Description"] = "Tasten zur aktuellen Leiste hinzufügen"
L["Alpha"] = "Alpha"
L["Alpha_Description"] = "Alpha (Transparenz) der aktuellen Leiste ändern"
L["AlphaUp"] = "Alpha Hoch"
L["AlphaUp Speed"] = "Alpha Hoch Geschwindigkeit"
L["AlphaUp_Description"] = "Bedingungen für \"Alpha Hoch\" der aktuellen Leiste setzen"
--[[Translation missing --]]
--[[ L["Alt"] = ""--]] 
--[[Translation missing --]]
--[[ L["Alt Down"] = ""--]] 
--[[Translation missing --]]
--[[ L["Alt Up"] = ""--]] 
L["Apply"] = "Anwenden"
L["Arc Length"] = "Bogenlänge"
L["Arc Start"] = "Bogenanfang"
L["ArcLen"] = "Bogenlänge"
L["ArcLen_Description"] = "Länge des Bogens (in Grad) der aktuellen Leiste setzen"
L["ArcStart"] = "Bogenanfang"
L["ArcStart_Description"] = "Punkt des Bogenanfangs (in Grad) der aktuellen Leiste setzen"
L["Assist"] = "Unterstützen"
L["Attach Point"] = "Ankerpunkt"
L["Attack"] = "Angreifen"
L["AuraInd"] = "AuraIndi"
L["AuraInd_Description"] = "Aura Tastenindikator der aktuellen Leiste umschalten"
L["AuraText"] = "AuraText"
--[[Translation missing --]]
--[[ L["AuraText_Description"] = ""--]] 
L["Auto Select"] = "Auto Auswahl"
L["AutoHide"] = "Auto Ausblenden"
L["AutoHide_Description"] = "Auto Ausblenden für die aktuelle Leiste umschalten"
L["Bag Bar"] = "Taschenleiste"
L["Bar Configuration"] = "Leistenkonfiguration"
--[[Translation missing --]]
--[[ L["Bar Fill"] = ""--]] 
L["Bar States"] = "Leistenstatus"
L["Bar Visibility Toggles"] = "Leistensichtbarkeit umschalten"
L["Bar_Alpha_Instructions"] = "Alphawert muss zwischen null(0) und eins(1) liegen"
L["Bar_ArcLength_Instructions"] = "Bogenlänge muss zwischen 0 und 359 liegen"
L["Bar_ArcStart_Instructions"] = "Bogenanfang muss zwischen 0 und 359 liegen"
L["Bar_Column_Instructions"] = [=[Gib eine Zahl für die gewünschte Anzahl an Reihen größer null(0) für die Leiste ein
Leer lassen um Reihen zu deaktivieren]=]
L["Bar_Configuration_FAQ"] = [=[Aktionsleisten Bearbeitungsmodus
Um die Aktionsleisten zu bearbeiten, klicke mit der linken Maustaste auf das NEURON Minimap Symbol oder gib "/neuron config" im Chat ein. Du erkennst den aktiven Bearbeitungsmodus auch daran, dass alle versteckten Aktionsleisten sichtbar sind ( z. B.: Begleiterleiste oder ExtraActionButton) und der Name der Leiste sichbar wird, wenn du mit der Maus drüber fährst.

Jetzt kannst du mit der rechten Maustaste auf irgendeine Leiste klicken und damit das Bearbeitungsmenü öffnen. Wenn du das zum ersten Mal machst, landest du auf dem Reiter "General Options", beim nächsten Mal, auf dem Reiter den du zuletzt geöffnet hast.

Den Bearbeitungsmodus verlassen kannst du wieder mit Linksklick auf das Symbol oder dem Slash Command "/neuron config" oder auch mit der Esc-Taste. Dann sind auch alle versteckten Leisten wieder unsichtbar.

 ]=]
L["Bar_Lock_Modifier_Instructions"] = [=[Gültige Mod Tasten

Alt: Leiste lösen wenn die <Alt> Taste gedrückt ist
Strg: Leiste lösen wenn die <Strg> Taste gerückt ist
Umschalten: Leiste lösen wenn die <Umschalten> Taste gedrückt ist ]=]
L["Bar_Shapes_List"] = [=[1=Linear
2=Kreis
3=Kreis+Eins]=]
--[[Translation missing --]]
--[[ L["Bar_State_Configuration_FAQ"] = ""--]] 
L["Bar_Strata_List"] = [=[1=HINTERGRUND
2=NIEDRIG
3=MEDIUM
4=HOCH
5=DIALOG]=]
L["BarTypes"] = "Leistentypen"
L["BarTypes_Description"] = "Eine Liste der erstellbaren Leistentypen anzeigen"
L["Bind"] = "Bindung"
L["Bind_Description"] = "Bindungsmodus für alle Tasten umschalten"
L["Bindings_Locked_Notice"] = [=[Die Bindungen dieser Taste sind gesperrt.
Zum entsperren Linksklick auf Taste.
]=]
L["BindText"] = "Bindungstext"
L["BindText_Description"] = "Tastenbelegungstext der aktuellen Leiste umschalten"
--[[Translation missing --]]
--[[ L["BlizzUI"] = ""--]] 
L["BlizzUI_Description"] = "Schaltet das Blizzard User Interface "
L["Border"] = "Umrandung"
L["Bottom"] = "Unten"
L["Bottom-Left"] = "Unten links"
L["Bottom-Right"] = "Unten rechts"
L["Bubbles"] = "Blasen"
L["Buff/Debuff Aura Border"] = "Buff/Debuff Aura Umrandung"
L["Buff/Debuff Aura Countdown"] = "Buff/Debuff Aura Countdown"
L["Cancel"] = "Abbrechen"
--[[Translation missing --]]
--[[ L["Carpaint"] = ""--]] 
L["Cast Bar"] = "Zauberleiste"
L["Cast Icon"] = "Zaubersymbol"
--[[Translation missing --]]
--[[ L["Caster Form"] = ""--]] 
--[[Translation missing --]]
--[[ L["CDAlpha"] = ""--]] 
--[[Translation missing --]]
--[[ L["CDAlpha_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["CDText"] = ""--]] 
--[[Translation missing --]]
--[[ L["CDText_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Center"] = ""--]] 
--[[Translation missing --]]
--[[ L["Center Text"] = ""--]] 
--[[Translation missing --]]
--[[ L["Changelog"] = ""--]] 
--[[Translation missing --]]
--[[ L["Changelog_Latest_Version"] = ""--]] 
--[[Translation missing --]]
--[[ L["Circle"] = ""--]] 
--[[Translation missing --]]
--[[ L["Circle + One"] = ""--]] 
--[[Translation missing --]]
--[[ L["Click"] = ""--]] 
--[[Translation missing --]]
--[[ L["Click here to edit macro note"] = ""--]] 
--[[Translation missing --]]
--[[ L["Close"] = ""--]] 
--[[Translation missing --]]
--[[ L["Columns"] = ""--]] 
--[[Translation missing --]]
--[[ L["Columns_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Combat"] = ""--]] 
--[[Translation missing --]]
--[[ L["Combat + Mouseover"] = ""--]] 
L["Command"] = "Befehl"
L["Command List"] = "Befehlsliste"
L["Companion"] = "Begleiter"
--[[Translation missing --]]
--[[ L["Conceal"] = ""--]] 
--[[Translation missing --]]
--[[ L["Conceal_Description"] = ""--]] 
L["Config"] = "config"
L["Config_Description"] = "Schaltet den Bearbeitungsmodus für alle Aktionsleisten"
--[[Translation missing --]]
--[[ L["Configure Bars"] = ""--]] 
--[[Translation missing --]]
--[[ L["Configure Buttons"] = ""--]] 
L["Confirm"] = "Bestätigen"
L["Contrast"] = "Kontrast"
--[[Translation missing --]]
--[[ L["Control Down"] = ""--]] 
--[[Translation missing --]]
--[[ L["Control Up"] = ""--]] 
L["Cooldown Countdown"] = "Zahlen für Abklingzeiten anzeigen"
--[[Translation missing --]]
--[[ L["Cooldown Transparency"] = ""--]] 
--[[Translation missing --]]
--[[ L["Copy and Paste the text below"] = ""--]] 
--[[Translation missing --]]
--[[ L["Count"] = ""--]] 
--[[Translation missing --]]
--[[ L["CountText"] = ""--]] 
--[[Translation missing --]]
--[[ L["CountText_Description"] = ""--]] 
L["Create"] = "Erstellen"
L["Create New Bar"] = "Erstelle neue Aktionsleiste"
L["Create_Description"] = "Erstelle eine leere Aktionsleiste des gewählten Typs"
L["Ctrl"] = "Strg"
--[[Translation missing --]]
--[[ L["Current Level/Rank"] = ""--]] 
--[[Translation missing --]]
--[[ L["Current/Next"] = ""--]] 
--[[Translation missing --]]
--[[ L["Custom"] = ""--]] 
--[[Translation missing --]]
--[[ L["Custom Action States"] = ""--]] 
--[[Translation missing --]]
--[[ L["Custom Icon"] = ""--]] 
--[[Translation missing --]]
--[[ L["Custom States"] = ""--]] 
--[[Translation missing --]]
--[[ L["Custom_Option"] = ""--]] 
L["Default"] = "Standard"
--[[Translation missing --]]
--[[ L["Default Alert"] = ""--]] 
L["Defensive"] = "Defensiv"
L["Delete"] = "Löschen"
L["Delete Current Bar"] = "Lösche aktuelle Aktionsleiste"
L["Delete_Description"] = "Lösche die aktuell gewählte Aktionsleiste"
--[[Translation missing --]]
--[[ L["Dialog"] = ""--]] 
--[[Translation missing --]]
--[[ L["Display button for specialization 1"] = ""--]] 
--[[Translation missing --]]
--[[ L["Display button for specialization 2"] = ""--]] 
--[[Translation missing --]]
--[[ L["Display button for specialization 3"] = ""--]] 
--[[Translation missing --]]
--[[ L["Display button for specialization 4"] = ""--]] 
L["Display Minimap Button"] = "Minimap Symbol anzeigen"
--[[Translation missing --]]
--[[ L["Display the Blizzard UI"] = ""--]] 
L["Done"] = "Fertig"
--[[Translation missing --]]
--[[ L["Down Clicks"] = ""--]] 
--[[Translation missing --]]
--[[ L["DownClick"] = ""--]] 
--[[Translation missing --]]
--[[ L["DownClick_Description"] = ""--]] 
L["Edit"] = "edit"
L["Edit Bindings"] = "Bearbeite Tastaturbelegung"
--[[Translation missing --]]
--[[ L["Edit_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Empty Button"] = ""--]] 
--[[Translation missing --]]
--[[ L["Enable Tooltips"] = ""--]] 
--[[Translation missing --]]
--[[ L["Enhanced"] = ""--]] 
--[[Translation missing --]]
--[[ L["Extra Action Bar"] = ""--]] 
--[[Translation missing --]]
--[[ L["Extra Bar"] = ""--]] 
--[[Translation missing --]]
--[[ L["Extrabar"] = ""--]] 
--[[Translation missing --]]
--[[ L["F.A.Q."] = ""--]] 
--[[Translation missing --]]
--[[ L["Faction"] = ""--]] 
--[[Translation missing --]]
--[[ L["FAQ_Intro"] = ""--]] 
--[[Translation missing --]]
--[[ L["Favorite"] = ""--]] 
L["Fishing"] = "Angeln"
L["Fishing Pole"] = "Angelrute"
--[[Translation missing --]]
--[[ L["Flying"] = ""--]] 
--[[Translation missing --]]
--[[ L["Flyout"] = ""--]] 
--[[Translation missing --]]
--[[ L["Flyout Options"] = ""--]] 
--[[Translation missing --]]
--[[ L["Flyout_FAQ"] = ""--]] 
--[[Translation missing --]]
--[[ L["Focus-Cast by modifier"] = ""--]] 
--[[Translation missing --]]
--[[ L["Follow"] = ""--]] 
--[[Translation missing --]]
--[[ L["Frequently Asked Questions"] = ""--]] 
--[[Translation missing --]]
--[[ L["Friendly"] = ""--]] 
--[[Translation missing --]]
--[[ L["Fun"] = ""--]] 
--[[Translation missing --]]
--[[ L["Gel"] = ""--]] 
--[[Translation missing --]]
--[[ L["General Options"] = ""--]] 
--[[Translation missing --]]
--[[ L["General_Bar_Configuration_Option_FAQ"] = ""--]] 
L["Generate Macro"] = "Erstelle Makro"
--[[Translation missing --]]
--[[ L["Glassed"] = ""--]] 
L["Group"] = "Gruppe"
--[[Translation missing --]]
--[[ L["Group: Party"] = ""--]] 
--[[Translation missing --]]
--[[ L["Group: Raid"] = ""--]] 
L["H+V Padding"] = "H+V Abstand"
--[[Translation missing --]]
--[[ L["Harm"] = ""--]] 
--[[Translation missing --]]
--[[ L["Has Target"] = ""--]] 
--[[Translation missing --]]
--[[ L["Healer Form"] = ""--]] 
L["Height"] = "Höhe"
L["Help"] = "Hilfe"
L["Hidden"] = "Versteckt"
L["Hide"] = "Verstecke"
L["Hide in Combat"] = "Verstecke im Kampf"
--[[Translation missing --]]
--[[ L["Home State"] = ""--]] 
L["Horiz Padding"] = "Horizontaler Abstand"
L["Horizontal"] = "Horizontal"
L["Horozontal_and_Vertical_Padding_Instructions"] = "Gib eine Zahl ein um den horizontalen und vertikalen Abstand der Aktionsbuttons zu ändern. "
L["Horozontal_Padding_Instructions"] = "Gib eine Zahl ein um den horizontalen Abstand der Aktionsbuttons zu ändern. "
--[[Translation missing --]]
--[[ L["Hostile"] = ""--]] 
--[[Translation missing --]]
--[[ L["How to use"] = ""--]] 
--[[Translation missing --]]
--[[ L["In Combat"] = ""--]] 
--[[Translation missing --]]
--[[ L["Indoors"] = ""--]] 
--[[Translation missing --]]
--[[ L["Invalid index"] = ""--]] 
--[[Translation missing --]]
--[[ L["Item"] = ""--]] 
--[[Translation missing --]]
--[[ L["Keybind Label"] = ""--]] 
--[[Translation missing --]]
--[[ L["Keybind_Tooltip_1"] = ""--]] 
--[[Translation missing --]]
--[[ L["Keybind_Tooltip_2"] = ""--]] 
--[[Translation missing --]]
--[[ L["Keybind_Tooltip_3"] = ""--]] 
--[[Translation missing --]]
--[[ L["Keybind_Tooltip_4"] = ""--]] 
--[[Translation missing --]]
--[[ L["Keybind_Tooltip_5"] = ""--]] 
--[[Translation missing --]]
--[[ L["Keys"] = ""--]] 
--[[Translation missing --]]
--[[ L["Last State"] = ""--]] 
--[[Translation missing --]]
--[[ L["Left"] = ""--]] 
--[[Translation missing --]]
--[[ L["Left Text"] = ""--]] 
--[[Translation missing --]]
--[[ L["Left-Click"] = ""--]] 
--[[Translation missing --]]
--[[ L["Level"] = ""--]] 
--[[Translation missing --]]
--[[ L["Levels"] = ""--]] 
--[[Translation missing --]]
--[[ L["Linear"] = ""--]] 
--[[Translation missing --]]
--[[ L["Lock"] = ""--]] 
--[[Translation missing --]]
--[[ L["Lock Actions"] = ""--]] 
--[[Translation missing --]]
--[[ L["Lock_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Locked"] = ""--]] 
--[[Translation missing --]]
--[[ L["Macro Data"] = ""--]] 
--[[Translation missing --]]
--[[ L["Macro Name"] = ""--]] 
--[[Translation missing --]]
--[[ L["MacroText"] = ""--]] 
--[[Translation missing --]]
--[[ L["MacroText_Description"] = ""--]] 
L["Melee"] = "Nahkampf"
--[[Translation missing --]]
--[[ L["Menu"] = ""--]] 
--[[Translation missing --]]
--[[ L["Menu Bar"] = ""--]] 
--[[Translation missing --]]
--[[ L["Menu_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Mirror Bar"] = ""--]] 
L["Mount"] = "Reittier"
--[[Translation missing --]]
--[[ L["Mounted"] = ""--]] 
--[[Translation missing --]]
--[[ L["Mouseover"] = ""--]] 
--[[Translation missing --]]
--[[ L["Mouse-Over Casting"] = ""--]] 
--[[Translation missing --]]
--[[ L["Mouse-Over Casting Modifier"] = ""--]] 
--[[Translation missing --]]
--[[ L["Mouseover Text"] = ""--]] 
--[[Translation missing --]]
--[[ L["Move To"] = ""--]] 
--[[Translation missing --]]
--[[ L["MoveSpecButtons"] = ""--]] 
--[[Translation missing --]]
--[[ L["MoveSpecButtons_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Multi Spec"] = ""--]] 
--[[Translation missing --]]
--[[ L["Name"] = ""--]] 
--[[Translation missing --]]
--[[ L["Name_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["No"] = ""--]] 
L["No bar selected or command invalid"] = "Keine Aktionsleiste ausgewählt oder ungültiger Befehl "
--[[Translation missing --]]
--[[ L["No Extra Bar"] = ""--]] 
--[[Translation missing --]]
--[[ L["No Fishing Pole"] = ""--]] 
--[[Translation missing --]]
--[[ L["No Group"] = ""--]] 
--[[Translation missing --]]
--[[ L["No Override Bar"] = ""--]] 
--[[Translation missing --]]
--[[ L["No Pet"] = ""--]] 
--[[Translation missing --]]
--[[ L["No Possess"] = ""--]] 
--[[Translation missing --]]
--[[ L["No Stealth"] = ""--]] 
--[[Translation missing --]]
--[[ L["No Target"] = ""--]] 
--[[Translation missing --]]
--[[ L["No Vehicle"] = ""--]] 
--[[Translation missing --]]
--[[ L["None"] = ""--]] 
--[[Translation missing --]]
--[[ L["Number of Buttons"] = ""--]] 
--[[Translation missing --]]
--[[ L["Object Editor"] = ""--]] 
--[[Translation missing --]]
--[[ L["Off"] = ""--]] 
--[[Translation missing --]]
--[[ L["Open the Interface Menu"] = ""--]] 
--[[Translation missing --]]
--[[ L["Option"] = ""--]] 
--[[Translation missing --]]
--[[ L["Options"] = ""--]] 
--[[Translation missing --]]
--[[ L["Orientation"] = ""--]] 
--[[Translation missing --]]
--[[ L["Out of Combat"] = ""--]] 
--[[Translation missing --]]
--[[ L["Outdoors"] = ""--]] 
--[[Translation missing --]]
--[[ L["Out-of-Range Indicator"] = ""--]] 
--[[Translation missing --]]
--[[ L["Output"] = ""--]] 
--[[Translation missing --]]
--[[ L["Override"] = ""--]] 
--[[Translation missing --]]
--[[ L["Override Bar"] = ""--]] 
--[[Translation missing --]]
--[[ L["PadH"] = ""--]] 
--[[Translation missing --]]
--[[ L["PadH_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["PadHV"] = ""--]] 
--[[Translation missing --]]
--[[ L["PadHV_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["PadV"] = ""--]] 
--[[Translation missing --]]
--[[ L["PadV_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Page 1"] = ""--]] 
--[[Translation missing --]]
--[[ L["Page 2"] = ""--]] 
--[[Translation missing --]]
--[[ L["Page 3"] = ""--]] 
--[[Translation missing --]]
--[[ L["Page 4"] = ""--]] 
--[[Translation missing --]]
--[[ L["Page 5"] = ""--]] 
--[[Translation missing --]]
--[[ L["Page 6"] = ""--]] 
--[[Translation missing --]]
--[[ L["Paged"] = ""--]] 
--[[Translation missing --]]
--[[ L["Passive"] = ""--]] 
--[[Translation missing --]]
--[[ L["Path"] = ""--]] 
--[[Translation missing --]]
--[[ L["Percent"] = ""--]] 
--[[Translation missing --]]
--[[ L["Pet"] = ""--]] 
--[[Translation missing --]]
--[[ L["Pet Actions can not be added to Neuron bars at this time."] = ""--]] 
L["Pet Bar"] = "Begleiterleiste"
--[[Translation missing --]]
--[[ L["Pet Exists"] = ""--]] 
--[[Translation missing --]]
--[[ L["Point"] = ""--]] 
--[[Translation missing --]]
--[[ L["Points"] = ""--]] 
--[[Translation missing --]]
--[[ L["Possess"] = ""--]] 
--[[Translation missing --]]
--[[ L["Preset Action States"] = ""--]] 
--[[Translation missing --]]
--[[ L["Prestige"] = ""--]] 
--[[Translation missing --]]
--[[ L["Priority"] = ""--]] 
L["Profession"] = "Beruf"
L["Radius"] = "Radius"
--[[Translation missing --]]
--[[ L["Reaction"] = ""--]] 
--[[Translation missing --]]
--[[ L["Relative To"] = ""--]] 
--[[Translation missing --]]
--[[ L["Remap selected stance to:"] = ""--]] 
--[[Translation missing --]]
--[[ L["Remove"] = ""--]] 
--[[Translation missing --]]
--[[ L["Remove_Description"] = ""--]] 
L["Rep Bar"] = "Rufleiste"
--[[Translation missing --]]
--[[ L["Rested Levels"] = ""--]] 
--[[Translation missing --]]
--[[ L["Resting"] = ""--]] 
--[[Translation missing --]]
--[[ L["Retreat"] = ""--]] 
--[[Translation missing --]]
--[[ L["Retreat + Mouseover"] = ""--]] 
--[[Translation missing --]]
--[[ L["Reward"] = ""--]] 
--[[Translation missing --]]
--[[ L["Right"] = ""--]] 
--[[Translation missing --]]
--[[ L["Right Text"] = ""--]] 
--[[Translation missing --]]
--[[ L["Right-Click"] = ""--]] 
--[[Translation missing --]]
--[[ L["Right-click Self-Cast"] = ""--]] 
L["Save"] = "Speichern"
--[[Translation missing --]]
--[[ L["Scale"] = ""--]] 
--[[Translation missing --]]
--[[ L["Scale_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Search"] = ""--]] 
--[[Translation missing --]]
--[[ L["Select a modifier for Mouse-Over Casting"] = ""--]] 
--[[Translation missing --]]
--[[ L["Select a stance to remap:"] = ""--]] 
--[[Translation missing --]]
--[[ L["Select an Option"] = ""--]] 
--[[Translation missing --]]
--[[ L["Select Bar Type"] = ""--]] 
--[[Translation missing --]]
--[[ L["Select the Focus-Cast Modifier"] = ""--]] 
--[[Translation missing --]]
--[[ L["Select the Self-Cast Modifier"] = ""--]] 
--[[Translation missing --]]
--[[ L["Self-Cast by modifier"] = ""--]] 
--[[Translation missing --]]
--[[ L["Shadow Dance"] = ""--]] 
--[[Translation missing --]]
--[[ L["Shape"] = ""--]] 
--[[Translation missing --]]
--[[ L["Shape_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Shapeshift"] = ""--]] 
L["Shift"] = "Umschalten"
--[[Translation missing --]]
--[[ L["Shift Down"] = ""--]] 
--[[Translation missing --]]
--[[ L["Shift Up"] = ""--]] 
--[[Translation missing --]]
--[[ L["Show"] = ""--]] 
--[[Translation missing --]]
--[[ L["Show Border Style"] = ""--]] 
L["Show Grid"] = "Zeige Raster"
--[[Translation missing --]]
--[[ L["Show On"] = ""--]] 
--[[Translation missing --]]
--[[ L["ShowGrid"] = ""--]] 
--[[Translation missing --]]
--[[ L["ShowGrid_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Shows / Hides the Default Blizzard UI"] = ""--]] 
--[[Translation missing --]]
--[[ L["Slider"] = ""--]] 
--[[Translation missing --]]
--[[ L["SnapTo"] = ""--]] 
--[[Translation missing --]]
--[[ L["SnapTo_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Soft"] = ""--]] 
L["Spell"] = "Zauber"
--[[Translation missing --]]
--[[ L["Spell Alerts"] = ""--]] 
--[[Translation missing --]]
--[[ L["Spell Target Options"] = ""--]] 
--[[Translation missing --]]
--[[ L["Spell_Target_Options_FAQ"] = ""--]] 
--[[Translation missing --]]
--[[ L["Spell_Targeting_Modifier_None_Reminder"] = ""--]] 
--[[Translation missing --]]
--[[ L["SpellGlow"] = ""--]] 
--[[Translation missing --]]
--[[ L["SpellGlow_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Spellglow_Instructions"] = ""--]] 
--[[Translation missing --]]
--[[ L["Stack/Charge Count Label"] = ""--]] 
--[[Translation missing --]]
--[[ L["Stance"] = ""--]] 
--[[Translation missing --]]
--[[ L["Stance Bar"] = ""--]] 
--[[Translation missing --]]
--[[ L["State"] = ""--]] 
--[[Translation missing --]]
--[[ L["State_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["StateList"] = ""--]] 
--[[Translation missing --]]
--[[ L["StateList_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Status Bar"] = ""--]] 
--[[Translation missing --]]
--[[ L["Stealth"] = ""--]] 
--[[Translation missing --]]
--[[ L["Strata"] = ""--]] 
--[[Translation missing --]]
--[[ L["Strata_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Subdued Alert"] = ""--]] 
--[[Translation missing --]]
--[[ L["Swimming"] = ""--]] 
L["Target"] = "Ziel"
--[[Translation missing --]]
--[[ L["Timer"] = ""--]] 
--[[Translation missing --]]
--[[ L["Timer_Limit_Invalid_Message"] = ""--]] 
--[[Translation missing --]]
--[[ L["Timer_Limit_Set_Message"] = ""--]] 
--[[Translation missing --]]
--[[ L["TimerLimit"] = ""--]] 
--[[Translation missing --]]
--[[ L["TimerLimit_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Toggle Keybind Mode"] = ""--]] 
--[[Translation missing --]]
--[[ L["Toggle the use of the modifier-based focus-cast functionality."] = ""--]] 
--[[Translation missing --]]
--[[ L["Toggle the use of the modifier-based mouse-over cast functionality."] = ""--]] 
--[[Translation missing --]]
--[[ L["Toggle the use of the modifier-based self-cast functionality."] = ""--]] 
--[[Translation missing --]]
--[[ L["Toggle the use of the right-click self-cast functionality."] = ""--]] 
--[[Translation missing --]]
--[[ L["Toggles the minimap button."] = ""--]] 
--[[Translation missing --]]
--[[ L["Tooltip"] = ""--]] 
--[[Translation missing --]]
--[[ L["Tooltip Text"] = ""--]] 
--[[Translation missing --]]
--[[ L["Tooltip_Instructions"] = ""--]] 
--[[Translation missing --]]
--[[ L["Tooltips"] = ""--]] 
--[[Translation missing --]]
--[[ L["Tooltips_Description"] = ""--]] 
L["Top"] = "Oben"
L["Top-Left"] = "Oben-Links"
L["Top-Right"] = "Oben-Rechts"
--[[Translation missing --]]
--[[ L["Track Azerite Power"] = ""--]] 
--[[Translation missing --]]
--[[ L["Track Character XP"] = ""--]] 
--[[Translation missing --]]
--[[ L["Track Honor Points"] = ""--]] 
--[[Translation missing --]]
--[[ L["Type"] = ""--]] 
--[[Translation missing --]]
--[[ L["Unit"] = ""--]] 
L["Unlock on ALT"] = "Entsperre mit ALT"
L["Unlock on CTRL"] = "Entsperre mit STRG"
L["Unlock on SHIFT"] = "Entsperre mit Umschalt"
--[[Translation missing --]]
--[[ L["Up Clicks"] = ""--]] 
--[[Translation missing --]]
--[[ L["UpClick"] = ""--]] 
--[[Translation missing --]]
--[[ L["UpClick_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Use macro note as button tooltip"] = ""--]] 
--[[Translation missing --]]
--[[ L["Valid States"] = ""--]] 
--[[Translation missing --]]
--[[ L["Vanish"] = ""--]] 
L["Vehicle"] = "Fahrzeug"
--[[Translation missing --]]
--[[ L["Vehicle Exit Bar"] = ""--]] 
--[[Translation missing --]]
--[[ L["Velvet"] = ""--]] 
L["Vert Padding"] = "Vertikaler Abstand"
L["Vertical"] = "vertikal"
L["Vertical_Padding_Instructions"] = "Gib eine Zahl ein um den vertikalen Abstand der Aktionsbuttons zu ändern. "
--[[Translation missing --]]
--[[ L["Vis"] = ""--]] 
--[[Translation missing --]]
--[[ L["Vis_Description"] = ""--]] 
L["Width"] = "Breite"
--[[Translation missing --]]
--[[ L["X"] = ""--]] 
--[[Translation missing --]]
--[[ L["X Position"] = ""--]] 
--[[Translation missing --]]
--[[ L["X_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["X_Position_Instructions"] = ""--]] 
L["XP Bar"] = "Erfahrungsleiste"
--[[Translation missing --]]
--[[ L["Y"] = ""--]] 
--[[Translation missing --]]
--[[ L["Y Position"] = ""--]] 
--[[Translation missing --]]
--[[ L["Y_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Y_Position_Instructions"] = ""--]] 
L["Yes"] = "Ja"
--[[Translation missing --]]
--[[ L["Zone Action Bar"] = ""--]] 


