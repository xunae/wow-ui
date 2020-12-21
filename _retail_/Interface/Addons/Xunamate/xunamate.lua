Xunamate = LibStub("AceAddon-3.0"):NewAddon("Xunamate", "AceConsole-3.0", "AceEvent-3.0")
LGIST = LibStub:GetLibrary("LibGroupInSpecT-1.1")

matchData = nil -- Match is considered not active when nil

function Xunamate:OnInitialize()
  self.db = LibStub("AceDB-3.0"):New("Xunamate")
  if self.db.global.matches == nil then
    self.db.global.matches = {}
  end
  self:RegisterEvent("PVP_MATCH_ACTIVE")
  self:RegisterEvent("PVP_RATED_STATS_UPDATE")
  self:RegisterEvent("PLAYER_ENTERING_WORLD") 
  --self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
  self:initiateDialogFrame()
end

function Xunamate:COMBAT_LOG_EVENT_UNFILTERED()
  local _, event = CombatLogGetCurrentEventInfo()

  if event == 'ARENA_MATCH_START' then
    self:Print(event)
    matchData = {
      players = {
        player = {
          isPlayer = true,
          guid = UnitGUID("player"),
          name = select(1, UnitName("player")),
          realm = GetRealmName(),
          classId = select(3, UnitClass("player")),
          gender=  UnitSex("player"),
          specId = select(1, GetSpecializationInfo(GetSpecialization())),
        }
    }}
  end

  if event == 'ARENA_MATCH_END' then
    self:Print(event)
    self:saveGame()
  end
end

function Xunamate:PLAYER_ENTERING_WORLD(eventName, ...)
  if C_PvP.IsArena() then
    self:PVP_MATCH_ACTIVE()
  end
end

function Xunamate:PVP_MATCH_ACTIVE(eventName, ...)
  if not IsActiveBattlefieldArena() then return end -- Only track rated arena

  matchData = {
    players = {
      player = {
        isPlayer = true,
        guid = UnitGUID("player"),
        name = select(1, UnitName("player")),
        realm = GetRealmName(),
        classId = select(3, UnitClass("player")),
        gender=  UnitSex("player"),
        specId = select(1, GetSpecializationInfo(GetSpecialization())),
      }
  }}
  self:RegisterEvent("PVP_MATCH_COMPLETE")
  self:RegisterEvent("GROUP_ROSTER_UPDATE")
  self:RegisterEvent("UNIT_NAME_UPDATE")
  self:RegisterEvent("ARENA_PREP_OPPONENT_SPECIALIZATIONS")
  self:RegisterEvent("ARENA_OPPONENT_UPDATE")
  self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
end

function Xunamate:PVP_RATED_STATS_UPDATE(eventName, ...)
end

function Xunamate:updatePartyMembers()
  if C_PvP.IsArena() then
    for i = 1, GetNumSubgroupMembers() do
      if not matchData.players["party" .. i] then matchData.players["party" .. i] = {} end
      matchData.players["party" .. i].guid = UnitGUID("party" .. i)
      matchData.players["party" .. i].name = select(1, UnitName("party" .. i))
      matchData.players["party" .. i].realm = select(2, UnitName("party" .. i)) or GetRealmName()
      matchData.players["party" .. i].classId = select(3, UnitClass("party" .. i))
      matchData.players["party" .. i].gender = UnitSex("party" .. i)
      lgistInfo = LGIST:GetCachedInfo(UnitGUID("party" .. i))
      if lgistInfo ~= nil then matchData.players["party" .. i].specId = lgistInfo.global_spec_id end
    end
  end
end

function Xunamate:updateSpecHandler(event, guid, unit, info)
  if matchData ~= nil and C_PvP.IsArena() then self:updatePartyMembers() end
end
LGIST.RegisterCallback(Xunamate, "GroupInSpecT_Update", "updateSpecHandler")

function Xunamate:GROUP_ROSTER_UPDATE(eventName, ...)
  self:updatePartyMembers()
end

function Xunamate:UNIT_NAME_UPDATE(eventName, unit)
  self:updatePartyMembers()
  self:ARENA_OPPONENT_UPDATE(nil, unit, 'seen')
end

function Xunamate:ARENA_PREP_OPPONENT_SPECIALIZATIONS(eventName, ...)
  for i = 1, GetNumArenaOpponentSpecs() do
    if not matchData.players["arena" .. i] then matchData.players["arena" .. i] = {} end
    matchData.players["arena" .. i].specId = GetArenaOpponentSpec(i)
  end
end

function Xunamate:ARENA_OPPONENT_UPDATE(eventName, unitToken, updateReason)
  if updateReason == 'seen' and tContains({"arena1", "arena2", "arena3"}, unitToken) then
    if not matchData.startTime then matchData.startTime = time() end
    if not matchData.players[unitToken] then matchData.players[unitToken] = {} end
    matchData.players[unitToken].guid = UnitGUID(unitToken)
    matchData.players[unitToken].name = select(1, UnitName(unitToken))
    matchData.players[unitToken].realm = select(2, UnitName(unitToken)) or GetRealmName()
    matchData.players[unitToken].classId = select(3, UnitClass(unitToken))
    matchData.players[unitToken].gender = UnitSex(unitToken)
  end
end

function Xunamate:saveGame()
  if matchData ~= nil then
    if not matchData.endTime then matchData.endTime = time() end
    if not matchData.startTime then matchData.startTime = matchData.endTime end -- Left before gates opened

    if matchData.bracket then
      local ratedInfo = GetPersonalRatedInfo(matchData.bracket)
      if ratedInfo then
        matchData.players.player.ratingNew = select(1,  ratedInfo)
        matchData.players.player.rankingNew = select(11,  ratedInfo)
      end
    end

    table.insert(self.db.global.matches, matchData)
    self:Print("Match recorded!")

    matchData = nil
    self:UnregisterEvent("PVP_MATCH_COMPLETE")
    self:UnregisterEvent("ZONE_CHANGED_NEW_AREA")
  end
end

function Xunamate:ZONE_CHANGED_NEW_AREA(eventName, ...)
  if matchData ~= nil and C_PvP.IsArena() then
    matchData.season = GetCurrentArenaSeason()
    matchData.bracket = C_PvP.GetActiveMatchBracket()
    matchData.zone = GetAreaText()

    if matchData.bracket then
      local ratedInfo = GetPersonalRatedInfo(matchData.bracket)
      if ratedInfo then
        matchData.players.player.rating = select(1,  ratedInfo)
        matchData.players.player.ranking = select(11,  ratedInfo)
      end
    end

    LGIST:Rescan(nil)

    -- For reload UI lets do these
    self:GROUP_ROSTER_UPDATE()
    self:ARENA_PREP_OPPONENT_SPECIALIZATIONS()
    for i = 1, GetNumArenaOpponents() do
      if UnitGUID("arena" .. i) then
        self:ARENA_OPPONENT_UPDATE(nil, "arena" .. i, "seen")
      end
    end
  end

  if matchData ~= nil and not C_PvP.IsArena() then
    self:saveGame()
  end
end

function Xunamate:PVP_MATCH_COMPLETE(eventName, ...)
  self:UnregisterEvent("GROUP_ROSTER_UPDATE")
  self:UnregisterEvent("UNIT_NAME_UPDATE")
  self:UnregisterEvent("ARENA_PREP_OPPONENT_SPECIALIZATIONS")
  self:UnregisterEvent("ARENA_OPPONENT_UPDATE")

  matchData.winner = C_PvP.GetActiveMatchWinner()
  matchData.endTime = time()

  for i = 1, GetNumBattlefieldScores() do
    local nameWithRealm = select(1, GetBattlefieldScore(i))
    local name, realm = strsplit("-", nameWithRealm)

    -- Same realm as player
    if realm == nil then realm = GetRealmName()  end

    local unit = self:getMatchPlayerUnit(name, realm)

    if unit then
      matchData.players[unit].killingBlows = select(2, GetBattlefieldScore(i))
      matchData.players[unit].faction = select(6, GetBattlefieldScore(i))
      matchData.players[unit].damageDone = select(10, GetBattlefieldScore(i))
      matchData.players[unit].healingDone = select(11, GetBattlefieldScore(i))
      matchData.players[unit].bgRating = select(12, GetBattlefieldScore(i))
      matchData.players[unit].ratingChange = select(13, GetBattlefieldScore(i))
      matchData.players[unit].preMatchMMR = select(14, GetBattlefieldScore(i))
      matchData.players[unit].mmrChange = select(15, GetBattlefieldScore(i))
    end
  end
  
  for i = 0, 1 do
    local info = C_PvP.GetTeamInfo(i)
    if info then
      if not matchData.teamInfo then matchData.teamInfo = {} end
      matchData.teamInfo[i] = info
    end
  end

  self:saveGame()
  LeaveBattlefield()
end

----------------------------------------------------------------------------------------

AceGUI = LibStub("AceGUI-3.0")

Xunamate:RegisterChatCommand("xm", "toggleMatches")

local frame
local ROW_HEIGHT = 32
local ROWS_VISIBLE = 14
local ICON_SIZE = 22

local function updateScrollFrame()
  local offset = FauxScrollFrame_GetOffset(frame.sf)
  local offsetY = 0 -- increase every row
  for i = 1, #frame.sf.matches do
    if frame.sf.matches[i] then
      if i <= offset or i > offset + ROWS_VISIBLE then
        frame.sf.matches[i]:Hide()
      else
        frame.sf.matches[i]:Show()
        frame.sf.matches[i]:SetPoint("TOP", 0, offsetY)
        offsetY = offsetY - ROW_HEIGHT
      end
    end
  end
end

function Xunamate:initiateDialogFrame()
  frame = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
  frame:SetPoint("CENTER")
  frame:SetWidth(800)
  frame:SetHeight(500)
  frame:SetBackdrop({
    bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",
    edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
    tile = true, tileSize = 16, edgeSize = 16,
    insets = { left = 5, right = 5, top = 5, bottom = 5 },
  })
  frame.header = CreateFrame("Frame", nil, frame, "BackdropTemplate")
  frame.header:SetPoint("TOP", 0, 17)
  frame.header:SetWidth(300)
  frame.header:SetHeight(64)
  frame.header:SetBackdrop({ bgFile = "Interface\\DialogFrame\\UI-DialogBox-Header" })
  frame.header.text = frame.header:CreateFontString(nil, "OVERLAY", "GameFontNormal")
  frame.header.text:SetPoint("CENTER", 0, 10)
  frame.header.text:SetText("Arena History")

  frame.hide = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
  frame.hide:SetPoint("TOPRIGHT")
  frame.hide:SetScript("OnClick", function() frame:Hide() end)

  frame.reset = CreateFrame("Button", nil, frame, "OptionsButtonTemplate")
  frame.reset:SetPoint("TOPRIGHT", -35, -7)
  frame.reset:SetText("Reset")
  frame.reset:SetScript("OnClick", function()
    self.db:ResetDB()
    self.db.global.matches = {}
    frame.sf.matches = {}
    if frame:IsVisible() then
      ReloadUI()
    end
  end)

  frame.sf = CreateFrame("ScrollFrame", nil, frame, "FauxScrollFrameTemplate")
  frame.sf:SetPoint("TOPLEFT", 10, -30)
  frame.sf:SetPoint("TOPRIGHT", -30, -30)
  frame.sf:SetPoint("BOTTOMLEFT", 10, 10)
  frame.sf:SetPoint("BOTTOMRIGHT", -30, 10)
  frame.sf:SetScript('OnVerticalScroll', function(self, offset) 
    FauxScrollFrame_OnVerticalScroll(self, offset, ROW_HEIGHT, updateScrollFrame) 
  end)
  frame.sf:SetScript('OnShow', updateScrollFrame)
  frame.sf.matches = {}

  frame.tooltip = CreateFrame("GameTooltip", "XunamateTooltip", frame, "GameTooltipTemplate")

  frame:Hide()
  --self:toggleMatches()
end

function Xunamate:toggleMatches()
  if not frame:IsVisible() then
    local function matchRowFound(startTime)
      for i = 1, #frame.sf.matches do
        if frame.sf.matches[i].startTime == startTime then return true end
      end
      return false
    end

    for i, v in pairs(self.db.global.matches) do
      if not matchRowFound(v.startTime) then
        local f = CreateFrame("Frame", nil, frame.sf, BackdropTemplateMixin and "BackdropTemplate")
        frame.sf.matches[i] = f
        frame.sf.matches[i].startTime = v.startTime

        f:SetSize(f:GetParent():GetWidth(), ROW_HEIGHT)
        f:SetBackdrop({
          bgFile = "Interface/Tooltips/UI-Tooltip-Background",
          edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
          edgeSize = 10,
          insets = { left = 1, right = 1, top = 1, bottom = 1 },
        })
        f:SetBackdropColor(1, 0.3, 0.3, 0.2)
        if v.winner == self:getPlayerFaction(v.players) then
          f:SetBackdropColor(0.3, 1, 0.3, 0.2)
        end
        f:SetBackdropBorderColor(0.2, 0.2, 0.2)
        f:EnableMouse()
        f.highlight = f:CreateTexture(nil, 'BACKGROUND')
        f.highlight:SetPoint("TOPLEFT", 2, -2)
        f.highlight:SetPoint("TOPRIGHT", -2, -2)
        f.highlight:SetPoint("BOTTOMLEFT", 2, 2)
        f.highlight:SetPoint("BOTTOMRIGHT", -2, 2)
        f.highlight:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Gold-Background")
        f.highlight:Hide()

        local function insertText(text)
          local fs = f:CreateFontString(nil, "OVERLAY", "GameFontNormal")
          fs:SetText(text)
          return fs
        end

        local pTeam = {}
        local eTeam = {}
        for i, v in pairs(v.players) do
          if tContains({"player", "party1", "party2"}, i) then
            tinsert(pTeam, v)
          else
            tinsert(eTeam, v)
          end
        end
        self:sortPlayers(pTeam, true)
        self:sortPlayers(eTeam, false)

        --if v.players.player.rating and v.players.player.ratingChange then
        --  insertText(string.format("%s (%s)", v.players.player.rating, v.players.player.ratingChange)):SetPoint("LEFT", f, 80, 0)
        --else
        --  insertText(v.players.player.rating):SetPoint("LEFT", f, 80, 0)
        --end
        if v.players.player.bgRating and v.players.player.ratingChange then
          insertText(string.format("%s (%s)", v.players.player.bgRating, v.players.player.ratingChange)):SetPoint("RIGHT", f, -140, 0)
        end
        insertText(v.zone):SetPoint("LEFT", f, 10, 0)
        insertText(date("%d.%m.%Y %H:%M", v.startTime)):SetPoint("RIGHT", f, -10, 0)
        insertText(self:parseDuration(v.endTime - v.startTime)):SetPoint("RIGHT", f, -105, 0)

        f.teamContainer = CreateFrame("Frame", nil, f)
        f.teamContainer:SetPoint("CENTER", 0, 0)
        f.teamContainer:SetWidth(220)
        f.teamContainer:SetHeight(ROW_HEIGHT)
        insertText("vs"):SetPoint("CENTER", f.teamContainer)

        local function insertPlayerIcons(team, offset, growDirection)
          for i, v in ipairs(team) do
            if v.specId or v.classId then
              local icon = f:CreateTexture()
              icon:SetSize(ICON_SIZE, ICON_SIZE)
              icon:SetPoint("CENTER", f.teamContainer, offset, -1)
              if growDirection == 'LEFT' then offset = offset - ICON_SIZE - 2 end
              if growDirection == 'RIGHT' then offset = offset + ICON_SIZE + 2 end
              if v.specId and v.specId ~= 0 then
                icon:SetTexture(select(4, GetSpecializationInfoByID(v.specId)))
              elseif v.classId then
                icon:SetTexture("Interface\\Glues\\CharacterCreate\\UI-CharacterCreate-Classes")
                icon:SetTexCoord(unpack(CLASS_ICON_TCOORDS[select(2, GetClassInfo(v.classId))]))
              end
            end
          end
        end

        insertPlayerIcons(pTeam, -ICON_SIZE, 'LEFT')
        insertPlayerIcons(eTeam, ICON_SIZE, 'RIGHT')

        local function createtooltip()
          frame.tooltip:SetOwner(f, "ANCHOR_CURSOR")
          self:sortPlayers(pTeam, false)
          self:sortPlayers(eTeam, false)

          local function insertTeam(team)
            for i, v in ipairs(team) do
              local ratingChange = "-"
              if v.bgRating and not v.ratingChange then
                ratingChange = v.bgRating
              elseif v.bgRating and v.ratingChange then
                if v.ratingChange > 0 then
                  ratingChange = string.format("%s (+%s)", v.bgRating, v.ratingChange)
                else
                  ratingChange = string.format("%s (%s)", v.bgRating, v.ratingChange)
                end
              end

              local c = C_ClassColor.GetClassColor(select(2, GetClassInfo(v.classId)))
              local rcc = { r = 0.5, g = 0.5, b = 0.5 }
              if v.ratingChange and v.ratingChange > 0 then
                rcc.r = 0.3
                rcc.g = 1
              elseif v.ratingChange and v.ratingChange < 0 then
                rcc.r = 1
                rcc.g = 0.3
              end

              frame.tooltip:AddDoubleLine(string.format("%s-%s", v.name, v.realm), ratingChange, c.r, c.g, c.b, rcc.r, rcc.g, rcc.b)

              --if v.damageDone and v.healingDone then
              --  frame.tooltip:AddLine(string.format("    %s / %s", AbbreviateNumbers(v.damageDone), AbbreviateNumbers(v.healingDone)), 0.5, 0.5, 0.5)
              --end
            end
          end

          local playerTeam = self:getPlayerFaction(v.players);
          local playerTeamInfo = v.teamInfo[playerTeam]
          local enemyTeamInfo
          if playerTeam == 0 then
            enemyTeamInfo = v.teamInfo[1]
          else
            enemyTeamInfo = v.teamInfo[0]
          end

          frame.tooltip:AddDoubleLine("Team 1", playerTeamInfo.ratingMMR)   
          insertTeam(pTeam)
          frame.tooltip:AddLine(" ")
          frame.tooltip:AddDoubleLine("Team 2", enemyTeamInfo.ratingMMR)
          insertTeam(eTeam)
        end

        -- Tooltip stuff
        f:SetScript('OnEnter', function(self)
          f.highlight:Show()
          createtooltip()
          frame.tooltip:Show()
        end)
        f:SetScript('OnLeave', function()
          f.highlight:Hide()
          frame.tooltip:Hide()
        end)
      end
    end

    sort(frame.sf.matches, function(a ,b) return a.startTime > b.startTime end)

    updateScrollFrame()
    FauxScrollFrame_Update(frame.sf, #frame.sf.matches, ROWS_VISIBLE, ROW_HEIGHT, nil, nil, nil, nil, nil, nil, true);

    frame:Show()
  else
    frame:Hide()
  end
end
