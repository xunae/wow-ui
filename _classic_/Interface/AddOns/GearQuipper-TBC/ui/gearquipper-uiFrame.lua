-- scope stuff
gearquipper = gearquipper or {};
local c = gearquipper;

local setInfoFrame;
local setCheckBoxes, eventEntries, btnAddSet, btnAddBinding = {}, {};
local checkboxYOffset, dropdownYOffset = 22, 60;

local noEventBindings, newBindingEntry = 0;
local bindingEntries, bindingEntriesOrder;
local TEXT_DROPDOWN, TEXT_BUTTON, TEXT_CHAT = "TEXT_DROPDOWN", "TEXT_BUTTON", "TEXT_CHAT";

----- ui frame general stuff -----

function c:InitUiFrame()
	GqUiFrame.TitleText:SetPoint("TOP", -2, -5);
	GqUiFrame.TitleText:SetText("GearQuipper TBC Version " .. c:GetVersion());
	GqUiFrame_BtnSaveSet:SetText(c:GetText("Save set"));
	GqUiFrame_BtnDeleteSet:SetText(c:GetText("Remove set"));
	GqUiFrame.CloseButton:SetScript("OnClick", function(self) c:ToggleUI(false); end);
	GqEventBindingFrame_CbDisableEventsFontString:SetText(c:GetText("Disable events"));
	GqEventBindingFrame_CbDisableEvents:SetChecked(not c:IsEventsEnabled());
	GqEventBindingFrame.CloseButton:Hide();

	local S = c:GetElvUiSkinModule();
	if S then
		S:HandleFrame(GqUiFrame);
		GqUiFrame:SetPoint("TOPRIGHT", 310, -12);
		GqUiFrame.CloseButton:SetPoint("TOPRIGHT", 2, 2);
		GqUiFrame.TitleText:SetPoint("TOP", 0, -8);
		S:HandleFrame(GqUiScrollFrameBorder);
		GqUiScrollFrameBorder:SetPoint("TOPLEFT", 8, -30);
		GqUiScrollFrameBorder:SetWidth(GqUiScrollFrameBorder:GetParent():GetWidth() - 16);
		GqUiScrollFrameBorder:SetHeight(125);
		GqUiScrollFrame:SetWidth(GqUiScrollFrame:GetParent():GetWidth() - 8);
		S:HandleSliderFrame(GqUiScrollFrameVSlider);

		S:HandleFrame(GqEventBindingFrame);
		GqEventBindingFrame:SetPoint("BOTTOMLEFT", 0, -204);
		GqEventBindingFrame:SetHeight(200);
		S:HandleFrame(GqUiEventBindingsScrollFrameBorder);
		GqUiEventBindingsScrollFrameBorder:SetPoint("TOPLEFT", 8, -8);
		GqUiEventBindingsScrollFrameBorder:SetWidth(GqUiEventBindingsScrollFrameBorder:GetParent():GetWidth() - 16);
		GqUiEventBindingsScrollFrameBorder:SetHeight(GqUiEventBindingsScrollFrameBorder:GetParent():GetHeight() - 42);
		GqUiEventBindingsScrollFrame:SetWidth(GqUiEventBindingsScrollFrame:GetParent():GetWidth() - 8);
		GqUiEventBindingsScrollFrame:SetHeight(GqUiEventBindingsScrollFrame:GetParent():GetHeight() - 8);
		S:HandleSliderFrame(GqUiEventBindingsScrollFrameVSlider);
		GqUiEventBindingsScrollFrameVSlider:SetHeight(GqUiEventBindingsScrollFrameVSlider:GetParent():GetHeight());

		S:HandleButton(GqUiFrame_BtnSaveSet);
		GqUiFrame_BtnSaveSet:SetPoint("BOTTOMRIGHT", -8, 35);
		S:HandleButton(GqUiFrame_BtnDeleteSet);
		GqUiFrame_BtnDeleteSet:SetPoint("BOTTOMRIGHT", -8, 8);

		S:HandleCheckBox(GqEventBindingFrame_CbDisableEvents);
		GqEventBindingFrame_CbDisableEvents:SetPoint("BOTTOMLEFT", 8, 6);
	end
end

function c:ToggleUI(value)
	if c.initFinished then
		if value or not GqUiFrame:IsVisible() then
			GqUiFrame:Show();
			GqUiFrame.isOpen = true;
		else
			GqUiFrame:Hide();
			GqUiFrame.isOpen = false;
		end
		GQ_OPTIONS[c.OPT_MENUOPEN] = GqUiFrame.isOpen;
	end
end

function c:LockUI(setName)
	if c.paperDollFrame:IsVisible() then
		c:DisablePaperDollButton();
		c:HideSlotStateBoxes();
	end

	if GqUiFrame:IsVisible() then
		if setCheckBoxes then
			for index, checkBox in ipairs(setCheckBoxes) do
				checkBox:SetEnabled(false);
				if checkBox.setName ~= setName then
					checkBox:SetAlpha(0.5);
				end
			end
		end

		GqUiFrame_BtnSaveSet:SetEnabled(false);
		GqUiFrame_BtnDeleteSet:SetEnabled(false);
		if btnAddSet then
			btnAddSet:SetEnabled(false);
		end
		if btnAddBinding then
			btnAddBinding:SetEnabled(false);
		end

		if setInfoFrame then
			setInfoFrame.cbPartial:SetEnabled(false);
			setInfoFrame.cbActionSlots:SetEnabled(false);
		end

		c:ToggleEvents(false);
	end
end

function c:UnlockUI()
	if c.paperDollFrame:IsVisible() then
		c:EnablePaperDollButton();
		c:ShowSlotStateBoxes();
	end

	if GqUiFrame:IsVisible() then
		if setCheckBoxes then
			for index, checkBox in ipairs(setCheckBoxes) do
				checkBox:SetEnabled(true);
				checkBox:SetAlpha(1);
			end
		end

		GqUiFrame_BtnSaveSet:SetEnabled(true);
		GqUiFrame_BtnDeleteSet:SetEnabled(true);
		GqEventBindingFrame_CbDisableEvents:SetEnabled(true);
		if (btnAddSet) then
			btnAddSet:SetEnabled(true);
		end

		if setInfoFrame then
			setInfoFrame.cbPartial:SetEnabled(true);
			setInfoFrame.cbActionSlots:SetEnabled(true);
		end

		c:ToggleEvents(c:IsEventsEnabled());
	end
end

function c:ToggleEvents(value)
	if c.initFinished and btnAddBinding then
		btnAddBinding:SetEnabled(value);
		if eventEntries then
			for index, entry in ipairs(eventEntries) do
				if entry.cbSet then
					if value then
						UIDropDownMenu_EnableDropDown(entry.cbSet);
					else
						UIDropDownMenu_DisableDropDown(entry.cbSet);
					end
				end
				if entry.btnDelete then
					entry.btnDelete:SetEnabled(value);
				end
			end
		end
		GqEventBindingFrame_CbDisableEvents:SetChecked(not value);
	end
end

function c:RefreshSetList(scrollIntoView)
	-- hide boxes
	GqUiScrollFrameVSlider:SetValue(0);
	for index, checkBox in ipairs(setCheckBoxes) do
		checkBox:SetChecked(false);
		checkBox:Hide();
		checkBox.pushButton:Hide();
		checkBox.pullButton:Hide();
	end

	-- create boxes if neccessary and unlock
	local setNames, currentSet, currentSetPosition = c:LoadSetNames(), c:LoadCurrentSetName();
	for index, setName in ipairs(setNames) do
		if not setCheckBoxes[index] then
			setCheckBoxes[index] = c:CreateSetEntry(index);
		end
		setCheckBoxes[index].setName = setName;
		setCheckBoxes[index].fontString:SetText(setName);
		setCheckBoxes[index]:SetChecked(setName == currentSet);
		setCheckBoxes[index]:SetAlpha(1);
		setCheckBoxes[index]:SetEnabled(true);
		setCheckBoxes[index]:Show();

		setCheckBoxes[index]:SetScript("OnEnter", function(self)
			local setItems = c:LoadSet(setName);
			c:HighlightItemsInBags(setItems);
			setCheckBoxes[index].fontString:SetTextColor(1, 1, 1, 1);
		end);
		setCheckBoxes[index]:SetScript("OnLeave", function(self)
			c:HighlightItemsInBags();
			setCheckBoxes[index].fontString:SetTextColor(unpack(setCheckBoxes[index].fontString.defaultTextColor));
		end);

		if c:IsAtBank() then
			setCheckBoxes[index].pushButton:Show();
			setCheckBoxes[index].pullButton:Show();
		end

		if setName == currentSet and scrollIntoView then
			currentSetPosition = (index - 1) * checkboxYOffset;
		end
	end

	local noSets = table.getn(setNames) + 1;
	if noSets > 5 then
		local maxValue = (noSets * checkboxYOffset) - GqUiScrollFrame:GetHeight() + 6;
		GqUiScrollFrameVSlider:SetMinMaxValues(0, maxValue);
		GqUiScrollFrameVSlider:Show();

		--local min, max = GqUiScrollFrameVSlider:GetMinMaxValues();
		--print(currentSetPosition, GqUiScrollFrameVSlider:GetValue()) -- todo: improve
		if currentSetPosition then
			GqUiScrollFrameVSlider:SetValue(currentSetPosition - checkboxYOffset * 2);
		end
	elseif GqUiScrollFrameVSlider:IsVisible() then
		GqUiScrollFrameVSlider:Hide();
	end

	if not btnAddSet then
		btnAddSet = CreateFrame("Button", "GqAddSetButton", GqUiScrollFrameContent, "GqButtonTemplate");
		btnAddSet:SetWidth(170);
		btnAddSet:SetScript("OnClick", function(self) BtnCreateNewSet_OnClick(); end);
		btnAddSet.fontString = btnAddSet:CreateFontString("GqAddSetButton_FontString", "ARTWORK", "GameFontNormal");
		btnAddSet.fontString:SetPoint("CENTER");
		btnAddSet.fontString:SetText(c:GetText("Add set..."));

		local S = c:GetElvUiSkinModule();
		if S then
			S:HandleButton(btnAddSet);
		end
	end
	btnAddSet:SetPoint("TOPLEFT", 2, -(noSets - 1) * checkboxYOffset - 2);

	c:ShowSetInfo(currentSet);
end

function c:CreateSetEntry(index)
	local chSet = CreateFrame("CheckButton", "GqUiSetCheckBox_" .. index, GqUiScrollFrameContent, "ChatConfigCheckButtonTemplate");
	chSet:SetPushedTexture(nil);
	chSet:SetPoint("TOPLEFT", 0, -(index - 1) * checkboxYOffset);
	chSet:SetScript("OnClick", function(self) SetCheckBox_OnClick(self); end);
	chSet.fontString = chSet:CreateFontString("GqUiSetCheckBox_" .. index .. "_FontString", "ARTWORK", "GameFontNormal")
	chSet.fontString:SetPoint("LEFT", 30, 0);
	chSet.fontString.defaultTextColor = { chSet.fontString:GetTextColor() };

	chSet.pushButton = CreateFrame("Button", "GqUiSetPushButton_" .. index, GqUiScrollFrameContent, "GqButtonTemplate");
	chSet.pushButton:SetWidth(65);
	chSet.pushButton:SetPoint("TOPLEFT", 137, -(index - 1) * checkboxYOffset);
	chSet.pushButton:SetScript("OnClick", function(self) SetPushButton_OnClick(self); end);
	chSet.pushButton.fontString = chSet.pushButton:CreateFontString("GqUiSetPushButton_" .. index .. "_FontString", "ARTWORK", "GameFontNormal")
	chSet.pushButton.fontString:SetPoint("CENTER");
	chSet.pushButton.fontString:SetText(c:GetText("-> Bank"));
	chSet.pushButton.parent = chSet;
	chSet.pushButton:SetFrameLevel(chSet:GetFrameLevel() + 1);
	chSet.pushButton:Hide();

	chSet.pullButton = CreateFrame("Button", "GqUiSetPullButton_" .. index, GqUiScrollFrameContent, "GqButtonTemplate");
	chSet.pullButton:SetWidth(65);
	chSet.pullButton:SetPoint("TOPLEFT", 202, -(index - 1) * checkboxYOffset);
	chSet.pullButton:SetScript("OnClick", function(self) SetPullButton_OnClick(self); end);
	chSet.pullButton.fontString = chSet.pullButton:CreateFontString("GqUiSetPullButton_" .. index .. "_FontString", "ARTWORK", "GameFontNormal")
	chSet.pullButton.fontString:SetPoint("CENTER");
	chSet.pullButton.fontString:SetText(c:GetText("-> Bag"));
	chSet.pullButton.parent = chSet;
	chSet.pullButton:SetFrameLevel(chSet:GetFrameLevel() + 1);
	chSet.pullButton:Hide();

	local S = c:GetElvUiSkinModule();
	if S then
		S:HandleCheckBox(chSet);
		S:HandleButton(chSet.pushButton);
		S:HandleButton(chSet.pullButton);
	end

	return chSet;
end

function c:RefreshEventEntries()
	GqUiEventBindingsScrollFrameVSlider:SetValue(0);
	for index, bindingEntry in ipairs(eventEntries) do
		bindingEntry:Hide();
	end

	for index, bindingEntry in ipairs(c:LoadEventBindings()) do
		eventEntries[index] = eventEntries[index] or c:CreateEventEntry(index);
		eventEntries[index].bindingIndex = index;
		eventEntries[index].bindingEntry = bindingEntry;
		eventEntries[index].lblEvent.fontString:SetText(string.format("[%s] %s", index, c:GetEvents()[bindingEntry[c.FIELD_TYPE]]));

		local infos = {};
		if bindingEntry[c.FIELD_SUBTYPE] then
			if bindingEntry[c.FIELD_SUBTYPE]["name"] then
				-- zone
				eventEntries[index].lblEventInfo2.fontString:SetText(c:FormatTextWithColor(bindingEntry[c.FIELD_SUBTYPE]["name"], "ffffff"));
			elseif bindingEntry[c.FIELD_SUBTYPE][c.FIELD_NAME] then
				-- script
				eventEntries[index].lblEventInfo2.fontString:SetText(c:FormatTextWithColor(bindingEntry[c.FIELD_SUBTYPE][c.FIELD_NAME], "ffffff"));
			end
		else
			eventEntries[index].lblEventInfo2.fontString:SetText();
		end

		local infos = {};
		if bindingEntry[c.FIELD_PVE] then
			table.insert(infos, c:GetText("PvE"));
		end
		if bindingEntry[c.FIELD_PVP] then
			table.insert(infos, c:GetText("PvP"));
		end
		eventEntries[index].lblEventInfo1.fontString:SetText(c:FormatTextWithColor(table.concat(infos, " + "), "ffffff"));

		if bindingEntry[c.FIELD_NAME] == c.KEYWORD_PREVIOUS then
			UIDropDownMenu_SetText(eventEntries[index].cbSet, c:GetText("[Previous set]"));
		elseif bindingEntry[c.FIELD_NAME] == c.KEYWORD_PREVIOUSEQUIPMENT then
			UIDropDownMenu_SetText(eventEntries[index].cbSet, c:GetText("[Previous equipment]"));
		else
			UIDropDownMenu_SetText(eventEntries[index].cbSet, bindingEntry[c.FIELD_NAME]);
		end
		eventEntries[index]:Show();
	end

	local noBindings = table.getn(c:LoadEventBindings()) + 0.5;
	local maxValue = (noBindings * dropdownYOffset) - GqUiEventBindingsScrollFrame:GetHeight();
	if maxValue > 0 then
		GqUiEventBindingsScrollFrameVSlider:SetMinMaxValues(0, maxValue);
	end

	local S = c:GetElvUiSkinModule();
	if (not S and noBindings > 2) or (S and noBindings > 2.5) then
		GqUiEventBindingsScrollFrameVSlider:Show();
	elseif GqUiEventBindingsScrollFrameVSlider:IsVisible() then
		GqUiEventBindingsScrollFrameVSlider:Hide();
	end

	if not btnAddBinding then
		btnAddBinding = CreateFrame("Button", "GqAddEventBinding", GqUiEventBindingsScrollFrameContent, "GqButtonTemplate");
		btnAddBinding:SetWidth(135);
		btnAddBinding:SetScript("OnClick", function(self) BtnCreateSetBinding_OnClick(); end);
		btnAddBinding.fontString = btnAddBinding:CreateFontString("GqAddEventBinding_FontString", "ARTWORK", "GameFontNormal");
		btnAddBinding.fontString:SetPoint("CENTER");
		btnAddBinding.fontString:SetText(c:GetText("Add event..."));

		if S then
			S:HandleButton(btnAddBinding);
		end
	end
	btnAddBinding:SetPoint("BOTTOMLEFT", 2, -noBindings * dropdownYOffset + 4);
	btnAddBinding:Show();
end

function c:CreateEventEntry(index)
	local frame = CreateFrame("Frame", "GqUiBindingEntry_" .. index, GqUiEventBindingsScrollFrameContent);
	frame:SetPoint("TOPLEFT", 5, -(index - 1) * dropdownYOffset - 5);
	frame:SetHeight(dropdownYOffset);
	frame:SetWidth(frame:GetParent():GetParent():GetWidth() - 24);

	frame.lblEvent = CreateFrame("Frame", "GqUiBindingEntry_" .. index .. "_LblEvent", frame);
	frame.lblEvent:SetPoint("TOPLEFT", 2, 0);
	frame.lblEvent:SetHeight(27);
	frame.lblEvent:SetWidth(130);
	frame.lblEvent.fontString = frame.lblEvent:CreateFontString("GqUiBindingEntry_" .. index .. "_LblEvent_FontString", "ARTWORK", "GameFontNormal");
	frame.lblEvent.fontString:SetPoint("LEFT");

	frame.lblEventInfo1 = CreateFrame("Frame", "GqUiBindingEntry_" .. index .. "_LblEventInfo1", frame);
	frame.lblEventInfo1:SetPoint("TOPLEFT", 21, -15);
	frame.lblEventInfo1:SetHeight(27);
	frame.lblEventInfo1:SetWidth(130);
	frame.lblEventInfo1.fontString = frame.lblEventInfo1:CreateFontString("GqUiBindingEntry_" .. index .. "_LblEventInfo1_FontString", "ARTWORK", "GameFontNormal");
	frame.lblEventInfo1.fontString:SetPoint("LEFT");

	frame.lblEventInfo2 = CreateFrame("Frame", "GqUiBindingEntry_" .. index .. "_LblEventInfo2", frame);
	frame.lblEventInfo2:SetPoint("TOPLEFT", 21, -30);
	frame.lblEventInfo2:SetHeight(27);
	frame.lblEventInfo2:SetWidth(130);
	frame.lblEventInfo2.fontString = frame.lblEventInfo2:CreateFontString("GqUiBindingEntry_" .. index .. "_LblEventInfo2_FontString", "ARTWORK", "GameFontNormal");
	frame.lblEventInfo2.fontString:SetPoint("LEFT");

	local info = UIDropDownMenu_CreateInfo();
	info.hasArrow = false;
	info.notCheckable  = true;

	-- set dropdown
	frame.cbSet = CreateFrame("Frame", "GqUiBindingEntry_" .. index .. "_SetDropdown", frame, "UIDropDownMenuTemplate");
	frame.cbSet:SetPoint("TOPRIGHT", 8, 0);
	UIDropDownMenu_SetWidth(frame.cbSet, 110);
	UIDropDownMenu_Initialize(frame.cbSet, function(self, level, menuList)
		info.func = function(self)
			GqUiFrame_CbSetName_ValueChanged(self);
			CloseDropDownMenus();
		end;

		if (level or 1) == 1 then
			info.text = c:GetText("[Previous set]");
			info.value = c.KEYWORD_PREVIOUS;
			UIDropDownMenu_AddButton(info);

			info.text = c:GetText("[Previous equipment]");
			info.value = c.KEYWORD_PREVIOUSEQUIPMENT;
			UIDropDownMenu_AddButton(info);

			for setIndex, setName in ipairs(c:LoadSetNames()) do
				info.text = setName;
				info.value = setName;
				info.arg1 = frame;
				UIDropDownMenu_AddButton(info);
			end
		end
	end);

	frame.btnDelete = CreateFrame("Button", "GqUiBindingEntry_" .. index .. "_BtnDelete", frame, "GqButtonTemplate");
	frame.btnDelete:SetPoint("BOTTOMRIGHT", -7, 5);
	frame.btnDelete:SetWidth(128);
	frame.btnDelete:SetScript("OnClick", function(self) BtnDeleteSetBinding_OnClick(self); end);
	frame.btnDelete.fontString = frame.btnDelete:CreateFontString("GqAddEventBinding_FontString", "ARTWORK", "GameFontNormal");
	frame.btnDelete.fontString:SetPoint("CENTER");
	frame.btnDelete.fontString:SetText(c:GetText("Remove event"));

	local S = c:GetElvUiSkinModule();
	if S then
		S:HandleDropDownBox(frame.cbSet);
		frame.cbSet:SetPoint("TOPRIGHT", 7, 0);
		S:HandleButton(frame.btnDelete);
		frame.btnDelete:SetPoint("BOTTOMRIGHT", 0, 7);
	end

	return frame;
end

function c:ShowSetInfo(setName)
	if setName then
		if not setInfoFrame then
			setInfoFrame = CreateFrame("Frame", "GqUiSetInfoFrame", GqUiFrame);
			setInfoFrame:SetPoint("TOPLEFT", 25, -GqUiScrollFrameBorder:GetHeight() - GqUiFrame.CloseButton:GetHeight());
			setInfoFrame:SetHeight(GqUiFrame:GetHeight() - GqUiScrollFrameBorder:GetHeight() - 20);
			setInfoFrame:SetWidth(setInfoFrame:GetParent():GetWidth() - 6);
			setInfoFrame.fontString = setInfoFrame:CreateFontString("GqUiSetInfoFrame_FontString", "ARTWORK", "GameFontNormal");
			setInfoFrame.fontString:SetPoint("LEFT");

			setInfoFrame.cbPartial = CreateFrame("CheckButton", "GqUiSetInfoFrame_CheckButtonPartial", setInfoFrame, "ChatConfigCheckButtonTemplate");
			setInfoFrame.cbPartial:SetPoint("TOPLEFT");
			setInfoFrame.cbPartial:SetScript("OnClick", function(self) BtnSetPartialOption_Click(self); end);
			setInfoFrame.cbPartial.fontString = setInfoFrame.cbPartial:CreateFontString("GqUiSetInfoFrame_CheckButtonPartial_FontString", "ARTWORK", "GameFontNormal");
			setInfoFrame.cbPartial.fontString:SetPoint("LEFT", 25, 0);
			setInfoFrame.cbPartial.fontString:SetText(c:GetText("Partial"));

			setInfoFrame.cbActionSlots = CreateFrame("CheckButton", "GqUiSetInfoFrame_CheckButtonActionSlots", setInfoFrame, "ChatConfigCheckButtonTemplate");
			setInfoFrame.cbActionSlots:SetPoint("TOPLEFT", 0, -29);
			setInfoFrame.cbActionSlots:SetScript("OnClick", function(self) BtnSetActionSlotOption_Click(self); end);
			setInfoFrame.cbActionSlots.fontString = setInfoFrame.cbActionSlots:CreateFontString("GqUiSetInfoFrame_CheckButtonActionSlots_FontString", "ARTWORK", "GameFontNormal");
			setInfoFrame.cbActionSlots.fontString:SetPoint("LEFT", 25, 0);
			setInfoFrame.cbActionSlots.fontString:SetText(c:GetText("Affects action slots"));

			local S = c:GetElvUiSkinModule();
			if S then
				setInfoFrame:SetPoint("TOPLEFT", 8, -GqUiScrollFrameBorder:GetHeight() - GqUiFrame.CloseButton:GetHeight());
				setInfoFrame:SetHeight(GqUiFrame:GetHeight() - GqUiScrollFrameBorder:GetHeight() - 38);
				setInfoFrame:SetWidth(setInfoFrame:GetParent():GetWidth() - 16);

				S:HandleCheckBox(setInfoFrame.cbPartial);
				setInfoFrame.cbPartial:SetPoint("TOPLEFT", 0, -2);

				S:HandleCheckBox(setInfoFrame.cbActionSlots);
				setInfoFrame.cbActionSlots:SetPoint("TOPLEFT", 0, -31);
			end
		end
		setInfoFrame.cbPartial.setName = setName;
		setInfoFrame.cbPartial:SetChecked(c:LoadPartialOption(setName));
		setInfoFrame.cbActionSlots.setName = setName;
		setInfoFrame.cbActionSlots:SetChecked(c:LoadActionSlotsOption(setName));
		setInfoFrame:Show();

		GqUiFrame_BtnSaveSet:Show();
		GqUiFrame_BtnDeleteSet:Show();
	elseif setInfoFrame then
		setInfoFrame:Hide();

		GqUiFrame_BtnSaveSet:Hide();
		GqUiFrame_BtnDeleteSet:Hide();
	end
end

----- ui frame interaction -----

function GqUiFrame_OnShow(self)
	if c:IsSwitching() or c:IsInCombat() then
		c:LockUI();
	else
		c:UnlockUI();
	end

	c:ShowSlotStateBoxes();
end

function GqUiFrame_OnHide(self)
	c:HideSlotStateBoxes();
end

function GqUiScrollFrame_OnShow(self)
	c:RefreshSetList(c:LoadCurrentSetName());
end

function GqUiScrollFrame_OnMouseWheel(self, delta)
	if GqUiScrollFrameVSlider:IsVisible() then
		local current, min, max = GqUiScrollFrameVSlider:GetValue(), GqUiScrollFrameVSlider:GetMinMaxValues();
		if delta < 0 and current < max then
			GqUiScrollFrameVSlider:SetValue(current + max / 10);
		elseif (delta > 0) and (current > 1) then
			GqUiScrollFrameVSlider:SetValue(current - max / 10);
		end
	end
end

function GqUiEventBindingsScrollFrame_OnShow(self)
	c:RefreshEventEntries();
end

function GqUiEventBindingsScrollFrame_OnMouseWheel(self, delta)
	if GqUiEventBindingsScrollFrameVSlider:IsVisible() then
		local current, min, max = GqUiEventBindingsScrollFrameVSlider:GetValue(), GqUiEventBindingsScrollFrameVSlider:GetMinMaxValues();
		if delta < 0 and current < max then
			GqUiEventBindingsScrollFrameVSlider:SetValue(current + max / 10);
		elseif (delta > 0) and (current > 1) then
			GqUiEventBindingsScrollFrameVSlider:SetValue(current - max / 10);
		end
	end
end

function SetCheckBox_OnClick(self)
	for index, checkBox in ipairs(setCheckBoxes) do
		checkBox:SetChecked(false);
	end

	c:ResetIgnoredSlots();
	c:QueueSwitch({ [c.SWITCHARG_SETNAME] = self.setName });
end

function SetPushButton_OnClick(self)
	c:PushSetToBank(self.parent.setName);
end

function SetPullButton_OnClick(self)
	c:PullSetFromBank(self.parent.setName);
end

function BtnSetPartialOption_Click(self)
	c:SavePartialOption(self.setName, self:GetChecked());
	if self:GetChecked() then
		c:ShowSlotStateBoxes();
	else
		c:HideSlotStateBoxes();
	end
	c:SetSlotInfo();
end

function BtnSetActionSlotOption_Click(self)
	c:SaveActionSlotsOption(self.setName, self:GetChecked());
	if self:GetChecked() and not c:IsSameActionConfiguration(self.setName) then
		c:ShowLoadSaveActionSlotsDialog(self);
	end
end

function BtnSaveSet_OnClick(self)
	local setName = c:LoadCurrentSetName();
	if setName then
		c:SaveSet(setName);
		c:SetPaperDollLabelText();
		c:SetSlotInfo();
	end
end

function BtnCreateNewSet_OnClick()
	c:ShowAddSetDialog();
end

function BtnCreateSetBinding_OnClick()
	GqUiFrameEvents:Show();
	--c:RefreshEventEntries(true);
end

function BtnDeleteSet_OnClick()
	local setName = c:LoadCurrentSetName();
	if setName then
		c:ShowDeleteSetDialog(setName);
	end
end

function GqUiFrame_CbSetName_ValueChanged(self)
	self.arg1.bindingEntry[c.FIELD_NAME] = self.value;
	if self.arg1.bindingEntry[c.FIELD_NAME] == c.KEYWORD_PREVIOUS then
		UIDropDownMenu_SetText(self.arg1.cbSet, c:GetText("[Previous set]"));
	elseif self.arg1.bindingEntry[c.FIELD_NAME] == c.KEYWORD_PREVIOUSEQUIPMENT then
		UIDropDownMenu_SetText(self.arg1.cbSet, c:GetText("[Previous equipment]"));
	else
		UIDropDownMenu_SetText(self.arg1.cbSet, self.value);
	end
	c:SaveEventBinding(self.arg1.bindingEntry, self.arg1.bindingIndex);
end

function BtnDeleteSetBinding_OnClick(self)
	c:DeleteEventBinding(self:GetParent().bindingIndex);
	c:RefreshEventEntries();
end

function GqEventBindingFrame_CbDisableEvents_OnClick(self)
	c:SetEventsEnabled(not self:GetChecked());
	c:ToggleEvents(c:IsEventsEnabled());
end