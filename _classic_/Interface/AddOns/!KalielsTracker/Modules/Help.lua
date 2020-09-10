--- Kaliel's Tracker
--- Copyright (c) 2012-2020, Marouan Sabbagh <mar.sabbagh@gmail.com>
--- All Rights Reserved.
---
--- This file is part of addon Kaliel's Tracker.

local addonName, KT = ...
local M = KT:NewModule(addonName.."_Help")
KT.Help = M

local T = LibStub("MSA-Tutorials-1.0")
local _DBG = function(...) if _DBG then _DBG("KT", ...) end end

local db, dbChar
local mediaPath = "Interface\\AddOns\\"..addonName.."\\Media\\"
local helpPath = mediaPath.."Help\\"
local helpName = "help"
local helpNumPages = 8
local cTitle = "|cffffd200"
local cBold = "|cff00ffe3"
local cWarning = "|cffff7f00"
local cDots = "|cff808080"
local offs = "\n|T:1:8|t"
local ebSpace = "|T:22:1|t"
local beta = "|cffff7fff[Beta]|r"
local new = "|cffff7fff[NEW]|r"

local KTF = KT.frame

--------------
-- Internal --
--------------

local function AddonInfo(name)
	local info = "Addon "..name
	if IsAddOnLoaded(name) then
		info = info.." |cff00ff00is installed|r."
	else
		info = info.." |cffff0000is not installed|r."
	end
	info = info.." Support you can enable / disable in Options."
	return info
end

local function SetupTutorials()
	T.RegisterTutorial(helpName, {
		savedvariable = KT.db.global,
		key = "helpTutorial",
		title = KT.title.." |cffffffffv"..KT.version.."|r",
		icon = helpPath.."KT_logo",
		font = "Fonts\\FRIZQT__.TTF",
		width = 552,
		imageHeight = 256,
		{	-- 1
			image = helpPath.."help_kaliels-tracker",
			text = cTitle..KT.title.." (Classic)|r replaces default tracker and adds some features from WoW Retail to WoW Classic.\n\n"..
					"Some features:\n"..
					"- Change tracker position\n"..
					"- Expand / Collapse tracker relative to selected position (direction)\n"..
					"- Auto set trackers height by content with max. height limit\n"..
					"- Scrolling when content is greater than max. height\n"..
					"- Remember collapsed tracker after logout / exit game\n\n"..
					"... and many other enhancements (see next pages).",
			shine = KTF,
			shineTop = 5,
			shineBottom = -5,
			shineLeft = -6,
			shineRight = 6,
		},
		{	-- 2
			image = helpPath.."help_header-buttons",
			imageHeight = 128,
			text = cTitle.."Header buttons|r\n\n"..
					"Minimize button:                                Other buttons:\n"..
					"|T"..mediaPath.."UI-KT-HeaderButtons:14:14:-1:-1:32:64:0:14:0:14:209:170:0|t "..cDots.."...|r Expand Tracker                          "..
					"|T"..mediaPath.."UI-KT-HeaderButtons:14:14:3:-1:32:64:16:30:0:14:209:170:0|t  "..cDots.."...|r Open Quest Log\n"..
					"|T"..mediaPath.."UI-KT-HeaderButtons:14:14:-1:-1:32:64:0:14:16:30:209:170:0|t "..cDots.."...|r Collapse Tracker                        "..
					"|T"..mediaPath.."UI-KT-HeaderButtons:14:14:3:-1:32:64:16:30:32:46:209:170:0|t  "..cDots.."...|r Open Filters menu\n"..
					"|T"..mediaPath.."UI-KT-HeaderButtons:14:14:-1:-1:32:64:0:14:32:46:209:170:0|t "..cDots.."...|r when is tracker empty\n\n"..
					"Button |T"..mediaPath.."UI-KT-HeaderButtons:14:14:-1:-1:32:64:16:30:0:14:209:170:0|t "..
					"you can disable in Options.\n\n"..
					"You can set "..cBold.."[key bind]|r for Minimize button.\n"..
					cBold.."Alt+Click|r on Minimize button opens "..KT.title.." Options.",
			textY = 16,
			shine = KTF.MinimizeButton,
			shineTop = 13,
			shineBottom = -14,
			shineRight = 16,
		},
		{	-- 3
			image = helpPath.."help_quest-title-tags",
			imageHeight = 128,
			text = cTitle.."Quest title tags|r\n\n"..
					"Quest level |cffff8000[42]|r is at the beginning of the quest title.\n"..
					"Quest type tags are at the end of quest title.\n\n"..
					KT.CreateQuestTagIcon(nil, 7, 14, 2, -3, 0.34, 0.425, 0, 0.28125).." "..cDots.."........|r Daily quest|T:14:121|t"..
						KT.CreateQuestTagIcon(nil, 16, 16, 0, -3, unpack(QUEST_TAG_TCOORDS[Enum.QuestTag.Heroic])).." "..cDots.."......|r Heroic quest\n"..
					KT.CreateQuestTagIcon(nil, 7, 14, 2, -3, 0.34, 0.425, 0, 0.28125)..KT.CreateQuestTagIcon(nil, 7, 14, 0, -3, 0.34, 0.425, 0, 0.28125).." "..cDots.."......|r Weekly quest|T:14:107|t"..
						KT.CreateQuestTagIcon(nil, 16, 16, 0, -3, unpack(QUEST_TAG_TCOORDS[Enum.QuestTag.Pvp])).." "..cDots.."......|r PvP quest\n"..
					KT.CreateQuestTagIcon(nil, 16, 16, 0, -3, unpack(QUEST_TAG_TCOORDS[Enum.QuestTag.Group])).." "..cDots.."......|r Group quest|T:14:114|t"..
						"|cffd900b8S|r "..cDots.."........|r Scenario quest\n"..
					KT.CreateQuestTagIcon(nil, 16, 16, 0, -3, unpack(QUEST_TAG_TCOORDS[Enum.QuestTag.Dungeon])).." "..cDots.."......|r Dungeon quest|T:14:95|t"..
						KT.CreateQuestTagIcon(nil, 16, 16, 0, -3, unpack(QUEST_TAG_TCOORDS[Enum.QuestTag.Account])).." "..cDots.."......|r Account quest\n"..
					KT.CreateQuestTagIcon(nil, 17, 17, -1, -3, unpack(QUEST_TAG_TCOORDS[Enum.QuestTag.Raid])).." "..cDots.."......|r Raid quest|T:14:125|t"..
						KT.CreateQuestTagIcon(nil, 7, 14, 2, -3, 0.055, 0.134, 0.28125, 0.5625).." "..cDots.."........|r Legendary quest\n\n"..
					cWarning.."Note:|r Not all of these tags are used in Classic.",
			shineTop = 10,
			shineBottom = -9,
			shineLeft = -12,
			shineRight = 10,
		},
		{	-- 4
			image = helpPath.."help_tracker-filters",
			text = cTitle.."Tracker Filters|r\n\n"..
					"For open Filters menu "..cBold.."Click|r on the button |T"..mediaPath.."UI-KT-HeaderButtons:14:14:-2:-1:32:64:16:30:32:46:209:170:0|t.\n\n"..
					"There are two types of filters:\n"..
					cTitle.."Static filter|r - adds quests to tracker by criterion (e.g. \"Daily\") and then you can add / remove items by hand.\n"..
					cTitle.."Dynamic filter|r - automatically adding quests to tracker by criterion (e.g. \"|cff00ff00Auto|r Zone\") "..
					"and continuously changing them. This type doesn't allow add / remove items by hand."..
					"When is some Dynamic filter active, header button is green |T"..mediaPath.."UI-KT-HeaderButtons:14:14:-2:-1:32:64:16:30:32:46:0:255:0|t.\n\n"..
					"This menu displays other options affecting the content of the tracker.",
			textY = 16,
			shine = KTF.FilterButton,
			shineTop = 10,
			shineBottom = -11,
			shineLeft = -10,
			shineRight = 11,
		},
		{	-- 5
			image = helpPath.."help_tracker-modules",
			text = cTitle.."Order of Modules|r\n\n"..
					"Allows to change the order of modules inside the tracker. Supports all modules including external (e.g. PetTracker).\n\n"..
					cWarning.."Note:|r In Classic is not yet in use.",
			shine = KTF,
			shineTop = 5,
			shineBottom = -5,
			shineLeft = -6,
			shineRight = 6,
		},
		{	-- 6
			image = helpPath.."help_quest-log",
			text = cTitle.."Quest Log|r\n\n"..
					cWarning.."Note:|r In Blizzard's Quest Log and supported Quest Log addons is disabled click on Quest Log "..
					"headers (for collapse / expand). This is because collapsed sections hide contained quests for "..KT.title..".\n\n"..

					cTitle.."Supported addons|r\n"..
					"- Classic Quest Log\n"..ebSpace.."\n"..
					"- QuestGuru\n"..ebSpace.."\n"..
					"- QuestLogEx\n"..ebSpace,
			editbox = {
				{
					text = "https://www.wowinterface.com/downloads/info24937-ClassicQuestLogforClassic.html",
					width = 485,
					left = 9,
					bottom = 71,
				},
				{
					text = "https://www.curseforge.com/wow/addons/questguru_classic",
					width = 485,
					left = 9,
					bottom = 37,
				},
				{
					text = "https://www.wowinterface.com/downloads/info24980-QuestLogEx.html",
					width = 485,
					left = 9,
					bottom = 3,
				}
			},
			shine = KTF,
			shineTop = 5,
			shineBottom = -5,
			shineLeft = -6,
			shineRight = 6,
		},
		{	-- 7
			image = helpPath.."help_addon-questie",
			text = cTitle.."Support addon Questie|r\n\n"..
					"Questie support adds some features that use this addon's quest database.\n\n"..
					cTitle.."Zone filtering improvements|r "..new.."\n"..
					"Improved zone filtering now shows relevant quests in all quest-related zones (start, progress and end locations).\n\n"..
					cTitle.."Quest Item buttons|r\n"..
					"For quests with usable items, shows this items as a buttons inside the tracker.\n\n"..
					cTitle.."Quest dropdown menu options|r\n"..
					"- "..cBold.."Show on Map|r - displays a map with closest quest objectives.\n"..
					"- "..cBold.."Set TomTom Waypoint|r - sets TomTom arrow for closest quest objective. This"..
					offs.."option is shown, if addon TomTom is installed.\n\n"..
					"Options "..cBold.."Show on Map|r and "..cBold.."Set TomTom Waypoint|r are disabled, if no map data exists.\n\n"..
					AddonInfo("Questie").."\n"..ebSpace,
			editbox = {
				{
					text = "https://www.curseforge.com/wow/addons/questie",
					width = 450,
					bottom = 3,
				}
			},
			shine = KTF,
			shineTop = 5,
			shineBottom = -5,
			shineLeft = -6,
			shineRight = 6,
		},
		{	-- 8
			text = cTitle.."         What's NEW in version |cffffffff0.3.1|r\n\n"..
					"- FIXED - ticket #34 - Error, when no Blizzard quest data loaded\n"..
					"- UPDATED - Addon support - Questie 6.0.4\n"..
					"- UPDATED - Addon support - ElvUI 1.27, Tukui 1.38\n"..
					"- UPDATED - Libs\n"..
					"- ADDED - Tracker - reduces the width of the minimized tracker, when option"..
					offs.."\"Collapsed tracker text\" is set to \"None\"\n\n"..

					cTitle.."Issue reporting|r\n"..
					"For reporting please use "..cBold.."Tickets|r instead of Comments on CurseForge.\n"..ebSpace.."\n\n"..

					cWarning.."Before reporting of errors, please deactivate other addons and make sure the bug is not caused "..
					"by a collision with another addon.|r",
			textY = -20,
			editbox = {
				{
					text = "https://www.curseforge.com/wow/addons/kaliels-tracker-classic/issues",
					width = 450,
					bottom = 43,
				}
			},
			shine = KTF,
			shineTop = 5,
			shineBottom = -5,
			shineLeft = -6,
			shineRight = 6,
		},
		onShow = function(self, i)
			if dbChar.collapsed then
				ObjectiveTracker_MinimizeButton_OnClick()
			end
			if i == 2 then
				if KTF.FilterButton then
					self[i].shineLeft = db.headerOtherButtons and -55 or -35
				else
					self[i].shineLeft = db.headerOtherButtons and -35 or -15
				end
			elseif i == 3 then
				local questInfo = KT_GetQuestListInfo(1)
				if questInfo then
					local block = QUEST_TRACKER_MODULE.usedBlocks[questInfo.id]
					if block then
						self[i].shine = block
					end
				end
			end
		end
	})
end

--------------
-- External --
--------------

function M:OnInitialize()
	_DBG("|cffffff00Init|r - "..self:GetName(), true)
	db = KT.db.profile
	dbChar = KT.db.char
end

function M:OnEnable()
	_DBG("|cff00ff00Enable|r - "..self:GetName(), true)
	SetupTutorials()
	local last = false
	if KT.version ~= KT.db.global.version then
		local data = T.GetTutorial(helpName)
		local index = data.savedvariable[data.key]
		if index then
			last = index < helpNumPages and index or true
			T.ResetTutorial(helpName)
		end
	end
	T.TriggerTutorial(helpName, helpNumPages, last)
end

function M:ShowHelp(index)
	InterfaceOptionsFrame:Hide()
	T.ResetTutorial(helpName)
	T.TriggerTutorial(helpName, helpNumPages, index or false)
end