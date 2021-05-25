local addonName, addon = ...
XunaTweaks = CreateFrame('Frame')

local defaultConfig = {
	darkFrames = true,
	dfc = 0.5,
	
	classColorFrames = true,
	classIconPortraits = false,
	customHealthMana = true,

	bottomRaidFrame = true,

	hideGryphons = false,
	hideMacros = true,
	hideBinds = false,
}

local initialSetupDone = false
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
	self:darkFrames()
	self:classColorFrames()
	self:hideGryphons()
	self:beautifyActionBar()

	MinimapZoomOut:Hide()
	MinimapZoomIn:Hide()

	MicroButtonAndBagsBar:Hide()
	CharacterMicroButton:Hide()
	SpellbookMicroButton:Hide()
	TalentMicroButton:Hide()
	AchievementMicroButton:Hide()
	QuestLogMicroButton:Hide()
	GuildMicroButton:Hide()
	LFDMicroButton:Hide()
	CollectionsMicroButton:Hide()
	EJMicroButton:Hide()
	StoreMicroButton:Hide()
	MainMenuMicroButton:Hide()

	--StoreMicroButton:SetScript("OnShow",StoreMicroButton.Hide)
	--StoreMicroButton.Show = function() end

	PlayerName:SetPoint("CENTER", 50, 18)
	PlayerName.SetPoint = function() end
	TargetFrameTextureFrameName:SetPoint("CENTER", -50, 18)
	TargetFrameTextureFrameName.SetPoint = function() end
	FocusFrameTextureFrameName:SetPoint("CENTER", -50, 18)
	FocusFrameTextureFrameName.SetPoint = function() end

	--MainMenuBarArtFrameBackground:Hide()
	--ActionBarUpButton:Hide()
  --ActionBarDownButton:Hide()
	--MainMenuBarArtFrame.PageNumber:Hide()

	--ActionButton1:ClearAllPoints()
	--ActionButton1:SetPoint("CENTER", -365, 0)
	--MultiBarBottomLeftButton1:ClearAllPoints()
	--MultiBarBottomLeftButton1:SetPoint("cENTER", -232, 8)
	--MultiBarBottomRightButton1:ClearAllPoints()
	--MultiBarBottomRightButton1:SetPoint("CENTER", -130, -1)
	--MultiBarBottomRightButton7:ClearAllPoints()
	--MultiBarBottomRightButton7:SetPoint("CENTER", -130, 40)
	--MainMenuBarArtFrame:SetScale(1.1)

	if not initialSetupDone then
		initialSetupDone = true
		self:hideGroupTitles()
		if XunaTweaksDB.classIconPortraits then self:classIconPortraits() end
		if XunaTweaksDB.customHealthMana then self:customHealthMana() end
		if XunaTweaksDB.bottomRaidFrame then self:bottomRaidFrame() end
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
		ReputationWatchBarTexture0,	ReputationWatchBarTexture1,	ReputationWatchBarTexture2,	ReputationWatchBarTexture3,	ReputationXPBarTexture0,	ReputationXPBarTexture1,	ReputationXPBarTexture2, ReputationXPBarTexture3, MicroButtonAndBagsBar.MicroBagBar,
		PlayerFrameAlternateManaBarBorder, PlayerFrameAlternateManaBarRightBorder ,PlayerFrameAlternateManaBarBackground,
		TotemFrameTotem1Background, TotemFrameTotem2Background, TotemFrameTotem3Background, TotemFrameTotem4Background
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

	local function colorStatusBar(statusbar, unit)
		if UnitIsPlayer(unit) and unit == statusbar.unit then
			local _, class = UnitClass(unit)
			local c = CUSTOM_CLASS_COLORS and CUSTOM_CLASS_COLORS[class] or RAID_CLASS_COLORS[class]
			if c then
				statusbar:SetStatusBarColor(c.r, c.g, c.b)
			end
		end
	end
	
	hooksecurefunc("UnitFrameHealthBar_Update", colorStatusBar)
	hooksecurefunc("HealthBar_OnValueChanged", function(self) colorStatusBar(self, self.unit) end)

	setTargetFrameColor()
	--setPlayerFrameColor()

	classColorFrame:SetScript('OnEvent', function(...)
			setTargetFrameColor()
			--setPlayerFrameColor()
	end)
end

function XunaTweaks:classIconPortraits()
	hooksecurefunc("UnitFramePortrait_Update",function(self)
		if self.unit == "player" or self.unit == "pet" then
			return
		end
		if self.portrait then
			if UnitIsPlayer(self.unit) then
				local t = CLASS_ICON_TCOORDS[select(2,UnitClass(self.unit))]
				if t then
					self.portrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles")
					self.portrait:SetTexCoord(unpack(t))
				end
			else
				self.portrait:SetTexCoord(0, 1, 0, 1)
			end
		end
	end)
end

function XunaTweaks:customHealthMana()
	hooksecurefunc('TextStatusBar_UpdateTextStringWithValues', function(statusFrame, textString, value, valueMin, valueMax)
		if statusFrame and statusFrame.TextString and value then
			if valueMax > 0 then
				statusFrame.TextString:SetText(AbbreviateLargeNumbers(value) .. ' - ' .. format('%.0f', (value / valueMax) * 100) .. '%')
			else
				statusFrame.TextString:SetText(AbbreviateLargeNumbers(value))
			end
		end
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

function XunaTweaks:beautifyActionBar()
	hooksecurefunc("CooldownFrame_Set", function(self)
	  if self.currentCooldownType == COOLDOWN_TYPE_LOSS_OF_CONTROL then
	    self:SetCooldown(0, 0)
		end
  end)

	local bindAlpha = 1
	if XunaTweaksDB.hideBinds then bindAlpha = 0 end

	local macroAlpha = 1
	if XunaTweaksDB.hideMacros then macroAlpha = 0 end

	for i = 1, 12 do
		for j, v in ipairs({
			'ActionButton', 'MultiBarBottomRightButton', 'MultiBarBottomLeftButton', 'MultiBarRightButton', 'MultiBarLeftButton', 'PetActionButton'
		}) do
			if (v == 'PetActionButton' and i <= 9) or v ~= 'PetActionButton' then
				_G[v..i..'HotKey']:SetAlpha(bindAlpha)
				_G[v..i..'Name']:SetAlpha(macroAlpha)

				--_G[v..i..'HotKey']:ClearAllPoints()
				--_G[v..i..'HotKey']:SetPoint('TOPRIGHT', -2, -3)

				local Path, Height = _G[v..i..'HotKey']:GetFont()
				_G[v..i..'HotKey']:SetFont(Path, 10, 'OUTLINE')
			end
    end
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

-- /afk surrender fix
SlashCmdList["CHAT_AFK"] = function(msg)
    if IsActiveBattlefieldArena() then
        if CanSurrenderArena() then
            print("Successfully surrendered arena.")
            SurrenderArena();
        else
            print("Failed to surrender arena. Partners still alive.")
        end
    else
        SendChatMessage(msg, "AFK");
    end
end
