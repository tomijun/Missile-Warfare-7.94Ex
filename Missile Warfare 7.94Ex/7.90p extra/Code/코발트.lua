function SUB_CB()
-- 코발트 ＃-----------------------------------------------------------------------------------
Trigger { -- 코발트 1팀
	players = {P0},
	conditions = {
		Void(3,AtLeast,1);
	},
	actions = {
		SetVoid(3,Add,1);
		PreserveTrigger();
	},
}

Trigger { 
	players = {P0},
	conditions = {
		Void(370,Exactly,0);
		Void(364,Exactly,0);
		Void(177+0,Exactly,0);
		Void(177+1,Exactly,0);
		Void(177+2,Exactly,0);
		Void(177+3,Exactly,0);
		Bring(Force1, AtLeast, 3, "Creep Creater [U]","전체필드");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭1");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭2");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭3");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭4");
	},
	actions = {
		SetCp(0);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x18Player Team1이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(1);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x18Player Team1이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(2);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x18Player Team1이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(3);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x18Player Team1이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(4);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x18Player Team1이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(5);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x18Player Team1이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(6);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x18Player Team1이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(7);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x18Player Team1이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(0);
		SetVoid(3,SetTo,1);
		
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(370,Exactly,0);
		Void(364,AtLeast,24*120);
		Void(177+0,Exactly,0);
		Void(177+1,Exactly,0);
		Void(177+2,Exactly,0);
		Void(177+3,Exactly,0);
		Bring(Force1, AtLeast, 3, "Creep Creater [U]","전체필드");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭1");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭2");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭3");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭4");
	},
	actions = {
		SetCp(0);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x18Player Team1이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(1);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x18Player Team1이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(2);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x18Player Team1이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(3);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x18Player Team1이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(4);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x18Player Team1이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(5);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x18Player Team1이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(6);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x18Player Team1이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(7);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x18Player Team1이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(0);
		SetVoid(3,SetTo,1);
		
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(364,AtLeast,1);
		Bring(Force1, AtLeast, 3, "Creep Creater [U]","전체필드");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭1");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭2");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭3");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭4");
	},
	actions = {
		SetCp(0);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16포세이돈미사일 사용도중에 사용할수 없습니다.", 4);
		SetCp(1);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16포세이돈미사일 사용도중에 사용할수 없습니다.", 4);
		SetCp(2);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16포세이돈미사일 사용도중에 사용할수 없습니다.", 4);
		SetCp(3);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16포세이돈미사일 사용도중에 사용할수 없습니다.", 4);
		SetCp(0);
	},
}
for j = 0, 3 do
Trigger {
	players = {P0},
	conditions = {
		Void(177+j,AtLeast,1);
		Bring(Force1, AtLeast, 3, "Creep Creater [U]","전체필드");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭1");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭2");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭3");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭4");
	},
	actions = {
		SetCp(0);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16하이퍼 노바 사용도중에 사용할수 없습니다.", 4);
		SetCp(1);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16하이퍼 노바 사용도중에 사용할수 없습니다.", 4);
		SetCp(2);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16하이퍼 노바 사용도중에 사용할수 없습니다.", 4);
		SetCp(3);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16하이퍼 노바 사용도중에 사용할수 없습니다.", 4);
		SetCp(0);
	},
}
end
Trigger {
	players = {P0},
	conditions = {
		Void(370,Exactly,1);
		Bring(Force1, AtLeast, 3, "Creep Creater [U]","전체필드");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭1");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭2");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭3");
		Bring(Force1, AtLeast, 1, "Power [N]", "1꼭4");
	},
	actions = {
		SetCp(0);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x18코발트(핵 미사일)은\r\n\x16한맵에 한번만 제작이 가능합니다", 4);
		SetCp(1);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x18코발트(핵 미사일)은\r\n\x16한맵에 한번만 제작이 가능합니다", 4);
		SetCp(2);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x18코발트(핵 미사일)은\r\n\x16한맵에 한번만 제작이 가능합니다", 4);
		SetCp(3);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x18코발트(핵 미사일)은\r\n\x16한맵에 한번만 제작이 가능합니다", 4);
		SetCp(0);
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(372,Exactly,8);
		Void(3,AtLeast,1);
		Void(3,AtMost,490);
	},
	actions = {
		SetVoid(372,SetTo,0);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(372,Exactly,7);
		Void(3,AtLeast,1);
		Void(3,AtMost,490);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,944);
		SetLoc("CLoc79",4,SetTo,496+16);
		SetLoc("CLoc79",8,SetTo,976);
		SetLoc("CLoc79",12,SetTo,528+16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
		GiveUnits(All,"Team Sniping Missile",P4,"Anywhere",P9);
		CreateUnit(1, "Flash Missile", "CLoc79", P4);
		KillUnit("Flash Missile",P4);
		SetVoid(372,SetTo,8);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(372,Exactly,6);
		Void(3,AtLeast,1);
		Void(3,AtMost,490);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,912);
		SetLoc("CLoc79",4,SetTo,560+16);
		SetLoc("CLoc79",8,SetTo,944);
		SetLoc("CLoc79",12,SetTo,592+16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		GiveUnits(All,"Team Sniping Missile",P3,"Anywhere",P9);
		CreateUnit(1, "Flash Missile", "CLoc79", P3);
		KillUnit("Flash Missile",P3);
		SetVoid(372,SetTo,7);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(372,Exactly,5);
		Void(3,AtLeast,1);
		Void(3,AtMost,490);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,944);
		SetLoc("CLoc79",4,SetTo,624+16);
		SetLoc("CLoc79",8,SetTo,976);
		SetLoc("CLoc79",12,SetTo,656+16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		GiveUnits(All,"Team Sniping Missile",P2,"Anywhere",P9);
		CreateUnit(1, "Flash Missile", "CLoc79", P2);
		KillUnit("Flash Missile",P2);
		SetVoid(372,SetTo,6);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(372,Exactly,4);
		Void(3,AtLeast,1);
		Void(3,AtMost,490);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,1008);
		SetLoc("CLoc79",4,SetTo,656+16);
		SetLoc("CLoc79",8,SetTo,1040);
		SetLoc("CLoc79",12,SetTo,688+16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		GiveUnits(All,"Team Sniping Missile",P1,"Anywhere",P9);
		CreateUnit(1, "Flash Missile", "CLoc79", P1);
		KillUnit("Flash Missile",P1);
		SetVoid(372,SetTo,5);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(372,Exactly,3);
		Void(3,AtLeast,1);
		Void(3,AtMost,490);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,1072);
		SetLoc("CLoc79",4,SetTo,624+16);
		SetLoc("CLoc79",8,SetTo,1104);
		SetLoc("CLoc79",12,SetTo,656+16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
		GiveUnits(All,"Team Sniping Missile",P4,"Anywhere",P9);
		CreateUnit(1, "Flash Missile", "CLoc79", P4);
		KillUnit("Flash Missile",P4);
		SetVoid(372,SetTo,4);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(372,Exactly,2);
		Void(3,AtLeast,1);
		Void(3,AtMost,490);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,1104);
		SetLoc("CLoc79",4,SetTo,560+16);
		SetLoc("CLoc79",8,SetTo,1136);
		SetLoc("CLoc79",12,SetTo,592+16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		GiveUnits(All,"Team Sniping Missile",P3,"Anywhere",P9);
		CreateUnit(1, "Flash Missile", "CLoc79", P3);
		KillUnit("Flash Missile",P3);
		SetVoid(372,SetTo,3);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(372,Exactly,1);
		Void(3,AtLeast,1);
		Void(3,AtMost,490);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,1072);
		SetLoc("CLoc79",4,SetTo,496+16);
		SetLoc("CLoc79",8,SetTo,1104);
		SetLoc("CLoc79",12,SetTo,528+16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		GiveUnits(All,"Team Sniping Missile",P2,"Anywhere",P9);
		CreateUnit(1, "Flash Missile", "CLoc79", P2);
		KillUnit("Flash Missile",P2);
		SetVoid(372,SetTo,2);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(372,Exactly,0);
		Void(3,AtLeast,1);
		Void(3,AtMost,490);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,1008);
		SetLoc("CLoc79",4,SetTo,464+16);
		SetLoc("CLoc79",8,SetTo,1040);
		SetLoc("CLoc79",12,SetTo,496+16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		GiveUnits(All,"Team Sniping Missile",P1,"Anywhere",P9);
		CreateUnit(1, "Flash Missile", "CLoc79", P1);
		KillUnit("Flash Missile",P1);
		SetVoid(372,SetTo,1);
		PreserveTrigger();
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(3,AtLeast,1);
		Void(3,AtMost,519);
	},
	actions = {
		Order("Team Sniping Missile", P9, "1-5", Move, "1팀중앙");
		Order("Team Sniping Missile", P9, "1-6", Move, "1팀중앙");
		Order("Team Sniping Missile", P9, "1-7", Move, "1팀중앙");
		Order("Team Sniping Missile", P9, "1-8", Move, "1팀중앙");
		Order("Team Sniping Missile", P9, "1-9", Move, "1팀중앙");
		PreserveTrigger();
	},
}


Trigger { 
	players = {P0},
	conditions = {
		Void(374,Exactly,4);
		Void(3,AtLeast,460);
		Void(3,AtMost,519);
	},
	actions = {
		SetVoid(374,SetTo,0);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(374,Exactly,3);
		Void(3,AtLeast,460);
		Void(3,AtMost,519);
	},
	actions = {
		SetVoid(374,SetTo,4);
		CreateUnit(1, "Team Sniping Missile", "1-4", P4);
		CreateUnit(1, "Team Sniping Missile", "1-10", P4);
		GiveUnits(All,"Team Sniping Missile",P4,"Anywhere",P9);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(374,Exactly,2);
		Void(3,AtLeast,460);
		Void(3,AtMost,519);
	},
	actions = {
		SetVoid(374,SetTo,3);
		CreateUnit(1, "Team Sniping Missile", "1-4", P3);
		CreateUnit(1, "Team Sniping Missile", "1-10", P3);
		GiveUnits(All,"Team Sniping Missile",P3,"Anywhere",P9);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(374,Exactly,1);
		Void(3,AtLeast,460);
		Void(3,AtMost,519);
	},
	actions = {
		SetVoid(374,SetTo,2);
		CreateUnit(1, "Team Sniping Missile", "1-4", P2);
		CreateUnit(1, "Team Sniping Missile", "1-10", P2);
		GiveUnits(All,"Team Sniping Missile",P2,"Anywhere",P9);
		PreserveTrigger();
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(374,Exactly,0);
		Void(3,AtLeast,460);
		Void(3,AtMost,519);
	},
	actions = {
		SetVoid(374,SetTo,1);
		CreateUnit(1, "Team Sniping Missile", "1-4", P1);
		CreateUnit(1, "Team Sniping Missile", "1-10", P1);
		GiveUnits(All,"Team Sniping Missile",P1,"Anywhere",P9);
		PreserveTrigger();
	},
}

Trigger { 
	players = {P0},
	conditions = {
		Void(3,AtLeast,460);
		Void(3,AtMost,519);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,0);
		SetLoc("CLoc79",4,SetTo,416);
		SetLoc("CLoc79",8,SetTo,64);
		SetLoc("CLoc79",12,SetTo,768);
		Order("Team Sniping Missile", P9, "1-4", Move, "CLoc79");
		SetLoc("CLoc79",0,SetTo,1984);
		SetLoc("CLoc79",4,SetTo,416);
		SetLoc("CLoc79",8,SetTo,2048);
		SetLoc("CLoc79",12,SetTo,768);
		Order("Team Sniping Missile", P9, "1-10", Move, "CLoc79");
		PreserveTrigger();
	},
}


Trigger { 
	players = {P0},
	conditions = {
		Void(3,Exactly,520);
	},
	actions = {
		RemoveUnit("Team Sniping Missile",P9);
		SetLoc("CLoc79",4,SetTo,416);
		SetLoc("CLoc79",12,SetTo,768);
		SetLoc("CLoc79",0,SetTo,0+64*0);
		SetLoc("CLoc79",8,SetTo,64+64*0);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		SetLoc("CLoc79",0,SetTo,0+64*1);
		SetLoc("CLoc79",8,SetTo,64+64*1);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		SetLoc("CLoc79",0,SetTo,0+64*2);
		SetLoc("CLoc79",8,SetTo,64+64*2);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		SetLoc("CLoc79",0,SetTo,0+64*3);
		SetLoc("CLoc79",8,SetTo,64+64*3);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
		SetLoc("CLoc79",0,SetTo,0+64*4);
		SetLoc("CLoc79",8,SetTo,64+64*4);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		SetLoc("CLoc79",0,SetTo,0+64*5);
		SetLoc("CLoc79",8,SetTo,64+64*5);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		SetLoc("CLoc79",0,SetTo,0+64*6);
		SetLoc("CLoc79",8,SetTo,64+64*6);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		SetLoc("CLoc79",0,SetTo,0+64*7);
		SetLoc("CLoc79",8,SetTo,64+64*7);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
		
		SetLoc("CLoc79",0,SetTo,0+64*8);
		SetLoc("CLoc79",8,SetTo,64+64*8);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		SetLoc("CLoc79",0,SetTo,0+64*9);
		SetLoc("CLoc79",8,SetTo,64+64*9);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		SetLoc("CLoc79",0,SetTo,0+64*10);
		SetLoc("CLoc79",8,SetTo,64+64*10);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		SetLoc("CLoc79",0,SetTo,0+64*11);
		SetLoc("CLoc79",8,SetTo,64+64*11);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
		SetLoc("CLoc79",0,SetTo,0+64*12);
		SetLoc("CLoc79",8,SetTo,64+64*12);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		SetLoc("CLoc79",0,SetTo,0+64*13);
		SetLoc("CLoc79",8,SetTo,64+64*13);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		SetLoc("CLoc79",0,SetTo,0+64*14);
		SetLoc("CLoc79",8,SetTo,64+64*14);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		SetLoc("CLoc79",0,SetTo,0+64*15);
		SetLoc("CLoc79",8,SetTo,64+64*15);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(3,Exactly,520);
	},
	actions = {	
		SetLoc("CLoc79",0,SetTo,0+64*16);
		SetLoc("CLoc79",8,SetTo,64+64*16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		SetLoc("CLoc79",0,SetTo,0+64*17);
		SetLoc("CLoc79",8,SetTo,64+64*17);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		SetLoc("CLoc79",0,SetTo,0+64*18);
		SetLoc("CLoc79",8,SetTo,64+64*18);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		SetLoc("CLoc79",0,SetTo,0+64*19);
		SetLoc("CLoc79",8,SetTo,64+64*19);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
		SetLoc("CLoc79",0,SetTo,0+64*20);
		SetLoc("CLoc79",8,SetTo,64+64*20);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		SetLoc("CLoc79",0,SetTo,0+64*21);
		SetLoc("CLoc79",8,SetTo,64+64*21);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		SetLoc("CLoc79",0,SetTo,0+64*22);
		SetLoc("CLoc79",8,SetTo,64+64*22);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		SetLoc("CLoc79",0,SetTo,0+64*23);
		SetLoc("CLoc79",8,SetTo,64+64*23);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
		
		SetLoc("CLoc79",0,SetTo,0+64*24);
		SetLoc("CLoc79",8,SetTo,64+64*24);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		SetLoc("CLoc79",0,SetTo,0+64*25);
		SetLoc("CLoc79",8,SetTo,64+64*25);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		SetLoc("CLoc79",0,SetTo,0+64*26);
		SetLoc("CLoc79",8,SetTo,64+64*26);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		SetLoc("CLoc79",0,SetTo,0+64*27);
		SetLoc("CLoc79",8,SetTo,64+64*27);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
		SetLoc("CLoc79",0,SetTo,0+64*28);
		SetLoc("CLoc79",8,SetTo,64+64*28);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		SetLoc("CLoc79",0,SetTo,0+64*29);
		SetLoc("CLoc79",8,SetTo,64+64*29);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		SetLoc("CLoc79",0,SetTo,0+64*30);
		SetLoc("CLoc79",8,SetTo,64+64*30);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		SetLoc("CLoc79",0,SetTo,0+64*31);
		SetLoc("CLoc79",8,SetTo,64+64*31);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
		
		GiveUnits(All,"Team Sniping Missile",P1,"Anywhere",P9);
		GiveUnits(All,"Team Sniping Missile",P2,"Anywhere",P9);
		GiveUnits(All,"Team Sniping Missile",P3,"Anywhere",P9);
		GiveUnits(All,"Team Sniping Missile",P4,"Anywhere",P9);
	},
}

Trigger { 
	players = {P0},
	conditions = {
		Void(3,Exactly,520);
	},
	actions = {
		SetLoc("CLoc79",4,SetTo,416);
		SetLoc("CLoc79",12,SetTo,768);
		SetLoc("CLoc79",0,SetTo,0+64*0);
		SetLoc("CLoc79",8,SetTo,64+64*0);
		SetLoc("CLoc235",4,SetTo,1984);
		SetLoc("CLoc235",12,SetTo,2048);
		SetLoc("CLoc235",0,SetTo,0+64*0);
		SetLoc("CLoc235",8,SetTo,64+64*0);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*1);
		SetLoc("CLoc79",8,SetTo,64+64*1);
		SetLoc("CLoc235",0,SetTo,0+64*1);
		SetLoc("CLoc235",8,SetTo,64+64*1);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*2);
		SetLoc("CLoc79",8,SetTo,64+64*2);
		SetLoc("CLoc235",0,SetTo,0+64*2);
		SetLoc("CLoc235",8,SetTo,64+64*2);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*3);
		SetLoc("CLoc79",8,SetTo,64+64*3);
		SetLoc("CLoc235",0,SetTo,0+64*3);
		SetLoc("CLoc235",8,SetTo,64+64*3);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*4);
		SetLoc("CLoc79",8,SetTo,64+64*4);
		SetLoc("CLoc235",0,SetTo,0+64*4);
		SetLoc("CLoc235",8,SetTo,64+64*4);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*5);
		SetLoc("CLoc79",8,SetTo,64+64*5);
		SetLoc("CLoc235",0,SetTo,0+64*5);
		SetLoc("CLoc235",8,SetTo,64+64*5);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*6);
		SetLoc("CLoc79",8,SetTo,64+64*6);
		SetLoc("CLoc235",0,SetTo,0+64*6);
		SetLoc("CLoc235",8,SetTo,64+64*6);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*7);
		SetLoc("CLoc79",8,SetTo,64+64*7);
		SetLoc("CLoc235",0,SetTo,0+64*7);
		SetLoc("CLoc235",8,SetTo,64+64*7);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
	},
}		
Trigger { 
	players = {P0},
	conditions = {
		Void(3,Exactly,520);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,0+64*8);
		SetLoc("CLoc79",8,SetTo,64+64*8);
		SetLoc("CLoc235",0,SetTo,0+64*8);
		SetLoc("CLoc235",8,SetTo,64+64*8);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*9);
		SetLoc("CLoc79",8,SetTo,64+64*9);
		SetLoc("CLoc235",0,SetTo,0+64*9);
		SetLoc("CLoc235",8,SetTo,64+64*9);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*10);
		SetLoc("CLoc79",8,SetTo,64+64*10);
		SetLoc("CLoc235",0,SetTo,0+64*10);
		SetLoc("CLoc235",8,SetTo,64+64*10);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*11);
		SetLoc("CLoc79",8,SetTo,64+64*11);
		SetLoc("CLoc235",0,SetTo,0+64*11);
		SetLoc("CLoc235",8,SetTo,64+64*11);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*12);
		SetLoc("CLoc79",8,SetTo,64+64*12);
		SetLoc("CLoc235",0,SetTo,0+64*12);
		SetLoc("CLoc235",8,SetTo,64+64*12);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*13);
		SetLoc("CLoc79",8,SetTo,64+64*13);
		SetLoc("CLoc235",0,SetTo,0+64*13);
		SetLoc("CLoc235",8,SetTo,64+64*13);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*14);
		SetLoc("CLoc79",8,SetTo,64+64*14);
		SetLoc("CLoc235",0,SetTo,0+64*14);
		SetLoc("CLoc235",8,SetTo,64+64*14);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*15);
		SetLoc("CLoc79",8,SetTo,64+64*15);
		SetLoc("CLoc235",0,SetTo,0+64*15);
		SetLoc("CLoc235",8,SetTo,64+64*15);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(3,Exactly,520);
	},
	actions = {	
		SetLoc("CLoc79",0,SetTo,0+64*16);
		SetLoc("CLoc79",8,SetTo,64+64*16);
		SetLoc("CLoc235",0,SetTo,0+64*16);
		SetLoc("CLoc235",8,SetTo,64+64*16);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*17);
		SetLoc("CLoc79",8,SetTo,64+64*17);
		SetLoc("CLoc235",0,SetTo,0+64*17);
		SetLoc("CLoc235",8,SetTo,64+64*17);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*18);
		SetLoc("CLoc79",8,SetTo,64+64*18);
		SetLoc("CLoc235",0,SetTo,0+64*18);
		SetLoc("CLoc235",8,SetTo,64+64*18);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*19);
		SetLoc("CLoc79",8,SetTo,64+64*19);
		SetLoc("CLoc235",0,SetTo,0+64*19);
		SetLoc("CLoc235",8,SetTo,64+64*19);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*20);
		SetLoc("CLoc79",8,SetTo,64+64*20);
		SetLoc("CLoc235",0,SetTo,0+64*20);
		SetLoc("CLoc235",8,SetTo,64+64*20);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*21);
		SetLoc("CLoc79",8,SetTo,64+64*21);
		SetLoc("CLoc235",0,SetTo,0+64*21);
		SetLoc("CLoc235",8,SetTo,64+64*21);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*22);
		SetLoc("CLoc79",8,SetTo,64+64*22);
		SetLoc("CLoc235",0,SetTo,0+64*22);
		SetLoc("CLoc235",8,SetTo,64+64*22);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*23);
		SetLoc("CLoc79",8,SetTo,64+64*23);
		SetLoc("CLoc235",0,SetTo,0+64*23);
		SetLoc("CLoc235",8,SetTo,64+64*23);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(3,Exactly,520);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,0+64*24);
		SetLoc("CLoc79",8,SetTo,64+64*24);
		SetLoc("CLoc235",0,SetTo,0+64*24);
		SetLoc("CLoc235",8,SetTo,64+64*24);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*25);
		SetLoc("CLoc79",8,SetTo,64+64*25);
		SetLoc("CLoc235",0,SetTo,0+64*25);
		SetLoc("CLoc235",8,SetTo,64+64*25);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*26);
		SetLoc("CLoc79",8,SetTo,64+64*26);
		SetLoc("CLoc235",0,SetTo,0+64*26);
		SetLoc("CLoc235",8,SetTo,64+64*26);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*27);
		SetLoc("CLoc79",8,SetTo,64+64*27);
		SetLoc("CLoc235",0,SetTo,0+64*27);
		SetLoc("CLoc235",8,SetTo,64+64*27);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*28);
		SetLoc("CLoc79",8,SetTo,64+64*28);
		SetLoc("CLoc235",0,SetTo,0+64*28);
		SetLoc("CLoc235",8,SetTo,64+64*28);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*29);
		SetLoc("CLoc79",8,SetTo,64+64*29);
		SetLoc("CLoc235",0,SetTo,0+64*29);
		SetLoc("CLoc235",8,SetTo,64+64*29);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*30);
		SetLoc("CLoc79",8,SetTo,64+64*30);
		SetLoc("CLoc235",0,SetTo,0+64*30);
		SetLoc("CLoc235",8,SetTo,64+64*30);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*31);
		SetLoc("CLoc79",8,SetTo,64+64*31);
		SetLoc("CLoc235",0,SetTo,0+64*31);
		SetLoc("CLoc235",8,SetTo,64+64*31);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
	},
}



Trigger { 
	players = {P0},
	conditions = {
		Void(3,Exactly,532);
	},
	actions = {
		SetLoc("CLoc79",4,SetTo,416);
		SetLoc("CLoc79",12,SetTo,768);
		SetLoc("CLoc79",0,SetTo,0+64*0);
		SetLoc("CLoc79",8,SetTo,64+64*0);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		SetLoc("CLoc79",0,SetTo,0+64*1);
		SetLoc("CLoc79",8,SetTo,64+64*1);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		SetLoc("CLoc79",0,SetTo,0+64*2);
		SetLoc("CLoc79",8,SetTo,64+64*2);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		SetLoc("CLoc79",0,SetTo,0+64*3);
		SetLoc("CLoc79",8,SetTo,64+64*3);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
		SetLoc("CLoc79",0,SetTo,0+64*4);
		SetLoc("CLoc79",8,SetTo,64+64*4);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		SetLoc("CLoc79",0,SetTo,0+64*5);
		SetLoc("CLoc79",8,SetTo,64+64*5);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		SetLoc("CLoc79",0,SetTo,0+64*6);
		SetLoc("CLoc79",8,SetTo,64+64*6);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		SetLoc("CLoc79",0,SetTo,0+64*7);
		SetLoc("CLoc79",8,SetTo,64+64*7);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
		
		SetLoc("CLoc79",0,SetTo,0+64*8);
		SetLoc("CLoc79",8,SetTo,64+64*8);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		SetLoc("CLoc79",0,SetTo,0+64*9);
		SetLoc("CLoc79",8,SetTo,64+64*9);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		SetLoc("CLoc79",0,SetTo,0+64*10);
		SetLoc("CLoc79",8,SetTo,64+64*10);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		SetLoc("CLoc79",0,SetTo,0+64*11);
		SetLoc("CLoc79",8,SetTo,64+64*11);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
		SetLoc("CLoc79",0,SetTo,0+64*12);
		SetLoc("CLoc79",8,SetTo,64+64*12);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		SetLoc("CLoc79",0,SetTo,0+64*13);
		SetLoc("CLoc79",8,SetTo,64+64*13);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		SetLoc("CLoc79",0,SetTo,0+64*14);
		SetLoc("CLoc79",8,SetTo,64+64*14);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		SetLoc("CLoc79",0,SetTo,0+64*15);
		SetLoc("CLoc79",8,SetTo,64+64*15);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(3,Exactly,532);
	},
	actions = {	
		SetLoc("CLoc79",0,SetTo,0+64*16);
		SetLoc("CLoc79",8,SetTo,64+64*16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		SetLoc("CLoc79",0,SetTo,0+64*17);
		SetLoc("CLoc79",8,SetTo,64+64*17);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		SetLoc("CLoc79",0,SetTo,0+64*18);
		SetLoc("CLoc79",8,SetTo,64+64*18);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		SetLoc("CLoc79",0,SetTo,0+64*19);
		SetLoc("CLoc79",8,SetTo,64+64*19);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
		SetLoc("CLoc79",0,SetTo,0+64*20);
		SetLoc("CLoc79",8,SetTo,64+64*20);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		SetLoc("CLoc79",0,SetTo,0+64*21);
		SetLoc("CLoc79",8,SetTo,64+64*21);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		SetLoc("CLoc79",0,SetTo,0+64*22);
		SetLoc("CLoc79",8,SetTo,64+64*22);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		SetLoc("CLoc79",0,SetTo,0+64*23);
		SetLoc("CLoc79",8,SetTo,64+64*23);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
		
		SetLoc("CLoc79",0,SetTo,0+64*24);
		SetLoc("CLoc79",8,SetTo,64+64*24);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		SetLoc("CLoc79",0,SetTo,0+64*25);
		SetLoc("CLoc79",8,SetTo,64+64*25);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		SetLoc("CLoc79",0,SetTo,0+64*26);
		SetLoc("CLoc79",8,SetTo,64+64*26);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		SetLoc("CLoc79",0,SetTo,0+64*27);
		SetLoc("CLoc79",8,SetTo,64+64*27);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
		SetLoc("CLoc79",0,SetTo,0+64*28);
		SetLoc("CLoc79",8,SetTo,64+64*28);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
		SetLoc("CLoc79",0,SetTo,0+64*29);
		SetLoc("CLoc79",8,SetTo,64+64*29);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
		SetLoc("CLoc79",0,SetTo,0+64*30);
		SetLoc("CLoc79",8,SetTo,64+64*30);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
		SetLoc("CLoc79",0,SetTo,0+64*31);
		SetLoc("CLoc79",8,SetTo,64+64*31);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
		
		GiveUnits(All,"Team Sniping Missile",P1,"Anywhere",P9);
		GiveUnits(All,"Team Sniping Missile",P2,"Anywhere",P9);
		GiveUnits(All,"Team Sniping Missile",P3,"Anywhere",P9);
		GiveUnits(All,"Team Sniping Missile",P4,"Anywhere",P9);
	},
}

Trigger { 
	players = {P0},
	conditions = {
		Void(3,Exactly,532);
	},
	actions = {
		SetLoc("CLoc79",4,SetTo,416);
		SetLoc("CLoc79",12,SetTo,768);
		SetLoc("CLoc79",0,SetTo,0+64*0);
		SetLoc("CLoc79",8,SetTo,64+64*0);
		SetLoc("CLoc235",4,SetTo,1984);
		SetLoc("CLoc235",12,SetTo,2048);
		SetLoc("CLoc235",0,SetTo,0+64*0);
		SetLoc("CLoc235",8,SetTo,64+64*0);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*1);
		SetLoc("CLoc79",8,SetTo,64+64*1);
		SetLoc("CLoc235",0,SetTo,0+64*1);
		SetLoc("CLoc235",8,SetTo,64+64*1);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*2);
		SetLoc("CLoc79",8,SetTo,64+64*2);
		SetLoc("CLoc235",0,SetTo,0+64*2);
		SetLoc("CLoc235",8,SetTo,64+64*2);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*3);
		SetLoc("CLoc79",8,SetTo,64+64*3);
		SetLoc("CLoc235",0,SetTo,0+64*3);
		SetLoc("CLoc235",8,SetTo,64+64*3);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*4);
		SetLoc("CLoc79",8,SetTo,64+64*4);
		SetLoc("CLoc235",0,SetTo,0+64*4);
		SetLoc("CLoc235",8,SetTo,64+64*4);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*5);
		SetLoc("CLoc79",8,SetTo,64+64*5);
		SetLoc("CLoc235",0,SetTo,0+64*5);
		SetLoc("CLoc235",8,SetTo,64+64*5);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*6);
		SetLoc("CLoc79",8,SetTo,64+64*6);
		SetLoc("CLoc235",0,SetTo,0+64*6);
		SetLoc("CLoc235",8,SetTo,64+64*6);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*7);
		SetLoc("CLoc79",8,SetTo,64+64*7);
		SetLoc("CLoc235",0,SetTo,0+64*7);
		SetLoc("CLoc235",8,SetTo,64+64*7);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
	},
}		
Trigger { 
	players = {P0},
	conditions = {
		Void(3,Exactly,532);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,0+64*8);
		SetLoc("CLoc79",8,SetTo,64+64*8);
		SetLoc("CLoc235",0,SetTo,0+64*8);
		SetLoc("CLoc235",8,SetTo,64+64*8);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*9);
		SetLoc("CLoc79",8,SetTo,64+64*9);
		SetLoc("CLoc235",0,SetTo,0+64*9);
		SetLoc("CLoc235",8,SetTo,64+64*9);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*10);
		SetLoc("CLoc79",8,SetTo,64+64*10);
		SetLoc("CLoc235",0,SetTo,0+64*10);
		SetLoc("CLoc235",8,SetTo,64+64*10);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*11);
		SetLoc("CLoc79",8,SetTo,64+64*11);
		SetLoc("CLoc235",0,SetTo,0+64*11);
		SetLoc("CLoc235",8,SetTo,64+64*11);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*12);
		SetLoc("CLoc79",8,SetTo,64+64*12);
		SetLoc("CLoc235",0,SetTo,0+64*12);
		SetLoc("CLoc235",8,SetTo,64+64*12);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*13);
		SetLoc("CLoc79",8,SetTo,64+64*13);
		SetLoc("CLoc235",0,SetTo,0+64*13);
		SetLoc("CLoc235",8,SetTo,64+64*13);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*14);
		SetLoc("CLoc79",8,SetTo,64+64*14);
		SetLoc("CLoc235",0,SetTo,0+64*14);
		SetLoc("CLoc235",8,SetTo,64+64*14);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*15);
		SetLoc("CLoc79",8,SetTo,64+64*15);
		SetLoc("CLoc235",0,SetTo,0+64*15);
		SetLoc("CLoc235",8,SetTo,64+64*15);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(3,Exactly,532);
	},
	actions = {	
		SetLoc("CLoc79",0,SetTo,0+64*16);
		SetLoc("CLoc79",8,SetTo,64+64*16);
		SetLoc("CLoc235",0,SetTo,0+64*16);
		SetLoc("CLoc235",8,SetTo,64+64*16);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*17);
		SetLoc("CLoc79",8,SetTo,64+64*17);
		SetLoc("CLoc235",0,SetTo,0+64*17);
		SetLoc("CLoc235",8,SetTo,64+64*17);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*18);
		SetLoc("CLoc79",8,SetTo,64+64*18);
		SetLoc("CLoc235",0,SetTo,0+64*18);
		SetLoc("CLoc235",8,SetTo,64+64*18);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*19);
		SetLoc("CLoc79",8,SetTo,64+64*19);
		SetLoc("CLoc235",0,SetTo,0+64*19);
		SetLoc("CLoc235",8,SetTo,64+64*19);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*20);
		SetLoc("CLoc79",8,SetTo,64+64*20);
		SetLoc("CLoc235",0,SetTo,0+64*20);
		SetLoc("CLoc235",8,SetTo,64+64*20);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*21);
		SetLoc("CLoc79",8,SetTo,64+64*21);
		SetLoc("CLoc235",0,SetTo,0+64*21);
		SetLoc("CLoc235",8,SetTo,64+64*21);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*22);
		SetLoc("CLoc79",8,SetTo,64+64*22);
		SetLoc("CLoc235",0,SetTo,0+64*22);
		SetLoc("CLoc235",8,SetTo,64+64*22);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*23);
		SetLoc("CLoc79",8,SetTo,64+64*23);
		SetLoc("CLoc235",0,SetTo,0+64*23);
		SetLoc("CLoc235",8,SetTo,64+64*23);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(3,Exactly,532);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,0+64*24);
		SetLoc("CLoc79",8,SetTo,64+64*24);
		SetLoc("CLoc235",0,SetTo,0+64*24);
		SetLoc("CLoc235",8,SetTo,64+64*24);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*25);
		SetLoc("CLoc79",8,SetTo,64+64*25);
		SetLoc("CLoc235",0,SetTo,0+64*25);
		SetLoc("CLoc235",8,SetTo,64+64*25);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*26);
		SetLoc("CLoc79",8,SetTo,64+64*26);
		SetLoc("CLoc235",0,SetTo,0+64*26);
		SetLoc("CLoc235",8,SetTo,64+64*26);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*27);
		SetLoc("CLoc79",8,SetTo,64+64*27);
		SetLoc("CLoc235",0,SetTo,0+64*27);
		SetLoc("CLoc235",8,SetTo,64+64*27);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*28);
		SetLoc("CLoc79",8,SetTo,64+64*28);
		SetLoc("CLoc235",0,SetTo,0+64*28);
		SetLoc("CLoc235",8,SetTo,64+64*28);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*29);
		SetLoc("CLoc79",8,SetTo,64+64*29);
		SetLoc("CLoc235",0,SetTo,0+64*29);
		SetLoc("CLoc235",8,SetTo,64+64*29);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*30);
		SetLoc("CLoc79",8,SetTo,64+64*30);
		SetLoc("CLoc235",0,SetTo,0+64*30);
		SetLoc("CLoc235",8,SetTo,64+64*30);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*31);
		SetLoc("CLoc79",8,SetTo,64+64*31);
		SetLoc("CLoc235",0,SetTo,0+64*31);
		SetLoc("CLoc235",8,SetTo,64+64*31);
		Order("Team Sniping Missile",P9,"CLoc79",Move,"CLoc235");
	},
}

Trigger { 
	players = {P0},
	conditions = {
		Void(374,Exactly,4);
		Void(3,AtLeast,532);
		Void(3,AtMost,675);
	},
	actions = {
		SetVoid(374,SetTo,0);
		PreserveTrigger();
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(374,Exactly,3);
		Void(3,AtLeast,532);
		Void(3,AtMost,675);
	},
	actions = {
		SetVoid(374,SetTo,4);
		MoveLocation("Cobalt2", "Team Sniping Missile", P9, "Cobalt");
		CreateUnit(1, "Flash Missile", "Cobalt2", P4);
		KillUnit("Flash Missile",P4);
		PreserveTrigger();
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(374,Exactly,2);
		Void(3,AtLeast,532);
		Void(3,AtMost,675);
	},
	actions = {
		SetVoid(374,SetTo,3);
		MoveLocation("Cobalt2", "Team Sniping Missile", P9, "Cobalt");
		CreateUnit(1, "Flash Missile", "Cobalt2", P3);
		KillUnit("Flash Missile",P3);
		PreserveTrigger();
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(374,Exactly,1);
		Void(3,AtLeast,532);
		Void(3,AtMost,675);
	},
	actions = {
		SetVoid(374,SetTo,2);
		MoveLocation("Cobalt2", "Team Sniping Missile", P9, "Cobalt");
		CreateUnit(1, "Flash Missile", "Cobalt2", P2);
		KillUnit("Flash Missile",P2);
		PreserveTrigger();
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(374,Exactly,0);
		Void(3,AtLeast,532);
		Void(3,AtMost,675);
	},
	actions = {
		SetVoid(374,SetTo,1);
		MoveLocation("Cobalt2", "Team Sniping Missile", P9, "Cobalt");
		CreateUnit(1, "Flash Missile", "Cobalt2", P1);
		KillUnit("Flash Missile",P1);
		PreserveTrigger();
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(3,AtLeast,675);
	},
	actions = {
		PreserveTrigger();
		SetVoid(3,SetTo,0);
		SetVoid(370,SetTo,1);
		SetVoid(44,SetTo,1280);
		KillUnit("Team Sniping Missile",P9);
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,40);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『죄인들에게...... 멸망의 빛을.』", 4);
		SetCp(1);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『죄인들에게...... 멸망의 빛을.』", 4);
		SetCp(2);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『죄인들에게...... 멸망의 빛을.』", 4);
		SetCp(3);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『죄인들에게...... 멸망의 빛을.』", 4);
		SetCp(4);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『죄인들에게...... 멸망의 빛을.』", 4);
		SetCp(5);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『죄인들에게...... 멸망의 빛을.』", 4);
		SetCp(6);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『죄인들에게...... 멸망의 빛을.』", 4);
		SetCp(7);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『죄인들에게...... 멸망의 빛을.』", 4);
		SetCp(0);
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,160);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『별이여 모여라.』", 4);
		SetCp(1);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『별이여 모여라.』", 4);
		SetCp(2);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『별이여 모여라.』", 4);
		SetCp(3);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『별이여 모여라.』", 4);
		SetCp(4);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『별이여 모여라.』", 4);
		SetCp(5);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『별이여 모여라.』", 4);
		SetCp(6);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『별이여 모여라.』", 4);
		SetCp(7);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『별이여 모여라.』", 4);
		SetCp(0);
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,200);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(1);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(2);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(3);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(4);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(5);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(6);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(7);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(0);
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,210);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(1);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(2);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(3);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(4);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(5);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(6);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(7);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(0);
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,220);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(1);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(2);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(3);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(4);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(5);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(6);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(7);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(0);
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,230);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(1);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(2);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(3);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(4);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(5);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(6);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(7);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(0);
	},
}
for i = 0, 7 do
	CIf(P0,{TTOR({Void(3,Exactly,200),Void(3,Exactly,210),Void(3,Exactly,220),Void(3,Exactly,230)}),Deaths(i,Exactly,1,"!Exist")})
		Print_13(P0,i,"\x18뉴클리어 공격이 감지되었습니다.")
	CIfEnd()
end
Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,200);
	},
	actions = {
		CreateUnit(1,"Nuclear Missile","Nuke1",P1);
		GiveUnits(All,"Nuclear Missile",P1,"Anywhere",P9);
		SetLoc("CLoc79",4,SetTo,0);
		SetLoc("CLoc79",12,SetTo,64);
		SetLoc("CLoc79",0,SetTo,1824);
		SetLoc("CLoc79",8,SetTo,1920);
		Order("Nuclear Missile",P9,"Anywhere",Move,"CLoc79");
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,210);
	},
	actions = {
		CreateUnit(1,"Nuclear Missile","Nuke1",P2);
		GiveUnits(All,"Nuclear Missile",P2,"Anywhere",P9);
		SetLoc("CLoc79",4,SetTo,0);
		SetLoc("CLoc79",12,SetTo,64);
		SetLoc("CLoc79",0,SetTo,1824);
		SetLoc("CLoc79",8,SetTo,1920);
		Order("Nuclear Missile",P9,"Anywhere",Move,"CLoc79");
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,220);
	},
	actions = {
		CreateUnit(1,"Nuclear Missile","Nuke1",P3);
		GiveUnits(All,"Nuclear Missile",P3,"Anywhere",P9);
		SetLoc("CLoc79",4,SetTo,0);
		SetLoc("CLoc79",12,SetTo,64);
		SetLoc("CLoc79",0,SetTo,1824);
		SetLoc("CLoc79",8,SetTo,1920);
		Order("Nuclear Missile",P9,"Anywhere",Move,"CLoc79");
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,230);
	},
	actions = {
		CreateUnit(1,"Nuclear Missile","Nuke1",P4);
		GiveUnits(All,"Nuclear Missile",P4,"Anywhere",P9);
		SetLoc("CLoc79",4,SetTo,0);
		SetLoc("CLoc79",12,SetTo,64);
		SetLoc("CLoc79",0,SetTo,1824);
		SetLoc("CLoc79",8,SetTo,1920);
		Order("Nuclear Missile",P9,"Anywhere",Move,"CLoc79");
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(3,AtLeast,200);
		Void(3,AtMost,400);
	},
	actions = {
		RemoveUnitAt(All,"Nuclear Missile","Team1",P9);
		PreserveTrigger();
	},
}


Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,280);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『모든것을 꿰뚫는 빛이 되어라.』", 4);
		SetCp(1);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『모든것을 꿰뚫는 빛이 되어라.』", 4);
		SetCp(2);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『모든것을 꿰뚫는 빛이 되어라.』", 4);
		SetCp(3);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『모든것을 꿰뚫는 빛이 되어라.』", 4);
		SetCp(4);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『모든것을 꿰뚫는 빛이 되어라.』", 4);
		SetCp(5);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『모든것을 꿰뚫는 빛이 되어라.』", 4);
		SetCp(6);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『모든것을 꿰뚫는 빛이 되어라.』", 4);
		SetCp(7);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『모든것을 꿰뚫는 빛이 되어라.』", 4);
		SetCp(0);
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,400);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『꿰뚫어라. 섬광.』\r\n", 4);
		SetCp(1);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『꿰뚫어라. 섬광.』\r\n", 4);
		SetCp(2);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『꿰뚫어라. 섬광.』\r\n", 4);
		SetCp(3);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『꿰뚫어라. 섬광.』\r\n", 4);
		SetCp(4);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『꿰뚫어라. 섬광.』\r\n", 4);
		SetCp(5);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『꿰뚫어라. 섬광.』\r\n", 4);
		SetCp(6);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『꿰뚫어라. 섬광.』\r\n", 4);
		SetCp(7);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『꿰뚫어라. 섬광.』\r\n", 4);
		SetCp(0);
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,520);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("staredit\\wav\\SB.wav");
		DisplayText("\x04Ultimate Builder\r\n『스타라이트... 브레이커. (StarLight Breaker)』", 4);
		SetCp(1);
		PlayWAV("staredit\\wav\\SB.wav");
		DisplayText("\x04Ultimate Builder\r\n『스타라이트... 브레이커. (StarLight Breaker)』", 4);
		SetCp(2);
		PlayWAV("staredit\\wav\\SB.wav");
		DisplayText("\x04Ultimate Builder\r\n『스타라이트... 브레이커. (StarLight Breaker)』", 4);
		SetCp(3);
		PlayWAV("staredit\\wav\\SB.wav");
		DisplayText("\x04Ultimate Builder\r\n『스타라이트... 브레이커. (StarLight Breaker)』", 4);
		SetCp(4);
		PlayWAV("staredit\\wav\\SB.wav");
		DisplayText("\x04Ultimate Builder\r\n『스타라이트... 브레이커. (StarLight Breaker)』", 4);
		SetCp(5);
		PlayWAV("staredit\\wav\\SB.wav");
		DisplayText("\x04Ultimate Builder\r\n『스타라이트... 브레이커. (StarLight Breaker)』", 4);
		SetCp(6);
		PlayWAV("staredit\\wav\\SB.wav");
		DisplayText("\x04Ultimate Builder\r\n『스타라이트... 브레이커. (StarLight Breaker)』", 4);
		SetCp(7);
		PlayWAV("staredit\\wav\\SB.wav");
		DisplayText("\x04Ultimate Builder\r\n『스타라이트... 브레이커. (StarLight Breaker)』", 4);
		SetCp(0);
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,530);
	},
	actions = {
		CreateUnit(1,"Nuclear Missile","Cntr",P1);
		GiveUnits(All,"Nuclear Missile",P1,"Anywhere",P9);
		Order("Nuclear Missile",P9,"Anywhere",Move,"2팀필드");
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,540);
	},
	actions = {
		CreateUnit(1,"Nuclear Missile","Cntr",P2);
		GiveUnits(All,"Nuclear Missile",P2,"Anywhere",P9);
		Order("Nuclear Missile",P9,"Anywhere",Move,"2팀필드");
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,550);
	},
	actions = {
		CreateUnit(1,"Nuclear Missile","Cntr",P3);
		GiveUnits(All,"Nuclear Missile",P3,"Anywhere",P9);
		Order("Nuclear Missile",P9,"Anywhere",Move,"2팀필드");
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,560);
	},
	actions = {
		CreateUnit(1,"Nuclear Missile","Cntr",P4);
		GiveUnits(All,"Nuclear Missile",P4,"Anywhere",P9);
		Order("Nuclear Missile",P9,"Anywhere",Move,"2팀필드");
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(3,AtLeast,530);
		Void(3,AtMost,675);
	},
	actions = {
		SetLoc("CLoc79",4,SetTo,1456);
		SetLoc("CLoc79",12,SetTo,2048);
		SetLoc("CLoc79",0,SetTo,0);
		SetLoc("CLoc79",8,SetTo,2048);
		KillUnitAt(All,"Nuclear Missile","CLoc79",P9);
		PreserveTrigger();
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,615);
	},
	actions = {
		SetMemoryX(0x666458, SetTo, 318,0xFFFF);
		CreateUnit(1,33,"2팀필드",P1);
		RemoveUnit(33,P1);
		SetMemoryX(0x666458, SetTo, 546,0xFFFF);
		SetCp(0);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(1);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(2);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(3);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(4);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(5);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(6);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(7);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(0);
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,625);
	},
	actions = {
		SetMemoryX(0x666458, SetTo, 318,0xFFFF);
		CreateUnit(1,33,"2팀필드",P2);
		RemoveUnit(33,P2);
		SetMemoryX(0x666458, SetTo, 546,0xFFFF);
		SetCp(0);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(1);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(2);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(3);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(4);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(5);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(6);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(7);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(0);
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,635);
	},
	actions = {
		SetMemoryX(0x666458, SetTo, 318,0xFFFF);
		CreateUnit(1,33,"2팀필드",P3);
		RemoveUnit(33,P3);
		SetMemoryX(0x666458, SetTo, 546,0xFFFF);
		SetCp(0);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(1);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(2);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(3);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(4);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(5);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(6);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(7);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(0);
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(3,Exactly,645);
	},
	actions = {
		SetMemoryX(0x666458, SetTo, 318,0xFFFF);
		CreateUnit(1,33,"2팀필드",P4);
		RemoveUnit(33,P4);
		SetMemoryX(0x666458, SetTo, 546,0xFFFF);
		SetCp(0);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(1);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(2);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(3);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(4);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(5);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(6);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(7);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(0);
	},
}

Trigger { -- 코발트 2팀
	players = {P0},
	conditions = {
		Void(4,AtLeast,1);
	},
	actions = {
		SetVoid(4,Add,1);
		PreserveTrigger();
	},
}

Trigger { 
	players = {P0},
	conditions = {
		Void(371,Exactly,0);
		Void(365,Exactly,0);
		Void(177+4,Exactly,0);
		Void(177+5,Exactly,0);
		Void(177+6,Exactly,0);
		Void(177+7,Exactly,0);
		Bring(Force2, AtLeast, 3, "Creep Creater [U]","전체필드");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭1");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭2");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭3");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭4");
	},
	actions = {
		SetCp(0);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x19Player Team2이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(1);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x19Player Team2이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(2);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x19Player Team2이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(3);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x19Player Team2이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(4);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x19Player Team2이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(5);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x19Player Team2이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(6);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x19Player Team2이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(7);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x19Player Team2이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(0);
		SetVoid(4,SetTo,1);
		
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(371,Exactly,0);
		Void(365,AtLeast,24*120);
		Void(177+4,Exactly,0);
		Void(177+5,Exactly,0);
		Void(177+6,Exactly,0);
		Void(177+7,Exactly,0);
		Bring(Force2, AtLeast, 3, "Creep Creater [U]","전체필드");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭1");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭2");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭3");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭4");
	},
	actions = {
		SetCp(0);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x19Player Team2이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(1);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x19Player Team2이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(2);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x19Player Team2이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(3);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x19Player Team2이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(4);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x19Player Team2이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(5);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x19Player Team2이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(6);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x19Player Team2이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(7);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\x19Player Team2이 코발트(핵 미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면\r\n\"4개의 꼭지점 파일런 3개의 해처리\" 입니다", 4);
		SetCp(0);
		SetVoid(4,SetTo,1);
		
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(365,AtLeast,1);
		Bring(Force2, AtLeast, 3, "Creep Creater [U]","전체필드");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭1");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭2");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭3");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭4");
	},
	actions = {
		SetCp(4);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16포세이돈미사일 사용도중에 사용할수 없습니다.", 4);
		SetCp(5);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16포세이돈미사일 사용도중에 사용할수 없습니다.", 4);
		SetCp(6);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16포세이돈미사일 사용도중에 사용할수 없습니다.", 4);
		SetCp(7);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16포세이돈미사일 사용도중에 사용할수 없습니다.", 4);
		SetCp(0);
	},
}
for j = 4, 7 do
Trigger {
	players = {P0},
	conditions = {
		Void(177+j,AtLeast,1);
		Bring(Force2, AtLeast, 3, "Creep Creater [U]","전체필드");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭1");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭2");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭3");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭4");
	},
	actions = {
		SetCp(4);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16하이퍼 노바 사용도중에 사용할수 없습니다.", 4);
		SetCp(5);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16하이퍼 노바 사용도중에 사용할수 없습니다.", 4);
		SetCp(6);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16하이퍼 노바 사용도중에 사용할수 없습니다.", 4);
		SetCp(7);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16하이퍼 노바 사용도중에 사용할수 없습니다.", 4);
		SetCp(0);
	},
}
end
Trigger {
	players = {P0},
	conditions = {
		Void(371,Exactly,1);
		Bring(Force2, AtLeast, 3, "Creep Creater [U]","전체필드");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭1");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭2");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭3");
		Bring(Force2, AtLeast, 1, "Power [N]", "2꼭4");
	},
	actions = {
		SetCp(4);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x19코발트(핵 미사일)은\r\n\x16한맵에 한번만 제작이 가능합니다", 4);
		SetCp(5);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x19코발트(핵 미사일)은\r\n\x16한맵에 한번만 제작이 가능합니다", 4);
		SetCp(6);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x19코발트(핵 미사일)은\r\n\x16한맵에 한번만 제작이 가능합니다", 4);
		SetCp(7);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x19코발트(핵 미사일)은\r\n\x16한맵에 한번만 제작이 가능합니다", 4);
		SetCp(0);
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(373,Exactly,8);
		Void(4,AtLeast,1);
		Void(4,AtMost,490);
	},
	actions = {
		SetVoid(373,SetTo,0);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(373,Exactly,7);
		Void(4,AtLeast,1);
		Void(4,AtMost,490);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,944);
		SetLoc("CLoc79",4,SetTo,496+864-16);
		SetLoc("CLoc79",8,SetTo,976);
		SetLoc("CLoc79",12,SetTo,528+864-16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
		GiveUnits(All,"Team Sniping Missile",P8,"Anywhere",P10);
		CreateUnit(1, "Flash Missile", "CLoc79", P8);
		KillUnit("Flash Missile",P8);
		SetVoid(373,SetTo,8);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(373,Exactly,6);
		Void(4,AtLeast,1);
		Void(4,AtMost,490);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,912);
		SetLoc("CLoc79",4,SetTo,560+864-16);
		SetLoc("CLoc79",8,SetTo,944);
		SetLoc("CLoc79",12,SetTo,592+864-16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		GiveUnits(All,"Team Sniping Missile",P7,"Anywhere",P10);
		CreateUnit(1, "Flash Missile", "CLoc79", P7);
		KillUnit("Flash Missile",P7);
		SetVoid(373,SetTo,7);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(373,Exactly,5);
		Void(4,AtLeast,1);
		Void(4,AtMost,490);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,944);
		SetLoc("CLoc79",4,SetTo,624+864-16);
		SetLoc("CLoc79",8,SetTo,976);
		SetLoc("CLoc79",12,SetTo,656+864-16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		GiveUnits(All,"Team Sniping Missile",P6,"Anywhere",P10);
		CreateUnit(1, "Flash Missile", "CLoc79", P6);
		KillUnit("Flash Missile",P6);
		SetVoid(373,SetTo,6);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(373,Exactly,4);
		Void(4,AtLeast,1);
		Void(4,AtMost,490);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,1008);
		SetLoc("CLoc79",4,SetTo,656+864-16);
		SetLoc("CLoc79",8,SetTo,1040);
		SetLoc("CLoc79",12,SetTo,688+864-16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		GiveUnits(All,"Team Sniping Missile",P5,"Anywhere",P10);
		CreateUnit(1, "Flash Missile", "CLoc79", P5);
		KillUnit("Flash Missile",P5);
		SetVoid(373,SetTo,5);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(373,Exactly,3);
		Void(4,AtLeast,1);
		Void(4,AtMost,490);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,1072);
		SetLoc("CLoc79",4,SetTo,624+864-16);
		SetLoc("CLoc79",8,SetTo,1104);
		SetLoc("CLoc79",12,SetTo,656+864-16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
		GiveUnits(All,"Team Sniping Missile",P8,"Anywhere",P10);
		CreateUnit(1, "Flash Missile", "CLoc79", P8);
		KillUnit("Flash Missile",P8);
		SetVoid(373,SetTo,4);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(373,Exactly,2);
		Void(4,AtLeast,1);
		Void(4,AtMost,490);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,1104);
		SetLoc("CLoc79",4,SetTo,560+864-16);
		SetLoc("CLoc79",8,SetTo,1136);
		SetLoc("CLoc79",12,SetTo,592+864-16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		GiveUnits(All,"Team Sniping Missile",P7,"Anywhere",P10);
		CreateUnit(1, "Flash Missile", "CLoc79", P7);
		KillUnit("Flash Missile",P7);
		SetVoid(373,SetTo,3);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(373,Exactly,1);
		Void(4,AtLeast,1);
		Void(4,AtMost,490);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,1072);
		SetLoc("CLoc79",4,SetTo,496+864-16);
		SetLoc("CLoc79",8,SetTo,1104);
		SetLoc("CLoc79",12,SetTo,528+864-16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		GiveUnits(All,"Team Sniping Missile",P6,"Anywhere",P10);
		CreateUnit(1, "Flash Missile", "CLoc79", P6);
		KillUnit("Flash Missile",P6);
		SetVoid(373,SetTo,2);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(373,Exactly,0);
		Void(4,AtLeast,1);
		Void(4,AtMost,490);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,1008);
		SetLoc("CLoc79",4,SetTo,464+864-16);
		SetLoc("CLoc79",8,SetTo,1040);
		SetLoc("CLoc79",12,SetTo,496+864-16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		GiveUnits(All,"Team Sniping Missile",P5,"Anywhere",P10);
		CreateUnit(1, "Flash Missile", "CLoc79", P5);
		KillUnit("Flash Missile",P5);
		SetVoid(373,SetTo,1);
		PreserveTrigger();
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(4,AtLeast,1);
		Void(4,AtMost,519);
	},
	actions = {
		Order("Team Sniping Missile", P10, "2-5", Move, "2팀중앙");
		Order("Team Sniping Missile", P10, "2-6", Move, "2팀중앙");
		Order("Team Sniping Missile", P10, "2-7", Move, "2팀중앙");
		Order("Team Sniping Missile", P10, "2-8", Move, "2팀중앙");
		Order("Team Sniping Missile", P10, "2-9", Move, "2팀중앙");
		PreserveTrigger();
	},
}


Trigger { 
	players = {P0},
	conditions = {
		Void(375,Exactly,4);
		Void(4,AtLeast,460);
		Void(4,AtMost,519);
	},
	actions = {
		SetVoid(375,SetTo,0);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(375,Exactly,3);
		Void(4,AtLeast,460);
		Void(4,AtMost,519);
	},
	actions = {
		SetVoid(375,SetTo,4);
		CreateUnit(1, "Team Sniping Missile", "2-4", P8);
		CreateUnit(1, "Team Sniping Missile", "2-10", P8);
		GiveUnits(All,"Team Sniping Missile",P8,"Anywhere",P10);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(375,Exactly,2);
		Void(4,AtLeast,460);
		Void(4,AtMost,519);
	},
	actions = {
		SetVoid(375,SetTo,3);
		CreateUnit(1, "Team Sniping Missile", "2-4", P7);
		CreateUnit(1, "Team Sniping Missile", "2-10", P7);
		GiveUnits(All,"Team Sniping Missile",P7,"Anywhere",P10);
		PreserveTrigger();
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(375,Exactly,1);
		Void(4,AtLeast,460);
		Void(4,AtMost,519);
	},
	actions = {
		SetVoid(375,SetTo,2);
		CreateUnit(1, "Team Sniping Missile", "2-4", P6);
		CreateUnit(1, "Team Sniping Missile", "2-10", P6);
		GiveUnits(All,"Team Sniping Missile",P6,"Anywhere",P10);
		PreserveTrigger();
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(375,Exactly,0);
		Void(4,AtLeast,460);
		Void(4,AtMost,519);
	},
	actions = {
		SetVoid(375,SetTo,1);
		CreateUnit(1, "Team Sniping Missile", "2-4", P5);
		CreateUnit(1, "Team Sniping Missile", "2-10", P5);
		GiveUnits(All,"Team Sniping Missile",P5,"Anywhere",P10);
		PreserveTrigger();
	},
}

Trigger { 
	players = {P0},
	conditions = {
		Void(4,AtLeast,460);
		Void(4,AtMost,519);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,0);
		SetLoc("CLoc79",4,SetTo,1280);
		SetLoc("CLoc79",8,SetTo,64);
		SetLoc("CLoc79",12,SetTo,1632);
		Order("Team Sniping Missile", P10, "2-4", Move, "CLoc79");
		SetLoc("CLoc79",0,SetTo,1984);
		SetLoc("CLoc79",4,SetTo,1280);
		SetLoc("CLoc79",8,SetTo,2048);
		SetLoc("CLoc79",12,SetTo,1632);
		Order("Team Sniping Missile", P10, "2-10", Move, "CLoc79");
		PreserveTrigger();
	},
}


Trigger { 
	players = {P0},
	conditions = {
		Void(4,Exactly,520);
	},
	actions = {
		RemoveUnit("Team Sniping Missile",P10);
		SetLoc("CLoc79",4,SetTo,1280);
		SetLoc("CLoc79",12,SetTo,1632);
		SetLoc("CLoc79",0,SetTo,0+64*0);
		SetLoc("CLoc79",8,SetTo,64+64*0);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		SetLoc("CLoc79",0,SetTo,0+64*1);
		SetLoc("CLoc79",8,SetTo,64+64*1);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		SetLoc("CLoc79",0,SetTo,0+64*2);
		SetLoc("CLoc79",8,SetTo,64+64*2);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		SetLoc("CLoc79",0,SetTo,0+64*3);
		SetLoc("CLoc79",8,SetTo,64+64*3);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
		SetLoc("CLoc79",0,SetTo,0+64*4);
		SetLoc("CLoc79",8,SetTo,64+64*4);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		SetLoc("CLoc79",0,SetTo,0+64*5);
		SetLoc("CLoc79",8,SetTo,64+64*5);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		SetLoc("CLoc79",0,SetTo,0+64*6);
		SetLoc("CLoc79",8,SetTo,64+64*6);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		SetLoc("CLoc79",0,SetTo,0+64*7);
		SetLoc("CLoc79",8,SetTo,64+64*7);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
		
		SetLoc("CLoc79",0,SetTo,0+64*8);
		SetLoc("CLoc79",8,SetTo,64+64*8);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		SetLoc("CLoc79",0,SetTo,0+64*9);
		SetLoc("CLoc79",8,SetTo,64+64*9);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		SetLoc("CLoc79",0,SetTo,0+64*10);
		SetLoc("CLoc79",8,SetTo,64+64*10);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		SetLoc("CLoc79",0,SetTo,0+64*11);
		SetLoc("CLoc79",8,SetTo,64+64*11);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
		SetLoc("CLoc79",0,SetTo,0+64*12);
		SetLoc("CLoc79",8,SetTo,64+64*12);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		SetLoc("CLoc79",0,SetTo,0+64*13);
		SetLoc("CLoc79",8,SetTo,64+64*13);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		SetLoc("CLoc79",0,SetTo,0+64*14);
		SetLoc("CLoc79",8,SetTo,64+64*14);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		SetLoc("CLoc79",0,SetTo,0+64*15);
		SetLoc("CLoc79",8,SetTo,64+64*15);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(4,Exactly,520);
	},
	actions = {	
		SetLoc("CLoc79",0,SetTo,0+64*16);
		SetLoc("CLoc79",8,SetTo,64+64*16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		SetLoc("CLoc79",0,SetTo,0+64*17);
		SetLoc("CLoc79",8,SetTo,64+64*17);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		SetLoc("CLoc79",0,SetTo,0+64*18);
		SetLoc("CLoc79",8,SetTo,64+64*18);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		SetLoc("CLoc79",0,SetTo,0+64*19);
		SetLoc("CLoc79",8,SetTo,64+64*19);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
		SetLoc("CLoc79",0,SetTo,0+64*20);
		SetLoc("CLoc79",8,SetTo,64+64*20);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		SetLoc("CLoc79",0,SetTo,0+64*21);
		SetLoc("CLoc79",8,SetTo,64+64*21);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		SetLoc("CLoc79",0,SetTo,0+64*22);
		SetLoc("CLoc79",8,SetTo,64+64*22);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		SetLoc("CLoc79",0,SetTo,0+64*23);
		SetLoc("CLoc79",8,SetTo,64+64*23);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
		
		SetLoc("CLoc79",0,SetTo,0+64*24);
		SetLoc("CLoc79",8,SetTo,64+64*24);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		SetLoc("CLoc79",0,SetTo,0+64*25);
		SetLoc("CLoc79",8,SetTo,64+64*25);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		SetLoc("CLoc79",0,SetTo,0+64*26);
		SetLoc("CLoc79",8,SetTo,64+64*26);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		SetLoc("CLoc79",0,SetTo,0+64*27);
		SetLoc("CLoc79",8,SetTo,64+64*27);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
		SetLoc("CLoc79",0,SetTo,0+64*28);
		SetLoc("CLoc79",8,SetTo,64+64*28);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		SetLoc("CLoc79",0,SetTo,0+64*29);
		SetLoc("CLoc79",8,SetTo,64+64*29);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		SetLoc("CLoc79",0,SetTo,0+64*30);
		SetLoc("CLoc79",8,SetTo,64+64*30);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		SetLoc("CLoc79",0,SetTo,0+64*31);
		SetLoc("CLoc79",8,SetTo,64+64*31);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
		
		GiveUnits(All,"Team Sniping Missile",P5,"Anywhere",P10);
		GiveUnits(All,"Team Sniping Missile",P6,"Anywhere",P10);
		GiveUnits(All,"Team Sniping Missile",P7,"Anywhere",P10);
		GiveUnits(All,"Team Sniping Missile",P8,"Anywhere",P10);
	},
}

Trigger { 
	players = {P0},
	conditions = {
		Void(4,Exactly,520);
	},
	actions = {
		SetLoc("CLoc79",4,SetTo,1280);
		SetLoc("CLoc79",12,SetTo,1632);
		SetLoc("CLoc79",0,SetTo,0+64*0);
		SetLoc("CLoc79",8,SetTo,64+64*0);
		SetLoc("CLoc235",4,SetTo,0);
		SetLoc("CLoc235",12,SetTo,64);
		SetLoc("CLoc235",0,SetTo,0+64*0);
		SetLoc("CLoc235",8,SetTo,64+64*0);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*1);
		SetLoc("CLoc79",8,SetTo,64+64*1);
		SetLoc("CLoc235",0,SetTo,0+64*1);
		SetLoc("CLoc235",8,SetTo,64+64*1);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*2);
		SetLoc("CLoc79",8,SetTo,64+64*2);
		SetLoc("CLoc235",0,SetTo,0+64*2);
		SetLoc("CLoc235",8,SetTo,64+64*2);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*3);
		SetLoc("CLoc79",8,SetTo,64+64*3);
		SetLoc("CLoc235",0,SetTo,0+64*3);
		SetLoc("CLoc235",8,SetTo,64+64*3);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*4);
		SetLoc("CLoc79",8,SetTo,64+64*4);
		SetLoc("CLoc235",0,SetTo,0+64*4);
		SetLoc("CLoc235",8,SetTo,64+64*4);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*5);
		SetLoc("CLoc79",8,SetTo,64+64*5);
		SetLoc("CLoc235",0,SetTo,0+64*5);
		SetLoc("CLoc235",8,SetTo,64+64*5);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*6);
		SetLoc("CLoc79",8,SetTo,64+64*6);
		SetLoc("CLoc235",0,SetTo,0+64*6);
		SetLoc("CLoc235",8,SetTo,64+64*6);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*7);
		SetLoc("CLoc79",8,SetTo,64+64*7);
		SetLoc("CLoc235",0,SetTo,0+64*7);
		SetLoc("CLoc235",8,SetTo,64+64*7);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
	},
}		
Trigger { 
	players = {P0},
	conditions = {
		Void(4,Exactly,520);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,0+64*8);
		SetLoc("CLoc79",8,SetTo,64+64*8);
		SetLoc("CLoc235",0,SetTo,0+64*8);
		SetLoc("CLoc235",8,SetTo,64+64*8);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*9);
		SetLoc("CLoc79",8,SetTo,64+64*9);
		SetLoc("CLoc235",0,SetTo,0+64*9);
		SetLoc("CLoc235",8,SetTo,64+64*9);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*10);
		SetLoc("CLoc79",8,SetTo,64+64*10);
		SetLoc("CLoc235",0,SetTo,0+64*10);
		SetLoc("CLoc235",8,SetTo,64+64*10);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*11);
		SetLoc("CLoc79",8,SetTo,64+64*11);
		SetLoc("CLoc235",0,SetTo,0+64*11);
		SetLoc("CLoc235",8,SetTo,64+64*11);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*12);
		SetLoc("CLoc79",8,SetTo,64+64*12);
		SetLoc("CLoc235",0,SetTo,0+64*12);
		SetLoc("CLoc235",8,SetTo,64+64*12);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*13);
		SetLoc("CLoc79",8,SetTo,64+64*13);
		SetLoc("CLoc235",0,SetTo,0+64*13);
		SetLoc("CLoc235",8,SetTo,64+64*13);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*14);
		SetLoc("CLoc79",8,SetTo,64+64*14);
		SetLoc("CLoc235",0,SetTo,0+64*14);
		SetLoc("CLoc235",8,SetTo,64+64*14);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*15);
		SetLoc("CLoc79",8,SetTo,64+64*15);
		SetLoc("CLoc235",0,SetTo,0+64*15);
		SetLoc("CLoc235",8,SetTo,64+64*15);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(4,Exactly,520);
	},
	actions = {	
		SetLoc("CLoc79",0,SetTo,0+64*16);
		SetLoc("CLoc79",8,SetTo,64+64*16);
		SetLoc("CLoc235",0,SetTo,0+64*16);
		SetLoc("CLoc235",8,SetTo,64+64*16);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*17);
		SetLoc("CLoc79",8,SetTo,64+64*17);
		SetLoc("CLoc235",0,SetTo,0+64*17);
		SetLoc("CLoc235",8,SetTo,64+64*17);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*18);
		SetLoc("CLoc79",8,SetTo,64+64*18);
		SetLoc("CLoc235",0,SetTo,0+64*18);
		SetLoc("CLoc235",8,SetTo,64+64*18);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*19);
		SetLoc("CLoc79",8,SetTo,64+64*19);
		SetLoc("CLoc235",0,SetTo,0+64*19);
		SetLoc("CLoc235",8,SetTo,64+64*19);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*20);
		SetLoc("CLoc79",8,SetTo,64+64*20);
		SetLoc("CLoc235",0,SetTo,0+64*20);
		SetLoc("CLoc235",8,SetTo,64+64*20);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*21);
		SetLoc("CLoc79",8,SetTo,64+64*21);
		SetLoc("CLoc235",0,SetTo,0+64*21);
		SetLoc("CLoc235",8,SetTo,64+64*21);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*22);
		SetLoc("CLoc79",8,SetTo,64+64*22);
		SetLoc("CLoc235",0,SetTo,0+64*22);
		SetLoc("CLoc235",8,SetTo,64+64*22);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*23);
		SetLoc("CLoc79",8,SetTo,64+64*23);
		SetLoc("CLoc235",0,SetTo,0+64*23);
		SetLoc("CLoc235",8,SetTo,64+64*23);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(4,Exactly,520);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,0+64*24);
		SetLoc("CLoc79",8,SetTo,64+64*24);
		SetLoc("CLoc235",0,SetTo,0+64*24);
		SetLoc("CLoc235",8,SetTo,64+64*24);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*25);
		SetLoc("CLoc79",8,SetTo,64+64*25);
		SetLoc("CLoc235",0,SetTo,0+64*25);
		SetLoc("CLoc235",8,SetTo,64+64*25);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*26);
		SetLoc("CLoc79",8,SetTo,64+64*26);
		SetLoc("CLoc235",0,SetTo,0+64*26);
		SetLoc("CLoc235",8,SetTo,64+64*26);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*27);
		SetLoc("CLoc79",8,SetTo,64+64*27);
		SetLoc("CLoc235",0,SetTo,0+64*27);
		SetLoc("CLoc235",8,SetTo,64+64*27);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*28);
		SetLoc("CLoc79",8,SetTo,64+64*28);
		SetLoc("CLoc235",0,SetTo,0+64*28);
		SetLoc("CLoc235",8,SetTo,64+64*28);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*29);
		SetLoc("CLoc79",8,SetTo,64+64*29);
		SetLoc("CLoc235",0,SetTo,0+64*29);
		SetLoc("CLoc235",8,SetTo,64+64*29);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*30);
		SetLoc("CLoc79",8,SetTo,64+64*30);
		SetLoc("CLoc235",0,SetTo,0+64*30);
		SetLoc("CLoc235",8,SetTo,64+64*30);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*31);
		SetLoc("CLoc79",8,SetTo,64+64*31);
		SetLoc("CLoc235",0,SetTo,0+64*31);
		SetLoc("CLoc235",8,SetTo,64+64*31);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
	},
}



Trigger { 
	players = {P0},
	conditions = {
		Void(4,Exactly,532);
	},
	actions = {
		SetLoc("CLoc79",4,SetTo,1280);
		SetLoc("CLoc79",12,SetTo,1632);
		SetLoc("CLoc79",0,SetTo,0+64*0);
		SetLoc("CLoc79",8,SetTo,64+64*0);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		SetLoc("CLoc79",0,SetTo,0+64*1);
		SetLoc("CLoc79",8,SetTo,64+64*1);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		SetLoc("CLoc79",0,SetTo,0+64*2);
		SetLoc("CLoc79",8,SetTo,64+64*2);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		SetLoc("CLoc79",0,SetTo,0+64*3);
		SetLoc("CLoc79",8,SetTo,64+64*3);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
		SetLoc("CLoc79",0,SetTo,0+64*4);
		SetLoc("CLoc79",8,SetTo,64+64*4);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		SetLoc("CLoc79",0,SetTo,0+64*5);
		SetLoc("CLoc79",8,SetTo,64+64*5);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		SetLoc("CLoc79",0,SetTo,0+64*6);
		SetLoc("CLoc79",8,SetTo,64+64*6);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		SetLoc("CLoc79",0,SetTo,0+64*7);
		SetLoc("CLoc79",8,SetTo,64+64*7);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
		
		SetLoc("CLoc79",0,SetTo,0+64*8);
		SetLoc("CLoc79",8,SetTo,64+64*8);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		SetLoc("CLoc79",0,SetTo,0+64*9);
		SetLoc("CLoc79",8,SetTo,64+64*9);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		SetLoc("CLoc79",0,SetTo,0+64*10);
		SetLoc("CLoc79",8,SetTo,64+64*10);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		SetLoc("CLoc79",0,SetTo,0+64*11);
		SetLoc("CLoc79",8,SetTo,64+64*11);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
		SetLoc("CLoc79",0,SetTo,0+64*12);
		SetLoc("CLoc79",8,SetTo,64+64*12);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		SetLoc("CLoc79",0,SetTo,0+64*13);
		SetLoc("CLoc79",8,SetTo,64+64*13);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		SetLoc("CLoc79",0,SetTo,0+64*14);
		SetLoc("CLoc79",8,SetTo,64+64*14);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		SetLoc("CLoc79",0,SetTo,0+64*15);
		SetLoc("CLoc79",8,SetTo,64+64*15);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(4,Exactly,532);
	},
	actions = {	
		SetLoc("CLoc79",0,SetTo,0+64*16);
		SetLoc("CLoc79",8,SetTo,64+64*16);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		SetLoc("CLoc79",0,SetTo,0+64*17);
		SetLoc("CLoc79",8,SetTo,64+64*17);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		SetLoc("CLoc79",0,SetTo,0+64*18);
		SetLoc("CLoc79",8,SetTo,64+64*18);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		SetLoc("CLoc79",0,SetTo,0+64*19);
		SetLoc("CLoc79",8,SetTo,64+64*19);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
		SetLoc("CLoc79",0,SetTo,0+64*20);
		SetLoc("CLoc79",8,SetTo,64+64*20);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		SetLoc("CLoc79",0,SetTo,0+64*21);
		SetLoc("CLoc79",8,SetTo,64+64*21);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		SetLoc("CLoc79",0,SetTo,0+64*22);
		SetLoc("CLoc79",8,SetTo,64+64*22);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		SetLoc("CLoc79",0,SetTo,0+64*23);
		SetLoc("CLoc79",8,SetTo,64+64*23);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
		
		SetLoc("CLoc79",0,SetTo,0+64*24);
		SetLoc("CLoc79",8,SetTo,64+64*24);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		SetLoc("CLoc79",0,SetTo,0+64*25);
		SetLoc("CLoc79",8,SetTo,64+64*25);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		SetLoc("CLoc79",0,SetTo,0+64*26);
		SetLoc("CLoc79",8,SetTo,64+64*26);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		SetLoc("CLoc79",0,SetTo,0+64*27);
		SetLoc("CLoc79",8,SetTo,64+64*27);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
		SetLoc("CLoc79",0,SetTo,0+64*28);
		SetLoc("CLoc79",8,SetTo,64+64*28);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
		SetLoc("CLoc79",0,SetTo,0+64*29);
		SetLoc("CLoc79",8,SetTo,64+64*29);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
		SetLoc("CLoc79",0,SetTo,0+64*30);
		SetLoc("CLoc79",8,SetTo,64+64*30);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
		SetLoc("CLoc79",0,SetTo,0+64*31);
		SetLoc("CLoc79",8,SetTo,64+64*31);
		CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
		
		GiveUnits(All,"Team Sniping Missile",P5,"Anywhere",P10);
		GiveUnits(All,"Team Sniping Missile",P6,"Anywhere",P10);
		GiveUnits(All,"Team Sniping Missile",P7,"Anywhere",P10);
		GiveUnits(All,"Team Sniping Missile",P8,"Anywhere",P10);
	},
}

Trigger { 
	players = {P0},
	conditions = {
		Void(4,Exactly,532);
	},
	actions = {
		SetLoc("CLoc79",4,SetTo,1280);
		SetLoc("CLoc79",12,SetTo,1632);
		SetLoc("CLoc79",0,SetTo,0+64*0);
		SetLoc("CLoc79",8,SetTo,64+64*0);
		SetLoc("CLoc235",4,SetTo,0);
		SetLoc("CLoc235",12,SetTo,64);
		SetLoc("CLoc235",0,SetTo,0+64*0);
		SetLoc("CLoc235",8,SetTo,64+64*0);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*1);
		SetLoc("CLoc79",8,SetTo,64+64*1);
		SetLoc("CLoc235",0,SetTo,0+64*1);
		SetLoc("CLoc235",8,SetTo,64+64*1);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*2);
		SetLoc("CLoc79",8,SetTo,64+64*2);
		SetLoc("CLoc235",0,SetTo,0+64*2);
		SetLoc("CLoc235",8,SetTo,64+64*2);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*3);
		SetLoc("CLoc79",8,SetTo,64+64*3);
		SetLoc("CLoc235",0,SetTo,0+64*3);
		SetLoc("CLoc235",8,SetTo,64+64*3);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*4);
		SetLoc("CLoc79",8,SetTo,64+64*4);
		SetLoc("CLoc235",0,SetTo,0+64*4);
		SetLoc("CLoc235",8,SetTo,64+64*4);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*5);
		SetLoc("CLoc79",8,SetTo,64+64*5);
		SetLoc("CLoc235",0,SetTo,0+64*5);
		SetLoc("CLoc235",8,SetTo,64+64*5);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*6);
		SetLoc("CLoc79",8,SetTo,64+64*6);
		SetLoc("CLoc235",0,SetTo,0+64*6);
		SetLoc("CLoc235",8,SetTo,64+64*6);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*7);
		SetLoc("CLoc79",8,SetTo,64+64*7);
		SetLoc("CLoc235",0,SetTo,0+64*7);
		SetLoc("CLoc235",8,SetTo,64+64*7);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
	},
}		
Trigger { 
	players = {P0},
	conditions = {
		Void(4,Exactly,532);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,0+64*8);
		SetLoc("CLoc79",8,SetTo,64+64*8);
		SetLoc("CLoc235",0,SetTo,0+64*8);
		SetLoc("CLoc235",8,SetTo,64+64*8);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*9);
		SetLoc("CLoc79",8,SetTo,64+64*9);
		SetLoc("CLoc235",0,SetTo,0+64*9);
		SetLoc("CLoc235",8,SetTo,64+64*9);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*10);
		SetLoc("CLoc79",8,SetTo,64+64*10);
		SetLoc("CLoc235",0,SetTo,0+64*10);
		SetLoc("CLoc235",8,SetTo,64+64*10);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*11);
		SetLoc("CLoc79",8,SetTo,64+64*11);
		SetLoc("CLoc235",0,SetTo,0+64*11);
		SetLoc("CLoc235",8,SetTo,64+64*11);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*12);
		SetLoc("CLoc79",8,SetTo,64+64*12);
		SetLoc("CLoc235",0,SetTo,0+64*12);
		SetLoc("CLoc235",8,SetTo,64+64*12);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*13);
		SetLoc("CLoc79",8,SetTo,64+64*13);
		SetLoc("CLoc235",0,SetTo,0+64*13);
		SetLoc("CLoc235",8,SetTo,64+64*13);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*14);
		SetLoc("CLoc79",8,SetTo,64+64*14);
		SetLoc("CLoc235",0,SetTo,0+64*14);
		SetLoc("CLoc235",8,SetTo,64+64*14);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*15);
		SetLoc("CLoc79",8,SetTo,64+64*15);
		SetLoc("CLoc235",0,SetTo,0+64*15);
		SetLoc("CLoc235",8,SetTo,64+64*15);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(4,Exactly,532);
	},
	actions = {	
		SetLoc("CLoc79",0,SetTo,0+64*16);
		SetLoc("CLoc79",8,SetTo,64+64*16);
		SetLoc("CLoc235",0,SetTo,0+64*16);
		SetLoc("CLoc235",8,SetTo,64+64*16);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*17);
		SetLoc("CLoc79",8,SetTo,64+64*17);
		SetLoc("CLoc235",0,SetTo,0+64*17);
		SetLoc("CLoc235",8,SetTo,64+64*17);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*18);
		SetLoc("CLoc79",8,SetTo,64+64*18);
		SetLoc("CLoc235",0,SetTo,0+64*18);
		SetLoc("CLoc235",8,SetTo,64+64*18);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*19);
		SetLoc("CLoc79",8,SetTo,64+64*19);
		SetLoc("CLoc235",0,SetTo,0+64*19);
		SetLoc("CLoc235",8,SetTo,64+64*19);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*20);
		SetLoc("CLoc79",8,SetTo,64+64*20);
		SetLoc("CLoc235",0,SetTo,0+64*20);
		SetLoc("CLoc235",8,SetTo,64+64*20);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*21);
		SetLoc("CLoc79",8,SetTo,64+64*21);
		SetLoc("CLoc235",0,SetTo,0+64*21);
		SetLoc("CLoc235",8,SetTo,64+64*21);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*22);
		SetLoc("CLoc79",8,SetTo,64+64*22);
		SetLoc("CLoc235",0,SetTo,0+64*22);
		SetLoc("CLoc235",8,SetTo,64+64*22);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*23);
		SetLoc("CLoc79",8,SetTo,64+64*23);
		SetLoc("CLoc235",0,SetTo,0+64*23);
		SetLoc("CLoc235",8,SetTo,64+64*23);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(4,Exactly,532);
	},
	actions = {
		SetLoc("CLoc79",0,SetTo,0+64*24);
		SetLoc("CLoc79",8,SetTo,64+64*24);
		SetLoc("CLoc235",0,SetTo,0+64*24);
		SetLoc("CLoc235",8,SetTo,64+64*24);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*25);
		SetLoc("CLoc79",8,SetTo,64+64*25);
		SetLoc("CLoc235",0,SetTo,0+64*25);
		SetLoc("CLoc235",8,SetTo,64+64*25);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*26);
		SetLoc("CLoc79",8,SetTo,64+64*26);
		SetLoc("CLoc235",0,SetTo,0+64*26);
		SetLoc("CLoc235",8,SetTo,64+64*26);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*27);
		SetLoc("CLoc79",8,SetTo,64+64*27);
		SetLoc("CLoc235",0,SetTo,0+64*27);
		SetLoc("CLoc235",8,SetTo,64+64*27);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*28);
		SetLoc("CLoc79",8,SetTo,64+64*28);
		SetLoc("CLoc235",0,SetTo,0+64*28);
		SetLoc("CLoc235",8,SetTo,64+64*28);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*29);
		SetLoc("CLoc79",8,SetTo,64+64*29);
		SetLoc("CLoc235",0,SetTo,0+64*29);
		SetLoc("CLoc235",8,SetTo,64+64*29);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*30);
		SetLoc("CLoc79",8,SetTo,64+64*30);
		SetLoc("CLoc235",0,SetTo,0+64*30);
		SetLoc("CLoc235",8,SetTo,64+64*30);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
		SetLoc("CLoc79",0,SetTo,0+64*31);
		SetLoc("CLoc79",8,SetTo,64+64*31);
		SetLoc("CLoc235",0,SetTo,0+64*31);
		SetLoc("CLoc235",8,SetTo,64+64*31);
		Order("Team Sniping Missile",P10,"CLoc79",Move,"CLoc235");
	},
}

Trigger { 
	players = {P0},
	conditions = {
		Void(375,Exactly,4);
		Void(4,AtLeast,532);
		Void(4,AtMost,675);
	},
	actions = {
		SetVoid(375,SetTo,0);
		PreserveTrigger();
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(375,Exactly,3);
		Void(4,AtLeast,532);
		Void(4,AtMost,675);
	},
	actions = {
		SetVoid(375,SetTo,4);
		MoveLocation("Cobalt2", "Team Sniping Missile", P10, "Cobalt");
		CreateUnit(1, "Flash Missile", "Cobalt2", P8);
		KillUnit("Flash Missile",P8);
		PreserveTrigger();
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(375,Exactly,2);
		Void(4,AtLeast,532);
		Void(4,AtMost,675);
	},
	actions = {
		SetVoid(375,SetTo,3);
		MoveLocation("Cobalt2", "Team Sniping Missile", P10, "Cobalt");
		CreateUnit(1, "Flash Missile", "Cobalt2", P7);
		KillUnit("Flash Missile",P7);
		PreserveTrigger();
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(375,Exactly,1);
		Void(4,AtLeast,532);
		Void(4,AtMost,675);
	},
	actions = {
		SetVoid(375,SetTo,2);
		MoveLocation("Cobalt2", "Team Sniping Missile", P10, "Cobalt");
		CreateUnit(1, "Flash Missile", "Cobalt2", P6);
		KillUnit("Flash Missile",P6);
		PreserveTrigger();
	},
}
Trigger { 
	players = {P0},
	conditions = {
		Void(375,Exactly,0);
		Void(4,AtLeast,532);
		Void(4,AtMost,675);
	},
	actions = {
		SetVoid(375,SetTo,1);
		MoveLocation("Cobalt2", "Team Sniping Missile", P10, "Cobalt");
		CreateUnit(1, "Flash Missile", "Cobalt2", P5);
		KillUnit("Flash Missile",P5);
		PreserveTrigger();
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(4,AtLeast,675);
	},
	actions = {
		PreserveTrigger();
		SetVoid(4,SetTo,0);
		SetVoid(371,SetTo,1);
		SetVoid(43,SetTo,1280);
		KillUnit("Team Sniping Missile",P10);
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,40);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『죄인들에게...... 멸망의 빛을.』", 4);
		SetCp(1);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『죄인들에게...... 멸망의 빛을.』", 4);
		SetCp(2);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『죄인들에게...... 멸망의 빛을.』", 4);
		SetCp(3);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『죄인들에게...... 멸망의 빛을.』", 4);
		SetCp(4);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『죄인들에게...... 멸망의 빛을.』", 4);
		SetCp(5);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『죄인들에게...... 멸망의 빛을.』", 4);
		SetCp(6);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『죄인들에게...... 멸망의 빛을.』", 4);
		SetCp(7);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『죄인들에게...... 멸망의 빛을.』", 4);
		SetCp(0);
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,160);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『별이여 모여라.』", 4);
		SetCp(1);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『별이여 모여라.』", 4);
		SetCp(2);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『별이여 모여라.』", 4);
		SetCp(3);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『별이여 모여라.』", 4);
		SetCp(4);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『별이여 모여라.』", 4);
		SetCp(5);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『별이여 모여라.』", 4);
		SetCp(6);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『별이여 모여라.』", 4);
		SetCp(7);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『별이여 모여라.』", 4);
		SetCp(0);
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,200);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(1);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(2);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(3);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(4);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(5);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(6);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(7);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(0);
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,210);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(1);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(2);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(3);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(4);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(5);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(6);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(7);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(0);
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,220);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(1);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(2);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(3);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(4);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(5);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(6);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(7);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(0);
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,230);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(1);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(2);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(3);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(4);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(5);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(6);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(7);
		PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");PlayWAV("sound\\Zerg\\Advisor\\ZAdUpd04.WAV");
		SetCp(0);
	},
}
for i = 0, 7 do
	CIf(P0,{TTOR({Void(4,Exactly,200),Void(4,Exactly,210),Void(4,Exactly,220),Void(4,Exactly,230)}),Deaths(i,Exactly,1,"!Exist")})
		Print_13(P0,i,"\x19뉴클리어 공격이 감지되었습니다.")
	CIfEnd()
end
Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,200);
	},
	actions = {
		CreateUnit(1,"Nuclear Missile","Nuke2",P5);
		GiveUnits(All,"Nuclear Missile",P5,"Anywhere",P10);
		SetLoc("CLoc79",4,SetTo,0);
		SetLoc("CLoc79",12,SetTo,64);
		SetLoc("CLoc79",0,SetTo,1920);
		SetLoc("CLoc79",8,SetTo,2016);
		Order("Nuclear Missile",P10,"Anywhere",Move,"CLoc79");
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,210);
	},
	actions = {
		CreateUnit(1,"Nuclear Missile","Nuke2",P6);
		GiveUnits(All,"Nuclear Missile",P6,"Anywhere",P10);
		SetLoc("CLoc79",4,SetTo,0);
		SetLoc("CLoc79",12,SetTo,64);
		SetLoc("CLoc79",0,SetTo,1920);
		SetLoc("CLoc79",8,SetTo,2016);
		Order("Nuclear Missile",P10,"Anywhere",Move,"CLoc79");
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,220);
	},
	actions = {
		CreateUnit(1,"Nuclear Missile","Nuke2",P7);
		GiveUnits(All,"Nuclear Missile",P7,"Anywhere",P10);
		SetLoc("CLoc79",4,SetTo,0);
		SetLoc("CLoc79",12,SetTo,64);
		SetLoc("CLoc79",0,SetTo,1920);
		SetLoc("CLoc79",8,SetTo,2016);
		Order("Nuclear Missile",P10,"Anywhere",Move,"CLoc79");
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,230);
	},
	actions = {
		CreateUnit(1,"Nuclear Missile","Nuke2",P8);
		GiveUnits(All,"Nuclear Missile",P8,"Anywhere",P10);
		SetLoc("CLoc79",4,SetTo,0);
		SetLoc("CLoc79",12,SetTo,64);
		SetLoc("CLoc79",0,SetTo,1920);
		SetLoc("CLoc79",8,SetTo,2016);
		Order("Nuclear Missile",P10,"Anywhere",Move,"CLoc79");
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(4,AtLeast,200);
		Void(4,AtMost,400);
	},
	actions = {
		RemoveUnitAt(All,"Nuclear Missile","Team2",P10);
		PreserveTrigger();
	},
}


Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,280);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『모든것을 꿰뚫는 빛이 되어라.』", 4);
		SetCp(1);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『모든것을 꿰뚫는 빛이 되어라.』", 4);
		SetCp(2);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『모든것을 꿰뚫는 빛이 되어라.』", 4);
		SetCp(3);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『모든것을 꿰뚫는 빛이 되어라.』", 4);
		SetCp(4);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『모든것을 꿰뚫는 빛이 되어라.』", 4);
		SetCp(5);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『모든것을 꿰뚫는 빛이 되어라.』", 4);
		SetCp(6);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『모든것을 꿰뚫는 빛이 되어라.』", 4);
		SetCp(7);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『모든것을 꿰뚫는 빛이 되어라.』", 4);
		SetCp(0);
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,400);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『꿰뚫어라. 섬광.』\r\n", 4);
		SetCp(1);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『꿰뚫어라. 섬광.』\r\n", 4);
		SetCp(2);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『꿰뚫어라. 섬광.』\r\n", 4);
		SetCp(3);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『꿰뚫어라. 섬광.』\r\n", 4);
		SetCp(4);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『꿰뚫어라. 섬광.』\r\n", 4);
		SetCp(5);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『꿰뚫어라. 섬광.』\r\n", 4);
		SetCp(6);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『꿰뚫어라. 섬광.』\r\n", 4);
		SetCp(7);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x04Ultimate Builder\r\n『꿰뚫어라. 섬광.』\r\n", 4);
		SetCp(0);
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,520);
	},
	actions = {
		PreserveTrigger();
		SetCp(0);
		PlayWAV("staredit\\wav\\SB.wav");
		DisplayText("\x04Ultimate Builder\r\n『스타라이트... 브레이커. (StarLight Breaker)』", 4);
		SetCp(1);
		PlayWAV("staredit\\wav\\SB.wav");
		DisplayText("\x04Ultimate Builder\r\n『스타라이트... 브레이커. (StarLight Breaker)』", 4);
		SetCp(2);
		PlayWAV("staredit\\wav\\SB.wav");
		DisplayText("\x04Ultimate Builder\r\n『스타라이트... 브레이커. (StarLight Breaker)』", 4);
		SetCp(3);
		PlayWAV("staredit\\wav\\SB.wav");
		DisplayText("\x04Ultimate Builder\r\n『스타라이트... 브레이커. (StarLight Breaker)』", 4);
		SetCp(4);
		PlayWAV("staredit\\wav\\SB.wav");
		DisplayText("\x04Ultimate Builder\r\n『스타라이트... 브레이커. (StarLight Breaker)』", 4);
		SetCp(5);
		PlayWAV("staredit\\wav\\SB.wav");
		DisplayText("\x04Ultimate Builder\r\n『스타라이트... 브레이커. (StarLight Breaker)』", 4);
		SetCp(6);
		PlayWAV("staredit\\wav\\SB.wav");
		DisplayText("\x04Ultimate Builder\r\n『스타라이트... 브레이커. (StarLight Breaker)』", 4);
		SetCp(7);
		PlayWAV("staredit\\wav\\SB.wav");
		DisplayText("\x04Ultimate Builder\r\n『스타라이트... 브레이커. (StarLight Breaker)』", 4);
		SetCp(0);
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,530);
	},
	actions = {
		CreateUnit(1,"Nuclear Missile","Cntr",P5);
		GiveUnits(All,"Nuclear Missile",P5,"Anywhere",P10);
		Order("Nuclear Missile",P10,"Anywhere",Move,"1팀필드");
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,540);
	},
	actions = {
		CreateUnit(1,"Nuclear Missile","Cntr",P6);
		GiveUnits(All,"Nuclear Missile",P6,"Anywhere",P10);
		Order("Nuclear Missile",P10,"Anywhere",Move,"1팀필드");
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,550);
	},
	actions = {
		CreateUnit(1,"Nuclear Missile","Cntr",P7);
		GiveUnits(All,"Nuclear Missile",P7,"Anywhere",P10);
		Order("Nuclear Missile",P10,"Anywhere",Move,"1팀필드");
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,560);
	},
	actions = {
		CreateUnit(1,"Nuclear Missile","Cntr",P8);
		GiveUnits(All,"Nuclear Missile",P8,"Anywhere",P10);
		Order("Nuclear Missile",P10,"Anywhere",Move,"1팀필드");
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(4,AtLeast,530);
		Void(4,AtMost,675);
	},
	actions = {
		SetLoc("CLoc79",4,SetTo,0);
		SetLoc("CLoc79",12,SetTo,592);
		SetLoc("CLoc79",0,SetTo,0);
		SetLoc("CLoc79",8,SetTo,2048);
		KillUnitAt(All,"Nuclear Missile","CLoc79",P10);
		PreserveTrigger();
	},
}

Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,615);
	},
	actions = {
		SetMemoryX(0x666458, SetTo, 318,0xFFFF);
		CreateUnit(1,33,"1팀필드",P5);
		RemoveUnit(33,P5);
		SetMemoryX(0x666458, SetTo, 546,0xFFFF);
		SetCp(0);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(1);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(2);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(3);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(4);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(5);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(6);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(7);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(0);
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,625);
	},
	actions = {
		SetMemoryX(0x666458, SetTo, 318,0xFFFF);
		CreateUnit(1,33,"1팀필드",P6);
		RemoveUnit(33,P6);
		SetMemoryX(0x666458, SetTo, 546,0xFFFF);
		SetCp(0);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(1);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(2);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(3);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(4);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(5);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(6);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(7);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(0);
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,635);
	},
	actions = {
		SetMemoryX(0x666458, SetTo, 318,0xFFFF);
		CreateUnit(1,33,"1팀필드",P7);
		RemoveUnit(33,P7);
		SetMemoryX(0x666458, SetTo, 546,0xFFFF);
		SetCp(0);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(1);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(2);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(3);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(4);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(5);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(6);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(7);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(0);
	},
}
Trigger {
	players = {P0},
	conditions = {
		Void(4,Exactly,645);
	},
	actions = {
		SetMemoryX(0x666458, SetTo, 318,0xFFFF);
		CreateUnit(1,33,"1팀필드",P8);
		RemoveUnit(33,P8);
		SetMemoryX(0x666458, SetTo, 546,0xFFFF);
		SetCp(0);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(1);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(2);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(3);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(4);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(5);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(6);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(7);
		PlayWAV("sound\\Bullet\\TNsHit00.wav");PlayWAV("sound\\Bullet\\TNsHit00.wav");
		SetCp(0);
	},
}
end