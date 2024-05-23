function SUB_PS()
    -- 포세이돈 -------------------------------------------------------------------------

Trigger { -- 포세 1팀
players = {P0},
conditions = {
    Void(364,AtLeast,1);
},
actions = {
    SetVoid(364,Add,1);
    SetVoid(366,Subtract,1);
    KillUnitAt(All,"Team Sniping Missile","2팀 뒤쪽",P9);
    PreserveTrigger();
},
}


Trigger {
players = {P0},
conditions = {
    Void(364,AtLeast,24*120);
    Bring(Force1, AtLeast, 4, "Creep Creater [U]", "전체필드");
},
actions = {
    SetCp(0);
    PlayWAV("staredit\\wav\\Notice.wav");
    DisplayText("\x18포세이돈(미사일)은\r\n\x16한맵에 한번만 제작이 가능합니다", 4);
    SetCp(1);
    PlayWAV("staredit\\wav\\Notice.wav");
    DisplayText("\x18포세이돈(미사일)은\r\n\x16한맵에 한번만 제작이 가능합니다", 4);
    SetCp(2);
    PlayWAV("staredit\\wav\\Notice.wav");
    DisplayText("\x18포세이돈(미사일)은\r\n\x16한맵에 한번만 제작이 가능합니다", 4);
    SetCp(3);
    PlayWAV("staredit\\wav\\Notice.wav");
    DisplayText("\x18포세이돈(미사일)은\r\n\x16한맵에 한번만 제작이 가능합니다", 4);
    SetCp(0);
},
}

Trigger {
players = {P0},
conditions = {
    Void(3,AtLeast,1);
    Bring(Force1, AtLeast, 4, "Creep Creater [U]", "전체필드");
},
actions = {
    SetCp(0);
    PlayWAV("staredit\\wav\\Notice.wav");
    DisplayText("\x16코발트미사일 사용도중에 사용할수 없습니다.", 4);
    SetCp(1);
    PlayWAV("staredit\\wav\\Notice.wav");
    DisplayText("\x16코발트미사일 사용도중에 사용할수 없습니다.", 4);
    SetCp(2);
    PlayWAV("staredit\\wav\\Notice.wav");
    DisplayText("\x16코발트미사일 사용도중에 사용할수 없습니다.", 4);
    SetCp(3);
    PlayWAV("staredit\\wav\\Notice.wav");
    DisplayText("\x16코발트미사일 사용도중에 사용할수 없습니다.", 4);
    SetCp(0);
},
}


Trigger {
players = {P0},
conditions = {
    Void(3,Exactly,0);
    Bring(Force1, AtLeast, 4, "Creep Creater [U]", "전체필드");
},
actions = {
    SetCp(0);
    PlayWAV("staredit\\wav\\SpeedMessage.wav");
    DisplayText("\x18Player Team1이 포세이돈(미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면 \"4개의 해처리\" 입니다", 4);
    SetCp(1);
    PlayWAV("staredit\\wav\\SpeedMessage.wav");
    DisplayText("\x18Player Team1이 포세이돈(미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면 \"4개의 해처리\" 입니다", 4);
    SetCp(2);
    PlayWAV("staredit\\wav\\SpeedMessage.wav");
    DisplayText("\x18Player Team1이 포세이돈(미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면 \"4개의 해처리\" 입니다", 4);
    SetCp(3);
    PlayWAV("staredit\\wav\\SpeedMessage.wav");
    DisplayText("\x18Player Team1이 포세이돈(미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면 \"4개의 해처리\" 입니다", 4);
    SetCp(4);
    PlayWAV("staredit\\wav\\SpeedMessage.wav");
    DisplayText("\x18Player Team1이 포세이돈(미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면 \"4개의 해처리\" 입니다", 4);
    SetCp(5);
    PlayWAV("staredit\\wav\\SpeedMessage.wav");
    DisplayText("\x18Player Team1이 포세이돈(미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면 \"4개의 해처리\" 입니다", 4);
    SetCp(6);
    PlayWAV("staredit\\wav\\SpeedMessage.wav");
    DisplayText("\x18Player Team1이 포세이돈(미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면 \"4개의 해처리\" 입니다", 4);
    SetCp(7);
    PlayWAV("staredit\\wav\\SpeedMessage.wav");
    DisplayText("\x18Player Team1이 포세이돈(미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면 \"4개의 해처리\" 입니다", 4);
    SetCp(0);
    SetVoid(364,SetTo,1);
},
}

Trigger {
players = {P0},
conditions = {
    Void(368,Exactly,0);
    Void(366,Exactly,0);
    Void(364,AtLeast,1); Void(364,AtMost,24*120);
},
actions = {
    SetLoc("CLoc79",0,SetTo,480);
    SetLoc("CLoc79",8,SetTo,544);
    SetLoc("CLoc79",4,SetTo,1600-128*0);
    SetLoc("CLoc79",12,SetTo,1664-128*0);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*1);
    SetLoc("CLoc79",12,SetTo,1664-128*1);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*2);
    SetLoc("CLoc79",12,SetTo,1664-128*2);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*3);
    SetLoc("CLoc79",12,SetTo,1664-128*3);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*4);
    SetLoc("CLoc79",12,SetTo,1664-128*4);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*5);
    SetLoc("CLoc79",12,SetTo,1664-128*5);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*6);
    SetLoc("CLoc79",12,SetTo,1664-128*6);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*7);
    SetLoc("CLoc79",12,SetTo,1664-128*7);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*8);
    SetLoc("CLoc79",12,SetTo,1664-128*8);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*9);
    SetLoc("CLoc79",12,SetTo,1664-128*9);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*10);
    SetLoc("CLoc79",12,SetTo,1664-128*10);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    PreserveTrigger();
},
}
Trigger {
players = {P0},
conditions = {
    Void(368,Exactly,0);
    Void(366,Exactly,0);
    Void(364,AtLeast,1); Void(364,AtMost,24*120);
},
actions = {SetVoid(368,SetTo,1);	
    SetVoid(366,SetTo,20);
    SetLoc("CLoc79",0,SetTo,1504);
    SetLoc("CLoc79",8,SetTo,1568);
    SetLoc("CLoc79",4,SetTo,1600-128*0);
    SetLoc("CLoc79",12,SetTo,1664-128*0);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*1);
    SetLoc("CLoc79",12,SetTo,1664-128*1);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*2);
    SetLoc("CLoc79",12,SetTo,1664-128*2);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*3);
    SetLoc("CLoc79",12,SetTo,1664-128*3);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*4);
    SetLoc("CLoc79",12,SetTo,1664-128*4);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*5);
    SetLoc("CLoc79",12,SetTo,1664-128*5);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*6);
    SetLoc("CLoc79",12,SetTo,1664-128*6);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*7);
    SetLoc("CLoc79",12,SetTo,1664-128*7);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*8);
    SetLoc("CLoc79",12,SetTo,1664-128*8);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*9);
    SetLoc("CLoc79",12,SetTo,1664-128*9);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    SetLoc("CLoc79",4,SetTo,1600-128*10);
    SetLoc("CLoc79",12,SetTo,1664-128*10);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P1);
    GiveUnits(All,"Team Sniping Missile",P1,"Anywhere",P9);
    Order("Team Sniping Missile",P9,"Anywhere",Move,"4-7");
    PreserveTrigger();
},
}

Trigger {
players = {P0},
conditions = {
    Void(368,Exactly,1);
    Void(366,Exactly,0);
    Void(364,AtLeast,1); Void(364,AtMost,24*120);
},
actions = {
    SetLoc("CLoc79",0,SetTo,480);
    SetLoc("CLoc79",8,SetTo,544);
    SetLoc("CLoc79",4,SetTo,1600-128*0);
    SetLoc("CLoc79",12,SetTo,1664-128*0);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*1);
    SetLoc("CLoc79",12,SetTo,1664-128*1);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*2);
    SetLoc("CLoc79",12,SetTo,1664-128*2);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*3);
    SetLoc("CLoc79",12,SetTo,1664-128*3);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*4);
    SetLoc("CLoc79",12,SetTo,1664-128*4);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*5);
    SetLoc("CLoc79",12,SetTo,1664-128*5);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*6);
    SetLoc("CLoc79",12,SetTo,1664-128*6);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*7);
    SetLoc("CLoc79",12,SetTo,1664-128*7);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*8);
    SetLoc("CLoc79",12,SetTo,1664-128*8);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*9);
    SetLoc("CLoc79",12,SetTo,1664-128*9);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*10);
    SetLoc("CLoc79",12,SetTo,1664-128*10);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    PreserveTrigger();
},
}
Trigger {
players = {P0},
conditions = {
    Void(368,Exactly,1);
    Void(366,Exactly,0);
    Void(364,AtLeast,1); Void(364,AtMost,24*120);
},
actions = {SetVoid(368,SetTo,2);	
    SetVoid(366,SetTo,20);
    SetLoc("CLoc79",0,SetTo,1504);
    SetLoc("CLoc79",8,SetTo,1568);
    SetLoc("CLoc79",4,SetTo,1600-128*0);
    SetLoc("CLoc79",12,SetTo,1664-128*0);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*1);
    SetLoc("CLoc79",12,SetTo,1664-128*1);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*2);
    SetLoc("CLoc79",12,SetTo,1664-128*2);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*3);
    SetLoc("CLoc79",12,SetTo,1664-128*3);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*4);
    SetLoc("CLoc79",12,SetTo,1664-128*4);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*5);
    SetLoc("CLoc79",12,SetTo,1664-128*5);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*6);
    SetLoc("CLoc79",12,SetTo,1664-128*6);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*7);
    SetLoc("CLoc79",12,SetTo,1664-128*7);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*8);
    SetLoc("CLoc79",12,SetTo,1664-128*8);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*9);
    SetLoc("CLoc79",12,SetTo,1664-128*9);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    SetLoc("CLoc79",4,SetTo,1600-128*10);
    SetLoc("CLoc79",12,SetTo,1664-128*10);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P2);
    GiveUnits(All,"Team Sniping Missile",P2,"Anywhere",P9);
    Order("Team Sniping Missile",P9,"Anywhere",Move,"4-7");
    PreserveTrigger();
},
}


Trigger {
players = {P0},
conditions = {
    Void(368,Exactly,2);
    Void(366,Exactly,0);
    Void(364,AtLeast,1); Void(364,AtMost,24*120);
},
actions = {
    SetLoc("CLoc79",0,SetTo,480);
    SetLoc("CLoc79",8,SetTo,544);
    SetLoc("CLoc79",4,SetTo,1600-128*0);
    SetLoc("CLoc79",12,SetTo,1664-128*0);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*1);
    SetLoc("CLoc79",12,SetTo,1664-128*1);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*2);
    SetLoc("CLoc79",12,SetTo,1664-128*2);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*3);
    SetLoc("CLoc79",12,SetTo,1664-128*3);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*4);
    SetLoc("CLoc79",12,SetTo,1664-128*4);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*5);
    SetLoc("CLoc79",12,SetTo,1664-128*5);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*6);
    SetLoc("CLoc79",12,SetTo,1664-128*6);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*7);
    SetLoc("CLoc79",12,SetTo,1664-128*7);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*8);
    SetLoc("CLoc79",12,SetTo,1664-128*8);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*9);
    SetLoc("CLoc79",12,SetTo,1664-128*9);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*10);
    SetLoc("CLoc79",12,SetTo,1664-128*10);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    PreserveTrigger();
},
}
Trigger {
players = {P0},
conditions = {
    Void(368,Exactly,2);
    Void(366,Exactly,0);
    Void(364,AtLeast,1); Void(364,AtMost,24*120);
},
actions = {SetVoid(368,SetTo,3);	
    SetVoid(366,SetTo,20);
    SetLoc("CLoc79",0,SetTo,1504);
    SetLoc("CLoc79",8,SetTo,1568);
    SetLoc("CLoc79",4,SetTo,1600-128*0);
    SetLoc("CLoc79",12,SetTo,1664-128*0);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*1);
    SetLoc("CLoc79",12,SetTo,1664-128*1);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*2);
    SetLoc("CLoc79",12,SetTo,1664-128*2);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*3);
    SetLoc("CLoc79",12,SetTo,1664-128*3);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*4);
    SetLoc("CLoc79",12,SetTo,1664-128*4);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*5);
    SetLoc("CLoc79",12,SetTo,1664-128*5);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*6);
    SetLoc("CLoc79",12,SetTo,1664-128*6);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*7);
    SetLoc("CLoc79",12,SetTo,1664-128*7);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*8);
    SetLoc("CLoc79",12,SetTo,1664-128*8);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*9);
    SetLoc("CLoc79",12,SetTo,1664-128*9);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    SetLoc("CLoc79",4,SetTo,1600-128*10);
    SetLoc("CLoc79",12,SetTo,1664-128*10);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P3);
    GiveUnits(All,"Team Sniping Missile",P3,"Anywhere",P9);
    Order("Team Sniping Missile",P9,"Anywhere",Move,"4-7");
    PreserveTrigger();
},
}


Trigger {
players = {P0},
conditions = {
    Void(368,Exactly,3);
    Void(366,Exactly,0);
    Void(364,AtLeast,1); Void(364,AtMost,24*120);
},
actions = {
    SetLoc("CLoc79",0,SetTo,480);
    SetLoc("CLoc79",8,SetTo,544);
    SetLoc("CLoc79",4,SetTo,1600-128*0);
    SetLoc("CLoc79",12,SetTo,1664-128*0);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*1);
    SetLoc("CLoc79",12,SetTo,1664-128*1);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*2);
    SetLoc("CLoc79",12,SetTo,1664-128*2);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*3);
    SetLoc("CLoc79",12,SetTo,1664-128*3);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*4);
    SetLoc("CLoc79",12,SetTo,1664-128*4);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*5);
    SetLoc("CLoc79",12,SetTo,1664-128*5);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*6);
    SetLoc("CLoc79",12,SetTo,1664-128*6);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*7);
    SetLoc("CLoc79",12,SetTo,1664-128*7);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*8);
    SetLoc("CLoc79",12,SetTo,1664-128*8);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*9);
    SetLoc("CLoc79",12,SetTo,1664-128*9);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*10);
    SetLoc("CLoc79",12,SetTo,1664-128*10);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    PreserveTrigger();
},
}
Trigger {
players = {P0},
conditions = {
    Void(368,Exactly,3);
    Void(366,Exactly,0);
    Void(364,AtLeast,1); Void(364,AtMost,24*120);
},
actions = {SetVoid(368,SetTo,0);	
    SetVoid(366,SetTo,20);
    SetLoc("CLoc79",0,SetTo,1504);
    SetLoc("CLoc79",8,SetTo,1568);
    SetLoc("CLoc79",4,SetTo,1600-128*0);
    SetLoc("CLoc79",12,SetTo,1664-128*0);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*1);
    SetLoc("CLoc79",12,SetTo,1664-128*1);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*2);
    SetLoc("CLoc79",12,SetTo,1664-128*2);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*3);
    SetLoc("CLoc79",12,SetTo,1664-128*3);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*4);
    SetLoc("CLoc79",12,SetTo,1664-128*4);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*5);
    SetLoc("CLoc79",12,SetTo,1664-128*5);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*6);
    SetLoc("CLoc79",12,SetTo,1664-128*6);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*7);
    SetLoc("CLoc79",12,SetTo,1664-128*7);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*8);
    SetLoc("CLoc79",12,SetTo,1664-128*8);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*9);
    SetLoc("CLoc79",12,SetTo,1664-128*9);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    SetLoc("CLoc79",4,SetTo,1600-128*10);
    SetLoc("CLoc79",12,SetTo,1664-128*10);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P4);
    GiveUnits(All,"Team Sniping Missile",P4,"Anywhere",P9);
    Order("Team Sniping Missile",P9,"Anywhere",Move,"4-7");
    PreserveTrigger();
},
}

Trigger { -- 포세 2팀
players = {P0},
conditions = {
    Void(365,AtLeast,1);
},
actions = {
    SetVoid(365,Add,1);
    SetVoid(367,Subtract,1);
    KillUnitAt(All,"Team Sniping Missile","1팀 뒤쪽",P10);
    PreserveTrigger();
},
}


Trigger {
players = {P0},
conditions = {
    Void(365,AtLeast,24*120);
    Bring(Force2, AtLeast, 4, "Creep Creater [U]", "전체필드");
},
actions = {
    SetCp(4);
    PlayWAV("staredit\\wav\\Notice.wav");
    DisplayText("\x19포세이돈(미사일)은\r\n\x16한맵에 한번만 제작이 가능합니다", 4);
    SetCp(5);
    PlayWAV("staredit\\wav\\Notice.wav");
    DisplayText("\x19포세이돈(미사일)은\r\n\x16한맵에 한번만 제작이 가능합니다", 4);
    SetCp(6);
    PlayWAV("staredit\\wav\\Notice.wav");
    DisplayText("\x19포세이돈(미사일)은\r\n\x16한맵에 한번만 제작이 가능합니다", 4);
    SetCp(7);
    PlayWAV("staredit\\wav\\Notice.wav");
    DisplayText("\x19포세이돈(미사일)은\r\n\x16한맵에 한번만 제작이 가능합니다", 4);
    SetCp(0);
},
}

Trigger {
players = {P0},
conditions = {
    Void(4,AtLeast,1);
    Bring(Force2, AtLeast, 4, "Creep Creater [U]", "전체필드");
},
actions = {
    SetCp(4);
    PlayWAV("staredit\\wav\\Notice.wav");
    DisplayText("\x16코발트미사일 사용도중에 사용할수 없습니다.", 4);
    SetCp(5);
    PlayWAV("staredit\\wav\\Notice.wav");
    DisplayText("\x16코발트미사일 사용도중에 사용할수 없습니다.", 4);
    SetCp(6);
    PlayWAV("staredit\\wav\\Notice.wav");
    DisplayText("\x16코발트미사일 사용도중에 사용할수 없습니다.", 4);
    SetCp(7);
    PlayWAV("staredit\\wav\\Notice.wav");
    DisplayText("\x16코발트미사일 사용도중에 사용할수 없습니다.", 4);
    SetCp(0);
},
}


Trigger {
players = {P0},
conditions = {
    Void(4,Exactly,0);
    Bring(Force2, AtLeast, 4, "Creep Creater [U]", "전체필드");
},
actions = {
    SetCp(0);
    PlayWAV("staredit\\wav\\SpeedMessage.wav");
    DisplayText("\x19Player Team2이 포세이돈(미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면 \"4개의 해처리\" 입니다", 4);
    SetCp(1);
    PlayWAV("staredit\\wav\\SpeedMessage.wav");
    DisplayText("\x19Player Team2이 포세이돈(미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면 \"4개의 해처리\" 입니다", 4);
    SetCp(2);
    PlayWAV("staredit\\wav\\SpeedMessage.wav");
    DisplayText("\x19Player Team2이 포세이돈(미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면 \"4개의 해처리\" 입니다", 4);
    SetCp(3);
    PlayWAV("staredit\\wav\\SpeedMessage.wav");
    DisplayText("\x19Player Team2이 포세이돈(미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면 \"4개의 해처리\" 입니다", 4);
    SetCp(4);
    PlayWAV("staredit\\wav\\SpeedMessage.wav");
    DisplayText("\x19Player Team2이 포세이돈(미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면 \"4개의 해처리\" 입니다", 4);
    SetCp(5);
    PlayWAV("staredit\\wav\\SpeedMessage.wav");
    DisplayText("\x19Player Team2이 포세이돈(미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면 \"4개의 해처리\" 입니다", 4);
    SetCp(6);
    PlayWAV("staredit\\wav\\SpeedMessage.wav");
    DisplayText("\x19Player Team2이 포세이돈(미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면 \"4개의 해처리\" 입니다", 4);
    SetCp(7);
    PlayWAV("staredit\\wav\\SpeedMessage.wav");
    DisplayText("\x19Player Team2이 포세이돈(미사일)을 제작했습니다.\r\n\x16제작 방법을 다시주자면 \"4개의 해처리\" 입니다", 4);
    SetCp(0);
    SetVoid(365,SetTo,1);
},
}

Trigger {
players = {P0},
conditions = {
    Void(369,Exactly,0);
    Void(367,Exactly,0);
    Void(365,AtLeast,1); Void(365,AtMost,24*120);
},
actions = {
    SetLoc("CLoc79",0,SetTo,480);
    SetLoc("CLoc79",8,SetTo,544);
    SetLoc("CLoc79",4,SetTo,384+128*0);
    SetLoc("CLoc79",12,SetTo,448+128*0);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*1);
    SetLoc("CLoc79",12,SetTo,448+128*1);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*2);
    SetLoc("CLoc79",12,SetTo,448+128*2);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*3);
    SetLoc("CLoc79",12,SetTo,448+128*3);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*4);
    SetLoc("CLoc79",12,SetTo,448+128*4);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*5);
    SetLoc("CLoc79",12,SetTo,448+128*5);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*6);
    SetLoc("CLoc79",12,SetTo,448+128*6);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*7);
    SetLoc("CLoc79",12,SetTo,448+128*7);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*8);
    SetLoc("CLoc79",12,SetTo,448+128*8);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*9);
    SetLoc("CLoc79",12,SetTo,448+128*9);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*10);
    SetLoc("CLoc79",12,SetTo,448+128*10);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    PreserveTrigger();
},
}
Trigger {
players = {P0},
conditions = {
    Void(369,Exactly,0);
    Void(367,Exactly,0);
    Void(365,AtLeast,1); Void(365,AtMost,24*120);
},
actions = {SetVoid(369,SetTo,1);	
    SetVoid(367,SetTo,20);
    SetLoc("CLoc79",0,SetTo,1504);
    SetLoc("CLoc79",8,SetTo,1568);
    SetLoc("CLoc79",4,SetTo,384+128*0);
    SetLoc("CLoc79",12,SetTo,448+128*0);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*1);
    SetLoc("CLoc79",12,SetTo,448+128*1);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*2);
    SetLoc("CLoc79",12,SetTo,448+128*2);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*3);
    SetLoc("CLoc79",12,SetTo,448+128*3);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*4);
    SetLoc("CLoc79",12,SetTo,448+128*4);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*5);
    SetLoc("CLoc79",12,SetTo,448+128*5);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*6);
    SetLoc("CLoc79",12,SetTo,448+128*6);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*7);
    SetLoc("CLoc79",12,SetTo,448+128*7);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*8);
    SetLoc("CLoc79",12,SetTo,448+128*8);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*9);
    SetLoc("CLoc79",12,SetTo,448+128*9);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    SetLoc("CLoc79",4,SetTo,384+128*10);
    SetLoc("CLoc79",12,SetTo,448+128*10);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P5);
    GiveUnits(All,"Team Sniping Missile",P5,"Anywhere",P10);
    Order("Team Sniping Missile",P10,"Anywhere",Move,"3-7");
    PreserveTrigger();
},
}

Trigger {
players = {P0},
conditions = {
    Void(369,Exactly,1);
    Void(367,Exactly,0);
    Void(365,AtLeast,1); Void(365,AtMost,24*120);
},
actions = {
    SetLoc("CLoc79",0,SetTo,480);
    SetLoc("CLoc79",8,SetTo,544);
    SetLoc("CLoc79",4,SetTo,384+128*0);
    SetLoc("CLoc79",12,SetTo,448+128*0);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*1);
    SetLoc("CLoc79",12,SetTo,448+128*1);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*2);
    SetLoc("CLoc79",12,SetTo,448+128*2);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*3);
    SetLoc("CLoc79",12,SetTo,448+128*3);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*4);
    SetLoc("CLoc79",12,SetTo,448+128*4);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*5);
    SetLoc("CLoc79",12,SetTo,448+128*5);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*6);
    SetLoc("CLoc79",12,SetTo,448+128*6);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*7);
    SetLoc("CLoc79",12,SetTo,448+128*7);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*8);
    SetLoc("CLoc79",12,SetTo,448+128*8);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*9);
    SetLoc("CLoc79",12,SetTo,448+128*9);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*10);
    SetLoc("CLoc79",12,SetTo,448+128*10);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    PreserveTrigger();
},
}
Trigger {
players = {P0},
conditions = {
    Void(369,Exactly,1);
    Void(367,Exactly,0);
    Void(365,AtLeast,1); Void(365,AtMost,24*120);
},
actions = {SetVoid(369,SetTo,2);	
    SetVoid(367,SetTo,20);
    SetLoc("CLoc79",0,SetTo,1504);
    SetLoc("CLoc79",8,SetTo,1568);
    SetLoc("CLoc79",4,SetTo,384+128*0);
    SetLoc("CLoc79",12,SetTo,448+128*0);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*1);
    SetLoc("CLoc79",12,SetTo,448+128*1);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*2);
    SetLoc("CLoc79",12,SetTo,448+128*2);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*3);
    SetLoc("CLoc79",12,SetTo,448+128*3);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*4);
    SetLoc("CLoc79",12,SetTo,448+128*4);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*5);
    SetLoc("CLoc79",12,SetTo,448+128*5);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*6);
    SetLoc("CLoc79",12,SetTo,448+128*6);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*7);
    SetLoc("CLoc79",12,SetTo,448+128*7);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*8);
    SetLoc("CLoc79",12,SetTo,448+128*8);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*9);
    SetLoc("CLoc79",12,SetTo,448+128*9);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    SetLoc("CLoc79",4,SetTo,384+128*10);
    SetLoc("CLoc79",12,SetTo,448+128*10);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P6);
    GiveUnits(All,"Team Sniping Missile",P6,"Anywhere",P10);
    Order("Team Sniping Missile",P10,"Anywhere",Move,"3-7");
    PreserveTrigger();
},
}


Trigger {
players = {P0},
conditions = {
    Void(369,Exactly,2);
    Void(367,Exactly,0);
    Void(365,AtLeast,1); Void(365,AtMost,24*120);
},
actions = {
    SetLoc("CLoc79",0,SetTo,480);
    SetLoc("CLoc79",8,SetTo,544);
    SetLoc("CLoc79",4,SetTo,384+128*0);
    SetLoc("CLoc79",12,SetTo,448+128*0);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*1);
    SetLoc("CLoc79",12,SetTo,448+128*1);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*2);
    SetLoc("CLoc79",12,SetTo,448+128*2);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*3);
    SetLoc("CLoc79",12,SetTo,448+128*3);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*4);
    SetLoc("CLoc79",12,SetTo,448+128*4);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*5);
    SetLoc("CLoc79",12,SetTo,448+128*5);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*6);
    SetLoc("CLoc79",12,SetTo,448+128*6);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*7);
    SetLoc("CLoc79",12,SetTo,448+128*7);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*8);
    SetLoc("CLoc79",12,SetTo,448+128*8);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*9);
    SetLoc("CLoc79",12,SetTo,448+128*9);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*10);
    SetLoc("CLoc79",12,SetTo,448+128*10);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    PreserveTrigger();
},
}
Trigger {
players = {P0},
conditions = {
    Void(369,Exactly,2);
    Void(367,Exactly,0);
    Void(365,AtLeast,1); Void(365,AtMost,24*120);
},
actions = {SetVoid(369,SetTo,3);	
    SetVoid(367,SetTo,20);
    SetLoc("CLoc79",0,SetTo,1504);
    SetLoc("CLoc79",8,SetTo,1568);
    SetLoc("CLoc79",4,SetTo,384+128*0);
    SetLoc("CLoc79",12,SetTo,448+128*0);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*1);
    SetLoc("CLoc79",12,SetTo,448+128*1);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*2);
    SetLoc("CLoc79",12,SetTo,448+128*2);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*3);
    SetLoc("CLoc79",12,SetTo,448+128*3);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*4);
    SetLoc("CLoc79",12,SetTo,448+128*4);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*5);
    SetLoc("CLoc79",12,SetTo,448+128*5);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*6);
    SetLoc("CLoc79",12,SetTo,448+128*6);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*7);
    SetLoc("CLoc79",12,SetTo,448+128*7);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*8);
    SetLoc("CLoc79",12,SetTo,448+128*8);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*9);
    SetLoc("CLoc79",12,SetTo,448+128*9);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    SetLoc("CLoc79",4,SetTo,384+128*10);
    SetLoc("CLoc79",12,SetTo,448+128*10);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P7);
    GiveUnits(All,"Team Sniping Missile",P7,"Anywhere",P10);
    Order("Team Sniping Missile",P10,"Anywhere",Move,"3-7");
    PreserveTrigger();
},
}


Trigger {
players = {P0},
conditions = {
    Void(369,Exactly,3);
    Void(367,Exactly,0);
    Void(365,AtLeast,1); Void(365,AtMost,24*120);
},
actions = {
    SetLoc("CLoc79",0,SetTo,480);
    SetLoc("CLoc79",8,SetTo,544);
    SetLoc("CLoc79",4,SetTo,384+128*0);
    SetLoc("CLoc79",12,SetTo,448+128*0);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*1);
    SetLoc("CLoc79",12,SetTo,448+128*1);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*2);
    SetLoc("CLoc79",12,SetTo,448+128*2);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*3);
    SetLoc("CLoc79",12,SetTo,448+128*3);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*4);
    SetLoc("CLoc79",12,SetTo,448+128*4);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*5);
    SetLoc("CLoc79",12,SetTo,448+128*5);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*6);
    SetLoc("CLoc79",12,SetTo,448+128*6);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*7);
    SetLoc("CLoc79",12,SetTo,448+128*7);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*8);
    SetLoc("CLoc79",12,SetTo,448+128*8);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*9);
    SetLoc("CLoc79",12,SetTo,448+128*9);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*10);
    SetLoc("CLoc79",12,SetTo,448+128*10);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    PreserveTrigger();
},
}
Trigger {
players = {P0},
conditions = {
    Void(369,Exactly,3);
    Void(367,Exactly,0);
    Void(365,AtLeast,1); Void(365,AtMost,24*120);
},
actions = {SetVoid(369,SetTo,0);	
    SetVoid(367,SetTo,20);
    SetLoc("CLoc79",0,SetTo,1504);
    SetLoc("CLoc79",8,SetTo,1568);
    SetLoc("CLoc79",4,SetTo,384+128*0);
    SetLoc("CLoc79",12,SetTo,448+128*0);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*1);
    SetLoc("CLoc79",12,SetTo,448+128*1);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*2);
    SetLoc("CLoc79",12,SetTo,448+128*2);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*3);
    SetLoc("CLoc79",12,SetTo,448+128*3);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*4);
    SetLoc("CLoc79",12,SetTo,448+128*4);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*5);
    SetLoc("CLoc79",12,SetTo,448+128*5);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*6);
    SetLoc("CLoc79",12,SetTo,448+128*6);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*7);
    SetLoc("CLoc79",12,SetTo,448+128*7);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*8);
    SetLoc("CLoc79",12,SetTo,448+128*8);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*9);
    SetLoc("CLoc79",12,SetTo,448+128*9);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    SetLoc("CLoc79",4,SetTo,384+128*10);
    SetLoc("CLoc79",12,SetTo,448+128*10);
    CreateUnit(1, "Team Sniping Missile", "CLoc79", P8);
    GiveUnits(All,"Team Sniping Missile",P8,"Anywhere",P10);
    Order("Team Sniping Missile",P10,"Anywhere",Move,"3-7");
    PreserveTrigger();
},
}







end