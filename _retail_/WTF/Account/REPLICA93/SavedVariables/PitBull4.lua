
PitBull4DB = {
	["namespaces"] = {
		["LeaderIcon"] = {
		},
		["LibDualSpec-1.0"] = {
		},
		["RangeFader"] = {
		},
		["CastBarLatency"] = {
		},
		["PhaseIcon"] = {
		},
		["CombatIcon"] = {
		},
		["RoleIcon"] = {
		},
		["DogTagTexts"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["first"] = false,
							["elements"] = {
								["Druid mana"] = {
									["exists"] = true,
									["location"] = "right",
									["code"] = "[if not IsMana then FractionalDruidMP]",
									["attach_to"] = "DruidManaBar",
								},
								["Threat"] = {
									["exists"] = true,
									["location"] = "center",
									["code"] = "[PercentThreat:Round(1):Hide(0):Percent]",
									["attach_to"] = "ThreatBar",
								},
								["Power"] = {
									["exists"] = true,
									["location"] = "right",
									["code"] = "[if HasMP then FractionalMP]",
									["attach_to"] = "PowerBar",
								},
								["Reputation"] = {
									["exists"] = true,
									["location"] = "center",
									["code"] = "[if IsMouseOver then ReputationName else if ReputationName then FractionalReputation ' ' PercentReputation:Percent:Paren]",
									["attach_to"] = "ReputationBar",
								},
								["PVPTimer"] = {
									["exists"] = true,
									["location"] = "out_right_top",
									["code"] = "[PvPDuration:FormatDuration:Red]",
								},
								["Cast"] = {
									["exists"] = true,
									["location"] = "left",
									["code"] = "[Alpha((-CastStopDuration or 0) + 1) CastStopMessage or (CastName ' ' CastTarget:Paren)]",
									["attach_to"] = "CastBar",
								},
								["Name"] = {
									["exists"] = true,
									["location"] = "left",
									["code"] = "[Name] [(AFK or DND):Angle]",
									["attach_to"] = "HealthBar",
								},
								["Health"] = {
									["exists"] = true,
									["location"] = "right",
									["code"] = "[Status or (FractionalHP:Short ' || ' PercentHP:Percent)]",
									["attach_to"] = "HealthBar",
								},
								["Cast time"] = {
									["exists"] = true,
									["location"] = "right",
									["code"] = "[if not CastStopDuration then Concatenate(CastIsChanneling ? '-' ! '+', CastDelay:Abs:Round(1):Hide(0)):Red ' ' [CastEndDuration >= 0 ? '%.1f':Format(CastEndDuration)]]",
									["attach_to"] = "CastBar",
								},
								["Experience"] = {
									["exists"] = true,
									["location"] = "center",
									["code"] = "[FractionalXP] [PercentXP:Percent:Paren] [Concatenate('R: ', PercentRestXP:Hide(0):Percent)]",
									["attach_to"] = "ExperienceBar",
								},
								["Class"] = {
									["exists"] = true,
									["location"] = "left",
									["code"] = "[Classification] [Level:DifficultyColor] [(if (IsPlayer or (IsEnemy and not IsPet)) then Class):ClassColor] [DruidForm:Paren] [SmartRace]",
									["attach_to"] = "PowerBar",
								},
							},
						},
					},
				},
			},
		},
		["Aggro"] = {
		},
		["SummonIcon"] = {
		},
		["HostilityFader"] = {
		},
		["CombatText"] = {
		},
		["ReadyCheckIcon"] = {
		},
		["Totems"] = {
		},
		["Portrait"] = {
		},
		["ExperienceBar"] = {
		},
		["RaidTargetIcon"] = {
		},
		["Highlight"] = {
		},
		["Sounds"] = {
		},
		["ReputationBar"] = {
		},
		["QuestIcon"] = {
		},
		["Aura"] = {
		},
		["ComboPoints"] = {
		},
		["DruidManaBar"] = {
		},
		["PowerBar"] = {
		},
		["HideBlizzard"] = {
		},
		["RestIcon"] = {
		},
		["ArtifactPowerBar"] = {
		},
		["HealthBar"] = {
		},
		["PvPIcon"] = {
		},
		["Background"] = {
		},
		["VoiceIcon"] = {
		},
		["VisualHeal"] = {
		},
		["ResurrectionIcon"] = {
		},
		["CombatFader"] = {
		},
		["BattlePet"] = {
		},
		["AltPowerBar"] = {
		},
		["BlankSpace"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["first"] = false,
							["elements"] = {
								["Default"] = {
									["exists"] = true,
								},
							},
						},
					},
				},
			},
		},
		["ThreatBar"] = {
		},
		["Border"] = {
		},
		["CastBar"] = {
		},
		["LuaTexts"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["first"] = false,
							["elements"] = {
								["Lua:Artifact power"] = {
									["exists"] = true,
									["events"] = {
										["ARTIFACT_XP_UPDATE"] = true,
										["AZERITE_ITEM_POWER_LEVEL_CHANGED"] = true,
										["AZERITE_EMPOWERED_ITEM_SELECTION_UPDATED"] = true,
										["AZERITE_ITEM_EXPERIENCE_CHANGED"] = true,
									},
									["location"] = "center",
									["code"] = "local cur,max,points = ArtifactPower()\nif max > 0 then\n  if points > 0 then\n    return \"%s/%s (%d)\",cur,max,points\n  end\n  return \"%s/%s\",cur,max\nend\nreturn ConfigMode()",
									["attach_to"] = "ArtifactPowerBar",
								},
								["Lua:Reputation"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["location"] = "center",
									["code"] = "local name, _, min , max, value, id = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode()\nelse\n  local fs_id, fs_rep, _, _, _, _, _, fs_threshold, next_fs_threshold = GetFriendshipReputation(id)\n  if fs_id then\n    if next_fs_threshold then\n      min, max, value = fs_threshold, next_fs_threshold, fs_rep\n    else\n      min, max, value = 0, 1, 1\n    end\n  end\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["attach_to"] = "ReputationBar",
								},
								["Lua:Name"] = {
									["exists"] = true,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["location"] = "left",
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["attach_to"] = "HealthBar",
								},
								["Lua:Threat"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["location"] = "center",
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["attach_to"] = "ThreatBar",
								},
								["Lua:Power"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["location"] = "right",
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["attach_to"] = "PowerBar",
								},
								["Lua:Cast time"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["location"] = "right",
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["attach_to"] = "CastBar",
								},
								["Lua:PVPTimer"] = {
									["exists"] = true,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["location"] = "out_right_top",
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
								},
								["Lua:Cast"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["location"] = "left",
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell\n  end\nend\nreturn ConfigMode()",
									["attach_to"] = "CastBar",
								},
								["Lua:Health"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["location"] = "right",
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["attach_to"] = "HealthBar",
								},
								["Lua:Alternate power"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["location"] = "right",
									["code"] = "local max = MaxPower(unit,ALTERNATE_POWER_INDEX)\nif max > 0 then\n  return \"%s%%\",Percent(Power(unit,ALTERNATE_POWER_INDEX),max)\nend\nreturn ConfigMode()",
									["attach_to"] = "AltPowerBar",
								},
								["Lua:Class"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
									["location"] = "left",
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["attach_to"] = "PowerBar",
								},
								["Lua:Druid mana"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_DISPLAYPOWER"] = true,
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER_FREQUENT"] = true,
									},
									["location"] = "center",
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["attach_to"] = "AltManaBar",
								},
								["Lua:Experience"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["location"] = "center",
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["attach_to"] = "ExperienceBar",
								},
							},
						},
					},
				},
			},
		},
	},
	["profileKeys"] = {
		["Xunae - Draenor"] = "Default",
	},
	["global"] = {
		["config_version"] = 4,
	},
	["profiles"] = {
		["Default"] = {
			["class_order"] = {
				"WARRIOR", -- [1]
				"DEATHKNIGHT", -- [2]
				"PALADIN", -- [3]
				"MONK", -- [4]
				"PRIEST", -- [5]
				"SHAMAN", -- [6]
				"DRUID", -- [7]
				"ROGUE", -- [8]
				"MAGE", -- [9]
				"WARLOCK", -- [10]
				"HUNTER", -- [11]
				"DEMONHUNTER", -- [12]
			},
			["layouts"] = {
				["Normal"] = {
					["exists"] = true,
				},
			},
			["units"] = {
				["Player's pet's target"] = {
					["unit"] = "pettarget",
				},
				["Player's pet"] = {
					["unit"] = "pet",
					["relative_point"] = "BOTTOM",
					["enabled"] = true,
					["relative_to"] = "SPlayer",
					["position_y"] = -30,
					["anchor"] = "TOP",
				},
				["Target's target's target"] = {
					["unit"] = "targettargettarget",
				},
				["Target's target"] = {
					["unit"] = "targettarget",
					["relative_point"] = "RIGHT",
					["enabled"] = true,
					["relative_to"] = "STarget",
					["anchor"] = "LEFT",
				},
				["Focus's target's target"] = {
					["unit"] = "focustargettarget",
				},
				["Player"] = {
					["unit"] = "player",
					["relative_point"] = "TOPLEFT",
					["enabled"] = true,
					["position_x"] = 10,
					["position_y"] = -25,
					["anchor"] = "TOPLEFT",
				},
				["Focus"] = {
					["unit"] = "focus",
					["relative_point"] = "TOPLEFT",
					["enabled"] = true,
					["position_x"] = 250,
					["position_y"] = -260,
					["anchor"] = "TOPLEFT",
				},
				["Target"] = {
					["unit"] = "target",
					["relative_point"] = "TOPLEFT",
					["enabled"] = true,
					["position_x"] = 250,
					["position_y"] = -25,
					["anchor"] = "TOPLEFT",
				},
				["Focus's target"] = {
					["unit"] = "focustarget",
				},
			},
			["groups"] = {
				["Party"] = {
					["position_x"] = 10,
					["relative_point"] = "TOPLEFT",
					["enabled"] = true,
					["exists"] = true,
					["position_y"] = -260,
				},
				["Party pets"] = {
					["unit_group"] = "partypet",
					["exists"] = true,
				},
				["Boss"] = {
					["position_x"] = -290,
					["relative_point"] = "RIGHT",
					["enabled"] = true,
					["unit_group"] = "boss",
					["exists"] = true,
					["position_y"] = 225,
					["show_when"] = {
						["raid40"] = true,
						["solo"] = true,
						["raid10"] = true,
						["raid25"] = true,
						["raid"] = true,
						["raid20"] = true,
						["raid15"] = true,
					},
				},
			},
			["made_groups"] = true,
			["made_units"] = true,
		},
	},
}
