
BugGrabberDB = {
	["session"] = 44,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn '!BlizzardRaidFramesFix' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2020/11/27 21:15:02",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:574: in function `CompactRaidFrameManager_LockContainer'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:567: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:56: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:49>",
			["session"] = 43,
			["counter"] = 2,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\Xunamate\\xunamate-0.1.lua:143: attempt to index global 'matchData' (a nil value)",
			["time"] = "2020/11/27 16:50:07",
			["stack"] = "[string \"@Interface\\AddOns\\Xunamate\\xunamate-0.1.lua\"]:143: in function `?'\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:145: in function <...nIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[3]\"]:4: in function <[string \"safecall Dispatcher[3]\"]:4>\n[string \"=[C]\"]: ?\n[string \"safecall Dispatcher[3]\"]:13: in function `?'\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:90: in function `Fire'\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...AddOns\\BigDebuffs\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 43,
			["counter"] = 2,
		}, -- [2]
	},
}