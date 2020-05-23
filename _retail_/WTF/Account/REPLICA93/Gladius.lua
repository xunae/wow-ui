
Gladius2DB = {
	["profileKeys"] = {
		["Thorag - Khadgar"] = "Thorag - Khadgar",
		["Xûñå - Ravencrest"] = "Xûñå - Ravencrest",
		["Xüñâ - Stormscale"] = "Default",
		["Xûñâ - Ravencrest"] = "Default",
		["Xûñá - Ravencrest"] = "Default",
		["Jungyuup - Stormscale"] = "Jungyuup - Stormscale",
		["Asdxx - Defias Brotherhood"] = "Asdxx - Defias Brotherhood",
		["Delimn - Dunemaul"] = "Delimn - Dunemaul",
		["Xuna - Ravencrest"] = "Default",
		["Asddz - Defias Brotherhood"] = "Asddz - Defias Brotherhood",
		["Xuna - Wildhammer"] = "Xuna - Wildhammer",
		["Nakolx - Stormscale"] = "Nakolx - Stormscale",
		["Enimos - Stormscale"] = "Enimos - Stormscale",
		["Xùñâ - Outland"] = "Xùñâ - Outland",
		["Xûñä - Ravencrest"] = "Default",
		["Xúñä - Ravencrest"] = "Xúñä - Ravencrest",
		["Xûñà - Ravencrest"] = "Default",
		["Xüñå - Ravencrest"] = "Default",
		["Asddx - Defias Brotherhood"] = "Asddx - Defias Brotherhood",
		["Xüñä - Ravencrest"] = "Default",
		["Xüñâ - Ravencrest"] = "Default",
		["Asdsdadsa - Defias Brotherhood"] = "Asdsdadsa - Defias Brotherhood",
		["Buckfarry - Ravencrest"] = "Default",
	},
	["profiles"] = {
		["Xûñà - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 2,
			["y"] = {
				["arena1"] = 454.5778049363,
			},
			["x"] = {
				["arena1"] = 753.777835930712,
			},
		},
		["Xûñå - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1033.24505560129,
			},
			["y"] = {
				["arena1"] = 432.5333726565,
			},
		},
		["Xüñâ - Stormscale"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
		},
		["Asdsdadsa - Defias Brotherhood"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
		},
		["Xûñá - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 2,
		},
		["Jungyuup - Stormscale"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 458.844503900735,
			},
			["x"] = {
				["arena1"] = 885.333345667517,
			},
		},
		["Asdxx - Defias Brotherhood"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 406.933325354257,
			},
			["x"] = {
				["arena1"] = 915.911273532431,
			},
		},
		["DRUID"] = {
			["y"] = {
				["arena1"] = 481.600264263136,
			},
			["x"] = {
				["arena1"] = 992.000526809657,
			},
			["tagEvents"] = {
				["maxhealth"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				["class:short"] = "UNIT_NAME_UPDATE",
				["health:short"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				["class"] = "UNIT_NAME_UPDATE",
				["power:short"] = "UNIT_POWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				["race"] = "UNIT_NAME_UPDATE",
				["maxpower:short"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				["power"] = "UNIT_POWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				["name:status"] = "UNIT_NAME_UPDATE UNIT_HEALTH",
				["spec"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
				["power:percentage"] = "UNIT_POWER UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				["name"] = "UNIT_NAME_UPDATE",
				["spec:short"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
				["health:percentage"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				["health"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				["maxhealth:short"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				["maxpower"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
			},
			["tags"] = {
				["maxhealth"] = "function(unit)\nreturn not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nend",
				["class:short"] = "function(unit)\nreturn not Gladius.test and Gladius.L[UnitClass(unit)..\":short\"] or Gladius.L[LOCALIZED_CLASS_NAMES_MALE[Gladius.testing[unit].unitClass]..\":short\"]\nend",
				["health:short"] = "function(unit)\nlocal health = not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
				["class"] = "function(unit)\nreturn not Gladius.test and UnitClass(unit) or LOCALIZED_CLASS_NAMES_MALE[Gladius.testing[unit].unitClass]\nend",
				["power:short"] = "function(unit)\nlocal power = not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nif (power > 999) then\nreturn strformat(\"%.1fk\", (power / 1000))\nelse\nreturn power\nend\nend",
				["race"] = "function(unit)\nreturn not Gladius.test and UnitRace(unit) or Gladius.testing[unit].unitRace\nend",
				["maxpower:short"] = "function(unit)\nlocal power = not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nif (power > 999) then\nreturn strformat(\"%.1fk\", (power / 1000))\nelse\nreturn power\nend\nend",
				["power"] = "function(unit)\nreturn not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nend",
				["name:status"] = "function(unit)\nreturn UnitIsDeadOrGhost(unit) and Gladius.L[\"DEAD\"] or (UnitName(unit) or unit)\nend",
				["spec"] = "function(unit)\nreturn Gladius.test and Gladius.testing[unit].unitSpec or Gladius.buttons[unit].spec\nend",
				["power:percentage"] = "function(unit)\nlocal power = not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nlocal maxPower = not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nreturn strformat(\"%.1f%%\", (power / maxPower * 100))\nend",
				["name"] = "function(unit)\nreturn UnitName(unit) or unit\nend",
				["spec:short"] = "function(unit)\nlocal spec = Gladius.test and Gladius.testing[unit].unitSpec or Gladius.buttons[unit].spec\nif (spec == nil or spec == \"\") then\nreturn \"\"\nend\nreturn Gladius.L[spec..\":short\"]\nend",
				["health:percentage"] = "function(unit)\nlocal health = not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nlocal maxHealth = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nreturn strformat(\"%.1f%%\", (health / maxHealth * 100))\nend",
				["health"] = "function(unit)\nreturn not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nend",
				["maxhealth:short"] = "function(unit)\nlocal health = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
				["maxpower"] = "function(unit)\nreturn not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nend",
			},
		},
		["Xuna - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 2,
			["tagEvents"] = {
				["maxhealth"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				["class:short"] = "UNIT_NAME_UPDATE",
				["health:short"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				["class"] = "UNIT_NAME_UPDATE",
				["power:short"] = "UNIT_POWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				["race"] = "UNIT_NAME_UPDATE",
				["maxpower:short"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				["power"] = "UNIT_POWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				["name:status"] = "UNIT_NAME_UPDATE UNIT_HEALTH",
				["spec"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
				["power:percentage"] = "UNIT_POWER UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				["name"] = "UNIT_NAME_UPDATE",
				["spec:short"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
				["health:percentage"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				["maxpower"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				["maxhealth:short"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				["health"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
			},
			["tags"] = {
				["maxhealth"] = "function(unit)\nreturn not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nend",
				["class:short"] = "function(unit)\nreturn not Gladius.test and Gladius.L[UnitClass(unit)..\":short\"] or Gladius.L[LOCALIZED_CLASS_NAMES_MALE[Gladius.testing[unit].unitClass]..\":short\"]\nend",
				["health:short"] = "function(unit)\nlocal health = not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
				["class"] = "function(unit)\nreturn not Gladius.test and UnitClass(unit) or LOCALIZED_CLASS_NAMES_MALE[Gladius.testing[unit].unitClass]\nend",
				["power:short"] = "function(unit)\nlocal power = not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nif (power > 999) then\nreturn strformat(\"%.1fk\", (power / 1000))\nelse\nreturn power\nend\nend",
				["race"] = "function(unit)\nreturn not Gladius.test and UnitRace(unit) or Gladius.testing[unit].unitRace\nend",
				["maxpower:short"] = "function(unit)\nlocal power = not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nif (power > 999) then\nreturn strformat(\"%.1fk\", (power / 1000))\nelse\nreturn power\nend\nend",
				["power"] = "function(unit)\nreturn not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nend",
				["name:status"] = "function(unit)\nreturn UnitIsDeadOrGhost(unit) and Gladius.L[\"DEAD\"] or (UnitName(unit) or unit)\nend",
				["spec"] = "function(unit)\nreturn Gladius.test and Gladius.testing[unit].unitSpec or Gladius.buttons[unit].spec\nend",
				["power:percentage"] = "function(unit)\nlocal power = not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nlocal maxPower = not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nreturn strformat(\"%.1f%%\", (power / maxPower * 100))\nend",
				["name"] = "function(unit)\nreturn UnitName(unit) or unit\nend",
				["spec:short"] = "function(unit)\nlocal spec = Gladius.test and Gladius.testing[unit].unitSpec or Gladius.buttons[unit].spec\nif (spec == nil or spec == \"\") then\nreturn \"\"\nend\nreturn Gladius.L[spec..\":short\"]\nend",
				["health:percentage"] = "function(unit)\nlocal health = not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nlocal maxHealth = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nreturn strformat(\"%.1f%%\", (health / maxHealth * 100))\nend",
				["maxpower"] = "function(unit)\nreturn not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nend",
				["maxhealth:short"] = "function(unit)\nlocal health = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
				["health"] = "function(unit)\nreturn not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nend",
			},
		},
		["Asddz - Defias Brotherhood"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 411.911108260683,
			},
			["x"] = {
				["arena1"] = 1139.2006156921,
			},
		},
		["Xuna - Wildhammer"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1082.31165423919,
			},
			["y"] = {
				["arena1"] = 608.889026207384,
			},
		},
		["Xùñâ - Outland"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1135.6446588728,
			},
			["y"] = {
				["arena1"] = 404.088867515988,
			},
		},
		["Xúñä - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 443.911155181457,
			},
			["x"] = {
				["arena1"] = 1042.48909801905,
			},
		},
		["Nakolx - Stormscale"] = {
			["y"] = {
				["arena1"] = 443.911155181457,
			},
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1102.2227858649,
			},
			["auraVersion"] = 1,
		},
		["Enimos - Stormscale"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 466.666622575125,
			},
			["x"] = {
				["arena1"] = 962.844571516238,
			},
		},
		["Buckfarry - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
		},
		["Xûñä - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 2,
		},
		["Xüñå - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
		},
		["Xûñâ - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 2,
		},
		["Default"] = {
			["modules"] = {
				["Dispel"] = false,
			},
			["castTimeTextOffsetY"] = -1,
			["castBarHeight"] = 18,
			["drTrackerOffsetX"] = 5,
			["tags"] = {
				["maxhealth"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["class:short"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nreturn not Gladius.test and Gladius.L[LOCALIZED_CLASS_NAMES_MALE[Gladius.buttons[unit].class]..\":short\"] or Gladius.L[LOCALIZED_CLASS_NAMES_MALE[Gladius.testing[unit].unitClass]..\":short\"]\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["health:short"] = {
					["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["class"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nreturn not Gladius.test and LOCALIZED_CLASS_NAMES_MALE[Gladius.buttons[unit].class] or LOCALIZED_CLASS_NAMES_MALE[Gladius.testing[unit].unitClass]\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["power:short"] = {
					["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nif (power > 999) then\nreturn strformat(\"%.1fk\", (power / 1000))\nelse\nreturn power\nend\nend",
					["events"] = "UNIT_POWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["race"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitRace(unit) or Gladius.testing[unit].unitRace\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["maxpower:short"] = {
					["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nif (power > 999) then\nreturn strformat(\"%.1fk\", (power / 1000))\nelse\nreturn power\nend\nend",
					["events"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["power"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nend",
					["events"] = "UNIT_POWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["name:status"] = {
					["func"] = "function(unit)\nreturn UnitIsDeadOrGhost(unit) and Gladius.L[\"DEAD\"] or (UnitName(unit) or unit)\nend",
					["events"] = "UNIT_NAME_UPDATE UNIT_HEALTH",
				},
				["spec"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nreturn Gladius.test and Gladius.testing[unit].unitSpec or Gladius.buttons[unit].spec\nend",
					["events"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
				},
				["power:percentage"] = {
					["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nlocal maxPower = not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nreturn strformat(\"%.1f%%\", (power / maxPower * 100))\nend",
					["events"] = "UNIT_POWER UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["name"] = {
					["func"] = "function(unit)\nreturn UnitName(unit) or unit\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["spec:short"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nlocal spec = Gladius.test and Gladius.testing[unit].unitSpec or Gladius.buttons[unit].spec\nif (spec == nil or spec == \"\") then\nreturn \"\"\nend\nreturn Gladius.L[spec..\":short\"]\nend",
					["events"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
				},
				["health:percentage"] = {
					["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nlocal maxHealth = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nreturn strformat(\"%.1f%%\", (health / maxHealth * 100))\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["maxpower"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nend",
					["events"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["maxhealth:short"] = {
					["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["health"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
			},
			["castBarTextureUninterruptible"] = "Blizzard",
			["classIconCrop"] = true,
			["drTrackerGloss"] = true,
			["castTextOffsetX"] = 3,
			["drTrackerAnchor"] = "TOPLEFT",
			["powerBarHeight"] = 10,
			["castTimeTextOffsetX"] = -3,
			["growUp"] = true,
			["drTrackerRelativePoint"] = "TOPRIGHT",
			["tagsVersion"] = 2,
			["castBarWidth"] = 241,
			["highlightRaidIcon"] = false,
			["locked"] = true,
			["trinketSize"] = 39,
			["y"] = {
				["arena1"] = 320.889522187008,
			},
			["x"] = {
				["arena1"] = 998.400170371315,
			},
			["bottomMargin"] = 2,
			["classIconCooldown"] = true,
			["trinketAdjustSize"] = false,
			["castBarAdjustWidth"] = false,
			["tagEvents"] = {
				["maxhealth"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				["class:short"] = "UNIT_NAME_UPDATE",
				["health:short"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				["class"] = "UNIT_NAME_UPDATE",
				["power:short"] = "UNIT_POWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				["race"] = "UNIT_NAME_UPDATE",
				["maxpower:short"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				["power"] = "UNIT_POWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				["name:status"] = "UNIT_NAME_UPDATE UNIT_HEALTH",
				["spec"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
				["power:percentage"] = "UNIT_POWER UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				["name"] = "UNIT_NAME_UPDATE",
				["spec:short"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
				["health:percentage"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				["health"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				["maxhealth:short"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				["maxpower"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
			},
			["healthBarHeight"] = 30,
			["globalFont"] = "Arial Narrow",
			["castTextOffsetY"] = -1,
			["backgroundColor"] = {
				["a"] = 0.686867654323578,
			},
			["drCategories"] = {
				["taunt"] = false,
				["ctrlstun"] = true,
				["rndstun"] = false,
				["ctrlroot"] = false,
				["shortroot"] = false,
				["cyclone"] = false,
				["root"] = false,
				["incapacitate"] = true,
				["mc"] = false,
				["disorient"] = true,
				["disarm"] = false,
				["knockback"] = false,
				["silence"] = false,
				["horror"] = false,
				["shortdisorient"] = false,
				["fear"] = false,
			},
			["direction"] = 1,
			["announcements"] = {
				["trinket"] = false,
				["health"] = false,
				["spec"] = false,
				["enemies"] = false,
			},
			["frameScale"] = 1.3,
			["drTrackerOffsetY"] = 50,
			["drTrackerAttachTo"] = "Trinket",
			["tagsTexts"] = {
				["PowerBar Left Text"] = {
					["text"] = "",
				},
				["HealthBar Right Text"] = {
					["text"] = "",
				},
				["HealthBar Left Text"] = {
					["offsetY"] = -5,
					["text"] = " [name]",
				},
				["PowerBar Right Text"] = {
					["text"] = "",
				},
				["TargetBar Left Text"] = {
					["text"] = "",
				},
				["TargetBar Right Text"] = {
					["text"] = "",
				},
			},
			["drFontSize"] = 20,
			["trinketIconCrop"] = true,
			["castBarTexture"] = "Blizzard",
			["healthBarTexture"] = "Blizzard",
			["drTrackerSize"] = 36,
			["drTrackerCooldown"] = true,
			["powerBarTexture"] = "Blizzard",
			["drTrackerAdjustSize"] = false,
			["auraVersion"] = 1,
			["backgroundPadding"] = 2,
		},
		["Asddx - Defias Brotherhood"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1033.95609071516,
			},
			["y"] = {
				["arena1"] = 428.266673692066,
			},
		},
		["Xüñä - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 2,
		},
		["Xüñâ - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 2,
		},
		["Thorag - Khadgar"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 444.62228795157,
			},
			["x"] = {
				["arena1"] = 1161.24514562814,
			},
		},
		["Delimn - Dunemaul"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1109.33342997232,
			},
			["y"] = {
				["arena1"] = 399.111133437684,
			},
		},
	},
}
