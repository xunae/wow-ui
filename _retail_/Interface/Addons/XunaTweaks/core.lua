local addonName, addon = ...
XunaTweaks = CreateFrame('Frame')

local defaultConfig = {
	eliteFrame = true,

	darkFrames = true,
	dfc = 0.5,
	
	classColorFrames = true,
	classIconPortraits = false,
	customHealthMana = true,

	bottomRaidFrame = true,

	hideGryphons = false,
	outOfRangeIcons = true,
	hideMacros = true,
	hideBinds = false,

	manaColor = true,
	shamanColor = true,
}

local initialSetupDone = false
local eliteFrame = nil
local classColorFrame = nil
local classColorFramePlayerBg = nil

function XunaTweaks:OnLoad()
	XunaTweaks:RegisterEvent('ADDON_LOADED')
end

function XunaTweaks:OnEvent(event)
	if event == 'ADDON_LOADED' then
		if not XunaTweaksDB then
			XunaTweaksDB = CopyTable(defaultConfig)
		end

		for i, v in pairs({'xt', 'xuna'}) do _G['SLASH_XunaTweaks'..i] = '/'..v end
		SlashCmdList.XunaTweaks = function()
			InterfaceOptionsFrame_OpenToCategory(addonName)
			InterfaceOptionsFrame_OpenToCategory(addonName)
			InterfaceOptionsFrame_OpenToCategory(addonName)
		end

		self:Initialize()
		self:UnregisterEvent('ADDON_LOADED')
	end
end

XunaTweaks:OnLoad()
XunaTweaks:SetScript('OnEvent', XunaTweaks.OnEvent)

function XunaTweaks:Initialize()
	self:eliteFrame()
	self:darkFrames()
	self:classColorFrames()
	self:hideGryphons()
	self:beautifyFonts()
	self:beautifyActionBar()

	MinimapZoomOut:Hide()
	MinimapZoomIn:Hide()

	if not initialSetupDone then
		initialSetupDone = true
		self:hideGroupTitles()
		if XunaTweaksDB.manaColor then self:manaColor() end
		if XunaTweaksDB.shamanColor then self:shamanColor() end
		if XunaTweaksDB.classIconPortraits then self:classIconPortraits() end
		if XunaTweaksDB.customHealthMana then self:customHealthMana() end
		if XunaTweaksDB.bottomRaidFrame then self:bottomRaidFrame() end
		if XunaTweaksDB.outOfRangeIcons then self:oufOfRangeIcons() end
	end
end

function XunaTweaks:hideGroupTitles()
	local f = CreateFrame('Frame')
	f:RegisterEvent('ADDON_LOADED')
	f:RegisterEvent('GROUP_ROSTER_UPDATE')
	f:RegisterEvent('RAID_ROSTER_UPDATE')
	f:SetScript('OnEvent', function(event)
		if UnitInRaid('player') then
			for i = 1, GetNumGroupMembers() do
				_, _, subgroup = GetRaidRosterInfo(i)
				local title = _G['CompactRaidGroup' .. subgroup .. 'Title']
				if title ~= nil then
					title:Hide()
				end
				
			end
		elseif UnitInParty('player') and CompactPartyFrameTitle ~= nil then
			CompactPartyFrameTitle:Hide()
		end
	end)
end

function XunaTweaks:manaColor()
	_G.PowerBarColor['MANA'] = { r = 0, g = .15, b = .9 }
end

function XunaTweaks:shamanColor()
	_G.RAID_CLASS_COLORS['SHAMAN'] = { r = 0, g = 0.44, b = 0.87 }
end

function XunaTweaks:eliteFrame()
	local playerFrame = _G['PlayerFrame']

	if not eliteFrame then
		eliteFrame = playerFrame:CreateTexture('EliteFrameTexture', 'BORDER')
		eliteFrame:SetAllPoints(playerFrame)
		eliteFrame:SetTexCoord(1, .09, 0, .78125)
	end

	if not XunaTweaksDB.eliteFrame then
		eliteFrame:SetTexture(nil);
	else 
		eliteFrame:SetTexture('Interface\\TargetingFrame\\UI-TargetingFrame-Elite');
		if XunaTweaksDB.darkFrames then
			eliteFrame:SetVertexColor(XunaTweaksDB.dfc, XunaTweaksDB.dfc, XunaTweaksDB.dfc)
		else
			eliteFrame:SetVertexColor(1, 1, 1)
		end
	end
end

function XunaTweaks:darkFrames()
	local c = XunaTweaksDB.dfc
	if not XunaTweaksDB.darkFrames then c = 1 end

	for i, v in pairs({
		PlayerFrameTexture, TargetFrameTextureFrameTexture, FocusFrameTextureFrameTexture, PetFrameTexture, PartyMemberFrame1Texture, PartyMemberFrame2Texture, PartyMemberFrame3Texture,
		PartyMemberFrame4Texture, PartyMemberFrame1PetFrameTexture, PartyMemberFrame2PetFrameTexture, PartyMemberFrame3PetFrameTexture, PartyMemberFrame4PetFrameTexture,
		TargetFrameToTTextureFrameTexture, BonusActionBarFrameTexture0, BonusActionBarFrameTexture1, BonusActionBarFrameTexture2, BonusActionBarFrameTexture3, BonusActionBarFrameTexture4,
		MainMenuBarTexture0, MainMenuBarTexture1, MainMenuBarTexture2, MainMenuBarTexture3, MainMenuMaxLevelBar0, MainMenuMaxLevelBar1, MainMenuMaxLevelBar2, MainMenuMaxLevelBar3,
		MinimapBorder, CastingBarFrame.Border, TargetFrameSpellBar.Border, FocusFrameSpellBar.Border, MiniMapTrackingButtonBorder, MiniMapLFGFrameBorder, MiniMapBattlefieldBorder, MiniMapMailBorder, MinimapBorderTop,
		MainMenuBarLeftEndCap, MainMenuBarRightEndCap, SlidingActionBarTexture0, SlidingActionBarTexture1, MainMenuXPBarTextureLeftCap, MainMenuXPBarTextureRightCap, MainMenuXPBarTextureMid,
		MainMenuXPBarTexture0, MainMenuXPBarTexture1, MainMenuXPBarTexture2, MainMenuXPBarTexture3, MainMenuBarArtFrame.LeftEndCap, MainMenuBarArtFrame.RightEndCap, MainMenuBarArtFrameBackground.BackgroundLarge, MainMenuBarArtFrameBackground.BackgroundLarge2,
		MainMenuBarArtFrameBackground.BackgroundSmall, 	MainMenuBarArtFrameBackground.BagsArt,	MainMenuBarArtFrameBackground.MicroButtonArt,	StatusTrackingBarManager.SingleBarLarge, StatusTrackingBarManager.SingleBarLargeUpper,	StatusTrackingBarManager.SingleBarSmall,
		SlidingActionBarTexture0,	SlidingActionBarTexture1,	MainMenuXPBarTextureLeftCap,	MainMenuXPBarTextureRightCap,	MainMenuXPBarTextureMid,
		ReputationWatchBarTexture0,	ReputationWatchBarTexture1,	ReputationWatchBarTexture2,	ReputationWatchBarTexture3,	ReputationXPBarTexture0,	ReputationXPBarTexture1,	ReputationXPBarTexture2, ReputationXPBarTexture3,

	}) do
		v:SetVertexColor(c, c, c)
	end
end

function XunaTweaks:classColorFrames()
	if not classColorFrame then
		classColorFrame = CreateFrame('FRAME')
		classColorFrame:RegisterEvent('PLAYER_ENTERING_WORLD')
		classColorFrame:RegisterEvent('PLAYER_TARGET_CHANGED')
		classColorFrame:RegisterEvent('PLAYER_FOCUS_CHANGED')
		classColorFrame:RegisterEvent('GROUP_ROSTER_UPDATE')
	end

	local function setTargetFrameColor()
		if UnitIsPlayer('target') then
			if XunaTweaksDB.classColorFrames then
				local c = RAID_CLASS_COLORS[select(2, UnitClass('target'))]
				TargetFrameNameBackground:SetVertexColor(c.r, c.g, c.b)
			else
				TargetFrameNameBackground:SetVertexColor(0, 0, 1)
			end
		end

		if UnitIsPlayer('focus') then
			if XunaTweaksDB.classColorFrames then
				local c = RAID_CLASS_COLORS[select(2, UnitClass('focus'))]
				FocusFrameNameBackground:SetVertexColor(c.r, c.g, c.b)
			else
				FocusFrameNameBackground:SetVertexColor(0, 0, 1)
			end
		end
	end

	local function setPlayerFrameColor()
		if UnitIsPlayer('player') then
			if XunaTweaksDB.classColorFrames then
				local c = RAID_CLASS_COLORS[select(2, UnitClass('player'))]

				if not classColorFramePlayerBg then
					classColorFramePlayerBg = PlayerFrame:CreateTexture(nil, 'ARTWORK')
					classColorFramePlayerBg:SetPoint('TOPLEFT', PlayerFrameBackground)
					classColorFramePlayerBg:SetPoint('BOTTOMRIGHT', PlayerFrameBackground, 0, 22)
					classColorFramePlayerBg:SetTexture('Interface\\TargetingFrame\\UI-StatusBar')
				end

				classColorFramePlayerBg:SetVertexColor(c.r, c.g, c.b)

				classColorFramePlayerBg:Show()
			else
				if classColorFramePlayerBg then
					classColorFramePlayerBg:Hide()
				end
			end
		end
	end

	setTargetFrameColor()
	--setPlayerFrameColor()

	classColorFrame:SetScript('OnEvent', function(...)
			setTargetFrameColor()
			--setPlayerFrameColor()
	end)
end

function XunaTweaks:classIconPortraits()
	hooksecurefunc('UnitFramePortrait_Update', function(self)
		local portrait = self.portrait
		local unit = self.unit

		if portrait then
			if UnitIsPlayer(unit) then                         
				local t = CLASS_ICON_TCOORDS[select(2, UnitClass(unit))]
				if t then
					portrait:SetTexture('Interface\\TargetingFrame\\UI-Classes-Circles')
					portrait:SetTexCoord(unpack(t))
				end
			else
				portrait:SetTexCoord(0, 1, 0, 1)
			end
		end
	end)
end

function XunaTweaks:customHealthMana()
	hooksecurefunc('TextStatusBar_UpdateTextStringWithValues', function()
		if UnitHealthMax('player') > 0 and UnitPowerMax('player') > 0 then
			PlayerFrameHealthBar.TextString:SetText(AbbreviateLargeNumbers(UnitHealth('player'))..' - '..format('%.0f',(UnitHealth('player') / UnitHealthMax('player')) * 100)..'%')
			PlayerFrameManaBar.TextString:SetText(AbbreviateLargeNumbers(UnitPower('player'))..' - '..format('%.0f',(UnitPower('player') / UnitPowerMax('player')) * 100)..'%')
		end

		TargetFrameHealthBar.TextString:SetText(AbbreviateLargeNumbers(UnitHealth("target"))..' - '..format("%.0f",(UnitHealth("target") / UnitHealthMax("target")) * 100)..'%')
		TargetFrameManaBar.TextString:SetText(AbbreviateLargeNumbers(UnitPower("target"))..' - '..format("%.0f",(UnitPower("target") / UnitPowerMax("target")) * 100)..'%')
		
		FocusFrameHealthBar.TextString:SetText(AbbreviateLargeNumbers(UnitHealth("focus"))..' - '..format("%.0f",(UnitHealth("focus") / UnitHealthMax("focus")) * 100)..'%')
		FocusFrameManaBar.TextString:SetText(AbbreviateLargeNumbers(UnitPower("focus"))..' - '..format("%.0f",(UnitPower("focus") / UnitPowerMax("focus")) * 100)..'%')
	end)
end

function XunaTweaks:bottomRaidFrame()
	CRFSort_Group = function(t1, t2)
		if UnitIsUnit(t1,"player") then
			return false
		elseif UnitIsUnit(t2,"player") then
			return true
		else
			return t1 < t2
		end
	 end
	CompactRaidFrameContainer.flowSortFunc = CRFSort_Group
end

function XunaTweaks:beautifyFonts()
	--TextStatusBarText:SetFont('Fonts\\ARIALN.ttf', 11, 'OUTLINE')
	--TextStatusBarText:SetShadowOffset(1, -1)

	--for _, font in pairs({ GameFontHighlight, GameFontDisable, GameFontHighlightMedium, GameFontNormal, FriendsFont_Normal }) do
			--font:SetFont('Fonts\\ARIALN.ttf', 14)
			--font:SetShadowOffset(1, -1)
	--end

	--for _, font in pairs({ GameFontDisableSmall, GameFontHighlightSmall, GameFontNormalSmall, FriendsFont_Small, GameFontHighlightExtraSmall }) do
			--font:SetFont('Fonts\\ARIALN.ttf', 12)
			--font:SetShadowOffset(1, -1)
	--end
end

function XunaTweaks:beautifyActionBar()
	--hooksecurefunc('CooldownFrame_Set', function(self) if self.currentCooldownType == COOLDOWN_TYPE_LOSS_OF_CONTROL then self:SetCooldown(0,0) end end)

	local Path, Height = NumberFontNormalSmall:GetFont();
	NumberFontNormalSmall:SetFont(Path, Height, 'OUTLINE');

	local bindAlpha = 1
	if XunaTweaksDB.hideBinds then bindAlpha = 0 end

	local macroAlpha = 1
	if XunaTweaksDB.hideMacros then macroAlpha = 0 end

	-- hide microbuttons & bags
	--MicroButtonAndBagsBar:Hide()
	--MicroButtonAndBagsBar.MicroBagBar:Hide()

	for i = 1, 12 do
		_G['ActionButton'..i..'HotKey']:SetAlpha(bindAlpha)
		_G['MultiBarBottomRightButton'..i..'HotKey']:SetAlpha(bindAlpha)
		_G['MultiBarBottomLeftButton'..i..'HotKey']:SetAlpha(bindAlpha)
		_G['MultiBarRightButton'..i..'HotKey']:SetAlpha(bindAlpha)
		_G['MultiBarLeftButton'..i..'HotKey']:SetAlpha(bindAlpha)

		_G['ActionButton'..i..'Name']:SetAlpha(macroAlpha)
		_G['MultiBarBottomRightButton'..i..'Name']:SetAlpha(macroAlpha)
		_G['MultiBarBottomLeftButton'..i..'Name']:SetAlpha(macroAlpha)
		_G['MultiBarRightButton'..i..'Name']:SetAlpha(macroAlpha)
		_G['MultiBarLeftButton'..i..'Name']:SetAlpha(macroAlpha)
	end
end

function XunaTweaks:hideGryphons()
	if XunaTweaksDB.hideGryphons then
		MainMenuBarArtFrame.LeftEndCap:Hide()
		MainMenuBarArtFrame.RightEndCap:Hide()
	else
		MainMenuBarArtFrame.LeftEndCap:Show()
		MainMenuBarArtFrame.RightEndCap:Show()
	end
end

function XunaTweaks:oufOfRangeIcons()
	local function colorButton(btn, r, g, b)
		_G[btn:GetName()..'Icon']:SetVertexColor(r, g, b)
	end

	hooksecurefunc('ActionButton_OnUpdate', function(self, elapsed)
		if self.rangeTimer == TOOLTIP_UPDATE_TIME and self.action and HasAction(self.action) then
			if select(1, IsUsableAction(self.action)) then
				if IsActionInRange(self.action) == false then
					colorButton(self, 1, .3, .1)
				else
					colorButton(self, 1, 1, 1)
				end
			elseif select(2, IsUsableAction(self.action)) then
				colorButton(self, .1, .3, 1)
			else
				colorButton(self, .4, .4, .4)
			end
		end
	end)
end