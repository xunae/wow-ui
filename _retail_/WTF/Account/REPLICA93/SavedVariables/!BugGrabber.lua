
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 1139,
	["errors"] = {
		{
			["message"] = "C stack overflow",
			["time"] = "2021/04/08 17:02:36",
			["locals"] = "(*temporary) = PetActionButton1Cooldown {\n 0 = <userdata>\n}\n(*temporary) = 0\n(*temporary) = 0\n(*temporary) = 0\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = PetActionButton1Cooldown {\n 0 = <userdata>\n}\n(*temporary) = 0\n(*temporary) = 0\n(*temporary) = 0\n = <function> defined =[C]:-1\n = <function> defined @Interface\\AddOns\\XunaTweaks\\core.lua:244\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n...\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `CooldownFrame_Set'\n[string \"@Interface\\FrameXML\\PetActionBarFrame.lua\"]:233: in function `PetActionBar_UpdateCooldowns'\n[string \"@Interface\\FrameXML\\PetActionBarFrame.lua\"]:221: in function <Interface\\FrameXML\\PetActionBarFrame.lua:152>\n[string \"=[C]\"]: in function `PetActionBar_Update'\n[string \"@Interface\\FrameXML\\PetActionBarFrame.lua\"]:91: in function <Interface\\FrameXML\\PetActionBarFrame.lua:79>\n[string \"=[C]\"]: in function `CameraOrSelectOrMoveStop'\n[string \"CAMERAORSELECTORMOVE\"]:4: in function <[string \"CAMERAORSELECTORMOVE\"]:1>",
			["session"] = 1128,
			["counter"] = 2,
		}, -- [1]
	},
}
