
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 1141,
	["errors"] = {
		{
			["message"] = "C stack overflow",
			["time"] = "2021/04/08 17:02:36",
			["locals"] = "(*temporary) = PetActionButton1Cooldown {\n 0 = <userdata>\n}\n(*temporary) = 0\n(*temporary) = 0\n(*temporary) = 0\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = PetActionButton1Cooldown {\n 0 = <userdata>\n}\n(*temporary) = 0\n(*temporary) = 0\n(*temporary) = 0\n = <function> defined =[C]:-1\n = <function> defined @Interface\\AddOns\\XunaTweaks\\core.lua:244\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n...\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `CooldownFrame_Set'\n[string \"@Interface\\FrameXML\\PetActionBarFrame.lua\"]:233: in function `PetActionBar_UpdateCooldowns'\n[string \"@Interface\\FrameXML\\PetActionBarFrame.lua\"]:221: in function <Interface\\FrameXML\\PetActionBarFrame.lua:152>\n[string \"=[C]\"]: in function `PetActionBar_Update'\n[string \"@Interface\\FrameXML\\PetActionBarFrame.lua\"]:91: in function <Interface\\FrameXML\\PetActionBarFrame.lua:79>\n[string \"=[C]\"]: in function `CameraOrSelectOrMoveStop'\n[string \"CAMERAORSELECTORMOVE\"]:4: in function <[string \"CAMERAORSELECTORMOVE\"]:1>",
			["session"] = 1128,
			["counter"] = 2,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\Leatrix_Plus\\Leatrix_Plus-9.0.23.lua:5271: Usage: HookScript(object, method, [handler]): 'object' - nil or table expected got string",
			["time"] = "2021/04/09 12:20:45",
			["locals"] = "(*temporary) = \"Usage: HookScript(object, method, [handler]): 'object' - nil or table expected got string\"\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceHook-3.0\\AceHook-3.0-9.lua\"]:130: in function <...e\\AddOns\\BigDebuffs\\Libs\\AceHook-3.0\\AceHook-3.0.lua:118>\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceHook-3.0\\AceHook-3.0-9.lua\"]:367: in function `HookScript'\n[string \"@Interface\\AddOns\\Leatrix_Plus\\Leatrix_Plus-9.0.23.lua\"]:5271: in function `HighlightTabs'\n[string \"@Interface\\AddOns\\Leatrix_Plus\\Leatrix_Plus-9.0.23.lua\"]:5290: in function `?'\n[string \"@Interface\\AddOns\\Leatrix_Plus\\Leatrix_Plus-9.0.23.lua\"]:8890: in function <Interface\\AddOns\\Leatrix_Plus\\Leatrix_Plus.lua:8438>",
			["session"] = 1140,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\AutoTurnIn\\AutoTurnIn-7.5.1.lua:417: bad argument #1 to 'format' (string expected, got nil)",
			["time"] = "2021/04/09 12:31:35",
			["stack"] = "[string \"=[C]\"]: in function `format'\n[string \"@Interface\\AddOns\\AutoTurnIn\\AutoTurnIn-7.5.1.lua\"]:417: in function `?'\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:145: in function <...nIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[2]\"]:4: in function <[string \"safecall Dispatcher[2]\"]:4>\n[string \"=[C]\"]: ?\n[string \"safecall Dispatcher[2]\"]:13: in function `?'\n[string \"@Interface\\AddOns\\AutoTurnIn\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:90: in function `Fire'\n[string \"@Interface\\AddOns\\BagSync\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ce\\AddOns\\BagSync\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1141,
			["counter"] = 1,
		}, -- [3]
	},
}
