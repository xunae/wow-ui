local mod	= DBM:NewMod(2422, "DBM-CastleNathria", nil, 1190)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20200820152241")
mod:SetCreatureID(165759)
mod:SetEncounterID(2402)
mod:SetUsedIcons(1)
mod.onlyHighest = true--Instructs DBM health tracking to literally only store highest value seen during fight, even if it drops below that
mod.noBossDeathKill = true--Instructs mod to ignore 165759 deaths, since goal is to heal kael, not kill him
mod:SetHotfixNoticeRev(20200817000000)--2020, 8, 17
mod:SetMinSyncRevision(20200817000000)
--mod.respawnTime = 29

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 325877 329509 329518 328885 325440 325506 333002 326455 337865",
	"SPELL_CAST_SUCCESS 326583 325665 181113",
	"SPELL_SUMMON 329565 326075",
	"SPELL_AURA_APPLIED 326456 328659 341254 328731 325442 333145 326078 332871 326583 328479 323402 337859 335581 343026",
	"SPELL_AURA_APPLIED_DOSE 326456 325442 326078",
	"SPELL_AURA_REMOVED 328731 326078 328479 323402 337859 343026",
	"SPELL_PERIODIC_DAMAGE 328579",
	"SPELL_PERIODIC_MISSED 328579",
	"UNIT_DIED"
--	"UNIT_SPELLCAST_SUCCEEDED boss1"
)

--TODO, adjust tank stacks for two swap mechanics
--TODO, Switch Ember Blast to UnitTargetScanner for max scan speed/efficiency, if shade has boss unit ID and isn't already targetting victim when cast starts
--TODO, adjust ember blast warning to reduce number told to soak it if it's not conventional to just tell everyone but the tanks to do it
--TODO, essence tracking of energy for Cultists?
--TODO, dispel warnings for Vulgar brand (333002) based on difficulty (magic non mythic, curse mythic)?
--TODO, improved infoframe with https://shadowlands.wowhead.com/spell=339251/drained-soul tracking
--TODO, auto mark essence spawns?
--TODO, Keep an eye on add spawns, if blizzard leaves 3 of the add types missing from combat log on mythic, scheduling will have to be added
--TODO, add nameplate aura for assassins fixate/attack?
--TODO, are both shields used or no?
--[[
ability.id = 181113 or ability.id = 323402 or target.id = 168973 and type = "death" or ability.id = 337859 and (type = "applydebuff" or type = "removedebuff")
 or ability.id = 181113
(source.type = "NPC" and source.firstSeen = timestamp) or (target.type = "NPC" and target.firstSeen = timestamp)
--]]
--Shade of Kael'thas
local warnBurningRemnants						= mod:NewStackAnnounce(326456, 2, nil, "Tank")
local warnEmberBlast							= mod:NewTargetNoFilterAnnounce(325877, 4)
local warnBlazingSurge							= mod:NewSpellAnnounce(329509, 3)
--Adds
----Rockbound Vanquisher
local warnVanquisher							= mod:NewCountAnnounce("ej21954", 2, 325440)
local warnVanquished							= mod:NewStackAnnounce(325442, 2, nil, "Tank")
local warnConcussiveSmash						= mod:NewCountAnnounce(325506, 3)
----Assassin
local warnAssassin								= mod:NewCountAnnounce("ej21993", 2, 326583)
local warnReturnToStone							= mod:NewTargetNoFilterAnnounce(333145, 4, nil, "-Healer")
local warnCrimsonFury							= mod:NewTargetAnnounce(326583, 3)
--Vile Occultist
local warnVileOccultists						= mod:NewCountAnnounce("ej21952", 2, 329565)
local warnSummonEssenceFont						= mod:NewSpellAnnounce(329565, 2, nil, "Healer")
--Soul Infusor
local warnSoulInfusion							= mod:NewSpellAnnounce(325665, 4)
local warnInfusersOrb							= mod:NewCountAnnounce(326075, 1, nil, "Healer")
--Phoenix
local warnRebornPhoenix							= mod:NewSpellAnnounce("ej22090", 2, 328659)
local warnEyeOnTarget							= mod:NewTargetAnnounce(328479, 2)

--Shade of Kael'thas
local specWarnShadeSpawned						= mod:NewSpecialWarningSwitch("ej21966", nil, nil, nil, 1, 2)
local specWarnBurningRemnants					= mod:NewSpecialWarningStack(326456, nil, 18, nil, nil, 1, 6)
local specWarnBurningRemnantsTaunt				= mod:NewSpecialWarningTaunt(326456, nil, nil, nil, 1, 2)
local specWarnEmberBlast						= mod:NewSpecialWarningMoveTo(325877, false, nil, nil, 1, 2)--Opt in as needed
local yellEmberBlast							= mod:NewYell(325877, nil, nil, nil, "YELL")
local yellEmberBlastFades						= mod:NewFadesYell(325877, nil, nil, nil, "YELL")
--local specWarnBlazingSurge						= mod:NewSpecialWarningMoveAway(329509, nil, nil, nil, 1, 2)
--local yellBlazingSurge							= mod:NewYell(329509)
local specWarnGTFO								= mod:NewSpecialWarningGTFO(328579, nil, nil, nil, 1, 8)
----Kael
local specWarnUnleashedPyroclasm				= mod:NewSpecialWarningInterrupt(337865, nil, nil, nil, 1, 2)
--High Torturor Darithos
local specWarnGreaterCastigation				= mod:NewSpecialWarningMoveAway(328885, nil, nil, nil, 1, 2)
--Adds
----Rockbound Vanquisher
local specWarnVanquished						= mod:NewSpecialWarningStack(325442, nil, 18, nil, nil, 1, 6)
local specWarnVanquishedTaunt					= mod:NewSpecialWarningTaunt(325442, nil, nil, nil, 1, 2)
--Assassin
local specWarnCrimsonFury						= mod:NewSpecialWarningMoveAway(326583, nil, nil, nil, 1, 2)
local yellCrimsonFury							= mod:NewYell(326583)
--Vile Occultist
local specWarnVulgarBrand						= mod:NewSpecialWarningInterrupt(333002, "HasInterrupt", nil, nil, 1, 2)
--Phoenix
local specWarnEyeOnTarget						= mod:NewSpecialWarningYou(328479, nil, nil, nil, 1, 2)
local yellEyeOnTarget							= mod:NewYell(328479, nil, false)

--Shade of Kael'thas
mod:AddTimerLine(DBM:EJ_GetSectionInfo(21966))
local timerFieryStrikeCD						= mod:NewCDTimer(6.7, 326455, nil, "Tank", nil, 5, nil, DBM_CORE_L.TANK_ICON)--6.7-13.5
local timerEmberBlastCD							= mod:NewCDTimer(20.8, 325877, nil, nil, nil, 3)
local timerBlazingSurgeCD						= mod:NewCDTimer(20.1, 329509, nil, nil, nil, 3)
--local timerRebornPhoenixCD					= mod:NewAITimer(44.3, "ej22090", nil, nil, nil, 1, 328659, DBM_CORE_L.DAMAGE_ICON)--Cast only once whole fight and not timer based
--High Torturor Darithos
mod:AddTimerLine(DBM:EJ_GetSectionInfo(22089))
local timerGreaterCastigationCD					= mod:NewNextTimer(8.8, 328885, nil, nil, nil, 3)
--Adds
----Rockbound Vanquisher
mod:AddTimerLine(DBM:EJ_GetSectionInfo(21954))
local timerVanquisherCD							= mod:NewCDCountTimer(80, "ej21954", nil, nil, nil, 1, 325440, DBM_CORE_L.DAMAGE_ICON)
local timerVanquishingStrikeCD					= mod:NewCDTimer(5.5, 325440, nil, "Tank", nil, 5, nil, DBM_CORE_L.TANK_ICON)--5.5-9
--local timerConcussiveSmashCD					= mod:NewNextCountTimer(12.1, 325506, nil, nil, nil, 5)
----Bleakwing Assassin
mod:AddTimerLine(DBM:EJ_GetSectionInfo(21993))
local timerBleakwingAssassinCD					= mod:NewCDCountTimer(80, "ej21993", nil, nil, nil, 1, 326583, DBM_CORE_L.DAMAGE_ICON)
--local timerCrimsonFuryCD						= mod:NewAITimer(44.3, 326583, nil, false, nil, 3)--Too many to track via normal bars, this needs nameplate bars/icon
----Vile Occultist
mod:AddTimerLine(DBM:EJ_GetSectionInfo(21952))
local timerVileOccultistCD						= mod:NewCDCountTimer(10, "ej21952", nil, nil, nil, 1, 329565, DBM_CORE_L.DAMAGE_ICON)
--local timerVulgarBrandCD						= mod:NewAITimer(44.3, 333002, nil, nil, nil, 3)--TODO, give it a relative icon based on difficulty (Magic/Curse)
----Soul Infuser
mod:AddTimerLine(DBM:EJ_GetSectionInfo(21953))
local timerSoulInfuserCD						= mod:NewCDCountTimer(10, "ej21953", nil, nil, nil, 1, 325665, DBM_CORE_L.DAMAGE_ICON)
----Pestering Fiend
mod:AddTimerLine(DBM:EJ_GetSectionInfo(22082))
local timerPesteringFiendCD						= mod:NewCDCountTimer(70, "ej22082", nil, nil, nil, 1, 328254, DBM_CORE_L.DAMAGE_ICON)

--local berserkTimer							= mod:NewBerserkTimer(600)

mod:AddRangeFrameOption(6, 328885)
mod:AddInfoFrameOption(326078, true)--343026
mod:AddSetIconOption("SetIconOnEmberBlast", 325877, true, false, {1})
mod:AddNamePlateOption("NPAuraOnPhoenixEmbers", 328731)
mod:AddNamePlateOption("NPAuraOnPhoenixFixate", 328479)

mod.vb.addMode = 0--No adds spawning, 1-Adds Spawning from Darithos Tables, 2-Adds spawning from Shade table
mod.vb.addCount = 0
mod.vb.healerOrbCount = 0
mod.vb.shadeActive = false
mod.vb.shieldActive = false
mod.vb.assassinCount = 0
mod.vb.occultistCount = 0
mod.vb.infuserCount = 0
mod.vb.fiendCount = 0
mod.vb.vanquisherCount = 0
local infusersBoon = DBM:GetSpellInfo(326078)
local seenAdds = {}
local castsPerGUID = {}
local infuserTargets = {}
--Perfect timers, executed from Darithos dying
local difficultyName = "None"
local addTimers = {
	[0] = {--Not actually a thing, but if it becomes one (in case blizzard tries to counter anything degenerate like keeping Darithos alive to disable mode 1 add spawns
		["easy"] = {
			--Bleakwing Assassin
			[167566] = {},
			--Vile Occultist
			[165763] = {},--Unknown, Not enough data for first one
			--Soul Infuser
			[165762] = {},
			--Pestering Fiend
			[168700] = {},
			--Rockbound Vanquisher
			[165764] = {},
		},
		["hard"] = {--Mythic testing timers
			--Bleakwing Assassin
			[167566] = {},
			--Vile Occultist
			[165763] = {},
			--Soul Infuser
			[165762] = {},
			--Pestering Fiend
			[168700] = {},
			--Rockbound Vanquisher
			[165764] = {},
		},
	},
	[1] = {--Post Darithos Death Adds
		["easy"] = {--Normal testing timers
			--Bleakwing Assassin
			[167566] = {8, 80},
			--Vile Occultist
			[165763] = {},--Unknown, Not enough data for first one
			--Soul Infuser
			[165762] = {58},
			--Pestering Fiend
			[168700] = {38, 50},
			--Rockbound Vanquisher
			[165764] = {8, 75},
		},
		["hard"] = {--Mythic testing timers
			--Bleakwing Assassin
			[167566] = {28, 63, 31.9},
			--Vile Occultist
			[165763] = {70},
			--Soul Infuser
			[165762] = {8},
			--Pestering Fiend
			[168700] = {8, 20, 20, 20, 20, 30},
			--Rockbound Vanquisher
			[165764] = {8, 45, 44.3},
		},
	},
	[2] = {--Post Shade Departure Adds
		["easy"] = {--Normal testing timers
			--Bleakwing Assassin
			[167566] = {4},
			--Vile Occultist
			[165763] = {103.5},
			--Soul Infuser
			[165762] = {33.5, 70},
			--Pestering Fiend
			[168700] = {4, 30},
			--Rockbound Vanquisher
			[165764] = {4, 75, 75},
		},
		["hard"] = {--Mythic testing timers
			--Bleakwing Assassin
			[167566] = {23.6, 39.9, 25.1},
			--Vile Occultist
			[165763] = {64.1},
			--Soul Infuser
			[165762] = {4, 100},--iffy because encounter spawn was disabled so this data was collected from damage
			--Pestering Fiend
			[168700] = {4, 27, 65},--iffy because encounter spawn was disabled so this data was collected from damage
			--Rockbound Vanquisher
			[165764] = {4, 44.9, 45},
		},
	},
}

function mod:EmberBlastTarget(targetname, uId, bossuid, scanningTime)
	if not targetname then return end
	if targetname == UnitName("player") then
		specWarnEmberBlast:Show(DBM_CORE_L.ALLIES)
		specWarnEmberBlast:Play("gathershare")
		yellEmberBlast:Yell()
		yellEmberBlastFades:Countdown(5-scanningTime)
	elseif self.Options.SpecWarn325877moveto then
		specWarnEmberBlast:Show(targetname)
		specWarnEmberBlast:Play("gathershare")
	else
		warnEmberBlast:Show(targetname)
	end
	if self.Options.SetIconOnEmberBlast then
		self:SetIcon(targetname, 1, 6-scanningTime)--So icon clears 1 second after blast
	end
end

--[[
function mod:BlazingSurgeTarget(targetname, uId, bossuid, scanningTime)
	if not targetname then return end
	if targetname == UnitName("player") then
		specWarnBlazingSurge:Show()
		specWarnBlazingSurge:Play("runout")
		yellBlazingSurge:Yell()
	else
		warnBlazingSurge:Show(targetname)
	end
end
--]]

local updateInfoFrame
do
	local floor = math.floor
	local lines = {}
	local sortedLines = {}
	local function addLine(key, value)
		-- sort by insertion order
		lines[key] = value
		sortedLines[#sortedLines + 1] = key
	end
	updateInfoFrame = function()
		table.wipe(lines)
		table.wipe(sortedLines)
		--Infuser's Boon targets
		if #infuserTargets > 0 then
--			addLine("---"..infusersBoon.."---")
			for i=1, #infuserTargets do
				local name = infuserTargets[i]
				local uId = DBM:GetRaidUnitId(name)
				if uId then
					local _, _, infuserCount, _, _, infuserExpireTime = DBM:UnitDebuff(uId, 326078)
					if infuserCount and infuserExpireTime then--Has count, show count and infuser remaining
						local infuserRemaining = infuserExpireTime-GetTime()
						addLine(i.."*"..name, infuserCount.."-"..floor(infuserRemaining))
					end
				end
			end
		else--Nothing left to track, auto hide
			DBM.InfoFrame:Hide()
		end
		return lines, sortedLines
	end
end

function mod:OnCombatStart(delay)
	self.vb.addMode = 0
	self.vb.addCount = 0
	self.vb.healerOrbCount = 0
	self.vb.assassinCount = 0
	self.vb.occultistCount = 0
	self.vb.infuserCount = 0
	self.vb.fiendCount = 0
	self.vb.vanquisherCount = 0
	self.vb.shadeActive = false
	self.vb.shieldActive = false
	table.wipe(seenAdds)
	table.wipe(castsPerGUID)
	table.wipe(infuserTargets)
	timerGreaterCastigationCD:Start(6.1)
--	berserkTimer:Start(-delay)--Confirmed normal and heroic
	if self.Options.RangeFrame then
		DBM.RangeCheck:Show(6)
	end
	if self.Options.NPAuraOnPhoenixEmbers or self.Options.NPAuraOnPhoenixFixate then
		DBM:FireEvent("BossMod_EnableHostileNameplates")
	end
	if self:IsMythic() then
		difficultyName = "hard"
	elseif self:IsHeroic() then
		difficultyName = "hard"
	elseif self:IsNormal() then
		difficultyName = "easy"
	else
		difficultyName = "easy"
	end
end

function mod:OnCombatEnd()
	table.wipe(seenAdds)
	table.wipe(castsPerGUID)
	table.wipe(infuserTargets)
	if self.Options.InfoFrame then
		DBM.InfoFrame:Hide()
	end
	if self.Options.RangeFrame then
		DBM.RangeCheck:Hide()
	end
	if self.Options.NPAuraOnPhoenixEmbers or self.Options.NPAuraOnPhoenixFixate then
		DBM.Nameplate:Hide(true, nil, nil, nil, true, true)
	end
end

function mod:OnTimerRecovery()
	if self:IsMythic() then
		difficultyName = "hard"
	elseif self:IsHeroic() then
		difficultyName = "hard"
	elseif self:IsNormal() then
		difficultyName = "easy"
	else
		difficultyName = "easy"
	end
end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 325877 then
		timerEmberBlastCD:Start(18.3)
		self:BossTargetScanner(args.sourceGUID, "EmberBlastTarget", 0.2, 13)--Scans for 2.6 of 5.0 second cast, will adjust later
	elseif spellId == 329509 or spellId == 329518 then
		warnBlazingSurge:Show()
		timerBlazingSurgeCD:Start(18.3)
		--self:BossTargetScanner(args.sourceGUID, "BlazingSurgeTarget", 0.1, 12)
	elseif spellId == 328885 then
		timerGreaterCastigationCD:Start()
	elseif spellId == 325440 then
		--Announce the cast? seems only stacks worth announcing
		timerVanquishingStrikeCD:Start(15, args.sourceGUID)
	elseif spellId == 325506 then
		if not castsPerGUID[args.sourceGUID] then
			castsPerGUID[args.sourceGUID] = 0
			self.vb.addCount = self.vb.addCount + 1
		end
		castsPerGUID[args.sourceGUID] = castsPerGUID[args.sourceGUID] + 1
		local addnumber, count = self.vb.addCount, castsPerGUID[args.sourceGUID]
		warnConcussiveSmash:Show(addnumber.."-"..count)
--		timerConcussiveSmashCD:Start(12.1, count+1, args.sourceGUID)
	elseif spellId == 333002 then
--		timerVulgarBrandCD:Start(15, args.sourceGUID)
		if self:CheckInterruptFilter(args.sourceGUID, false, true) then
			specWarnVulgarBrand:Show(args.sourceName)
			specWarnVulgarBrand:Play("kickcast")
		end
	elseif spellId == 326455 then
		timerFieryStrikeCD:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 326583 then
--		timerCrimsonFuryCD:Start(15, args.sourceGUID)
	elseif spellId == 325665 and self:AntiSpam(3, 3) then
		warnSoulInfusion:Show()
	elseif spellId == 181113 then--Encounter Spawn
		local cid = self:GetCIDFromGUID(args.sourceGUID)
		if self:AntiSpam(8, cid) then
			if cid == 165764 then--Rockbound Vanquisher
				self.vb.vanquisherCount = self.vb.vanquisherCount + 1
				warnVanquisher:Show(self.vb.vanquisherCount)
				local timer = addTimers[self.vb.addMode][difficultyName][cid][self.vb.vanquisherCount+1]
				if timer then
					timerVanquisherCD:Start(timer, self.vb.vanquisherCount+1)
				end
			elseif cid == 167566 then--bleakwing-assassin
				self.vb.assassinCount = self.vb.assassinCount + 1
				local timer = addTimers[self.vb.addMode][difficultyName][cid][self.vb.assassinCount+1]
				if timer then
					timerBleakwingAssassinCD:Start(timer, self.vb.assassinCount+1)
				end
			elseif cid == 165763 then--vile-occultist
				self.vb.occultistCount = self.vb.occultistCount + 1
				warnVileOccultists:Show(self.vb.occultistCount)
				local timer = addTimers[self.vb.addMode][difficultyName][cid][self.vb.occultistCount+1]
				if timer then
					timerVileOccultistCD:Start(timer, self.vb.occultistCount+1)
				end
			elseif cid == 165762 then
				self.vb.infuserCount = self.vb.infuserCount + 1
				local timer = addTimers[self.vb.addMode][difficultyName][cid][self.vb.infuserCount+1]
				if timer then
					timerSoulInfuserCD:Start(timer, self.vb.infuserCount+1)
				end
			elseif cid == 168700 then
				self.vb.fiendCount = self.vb.fiendCount + 1
				local timer = addTimers[self.vb.addMode][difficultyName][cid][self.vb.fiendCount+1]
				if timer then
					timerPesteringFiendCD:Start(timer, self.vb.fiendCount+1)
				end
--			elseif cid == 168962 then--Reborn Phoenix

			end
		end
	end
end

function mod:SPELL_SUMMON(args)
	local spellId = args.spellId
	if spellId == 329565 and self:AntiSpam(3, 5) then
		--Doesn't really need to announce all of them, just that one is up within 5 seconds
		warnSummonEssenceFont:Show()
	elseif spellId == 326075 then--Not throttled, since healers will need to know how many drop and what count
		self.vb.healerOrbCount = self.vb.healerOrbCount + 1
		warnInfusersOrb:Show(self.vb.healerOrbCount)
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 326456 then
		local amount = args.amount or 1
		if amount % 3 == 0 then
			if amount >= 18 then--FIXME
				if args:IsPlayer() then
					specWarnBurningRemnants:Show(amount)
					specWarnBurningRemnants:Play("stackhigh")
				else
					if not UnitIsDeadOrGhost("player") and not DBM:UnitDebuff("player", spellId) then
						specWarnBurningRemnantsTaunt:Show(args.destName)
						specWarnBurningRemnantsTaunt:Play("tauntboss")
					else
						warnBurningRemnants:Show(args.destName, amount)
					end
				end
			else
				warnBurningRemnants:Show(args.destName, amount)
			end
		end
	elseif spellId == 325442 then
		local amount = args.amount or 1
		if amount >= 18 then--FIXME
			if args:IsPlayer() then
				specWarnVanquished:Show(amount)
				specWarnVanquished:Play("stackhigh")
			else
				if not UnitIsDeadOrGhost("player") and not DBM:UnitDebuff("player", spellId) then
					specWarnVanquishedTaunt:Show(args.destName)
					specWarnVanquishedTaunt:Play("tauntboss")
				else
					warnVanquished:Show(args.destName, amount)
				end
			end
		else
			warnVanquished:Show(args.destName, amount)
		end
	elseif (spellId == 328659 or spellId == 341254) and not seenAdds[args.destGUID] then--Smoldering Plumage
		seenAdds[args.destGUID] = true
		if self:AntiSpam(10, 1) then--In case more than one spawn at once
			warnRebornPhoenix:Show()
		end
	elseif spellId == 328731 then
		if self.Options.NPAuraOnPhoenixEmbers then
			DBM.Nameplate:Show(true, args.sourceGUID, spellId, nil, 20)
		end
	elseif spellId == 333145 and self:AntiSpam(5, args.destName) then
		warnReturnToStone:Show(args.destName)
	elseif spellId == 326078 then
		if not tContains(infuserTargets, args.destName) then
			table.insert(infuserTargets, args.destName)
		end
		if self.Options.InfoFrame and not DBM.InfoFrame:IsShown() and not self.vb.shieldActive then
			DBM.InfoFrame:SetHeader(infusersBoon)
			DBM.InfoFrame:Show(8, "function", updateInfoFrame, false, false)
		end
	elseif spellId == 332871 and args:IsPlayer() then
		specWarnGreaterCastigation:Show()
		specWarnGreaterCastigation:Play("scatter")
	elseif spellId == 326583 then
		warnCrimsonFury:CombinedShow(0.5, args.destName)
		if args:IsPlayer() and self:AntiSpam(3, 8) then
			specWarnCrimsonFury:Show()
			specWarnCrimsonFury:Play("runout")
			yellCrimsonFury:Yell()
		end
	elseif spellId == 328479 then
		warnEyeOnTarget:CombinedShow(1, args.destName)
		if args:IsPlayer() then
			if self:AntiSpam(3, 4) then
				specWarnEyeOnTarget:Show()
				specWarnEyeOnTarget:Play("targetyou")
				yellEyeOnTarget:Yell()
			end
			if self.Options.NPAuraOnPhoenixFixate then
				DBM.Nameplate:Show(true, args.sourceGUID, spellId, nil, 10)
			end
		end
	elseif spellId == 323402 and self:AntiSpam(3, 7) then--Reflection of Guilt (Shade Coming out)
		timerSoulInfuserCD:Stop()
		timerPesteringFiendCD:Stop()
		timerBleakwingAssassinCD:Stop()
		timerVileOccultistCD:Stop()
		timerVanquisherCD:Stop()
		self.vb.shadeActive = true
		specWarnShadeSpawned:Show()
		specWarnShadeSpawned:Play("bigmob")
		timerFieryStrikeCD:Start(14)
		timerEmberBlastCD:Start(20.1)
		timerBlazingSurgeCD:Start(28.8)
	elseif spellId == 337859 or spellId == 343026 then
		self.vb.shieldActive = true
		if self.Options.InfoFrame and spellId == 343026 then--Show dps one over the healing one
			DBM.InfoFrame:SetHeader(args.spellName)
			DBM.InfoFrame:Show(2, "enemyabsorb", nil, args.amount, "boss1")
		end
	elseif spellId == 335581 then
		if self:AntiSpam(8, 165763) then--Backup Vile Occultist spawn detection since blizzard may hide Encounter Spawn
			self.vb.occultistCount = self.vb.occultistCount + 1
			warnVileOccultists:Show(self.vb.occultistCount)
			local timer = addTimers[self.vb.addMode][difficultyName][165763][self.vb.occultistCount+1]
			if timer then
				timerVileOccultistCD:Start(timer, self.vb.occultistCount+1)
			end
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 328731 then
		if self.Options.NPAuraOnPhoenixEmbers then
			DBM.Nameplate:Hide(true, args.destGUID, spellId)
		end
	elseif spellId == 326078 then
		infuserTargets[args.destName] = nil
	elseif spellId == 328479 then
		if self.Options.NPAuraOnPhoenixFixate then
			DBM.Nameplate:Hide(true, args.sourceGUID, spellId)
		end
	elseif spellId == 323402 then--Reflection of Guilt (Shade Leaving)
		self.vb.shadeActive = false--Purposely disabled for now, to prevent most add code running for now
		self.vb.addMode = 2
		self.vb.assassinCount = 0
		self.vb.occultistCount = 0
		self.vb.infuserCount = 0
		self.vb.fiendCount = 0
		self.vb.vanquisherCount = 0
		timerEmberBlastCD:Stop()
		timerBlazingSurgeCD:Stop()
		timerFieryStrikeCD:Stop()
		if self:IsEasy() then--TODO, verify lfr same as normal
			timerBleakwingAssassinCD:Start(4, 1)
			timerVanquisherCD:Start(4, 1)
			timerPesteringFiendCD:Start(4, 1)
			timerSoulInfuserCD:Start(33.5, 1)
			timerVileOccultistCD:Start(103.5, 1)
		else--TODO, verify heroic same as mythic
			timerVanquisherCD:Start(4, 1)
			timerSoulInfuserCD:Start(4, 1)
			timerPesteringFiendCD:Start(4, 1)
			timerBleakwingAssassinCD:Start(23.6, 1)
			timerVileOccultistCD:Start(64.1, 1)
		end
	elseif spellId == 337859 or spellId == 343026 then
		self.vb.shieldActive = false
		specWarnUnleashedPyroclasm:Show(args.destName)
		specWarnUnleashedPyroclasm:Play("kickcast")
		if self.Options.InfoFrame and spellId == 343026 then
			if #infuserTargets > 0 then
				DBM.InfoFrame:SetHeader(infusersBoon)
				DBM.InfoFrame:Show(8, "function", updateInfoFrame, false, false)
			else
				DBM.InfoFrame:Hide()
			end
		end
	end
end

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 168973 then--High Torturer Darithos
		self.vb.addMode = 1
		timerGreaterCastigationCD:Stop()
		--Currently this is broken on encounter scripts
		--Darithos Adds script starts even if shade is out if darithos dies after shade comes out
		--if they fix this, just uncomment
		--if not self.vb.shadeActive then
			if self:IsEasy() then--Seems to differentiate the adds
				timerBleakwingAssassinCD:Start(8, 1)--Come earlier on easy
				timerVanquisherCD:Start(8, 1)
				timerPesteringFiendCD:Start(38, 1)
				timerSoulInfuserCD:Start(58, 1)
			else
				timerVanquisherCD:Start(8, 1)
				timerSoulInfuserCD:Start(8, 1)
				timerPesteringFiendCD:Start(8, 1)
				timerBleakwingAssassinCD:Start(28, 1)
				timerVileOccultistCD:Start(70, 1)
			end
		--end
	elseif cid == 165764 then--Rockbound Vanquisher
		timerVanquishingStrikeCD:Stop(args.destGUID)
		--timerConcussiveSmashCD:Stop(castsPerGUID[args.destGUID]+1, args.destGUID)
--	elseif cid == 167566 then--bleakwing-assassin
--		timerCrimsonFuryCD:Stop(args.destGUID)
--	elseif cid == 165763 then--vile-occultist
--		timerVulgarBrandCD:Stop(args.destGUID)
--	elseif cid == 168962 then--Reborn Phoenix
	end
end

function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 328579 and destGUID == UnitGUID("player") and self:AntiSpam(2, 2) then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE

--[[
--https://shadowlands.wowhead.com/spell=336658/reborn-phoenix-exit
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 336658 then

	end
end
--]]
