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

---@class BAR : CheckButton @This is our bar object that serves as the container for all of our button objects
local BAR = setmetatable({}, {__index = CreateFrame("CheckButton")}) --this is the metatable for our button object
Neuron.BAR = BAR

local L = LibStub("AceLocale-3.0"):GetLocale("Neuron")

LibStub("AceTimer-3.0"):Embed(BAR)
LibStub("AceEvent-3.0"):Embed(BAR)


local MAS = Neuron.MANAGED_ACTION_STATES
local MBS = Neuron.MANAGED_BAR_STATES

local alphaDir, alphaTimer = 0, 0

Neuron.AlphaUps = {
	L["Off"],
	L["Mouseover"],
	L["Combat"],
	L["Combat + Mouseover"],
	L["Retreat"],
	L["Retreat + Mouseover"],
}
local alphaUps = Neuron.AlphaUps


Neuron.BarShapes = {
	L["Linear"],
	L["Circle"],
	L["Circle + One"],
}


local statetable = {}

local barShapes = Neuron.BarShapes

local handlerMT = setmetatable({}, { __index = CreateFrame("Frame") })

local TRASHCAN = CreateFrame("Frame", nil, UIParent)
TRASHCAN:Hide()



----------------------------------------------------

---Constructor: Create a new Neuron BAR object
---@param class string @The class type of the new bar
---@param barID number @The ID of the new bar object
---@return BAR @ A newly created BUTTON object
function BAR.new(class, barID)

	local data = Neuron.registeredBarData[class]

	local newBar

	--this is the creation of our bar object frame
	if _G["Neuron"..data.barType..barID] then --check to see if our bar already exists on the global namespace
		newBar = CreateFrame("CheckButton", "Neuron"..data.barType..random(1000,10000000), UIParent, "NeuronBarTemplate") --in the case of trying to create a bar on a frame that already exists, create a random frame ID for this session only
		setmetatable(newBar, {__index = BAR})
	else
		newBar = CreateFrame("CheckButton", "Neuron"..data.barType..barID, UIParent, "NeuronBarTemplate")
		setmetatable(newBar, {__index = BAR})
	end

	--load saved data
	for key,value in pairs(data) do
		newBar[key] = value
	end

	--safety check
	if not data.barDB[barID] then --if the database for a bar doesn't exist (because it's a new bar?)
		data.barDB[barID] = {}
	end

	newBar.DB = data.barDB[barID]

	--create empty buttons table that will hold onto all of our button object handles
	newBar.buttons = {}

	newBar.DB.id = barID
	newBar.class = class
	newBar.stateschanged = true
	newBar.vischanged =true
	newBar.elapsed = 0
	newBar.click = nil
	newBar.dragged = false
	newBar.selected = false
	newBar.toggleframe = newBar
	newBar.microAdjust = false
	newBar.vis = {}
	newBar.Text:Hide()
	newBar.Message:Hide()
	newBar.MessageBG:Hide()

	newBar:SetWidth(375)
	newBar:SetHeight(40)
	newBar:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background",
	                    edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
	                    tile = true, tileSize = 16, edgeSize = 12,
	                    insets = {left = 4, right = 4, top = 4, bottom = 4}})
	newBar:SetBackdropColor(0,0,0,0.4)
	newBar:SetBackdropBorderColor(0,0,0,0)
	newBar:RegisterForClicks("AnyDown", "AnyUp")
	newBar:RegisterForDrag("LeftButton")
	newBar:SetMovable(true)
	newBar:EnableKeyboard(false)
	newBar:SetPoint("CENTER", "UIParent", "CENTER", 0, 0)

	newBar:SetScript("OnClick", function(self, ...) self:OnClick(...) end)
	newBar:SetScript("OnDragStart", function(self, ...) self:OnDragStart(...) end)
	newBar:SetScript("OnDragStop", function(self, ...) self:OnDragStop(...) end)
	newBar:SetScript("OnEnter", function(self, ...) self:OnEnter(...) end)
	newBar:SetScript("OnLeave", function(self, ...) self:OnLeave(...) end)
	newBar:SetScript("OnKeyDown", function(self, key, onupdate) self:OnKeyDown(key, onupdate) end)
	newBar:SetScript("OnKeyUp", function(self, key) self:OnKeyUp(key) end)
	newBar:SetScript("OnShow", function(self) self:OnShow() end)
	newBar:SetScript("OnHide", function(self) self:OnHide() end)

	table.insert(Neuron.BARIndex, newBar) --insert our new bar at the end of the table

	newBar:CreateDriver()
	newBar:CreateHandler()
	newBar:CreateWatcher()

	newBar:LoadData()

	newBar:Hide() --hide the transparent blue overlay that we show in the edit mode

	return newBar
end

---------------------------------------------------

-----------------------------------
-----Bar Add/Remove Functions------
-----------------------------------


---This function is used for creating brand new bars, and it is really just a wrapper for the BAR constructor with a couple of assumptions and checks
function BAR:CreateNewBar(class)

	if not class and Neuron.registeredBarData[class] then --if the class isn't registered, go ahead and bail out.
		Neuron.PrintBarTypes()
		return
	end

	local barID = #Neuron.registeredBarData[class].barDB + 1 --increment 1 higher than the current number of bars in this class of bar's database

	local newBar = BAR.new(class, barID) --create new bar

	newBar.objTemplate.new(newBar, 1) --add at least 1 button to a new bar
	newBar:ChangeBar()
	newBar:Load() --load the bar

	newBar:Show() --Show the transparent blue overlay that we show in the edit mode
end


Neuron.CreateNewBar = BAR.CreateNewBar --this is so the slash function works correctly


function BAR:DeleteBar()
	local handler = self.handler

	handler:SetAttribute("state-current", "homestate")
	handler:SetAttribute("state-last", "homestate")
	handler:SetAttribute("showstates", "homestate")
	self:ClearStates(handler, "homestate")

	for state, values in pairs(MAS) do
		if self.data[state] and self[state] and self[state].registered then
			if state == "custom" and self.data.customRange then
				local start = tonumber(string.match(self.data.customRange, "^%d+"))
				local stop = tonumber(string.match(self.data.customRange, "%d+$"))

				if start and stop then
					self:ClearStates(handler, state)--, start, stop)
				end
			else
				self:ClearStates(handler, state)--, values.rangeStart, values.rangeStop)
			end
		end
	end

	self:RemoveObjectsFromBar(#self.buttons)

	self:SetScript("OnClick", function() end)
	self:SetScript("OnDragStart", function() end)
	self:SetScript("OnDragStop", function() end)
	self:SetScript("OnEnter", function() end)
	self:SetScript("OnLeave", function() end)
	self:SetScript("OnKeyDown", function() end)
	self:SetScript("OnKeyUp", function() end)
	self:SetScript("OnShow", function() end)
	self:SetScript("OnHide", function() end)

	self:SetWidth(36)
	self:SetHeight(36)
	self:ClearAllPoints()
	self:SetPoint("CENTER")
	self:Hide()

	table.remove(self.barDB, self.DB.id) --removes the bar from the database, along with all of its buttons

	for k,v in pairs(self.barDB) do

		local oldID = v.id --keep track of the oldID

		v.id = k --update the bar id to match the new index value, this is VERY important

		if v.name == self.barLabel.." "..oldID then --if the name is name according to the oldID, update the name to the new ID (i.e. if they never changed the name, we don't want to overwrite custom names)
			v.name = self.barLabel.." "..v.id
		end
	end

	local index --find the location of our bar in the bar table
	for i,v in ipairs(Neuron.BARIndex) do
		if v == self then
			index = i
		end
	end

	if index then --if our index was found (it should always be found) remove it from the array
		table.remove(Neuron.BARIndex, index)
	end

	if NeuronBarEditor and NeuronBarEditor:IsVisible() then
		Neuron.NeuronGUI:UpdateBarGUI()
	end

	for i,v in pairs(Neuron.BARIndex) do --update bars to reflect new names, if they have new names
		v:Update()
	end

end



function BAR:AddObjectsToBar(num) --called from NeuronGUI

	num = tonumber(num)

	if not num then
		num = 1
	end

	for i=1,num do

		local buttonID = #self.buttons + 1

		if #self.buttons < self.objMax then
			local buttonBaseObject = Neuron.registeredBarData[self.class].objTemplate
			buttonBaseObject.new(self, buttonID)
		end

	end

	self:LoadObjects()
	self:SetObjectLoc()
	self:SetPerimeter()
	self:SetSize()
	self:Update()
	self:UpdateBarObjectVisibility()

end


function BAR:RemoveObjectsFromBar(num) --called from NeuronGUI

	if not num then
		num = 1
	end


	for i=1,num do

		local id = #self.buttons --always the last button

		local object = self.buttons[id]

		if object then

			object:ClearAllPoints()


			table.remove(self.DB.buttons, id) --this is somewhat redundant if deleting a bar, but it doesn't hurt and is important for individual button deletions
			table.remove(self.buttons, id)


			if object.Binder then
				object.Binder:ClearBindings()
			end

			object:SetParent(TRASHCAN)


		end

		self:SetObjectLoc()
		self:SetPerimeter()
		self:SetSize()
		self:Update()
	end

end
-----------------------------------


------------------------------------------------------------
--------------------Helper Functions------------------------
------------------------------------------------------------

local function round(num, idp)
	local mult = 10^(idp or 0)
	return math.floor(num * mult + 0.5) / mult
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------



function BAR.IsMouseOverSelfOrWatchFrame(frame)
	if frame:IsMouseOver() then
		return true
	end

	if frame.watchframes then
		for handler in pairs(frame.watchframes) do
			if handler:IsMouseOver() and handler:IsVisible() then
				return true
			end
		end
	end

	return false
end


---this function is set via a repeating scheduled timer in SetAutoHide()
function BAR:AutoHideUpdate()

	if self.data.autoHide and self.handler~=nil then

		if not Neuron.buttonEditMode and not Neuron.barEditMode and not Neuron.bindingMode then

			if self:IsShown() then
				self.handler:SetAlpha(1)
			else

				if BAR.IsMouseOverSelfOrWatchFrame(self) then
					if self.handler:GetAlpha() < self.data.alpha then
						if self.handler:GetAlpha()+self.data.fadeSpeed <= 1 then
							self.handler:SetAlpha(self.handler:GetAlpha()+self.data.fadeSpeed)
						else
							self.handler:SetAlpha(1)
						end
					end

				end

				if not BAR.IsMouseOverSelfOrWatchFrame(self) then
					if self.handler:GetAlpha() > 0 then
						if self.handler:GetAlpha()-self.data.fadeSpeed >= 0 then
							self.handler:SetAlpha(self.handler:GetAlpha()-self.data.fadeSpeed)
						else
							self.handler:SetAlpha(0)
						end
					end
				end
			end
		end
	end

end

function BAR:AlphaUpUpdate()
	if self.data.alphaUp and self.handler~=nil then

		if self:IsShown() then
			self.handler:SetAlpha(1)
		else

			if self.data.alphaUp == alphaUps[3] or self.data.alphaUp == alphaUps[4] then

				if InCombatLockdown() then

					if self.handler:GetAlpha() < 1 then
						if self.handler:GetAlpha()+self.data.fadeSpeed <= 1 then
							self.handler:SetAlpha(self.handler:GetAlpha()+self.data.fadeSpeed)
						else
							self.handler:SetAlpha(1)
						end
					end

				else
					if self.data.alphaUp == alphaUps[4] then

						if BAR.IsMouseOverSelfOrWatchFrame(self) then
							if self.handler:GetAlpha() < 1 then
								if self.handler:GetAlpha()+self.data.fadeSpeed <= 1 then
									self.handler:SetAlpha(self.handler:GetAlpha()+self.data.fadeSpeed)
								else
									self.handler:SetAlpha(1)
								end
							end
						else
							if self.handler:GetAlpha() > self.data.alpha then
								if self.handler:GetAlpha()-self.data.fadeSpeed >= self.data.alpha then
									self.handler:SetAlpha(self.handler:GetAlpha()-self.data.fadeSpeed)
								else
									self.handler:SetAlpha(self.data.alpha)
								end
							end
						end
					else
						if self.handler:GetAlpha() > self.data.alpha then
							if self.handler:GetAlpha()-self.data.fadeSpeed >= self.data.alpha then
								self.handler:SetAlpha(self.handler:GetAlpha()-self.data.fadeSpeed)
							else
								self.handler:SetAlpha(self.data.alpha)
							end
						end
					end
				end

			elseif self.data.alphaUp == alphaUps[5] or self.data.alphaUp == alphaUps[6] then

				if not InCombatLockdown() then

					if self.handler:GetAlpha() < 1 then
						if self.handler:GetAlpha()+self.data.fadeSpeed <= 1 then
							self.handler:SetAlpha(self.handler:GetAlpha()+self.data.fadeSpeed)
						else
							self.handler:SetAlpha(1)
						end
					end

				else
					if self.data.alphaUp == alphaUps[6] then

						if BAR.IsMouseOverSelfOrWatchFrame(self) then
							if self.handler:GetAlpha() < 1 then
								if self.handler:GetAlpha()+self.data.fadeSpeed <= 1 then
									self.handler:SetAlpha(self.handler:GetAlpha()+self.data.fadeSpeed)
								else
									self.handler:SetAlpha(1)
								end
							end
						else
							if self.handler:GetAlpha() > self.data.alpha then
								if self.handler:GetAlpha()-self.data.fadeSpeed >= self.data.alpha then
									self.handler:SetAlpha(self.handler:GetAlpha()-self.data.fadeSpeed)
								else
									self.handler:SetAlpha(self.data.alpha)
								end
							end
						end
					else
						if self.handler:GetAlpha() > k.alpha then
							if self.handler:GetAlpha()-self.data.fadeSpeed >= k.alpha then
								self.handler:SetAlpha(self.handler:GetAlpha()-self.data.fadeSpeed)
							else
								self.handler:SetAlpha(k.alpha)
							end
						end
					end
				end

			elseif self.data.alphaUp == alphaUps[2] then

				if BAR.IsMouseOverSelfOrWatchFrame(self) then
					if self.handler:GetAlpha() < 1 then
						if self.handler:GetAlpha()+self.data.fadeSpeed <= 1 then
							self.handler:SetAlpha(self.handler:GetAlpha()+self.data.fadeSpeed)
						else
							self.handler:SetAlpha(1)
						end
					end
				else
					if self.handler:GetAlpha() > self.data.alpha then
						if self.handler:GetAlpha()-self.data.fadeSpeed >= self.data.alpha then
							self.handler:SetAlpha(self.handler:GetAlpha()-self.data.fadeSpeed)
						else
							self.handler:SetAlpha(self.data.alpha)
						end
					end
				end
			end
		end
	end
end


function BAR:SetHidden(handler, show, hide)

	for k,v in pairs(self.vis) do
		if v.registered then
			return
		end
	end

	local isAnchorChild = handler:GetAttribute("isAnchorChild")

	if not hide and not isAnchorChild and (show or self:IsVisible()) then

		handler:Show()
	else
		if self.data.conceal then
			handler:SetAttribute("concealed", true)
			handler:Hide()
		elseif not self.data.barLink and not isAnchorChild then
			handler:SetAttribute("concealed", nil)
			handler:Show()
		end
	end
end

function BAR:SetAutoHide()
	if self.data.autoHide then
		if self:TimeLeft(self.autoHideTimer) == 0 then --safety check to make sure we don't re-set an already active timer
			self.autoHideTimer = self:ScheduleRepeatingTimer("AutoHideUpdate", .05)
		end
	else
		self:CancelTimer(self.autoHideTimer)
	end
end

function BAR:SetAlphaUp()
	if self.data.alphaUp then
		if self:TimeLeft(self.alphaUpTimer) == 0 then --safety check to make sure we don't re-set an already active timer
			self.alphaUpTimer = self:ScheduleRepeatingTimer("AlphaUpUpdate", .05)
		end
	else
		self:CancelTimer(self.alphaUpTimer)
	end
end


function BAR:AddVisibilityDriver(handler, state, conditions)

	if MBS[state] then

		RegisterStateDriver(handler, state, conditions);

		if handler:GetAttribute("activestates"):find(state) then
			handler:SetAttribute("activestates", handler:GetAttribute("activestates"):gsub(state.."%d+;", handler:GetAttribute("state-"..state)..";"))
		elseif handler:GetAttribute("activestates") and handler:GetAttribute("state-"..state) then
			handler:SetAttribute("activestates", handler:GetAttribute("activestates")..handler:GetAttribute("state-"..state)..";")
		end

		if handler:GetAttribute("state-"..state) then
			handler:SetAttribute("state-"..state, handler:GetAttribute("state-"..state))
		end

		self.vis[state].registered = true
	end
end


function BAR:ClearVisibilityDriver(handler, state)

	UnregisterStateDriver(handler, state)

	handler:SetAttribute("activestates", handler:GetAttribute("activestates"):gsub(state.."%d+;", ""))
	handler:SetAttribute("state-current", "homestate")
	handler:SetAttribute("state-last", "homestate")

	self.vis[state].registered = false
end


function BAR:UpdateVisibility(driver)

	for state, values in pairs(MBS) do

		if self.data.hidestates:find(":"..state) then

			if not self.vis[state] or not self.vis[state].registered then

				if not self.vis[state] then
					self.vis[state] = {}
				end

				if state == "stance" and self.data.hidestates:find(":stance8") then
					self:AddVisibilityDriver(driver,state, "[stance:2/3,stealth] stance8; "..values.states)
				else
					self:AddVisibilityDriver(driver, state, values.states)
				end
			end

		elseif self.vis[state] and self.vis[state].registered then

			self:ClearVisibilityDriver(driver, state)

		end
	end
end

function BAR:BuildStateMap(remapState)

	local statemap, state, map, remap, homestate = "", remapState:gsub("paged", "bar")

	for states in gmatch(self.data.remap, "[^;]+") do

		map, remap = (":"):split(states)

		if remapState == "stance" and Neuron.class == "ROGUE" and map == "1" then
			--map = "2"
		end

		if not homestate then
			statemap = statemap.."["..state..":"..map.."] homestate; "; homestate = true
		else
			local newstate = remapState..remap

			if MAS[remapState] and MAS[remapState].homestate and MAS[remapState].homestate == newstate then
				statemap = statemap.."["..state..":"..map.."] homestate; "
			else
				statemap = statemap.."["..state..":"..map.."] "..newstate.."; "
			end
		end
	end

	statemap = gsub(statemap, "; $", "")

	return statemap
end


function BAR:AddStates(handler, state, conditions)

	if MAS[state] then
		RegisterStateDriver(handler, state, conditions);
	end

	if MAS[state].homestate then
		handler:SetAttribute("handler-homestate", MAS[state].homestate)
	end

	self[state].registered = true

end

function BAR:ClearStates(handler, state)

	if state ~= "homestate" then

		if MAS[state].homestate then
			handler:SetAttribute("handler-homestate", nil)
		end

		handler:SetAttribute("state-"..state, nil)

		UnregisterStateDriver(handler, state)

		self[state].registered = false
	end

	handler:SetAttribute("state-current", "homestate")
	handler:SetAttribute("state-last", "homestate")
end


function BAR:UpdateStatus(handler)
	for state, values in pairs(MAS) do

		if self.data[state] then

			if not self[state] or not self[state].registered then

				local statemap

				if not self[state] then
					self[state] = {}
				end

				if self.data.remap and (state == "paged" or state == "stance") then
					statemap = self:BuildStateMap(state)
				end


				if state == "custom" and self.data.custom then

					self:AddStates(handler, state, self.data.custom)

				elseif statemap then

					self:AddStates(handler, state, statemap)

				else
					self:AddStates(handler, state, values.states)

				end
			end

		elseif self[state] and self[state].registered then

			self:ClearStates(handler, state)

		end
	end
end


function BAR:CreateDriver()

	--This is the macro base that will be used to set state
	local DRIVER_BASE_ACTION = [[
	local state = self:GetAttribute("state-<MODIFIER>"):match("%a+")

	if state then

		if self:GetAttribute("activestates"):find(state) then
			self:SetAttribute("activestates", self:GetAttribute("activestates"):gsub(state.."%d+;", self:GetAttribute("state-<MODIFIER>")..";"))
		else
			self:SetAttribute("activestates", self:GetAttribute("activestates")..self:GetAttribute("state-<MODIFIER>")..";")
		end

		control:ChildUpdate("<MODIFIER>", self:GetAttribute("activestates"))

	end
	]]

	local driver = CreateFrame("Frame", "NeuronBarDriver"..self.DB.id, UIParent, "SecureHandlerStateTemplate")

	setmetatable(driver, { __index = handlerMT })

	driver:SetID(self.DB.id)
	--Dynamicly builds driver attributes based on stated in Neuron.STATEINDEX using localized attribute text from a above
	for _, modifier in pairs(Neuron.STATEINDEX) do
		local action = DRIVER_BASE_ACTION:gsub("<MODIFIER>", modifier)
		driver:SetAttribute("_onstate-"..modifier, action)
	end

	driver:SetAttribute("activestates", "")

	driver:HookScript("OnAttributeChanged", function() end)

	driver:SetAllPoints(self)

	self.driver = driver
	driver.bar = self
end


function BAR:CreateHandler()

	local HANDLER_BASE_ACTION = [[
	if self:GetAttribute("state-<MODIFIER>") == "laststate" then

		if self:GetAttribute("statestack") then

			if self:GetAttribute("statestack"):find("<MODIFIER>") then
				self:SetAttribute("statestack", self:GetAttribute("statestack"):gsub("<MODIFIER>%d+;", ""))
			end

			local laststate = (";"):split(self:GetAttribute("statestack"))
			self:SetAttribute("state-last", laststate)
		end

		self:SetAttribute("state-current", self:GetAttribute("state-last") or "homestate")

		if self:GetAttribute("state-last") then
			self:SetAttribute("assertstate", self:GetAttribute("state-last"):gsub("%d+", ""))
		else
			self:SetAttribute("assertstate", "homestate")
		end

		if self:GetAttribute("state-priority") then
			control:ChildUpdate("<MODIFIER>", self:GetAttribute("state-priority"))
		else
			control:ChildUpdate("<MODIFIER>", self:GetAttribute("state-last") or "homestate")
		end

	elseif self:GetAttribute("state-<MODIFIER>") then

		if self:GetAttribute("statestack") then

			if self:GetAttribute("statestack"):find("<MODIFIER>") then
				self:SetAttribute("statestack", self:GetAttribute("statestack"):gsub("<MODIFIER>%d+", self:GetAttribute("state-<MODIFIER>")))
			else
				self:SetAttribute("statestack", self:GetAttribute("state-<MODIFIER>")..";"..self:GetAttribute("statestack"))
			end

		else
			self:SetAttribute("statestack", self:GetAttribute("state-<MODIFIER>"))
		end

		self:SetAttribute("state-current", self:GetAttribute("state-<MODIFIER>"))
		self:SetAttribute("assertstate", "<MODIFIER>")

		if self:GetAttribute("state-priority") then
			control:ChildUpdate("<MODIFIER>", self:GetAttribute("state-priority"))
		else
			control:ChildUpdate("<MODIFIER>", self:GetAttribute("state-<MODIFIER>"))
		end

	end
	]]

	local handler = CreateFrame("Frame", "NeuronBarHandler"..self.DB.id, self.driver, "SecureHandlerStateTemplate")

	setmetatable(handler, { __index = handlerMT })

	handler:SetID(self.DB.id)

	--Dynamicly builds handler actions based on states in Neuron.STATEINDEX using Global text
	for _, modifier in pairs(Neuron.STATEINDEX) do
		local action = HANDLER_BASE_ACTION:gsub("<MODIFIER>", modifier)
		handler:SetAttribute("_onstate-"..modifier, action)
	end

	handler:SetAttribute("_onstate-paged",
			[[

			if self:GetAttribute("statestack") then

				if self:GetAttribute("statestack"):find("paged") then
					self:SetAttribute("statestack", self:GetAttribute("statestack"):gsub("paged%d+", self:GetAttribute("state-paged") or "homestate"))
				elseif self:GetAttribute("statestack"):find("homestate") then
					self:SetAttribute("statestack", self:GetAttribute("statestack"):gsub("homestate", self:GetAttribute("state-paged") or "homestate"))
				elseif self:GetAttribute("state-paged") then
					self:SetAttribute("statestack", self:GetAttribute("statestack")..";"..self:GetAttribute("state-paged"))
				end

			else
				self:SetAttribute("statestack", self:GetAttribute("state-paged"))
			end

			if self:GetAttribute("statestack"):find("^paged") or self:GetAttribute("statestack"):find("^homestate") then
				self:SetAttribute("assertstate", "paged")
				self:SetAttribute("state-last", self:GetAttribute("state-paged"))
				self:SetAttribute("state-current", self:GetAttribute("state-paged"))

				if self:GetAttribute("state-priority") then
					control:ChildUpdate("paged", self:GetAttribute("state-priority"))
				elseif self:GetAttribute("state-paged") and self:GetAttribute("state-paged") == self:GetAttribute("handler-homestate") then
					control:ChildUpdate("paged", "homestate:"..self:GetAttribute("state-paged"))
				else
					control:ChildUpdate("paged", self:GetAttribute("state-paged"))
				end

			else

				if self:GetAttribute("state-priority") then
					control:ChildUpdate("homestate", self:GetAttribute("state-priority"))
				else
					control:ChildUpdate("homestate", "homestate")
				end

			end

			]])

	handler:SetAttribute("_onstate-stance",
			[[

			if self:GetAttribute("statestack") then

				if self:GetAttribute("statestack"):find("stance") then
					self:SetAttribute("statestack", self:GetAttribute("statestack"):gsub("stance%d+", self:GetAttribute("state-stance") or "homestate"))
				elseif self:GetAttribute("statestack"):find("homestate") then
					self:SetAttribute("statestack", self:GetAttribute("statestack"):gsub("homestate", self:GetAttribute("state-stance") or "homestate"))
				elseif self:GetAttribute("state-stance") then
					self:SetAttribute("statestack", self:GetAttribute("statestack")..";"..self:GetAttribute("state-stance"))
				end

			else
				self:SetAttribute("statestack", self:GetAttribute("state-stance"))
			end

			if self:GetAttribute("statestack"):find("^stance") or self:GetAttribute("statestack"):find("^homestate") then
				self:SetAttribute("assertstate", "stance")
				self:SetAttribute("state-last", self:GetAttribute("state-stance"))
				self:SetAttribute("state-current", self:GetAttribute("state-stance"))

				if self:GetAttribute("state-priority") then
					control:ChildUpdate("stance", self:GetAttribute("state-priority"))
				elseif self:GetAttribute("state-stance") and self:GetAttribute("state-stance") == self:GetAttribute("handler-homestate") then
					control:ChildUpdate("stance", "homestate:"..self:GetAttribute("state-stance"))
				else
					control:ChildUpdate("stance", self:GetAttribute("state-stance"))
				end

			else

				if self:GetAttribute("state-priority") then
					control:ChildUpdate("homestate", self:GetAttribute("state-priority"))
				else
					control:ChildUpdate("homestate", "homestate")
				end

			end

			]])

	handler:SetAttribute("_onstate-pet",
			[[

			if self:GetAttribute("statestack") then

				if self:GetAttribute("statestack"):find("pet") then
					self:SetAttribute("statestack", self:GetAttribute("statestack"):gsub("pet%d+", self:GetAttribute("state-pet") or "homestate"))
				elseif self:GetAttribute("statestack"):find("homestate") then
					self:SetAttribute("statestack", self:GetAttribute("statestack"):gsub("homestate", self:GetAttribute("state-pet" or "homestate")))
				elseif self:GetAttribute("state-pet") then
					self:SetAttribute("statestack", self:GetAttribute("statestack")..";"..self:GetAttribute("state-pet"))
				end

			else
				self:SetAttribute("statestack", self:GetAttribute("state-pet"))
			end

			if self:GetAttribute("statestack"):find("^pet") or self:GetAttribute("statestack"):find("^homestate") then
				self:SetAttribute("assertstate", "pet")
				self:SetAttribute("state-last", self:GetAttribute("state-pet"))
				self:SetAttribute("state-current", self:GetAttribute("state-pet"))

				if self:GetAttribute("state-priority") then
					control:ChildUpdate("stance", self:GetAttribute("state-priority"))
				elseif self:GetAttribute("state-pet") and self:GetAttribute("state-pet") == self:GetAttribute("handler-homestate") then
					control:ChildUpdate("pet", "homestate:"..self:GetAttribute("state-pet"))
				else
					control:ChildUpdate("pet", self:GetAttribute("state-pet"))
				end

			else

				if self:GetAttribute("state-priority") then
					control:ChildUpdate("homestate", self:GetAttribute("state-priority"))
				else
					control:ChildUpdate("homestate", "homestate")
				end

			end

			]])

	handler:SetAttribute("_onstate-custom",
			[[

			self:SetAttribute("assertstate", "custom")
			self:SetAttribute("state-last", self:GetAttribute("state-custom"))
			self:SetAttribute("state-current", self:GetAttribute("state-custom"))
			control:ChildUpdate("alt", self:GetAttribute("state-custom"))

			]])

	handler:SetAttribute("_onstate-current",
			[[

			self:SetAttribute("activestate", self:GetAttribute("state-current") or "homestate")

			]])

	handler:SetAttribute("statestack", "homestate")

	handler:SetAttribute("activestate", "homestate")

	handler:SetAttribute("state-last", "homestate")

	handler:HookScript("OnAttributeChanged", function() end)


	handler:SetAttribute("_childupdate",
			[[

			if not self:GetAttribute("editmode") then
				self:SetAttribute("vishide", false)

				if self:GetAttribute("hidestates") then

					for state in gmatch(message, "[^;]+") do
						for hidestate in gmatch(self:GetAttribute("hidestates"), "[^:]+") do

							if state == hidestate then
								self:Hide()
								self:SetAttribute("vishide", true)
							end

						end
					end
				end

				if not self:IsShown() and not self:GetAttribute("vishide") then
					self:Show()
				end
			end

			]] )

	handler:SetAllPoints(self)

	self.handler = handler;
	handler.bar = self

end


function BAR:CreateWatcher()
	local watcher = CreateFrame("Frame", "NeuronBarWatcher"..self.DB.id, self.handler, "SecureHandlerStateTemplate")

	setmetatable(watcher, { __index = handlerMT })

	watcher:SetID(self.DB.id)

	watcher:SetAttribute("_onattributechanged",
			[[ ]])

	watcher:SetAttribute("_onstate-petbattle",
			[[

            if self:GetAttribute("state-petbattle") == "hide" then
                self:GetParent():Hide()
            else

                if not self:GetParent():IsShown() then
                    if not self:GetParent():GetAttribute("vishide") and not self:GetParent():GetAttribute("concealed") then
                        self:GetParent():Show()
                    end
                end

            end

            ]])

	RegisterStateDriver(watcher, "petbattle", "[petbattle] hide; [nopetbattle] show");

end


function BAR:Update(show, hide)

	if InCombatLockdown() then
		return
	end

	local handler, driver = self.handler, self.driver

	self.elapsed = 0;

	if self.stateschanged then

		self:UpdateStatus(handler)

		self.stateschanged = nil
	end

	if self.vischanged then

		handler:SetAttribute("hidestates", self.data.hidestates)

		self:UpdateVisibility(driver)

		self.vischanged = nil
	end

	if self.countChanged then

		self:UpdateObjectData()

		self.countChanged = nil

	end

	self:SetHidden(handler, show, hide)
	self:SetAutoHide()
	self:SetAlphaUp()
	self.Text:SetText(self.data.name)
	handler:SetAlpha(self.data.alpha)

	if not hide and NeuronBarEditor and NeuronBarEditor:IsVisible() then
		Neuron.NeuronGUI:UpdateBarGUI()
	end

end

-------------------------------------------------------




function BAR:GetPosition(oFrame)
	local relFrame, point

	if oFrame then
		relFrame = oFrame
	else
		relFrame = self:GetParent()
	end

	local s = self:GetScale()
	local w, h = relFrame:GetWidth()/s, relFrame:GetHeight()/s
	local x, y = self:GetCenter()
	local vert = (y>h/1.5) and "TOP" or (y>h/3) and "CENTER" or "BOTTOM"
	local horz = (x>w/1.5) and "RIGHT" or (x>w/3) and "CENTER" or "LEFT"

	if vert == "CENTER" then
		point = horz
	elseif horz == "CENTER" then
		point = vert
	else
		point = vert..horz
	end

	if vert:find("CENTER") then y = y - h/2 end
	if horz:find("CENTER") then x = x - w/2 end
	if point:find("RIGHT") then x = x - w end
	if point:find("TOP") then y = y - h end

	return point, x, y
end


function BAR:SetPosition()
	if self.data.snapToPoint and self.data.snapToFrame then
		self:StickToPoint(_G[self.data.snapToFrame], self.data.snapToPoint, self.data.padH, self.data.padV)
	else

		local point, x, y = self.data.point, self.data.x, self.data.y

		if point:find("SnapTo") then
			self.data.point = "CENTER"; point = "CENTER"
		end

		self:SetUserPlaced(false)
		self:ClearAllPoints()
		self:SetPoint("CENTER", "UIParent", point, x, y)
		self:SetUserPlaced(true)
		self:SetFrameStrata(self.data.barStrata)

		if self.Message then
			self.Message:SetText(point:lower().."     x: "..format("%0.2f", x).."     y: "..format("%0.2f", y))
			self.MessageBG:SetWidth(self.Message:GetWidth()*1.05)
			self.MessageBG:SetHeight(self.Message:GetHeight()*1.1)
		end

		self.posSet = true
	end
end


--Fakes a state change for a given bar, calls up the counterpart function in NeuronButton
function BAR:FakeStateChange(state)
	self.handler:SetAttribute("fauxstate", state)

	for i, object in ipairs(self.buttons) do
		object:FakeStateChange(state)
	end

	if NeuronObjectEditor and NeuronObjectEditor:IsVisible() then
		Neuron.NeuronGUI:UpdateObjectGUI()
	end
end


--loads all the object stored for a given bar
function BAR:LoadObjects()
	local spec

	if self.data.multiSpec then
		spec = Neuron.activeSpec
	else
		spec = 1
	end

	for i, object in ipairs(self.buttons) do
		--all of these objects need to stay as "object:****" because which SetData/LoadData/etc is bar dependent. Symlinks are made to the associated bar objects to these class functions
		object:LoadData(spec, self.handler:GetAttribute("activestate"))
		object:SetData(self)
		object:SetType()

		if Neuron.registeredBarData[object.class] and Neuron.registeredBarData[object.class].keybindable then
			object.Binder = Neuron.KEYBINDER.new(object)
		end

		object:UpdateObjectVisibility()
	end
end


function BAR:SetObjectLoc()
	local width, height, num, origCol = 0, 0, 0, self.data.columns
	local x, y, placed
	local shape, padH, padV, arcStart, arcLength = self.data.shape, self.data.padH, self.data.padV, self.data.arcStart, self.data.arcLength
	local cAdjust, rAdjust = 0.5, 1
	local columns, rows


	--This is just for the flyout bar, it should be cleaned in the future
	local count
	if self.class ~= "FlyoutBar" then
		count = #self.buttons
	else
		count = #self.data.objectList
	end

	local buttons = {}
	if self.class ~= "FlyoutBar" then
		buttons = self.buttons
	else
		for k,v in pairs (self.data.objectList) do
			table.insert(buttons, Neuron.FOBTNIndex[v])
		end
	end

	--------------------------------------------------------------------------

	if not origCol then
		origCol = count; rows = 1
	else
		rows = (round(ceil(count/self.data.columns), 1)/2)+0.5
	end

	for i, object in ipairs(buttons) do --once the flyout bars are fixed, this can be changed to ipairs(self.buttons)

		if num < count then
			object:ClearAllPoints()
			object:SetParent(self.handler)
			width = object:GetWidth(); height = object:GetHeight()

			if count > origCol and mod(count, origCol)~=0 and rAdjust == 1 then
				columns = (mod(count, origCol))/2
			elseif origCol >= count then
				columns = count/2
			else
				columns = origCol/2
			end

			if shape == 2 then
				if not placed then
					placed = arcStart
				end

				x = ((width+padH)*(count/math.pi))*(cos(placed))
				y = ((width+padV)*(count/math.pi))*(sin(placed))

				object:SetPoint("CENTER", self, "CENTER", x, y)

				placed = placed - (arcLength/count)

			elseif shape == 3 then
				if not placed then
					placed = arcStart
					object:SetPoint("CENTER", self, "CENTER", 0, 0)
					placed = placed - (arcLength/count)

				else
					x = ((width+padH)*(count/math.pi))*(cos(placed))
					y = ((width+padV)*(count/math.pi))*(sin(placed))

					object:SetPoint("CENTER", self, "CENTER", x, y)
					placed = placed - (arcLength/(count-1))
				end
			else
				if not placed then
					placed = 0
				end

				x = -(width + padH) * (columns-cAdjust)
				y = (height + padV) * (rows-rAdjust)

				object:SetPoint("CENTER", self, "CENTER", x, y)
				placed = placed + 1; cAdjust = cAdjust + 1

				if placed >= columns*2 then
					placed = 0
					cAdjust = 0.5
					rAdjust = rAdjust + 1
				end
			end

			num = num + 1
			object:SetAttribute("barPos", num)
			object:SetData(self)
		end
	end
end


function BAR:SetPerimeter()
	local num = 0

	--This is just for the flyout bar, it should be cleaned in the future
	local count
	if self.class ~= "FlyoutBar" then
		count = #self.buttons
	else
		count = #self.data.objectList
	end

	local buttons = {}
	if self.class ~= "FlyoutBar" then
		buttons = self.buttons
	else
		for k,v in pairs (self.data.objectList) do
			table.insert(buttons, Neuron.FOBTNIndex[v])
		end
	end
	-----------------------------------------------

	self.top = nil; self.bottom = nil; self.left = nil; self.right = nil

	for i, object in ipairs(buttons) do --once the flyout bars are fixed, this can be changed to ipairs(self.buttons)

		if num < count then
			local objTop, objBottom, objLeft, objRight = object:GetTop(), object:GetBottom(), object:GetLeft(), object:GetRight()
			local scale = 1
			--See if this fixes the ranom position error that happens
			if not objTop then return end

			if self.top then
				if objTop*scale > self.top then self.top = objTop*scale end
			else self.top = objTop*scale end

			if self.bottom then
				if objBottom*scale < self.bottom then self.bottom = objBottom*scale end
			else self.bottom = objBottom*scale end

			if self.left then
				if objLeft*scale < self.left then self.left = objLeft*scale end
			else self.left = objLeft*scale end

			if self.right then
				if objRight*scale > self.right then self.right = objRight*scale end
			else self.right = objRight*scale end

			num = num + 1
		end
	end
end


function BAR:SetDefaults(defaults)
	for k,v in pairs(defaults) do
		if k ~= "buttons" then --ignore this value because it's just used to tell how many buttons should be placed on a bar by default on the first load
			self.data[k] = v
		end
	end
end


function BAR:SetRemap_Paged()
	self.data.remap = ""

	for i=1,6 do
		self.data.remap = self.data.remap..i..":"..i..";"
	end

	self.data.remap = gsub(self.data.remap, ";$", "")
end


function BAR:SetRemap_Stance()
	local start = tonumber(MAS.stance.homestate:match("%d+"))

	if start then
		self.data.remap = ""

		for i=start,GetNumShapeshiftForms() do
			self.data.remap = self.data.remap..i..":"..i..";"
		end

		self.data.remap = gsub(self.data.remap, ";$", "")


		if Neuron.class == "ROGUE" then
			self.data.remap = self.data.remap..";2:2"
		end
	end
end


function BAR:SetSize()
	if self.right then
		self:SetWidth(((self.right-self.left)+5)*(self.data.scale))
		self:SetHeight(((self.top-self.bottom)+5)*(self.data.scale))
	else
		self:SetWidth(195)
		self:SetHeight(36*(self.data.scale))
	end
end

----------------------------------------------------------------------
------------------------Event Handlers--------------------------------
----------------------------------------------------------------------

--TODO: I need to figure out what to do with this
--[[function NeuronBar:ACTIVE_TALENT_GROUP_CHANGED(bar, ...)
	if Neuron.enteredWorld then
		bar.stateschanged = true
		bar.vischanged = true
		bar:Update()
	end
end]]
----------------------------------------------------------------------
----------------------------------------------------------------------




----------------------------------------------------------------------
------------------------OnEvent Functions-----------------------------
----------------------------------------------------------------------

function BAR:OnClick(...)
	local click, down, newBar = select(1, ...), select(2, ...)

	if not down then
		newBar = self:ChangeBar()
	end

	self.click = click
	self.dragged = false
	self.elapsed = 0
	self.pushed = 0

	if IsShiftKeyDown() and not down then

		if self.microAdjust then
			self.microAdjust = false
			self:EnableKeyboard(false)
			self.Message:Hide()
			self.MessageBG:Hide()
		else
			self.data.snapTo = false
			self.data.snapToPoint = false
			self.data.snapToFrame = false
			self.microAdjust = 1
			self:EnableKeyboard(true)
			self.Message:Show()
			self.Message:SetText(self.data.point:lower().."     x: "..format("%0.2f", self.data.x).."     y: "..format("%0.2f", self.data.y))
			self.MessageBG:Show()
			self.MessageBG:SetWidth(self.Message:GetWidth()*1.05)
			self.MessageBG:SetHeight(self.Message:GetHeight()*1.1)
		end

	elseif click == "MiddleButton" then
		if GetMouseFocus() ~= Neuron.CurrentBar then
			newBar = self:ChangeBar()
		end

		if down then
			--Neuron:ConcealBar(nil, true)
		end

	elseif click == "RightButton" and not self.action and not down then
		self.mousewheelfunc = nil

		if NeuronBarEditor then
			if not newBar and NeuronBarEditor:IsVisible() then
				NeuronBarEditor:Hide()
			else
				NeuronBarEditor:Show()
			end
		end

	elseif not down then
		if not newBar then
			--updateState(bar, 1)
		end
	end

	if not down and NeuronBarEditor and NeuronBarEditor:IsVisible() then
		Neuron.NeuronGUI:UpdateBarGUI(newBar)
	end
end


function BAR:OnEnter(...)
	if self.data.conceal then
		self:SetBackdropColor(1,0,0,0.6)
	else
		self:SetBackdropColor(0,0,1,0.5)
	end

	self.Text:Show()
end


function BAR:OnLeave(...)
	if self ~= Neuron.CurrentBar then
		if self.data.conceal then
			self:SetBackdropColor(1,0,0,0.4)
		else
			self:SetBackdropColor(0,0,0,0.4)
		end
	end

	if self ~= Neuron.CurrentBar then
		self.Text:Hide()
	end
end


function BAR:OnDragStart(...)
	self:ChangeBar()

	self:SetFrameStrata(self.data.barStrata)
	self:EnableKeyboard(false)

	self.adjusting = true
	self.selected = true
	self.isMoving = true

	self.data.snapToPoint = false
	self.data.snapToFrame = false

	self:StartMoving()
end


function BAR:OnDragStop(...)

	local point
	self:StopMovingOrSizing()

	for _,v in pairs(Neuron.BARIndex) do
		if not point and self.data.snapTo and v.data.snapTo and self ~= v then
			point = self:Stick(v, Neuron.SNAPTO_TOLLERANCE, self.data.padH, self.data.padV)

			if point then
				self.data.snapToPoint = point
				self.data.snapToFrame = v:GetName()
				self.data.point = "SnapTo: "..point
				self.data.x = 0
				self.data.y = 0
			end
		end
	end

	if not point then
		self.data.snapToPoint = false
		self.data.snapToFrame = false
		self.data.point, self.data.x, self.data.y = self:GetPosition()
		self:SetPosition()
	end

	if self.data.snapTo and not self.data.snapToPoint then
		self:StickToEdge()
	end

	self.isMoving = false
	self.dragged = true
	self.elapsed = 0
	self:Update()
end

function BAR:OnKeyDown(key, onupdate)
	if self.microAdjust then
		self.keydown = key

		if not onupdate then
			self.elapsed = 0
		end

		self.data.point, self.data.x, self.data.y = self:GetPosition()
		self:SetUserPlaced(false)
		self:ClearAllPoints()

		if key == "UP" then
			self.data.y = self.data.y + .1 * self.microAdjust
		elseif key == "DOWN" then
			self.data.y = self.data.y - .1 * self.microAdjust
		elseif key == "LEFT" then
			self.data.x = self.data.x - .1 * self.microAdjust
		elseif key == "RIGHT" then
			self.data.x = self.data.x + .1 * self.microAdjust
		elseif not key:find("SHIFT") then
			self.microAdjust = false
			self:EnableKeyboard(false)
		end

		self:SetPosition()
	end
end


function BAR:OnKeyUp(key)
	if self.microAdjust and not key:find("SHIFT") then
		self.microAdjust = 1
		self.keydown = nil
		self.elapsed = 0
	end
end


function BAR:OnShow()
	if self == Neuron.CurrentBar then

		if self.data.conceal then
			self:SetBackdropColor(1,0,0,0.6)
		else
			self:SetBackdropColor(0,0,1,0.5)
		end

	else
		if self.data.conceal then
			self:SetBackdropColor(1,0,0,0.4)
		else
			self:SetBackdropColor(0,0,0,0.4)
		end
	end

	self.handler:SetAttribute("editmode", true)
	self.handler:Show()
	self:UpdateBarObjectVisibility()
	self:EnableKeyboard(false)
end


function BAR:OnHide()
	self.handler:SetAttribute("editmode", nil)

	if self.handler:GetAttribute("vishide") then
		self.handler:Hide()
	end

	self:UpdateBarObjectVisibility()
	self:EnableKeyboard(false)
end


function BAR:Pulse(elapsed)
	alphaTimer = alphaTimer + elapsed * 1.5

	if alphaDir == 1 then
		if 1-alphaTimer <= 0 then
			alphaDir = 0
			alphaTimer = 0
		end
	else
		if alphaTimer >= 1 then
			alphaDir = 1
			alphaTimer = 0
		end
	end

	if alphaDir == 1 then
		if 1-alphaTimer >= 0 then
			self:SetAlpha(1-alphaTimer)
		end
	else
		if alphaTimer <= 1 then
			self:SetAlpha(alphaTimer)
		end
	end

	self.pulse = true
end


---------------------------------------------------------------------------
---------------------------------------------------------------------------


function BAR:LoadData()

	self.data = self.DB

	if not self.data.name or self.data.name == ":" then
		self.data.name = self.barLabel.." "..self.DB.id
	end
end


function BAR:UpdateObjectData()
	for _, object in pairs(self.buttons) do

		if object then
			object:SetData(self)
		end
	end
end


function BAR:UpdateBarObjectVisibility(show)
	for _, object in pairs(self.buttons) do
		if object then
			object:UpdateObjectVisibility(show)
		end
	end
end

function BAR:UpdateObjectUsability()
	for _, object in pairs(self.buttons) do
		if object then
			object:UpdateUsable()
		end
	end
end

function BAR:UpdateObjectIcons()
	for _, object in pairs(self.buttons) do
		if object then
			object:UpdateIcon()
		end
	end
end

function BAR:ChangeBar()
	local newBar = false

	if Neuron.enteredWorld then

		if self and Neuron.CurrentBar ~= self then
			Neuron.CurrentBar = self

			self.selected = true
			self.action = nil

			if self.data.hidden then
				self:SetBackdropColor(1,0,0,0.6)
			else
				self:SetBackdropColor(0,0,1,0.5)
			end

			newBar = true
		end

		if not self then
			Neuron.CurrentBar = nil
		elseif self.Text then
			self.Text:Show()
		end

		for k,v in pairs(Neuron.BARIndex) do
			if v ~= self then

				if v.data.conceal then
					v:SetBackdropColor(1,0,0,0.4)
				else
					v:SetBackdropColor(0,0,0,0.4)
				end

				v.selected = false
				v.microAdjust = false
				v:EnableKeyboard(false)
				v.Text:Hide()
				v.Message:Hide()
				v.MessageBG:Hide()
				v.mousewheelfunc = nil
				v.action = nil
			end
		end

		if Neuron.CurrentBar then
			self:OnEnter(Neuron.CurrentBar)
		end
	end

	return newBar
end


function BAR:SetState(msg, gui, checked, query)
	if msg then
		local state = msg:match("^%S+")
		local command = msg:gsub(state, "");
		command = command:gsub("^%s+", "")

		if not MAS[state] then
			if not gui then
				Neuron:PrintStateList()
			else
				Neuron:Print("GUI option error")
			end

			return
		end

		if gui then
			if checked then
				self.data[state] = true
			else
				self.data[state] = false
			end
		else
			local toggle = self.data[state]

			if toggle then
				self.data[state] = false
			else
				self.data[state] = true
			end
		end

		if state == "paged" then
			self.data.stance = false
			self.data.pet = false

			if self.data.paged then
				self:SetRemap_Paged()
			else
				self.data.remap = false
			end
		end

		if state == "stance" then
			self.data.paged = false
			self.data.pet = false


			if Neuron.class == "ROGUE" and self.data.stealth then
				self.data.stealth = false
			end

			if self.data.stance then
				self:SetRemap_Stance()
			else
				self.data.remap = false
			end
		end

		if state == "custom" then
			if self.data.custom then
				local count, newstates = 0, ""

				self.data.customNames = {}

				for states in gmatch(command, "[^;]+") do
					if string.find(states, "%[(.+)%]") then
						self.data.customRange = "1;"..count

						if count == 0 then
							newstates = states.." homestate;"
							self.data.customNames["homestate"] = states
						else
							newstates = newstates..states.." custom"..count..";"
							self.data.customNames["custom"..count] = states
						end

						count = count + 1
					else
						Neuron:Print(states.." not formated properly and skipped")
					end
				end

				if newstates ~= ""  then
					self.data.custom = newstates
				else
					self.data.custom = false
					self.data.customNames = false
					self.data.customRange = false
				end

			else
				self.data.customNames = false
				self.data.customRange = false
			end

			--Clears any previous set cusom vis settings
			for states in gmatch(self.data.hidestates, "custom%d+") do
				self.data.hidestates = self.data.hidestates:gsub(states..":", "")
			end
			if not self.data.hidestates then Neuron:Print("OOPS")
			end
		end

		if state == "pet" then
			self.data.paged = false
			self.data.stance = false
		end

		self.stateschanged = true
		self:Update()

	elseif not gui then
		wipe(statetable)

		for k,v in pairs(Neuron.STATEINDEX) do

			if self.data[k] then
				table.insert(statetable, k..": on")
			else
				table.insert(statetable, k..": off")
			end
		end

		table.sort(statetable)

		for k,v in ipairs(statetable) do
			Neuron:Print(v)
		end
	end

end


--I have no clue what or how any of this works. I took out the annoying print statements, but for now I'll just leave it. -Soyier

function BAR:SetVisibility(msg, gui, checked, query)
	if msg then
		wipe(statetable)
		local toggle, index, num = (" "):split(msg)
		toggle = toggle:lower()

		if toggle and Neuron.STATEINDEX[toggle] then
			if index then
				num = index:match("%d+")

				if num then
					local hidestate = Neuron.STATEINDEX[toggle]..num
					if Neuron.STATES[hidestate] or (toggle == "custom" and self.data.customNames) then
						if self.data.hidestates:find(hidestate) then
							self.data.hidestates = self.data.hidestates:gsub(hidestate..":", "")
						else
							self.data.hidestates = self.data.hidestates..hidestate..":"
						end
					else
						Neuron:Print(L["Invalid index"]); return
					end

				elseif index == L["Show"] then
					local hidestate = Neuron.STATEINDEX[toggle].."%d+"
					self.data.hidestates = self.data.hidestates:gsub(hidestate..":", "")
				elseif index == L["Hide"] then
					local hidestate = Neuron.STATEINDEX[toggle]

					for state in pairs(Neuron.STATES) do
						if state:find("^"..hidestate) and not self.data.hidestates:find(state) then
							self.data.hidestates = self.data.hidestates..state..":"
						end
					end
				end
			end


			local hidestates = self.data.hidestates
			local showhide

			local highindex = 0

			for state,desc in pairs(Neuron.STATES) do
				index = state:match("%d+$")

				if index then
					index = tonumber(index)

					if index and state:find("^"..toggle) then
						if hidestates:find(state) then
							statetable[index] = desc..":".."Hide:"..state
						else
							statetable[index] = desc..":".."Show:"..state
						end

						if index > highindex then
							highindex = index
						end
					end
				end
			end

			for i=1,highindex do
				if not statetable[i] then
					statetable[i] = "ignore"
				end
			end

			if #statetable > 0 then
				--[[if statetable[0] then
					desc, showhide = (":"):split(statetable[0])
				end]]

				for k,v in ipairs(statetable) do
					if v ~= "ignore" then
						desc, showhide = (":"):split(v)
					end
				end
			end


			self.vischanged = true
			self:Update()
		else
			Neuron:PrintStateList()
		end
	else
	end
end


function BAR:AutoHideBar(msg, gui, checked, query)
	if query then
		return self.data.autoHide
	end

	if gui then
		if checked then
			self.data.autoHide = true
		else
			self.data.autoHide = false
		end

	else
		local toggle = self.data.autoHide

		if toggle then
			self.data.autoHide = false
		else
			self.data.autoHide = true
		end
	end

	self:Update()
end


function BAR:ShowGridSet(msg, gui, checked, query)
	if query then
		return self.data.showGrid
	end

	if gui then
		if checked then
			self.data.showGrid = true
		else
			self.data.showGrid = false
		end
	else
		if self.data.showGrid then
			self.data.showGrid = false
		else
			self.data.showGrid = true
		end
	end

	self:UpdateObjectData()
	self:UpdateBarObjectVisibility()
	self:Update()
end


function BAR:spellGlowMod(msg, gui)
	if msg:lower() == "default" then
		if self.data.spellGlowDef then
			self.data.spellGlowDef = false
		else
			self.data.spellGlowDef = true
			self.data.spellGlowAlt = false
		end

		if not self.data.spellGlowDef and not self.data.spellGlowAlt then
			self.data.spellGlowDef = true
		end

	elseif msg:lower() == "alt" then
		if self.data.spellGlowAlt then
			self.data.spellGlowAlt = false
		else
			self.data.spellGlowAlt = true
			self.data.spellGlowDef = false
		end

		if not self.data.spellGlowDef and not self.data.spellGlowAlt then
			self.data.spellGlowDef = true
		end

	elseif not gui then
		Neuron:Print(L["Spellglow_Instructions"])
	end
end


function BAR:SpellGlowSet(msg, gui, checked, query)
	if query then
		if msg == "default" then
			return self.data.spellGlowDef
		elseif msg == "alt" then
			return self.data.spellGlowAlt
		else
			return self.data.spellGlow
		end
	end

	if gui then
		if msg then
			self:spellGlowMod(msg, gui)
		elseif checked then
			self.data.spellGlow = true
		else
			self.data.spellGlow = false
		end

	else
		if msg then
			self:spellGlowMod(msg, gui)
		elseif self.data.spellGlow then
			self.data.spellGlow = false
		else
			self.data.spellGlow = true
		end
	end

	self:UpdateObjectData()
	self:Update()
end


function BAR:SnapToBar(msg, gui, checked, query)
	if query then
		return self.data.snapTo
	end

	if gui then
		if checked then
			self.data.snapTo = true
		else
			self.data.snapTo = false
		end
	else
		local toggle = self.data.snapTo

		if toggle then
			self.data.snapTo = false
			self.data.snapToPoint = false
			self.data.snapToFrame = false

			self:SetUserPlaced(true)
			self.data.point, self.data.x, self.data.y = self:GetPosition()
			self:SetPosition()
		else
			self.data.snapTo = true
		end
	end

	self:Update()
end

function BAR:UpClicksSet(msg, gui, checked, query)
	if query then
		return self.data.upClicks
	end

	if gui then
		if checked then
			self.data.upClicks = true
		else
			self.data.upClicks = false
		end

	else
		if self.data.upClicks then
			self.data.upClicks = false
		else
			self.data.upClicks = true
		end
	end

	self:UpdateObjectData()
	self:Update()
end


function BAR:DownClicksSet(msg, gui, checked, query)
	if query then
		return self.data.downClicks
	end

	if gui then
		if checked then
			self.data.downClicks = true
		else
			self.data.downClicks = false
		end

	else
		if self.data.downClicks then
			self.data.downClicks = false
		else
			self.data.downClicks = true
		end
	end

	self:UpdateObjectData()
	self:Update()
end


function BAR:MultiSpecSet(msg, gui, checked, query)
	if query then
		return self.data.multiSpec
	end

	if gui then
		if checked then
			self.data.multiSpec = true
		else
			self.data.multiSpec = false
		end
	else
		local toggle = self.data.multiSpec

		if toggle then
			self.data.multiSpec = false
		else
			self.data.multiSpec = true
		end
	end

	for i, object in ipairs(self.buttons) do

		if object then
			object:UpdateButtonSpec(self)
		end

	end

	self:Update()
end


function BAR:ConcealBar(msg, gui, checked, query)
	if InCombatLockdown() then
		return
	end

	if query then
		return self.data.conceal
	end

	if gui then
		if checked then
			self.data.conceal = true
		else
			self.data.conceal = false
		end

	else
		local toggle = self.data.conceal

		if toggle then
			self.data.conceal = false
		else
			self.data.conceal = true
		end
	end

	if self.data.conceal then
		if self.selected then
			self:SetBackdropColor(1,0,0,0.6)
		else
			self:SetBackdropColor(1,0,0,0.4)
		end
	else
		if self.selected then
			self:SetBackdropColor(0,0,1,0.5)
		else
			self:SetBackdropColor(0,0,0,0.4)
		end
	end

	self:Update()
end


function BAR:barLockMod(msg, gui)
	if msg:lower() == "alt" then
		if self.data.barLockAlt then
			self.data.barLockAlt = false
		else
			self.data.barLockAlt = true
		end

	elseif msg:lower() == "ctrl" then
		if self.data.barLockCtrl then
			self.data.barLockCtrl = false
		else
			self.data.barLockCtrl = true
		end

	elseif msg:lower() == "shift" then
		if self.data.barLockShift then
			self.data.barLockShift = false
		else
			self.data.barLockShift = true
		end

	elseif not gui then
		Neuron:Print(L["Bar_Lock_Modifier_Instructions"])
	end
end

function BAR:LockSet(msg, gui, checked, query)
	if query then
		if msg == "shift" then
			return self.data.barLockShift
		elseif msg == "ctrl" then
			return self.data.barLockCtrl
		elseif msg == "alt" then
			return self.data.barLockAlt
		else
			return self.data.barLock
		end
	end

	if gui then
		if msg then
			self:barLockMod(msg, gui)
		elseif checked then
			self.data.barLock = true
		else
			self.data.barLock = false
		end

	else
		if msg then
			self:barLockMod(msg, gui)
		else
			if self.data.barLock then
				self.data.barLock = false
			else
				self.data.barLock = true
			end
		end
	end

	self:UpdateObjectData()
	self:Update()
end


function BAR:toolTipMod(msg, gui)
	if msg:lower() == "enhanced" then
		if self.data.tooltipsEnhanced then
			self.data.tooltipsEnhanced = false
		else
			self.data.tooltipsEnhanced = true
		end

	elseif msg:lower() == "combat" then
		if self.data.tooltipsCombat then
			self.data.tooltipsCombat = false
		else
			self.data.tooltipsCombat = true
		end

	elseif not gui then
		Neuron:Print(L["Tooltip_Instructions"])
	end
end


function BAR:ToolTipSet(msg, gui, checked, query)
	if query then
		if msg == "enhanced" then
			return self.data.tooltipsEnhanced
		elseif msg == "combat" then
			return self.data.tooltipsCombat
		else
			return self.data.tooltips
		end
	end

	if gui then
		if msg then
			self:toolTipMod(msg, gui)
		elseif checked then
			self.data.tooltips = true
		else
			self.data.tooltips = false
		end

	else
		if msg then
			self:toolTipMod(msg, gui)
		else
			if self.data.tooltips then
				self.data.tooltips = false
			else
				self.data.tooltips = true
			end
		end
	end

	self:UpdateObjectData()
	self:Update()
end


function BAR:NameBar(name, gui)
	if name then
		self.data.name = name
		self:Update()
	end
end


function BAR:ShapeBar(shape, gui, query)
	if query then
		return barShapes[self.data.shape]
	end

	shape = tonumber(shape)

	if shape and barShapes[shape] then
		self.data.shape = shape
		self:SetObjectLoc()
		self:SetPerimeter()
		self:SetSize()
		self:Update()
	elseif not gui then
		Neuron:Print(L["Bar_Shapes_List"])
	end
end


function BAR:ColumnsSet(command, gui, query, skipupdate)
	if query then
		if self.data.columns then
			return self.data.columns
		else
			return L["Off"]
		end
	end

	local columns = tonumber(command)

	if columns and columns > 0 then
		self.data.columns = round(columns, 0)
		self:SetObjectLoc()
		self:SetPerimeter()
		self:SetSize()

		if not skipupdate then
			self:Update()
		end

	elseif not columns or columns <= 0 then
		self.data.columns = false
		self:SetObjectLoc()
		self:SetPerimeter()
		self:SetSize()

		if not skipupdate then
			self:Update()
		end

	elseif not gui then
		Neuron:Print(L["Bar_Column_Instructions"])
	end
end


function BAR:ArcStartSet(command, gui, query, skipupdate)
	if query then
		return self.data.arcStart
	end

	local start = tonumber(command)

	if start and start>=0 and start<=359 then
		self.data.arcStart = start
		self:SetObjectLoc()
		self:SetPerimeter()
		self:SetSize()

		if not skipupdate then
			self:Update()
		end

	elseif not gui then
		Neuron:Print(L["Bar_ArcStart_Instructions"])
	end
end


function BAR:ArcLengthSet(command, gui, query, skipupdate)
	if query then
		return self.data.arcLength
	end

	local length = tonumber(command)

	if length and length>=0 and length<=359 then
		self.data.arcLength = length
		self:SetObjectLoc()
		self:SetPerimeter()
		self:SetSize()

		if not skipupdate then
			self:Update()
		end

	elseif not gui then
		Neuron:Print(L["Bar_ArcLength_Instructions"])
	end
end


function BAR:PadHSet(command, gui, query, skipupdate)
	if query then
		return self.data.padH
	end

	local padh = tonumber(command)

	if padh then
		self.data.padH = round(padh, 1)
		self:SetObjectLoc()
		self:SetPerimeter()
		self:SetSize()

		if not skipupdate then
			self:Update()
		end

	elseif not gui then
		Neuron:Print(L["Horozontal_Padding_Instructions"])
	end
end


function BAR:PadVSet(command, gui, query, skipupdate)
	if query then
		return self.data.padV
	end

	local padv = tonumber(command)

	if padv then
		self.data.padV = round(padv, 1)
		self:SetObjectLoc()
		self:SetPerimeter()
		self:SetSize()

		if not skipupdate then
			self:Update()
		end

	elseif not gui then
		Neuron:Print(L["Vertical_Padding_Instructions"])
	end
end


function BAR:PadHVSet(command, gui, query, skipupdate)
	if query then
		return "---"
	end

	local padhv = tonumber(command)

	if padhv then
		self.data.padH = round(self.data.padH + padhv, 1)
		self.data.padV = round(self.data.padV + padhv, 1)

		self:SetObjectLoc()
		self:SetPerimeter()
		self:SetSize()

		if not skipupdate then
			self:Update()
		end

	elseif not gui then
		Neuron:Print(L["Horozontal_and_Vertical_Padding_Instructions"])
	end
end


function BAR:ScaleBar(scale, gui, query, skipupdate)
	if query then
		return self.data.scale
	end

	scale = tonumber(scale)

	if scale then
		self.data.scale = round(scale, 2)
		self:SetObjectLoc()
		self:SetPerimeter()
		self:SetSize()

		if not skipupdate then
			self:Update()
		end
	end
end


function BAR:StrataSet(command, gui, query)
	if query then
		return self.data.objectStrata
	end

	local strata = tonumber(command)

	if strata and Neuron.STRATAS[strata] and Neuron.STRATAS[strata+1] then
		self.data.barStrata = Neuron.STRATAS[strata+1]
		self.data.objectStrata = Neuron.STRATAS[strata]

		self:SetPosition()
		self:UpdateObjectData()
		self:Update()

	elseif not gui then
		Neuron:Print(L["Bar_Strata_List"])
	end
end


function BAR:AlphaSet(command, gui, query, skipupdate)
	if query then
		return self.data.alpha
	end

	local alpha = tonumber(command)

	if alpha and alpha>=0 and alpha<=1 then
		self.data.alpha = round(alpha, 2)
		self.handler:SetAlpha(self.data.alpha)

		if not skipupdate then
			self:Update()
		end

	elseif not gui then
		Neuron:Print(L["Bar_Alpha_Instructions"])
	end
end

function BAR:AlphaUpSet(command, gui, query)
	if query then
		--temp fix
		if self.data.alphaUp == "none" or self.data.alphaUp == 1 then
			self.data.alphaUp = alphaUps[1]
		end

		return self.data.alphaUp
	end

	local alphaUp = tonumber(command)

	if alphaUp and alphaUps[alphaUp] then
		self.data.alphaUp = alphaUps[alphaUp]
		self:Update()
	elseif not gui then
		local text = ""

		for k,v in ipairs(alphaUps) do
			text = text.."\n"..k.."="..v
			Neuron:Print(text)
		end
	end
end


function BAR:AlphaUpSpeedSet(command, gui, query, skipupdate)
	if query then
		return self.data.fadeSpeed
	end

	local speed = tonumber(command)

	if speed then
		self.data.fadeSpeed = round(speed, 2)

		if self.data.fadeSpeed > 1 then
			self.data.fadeSpeed = 1
		end

		if self.data.fadeSpeed < 0.01 then
			self.data.fadeSpeed = 0.01
		end

		if not skipupdate then
			self:Update()
		end

	elseif not gui then
	end
end

function BAR:XAxisSet(command, gui, query, skipupdate)
	if query then
		return self.data.x
	end

	local x = tonumber(command)

	if x then
		self.data.x = round(x, 2)
		self.data.snapTo = false
		self.data.snapToPoint = false
		self.data.snapToFrame = false
		self:SetPosition()
		self.data.point, self.data.x, self.data.y = self:GetPosition()

		if not gui then
			self.Message:Show()
			self.MessageBG:Show()
		end

		if not skipupdate then
			self:Update()
		end

	elseif not gui then
		Neuron:Print(L["X_Position_Instructions"])
	end
end


function BAR:YAxisSet(command, gui, query, skipupdate)
	if query then
		return self.data.y
	end

	local y = tonumber(command)

	if y then
		self.data.y = round(y, 2)
		self.data.snapTo = false
		self.data.snapToPoint = false
		self.data.snapToFrame = false
		self:SetPosition()
		self.data.point, self.data.x, self.data.y = self:GetPosition()

		if not gui then
			self.Message:Show()
			self.MessageBG:Show()
		end

		if not skipupdate then
			self:Update()
		end
	elseif not gui then
		Neuron:Print(L["Y_Position_Instructions"])
	end
end


function BAR:BindTextSet(msg, gui, checked, query)
	if query then
		return self.data.bindText, self.data.bindColor
	end

	if gui then
		if checked then
			self.data.bindText = true
		else
			self.data.bindText = false
		end

	else
		if self.data.bindText then
			self.data.bindText = false
		else
			self.data.bindText = true
		end
	end

	self:UpdateObjectData()
	self:Update()
end


function BAR:MacroTextSet(msg, gui, checked, query)
	if query then
		return self.data.macroText, self.data.macroColor
	end

	if gui then
		if checked then
			self.data.macroText = true
		else
			self.data.macroText = false
		end

	else
		if self.data.macroText then
			self.data.macroText = false
		else
			self.data.macroText = true
		end
	end

	self:UpdateObjectData()
	self:Update()
end


function BAR:CountTextSet(msg, gui, checked, query)
	if query then
		return self.data.countText, self.data.countColor
	end

	if gui then
		if checked then
			self.data.countText = true
		else
			self.data.countText = false
		end

	else
		if self.data.countText then
			self.data.countText = false
		else
			self.data.countText = true
		end
	end

	self:UpdateObjectData()
	self:Update()
end


function BAR:RangeIndSet(msg, gui, checked, query)
	if query then
		return self.data.rangeInd, self.data.rangecolor
	end

	if gui then
		if checked then
			self.data.rangeInd = true
		else
			self.data.rangeInd = false
		end

	else
		if self.data.rangeInd then
			self.data.rangeInd = false
		else
			self.data.rangeInd = true
		end
	end

	self:UpdateObjectData()
	self:Update()
end


function BAR:CDTextSet(msg, gui, checked, query)
	if query then
		return self.data.cdText, self.data.cdcolor1, self.data.cdcolor2
	end

	if gui then
		if checked then
			self.data.cdText = true
		else
			self.data.cdText = false
		end

	else
		if self.data.cdText then
			self.data.cdText = false
		else
			self.data.cdText = true
		end
	end

	self:UpdateObjectData()
	self:Update()
end


function BAR:CDAlphaSet(msg, gui, checked, query)
	if query then
		return self.data.cdAlpha
	end

	if gui then
		if checked then
			self.data.cdAlpha = true
		else
			self.data.cdAlpha = false
		end

	else
		if self.data.cdAlpha then
			self.data.cdAlpha = false
		else
			self.data.cdAlpha = true
		end
	end

	self:UpdateObjectData()
	self:Update()
end

function BAR:SetBorderStyle(msg, gui, checked, query)
	if query then
		return self.data.showBorderStyle
	end

	if gui then
		if checked then
			self.data.showBorderStyle = true
		else
			self.data.showBorderStyle = false
		end
	else
		if self.data.showBorderStyle then
			self.data.showBorderStyle = false
		else
			self.data.showBorderStyle = true
		end
	end

	self:UpdateObjectIcons()
end


function BAR:Load()
	self:SetPosition()
	self:LoadObjects()
	self:SetObjectLoc()
	self:SetPerimeter()
	self:SetSize()
	self:EnableKeyboard(false)
	self:Update()
end




--- Sets a Target Casting state for a bar
-- @param value(string): Database refrence value to be set
-- @param gui(Bool): Toggle to determine if call was from the GUI
-- @param checked(Bool) : Used when using a GUI checkbox - It is the box's current state
-- @param query: N/A
function BAR:SetCastingTarget(value, gui, checked, query)
	if value then
		if gui then

			if checked then
				self.data[value] = true
			else
				self.data[value] = false
			end

		else

			local toggle = self.data[value]

			if toggle then
				self.data[value] = false
			else
				self.data[value] = true
			end
		end

		Neuron.ACTIONBUTTON:UpdateMacroCastTargets()
		self:Update()
	end
end
