local addonName, addon = ...

local config = {
	hideMicroBar = true,
	hideGroupTitles = true,
}

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")

f:SetScript("OnEvent", function(self, event, ...)
	if event == "PLAYER_ENTERING_WORLD" then
		if config.hideMicroBar then addon:HideMicroBar() end
		if config.hideGroupTitles then addon:HideGroupTitles() end
	end
end)

function addon:HideMicroBar()
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
	StoreMicroButton:SetScript("OnShow",StoreMicroButton.Hide)
	StoreMicroButton.Show = function() end
end

function addon:HideGroupTitles()
	local f = CreateFrame('Frame')
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