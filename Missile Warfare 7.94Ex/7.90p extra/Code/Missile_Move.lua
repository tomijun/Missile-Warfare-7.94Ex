function SUB_Missile_Move()

    -- 미사일 이동 Men -------------------------------------------------------------------------------
for i = 0, 3 do -- 1팀 이동 ＃
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Fast Mini Missile", i, "1-0", Move, "4-0");
            Order("Fast Mini Missile", i, "1-1", Move, "4-1");
            Order("Fast Mini Missile", i, "1-2", Move, "4-2");
            Order("Fast Mini Missile", i, "1-3", Move, "4-3");
            Order("Fast Mini Missile", i, "1-4", Move, "4-4");
            Order("Fast Mini Missile", i, "1-5", Move, "4-5");
            Order("Fast Mini Missile", i, "1-6", Move, "4-6");
            Order("Fast Mini Missile", i, "1-7", Move, "4-7");
            Order("Fast Mini Missile", i, "1-8", Move, "4-8");
            Order("Fast Mini Missile", i, "1-9", Move, "4-9");
            Order("Fast Mini Missile", i, "1-10", Move, "4-10");
            Order("Fast Mini Missile", i, "1-11", Move, "4-11");
            Order("Fast Mini Missile", i, "1-12", Move, "4-12");
            Order("Fast Mini Missile", i, "1-13", Move, "4-13");
            Order("Fast Mini Missile", i, "1-14", Move, "4-14");

            Order("Mini Missile", i, "1-0", Move, "4-0");
            Order("Mini Missile", i, "1-1", Move, "4-1");
            Order("Mini Missile", i, "1-2", Move, "4-2");
            Order("Mini Missile", i, "1-3", Move, "4-3");
            Order("Mini Missile", i, "1-4", Move, "4-4");
            Order("Mini Missile", i, "1-5", Move, "4-5");
            Order("Mini Missile", i, "1-6", Move, "4-6");
            Order("Mini Missile", i, "1-7", Move, "4-7");
            Order("Mini Missile", i, "1-8", Move, "4-8");
            Order("Mini Missile", i, "1-9", Move, "4-9");
            Order("Mini Missile", i, "1-10", Move, "4-10");
            Order("Mini Missile", i, "1-11", Move, "4-11");
            Order("Mini Missile", i, "1-12", Move, "4-12");
            Order("Mini Missile", i, "1-13", Move, "4-13");
            Order("Mini Missile", i, "1-14", Move, "4-14");
            PreserveTrigger();
        },
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Homing Missile", i, "1-0", Move, "4-0");
            Order("Homing Missile", i, "1-1", Move, "4-1");
            Order("Homing Missile", i, "1-2", Move, "4-2");
            Order("Homing Missile", i, "1-3", Move, "4-3");
            Order("Homing Missile", i, "1-4", Move, "4-4");
            Order("Homing Missile", i, "1-5", Move, "4-5");
            Order("Homing Missile", i, "1-6", Move, "4-6");
            Order("Homing Missile", i, "1-7", Move, "4-7");
            Order("Homing Missile", i, "1-8", Move, "4-8");
            Order("Homing Missile", i, "1-9", Move, "4-9");
            Order("Homing Missile", i, "1-10", Move, "4-10");
            Order("Homing Missile", i, "1-11", Move, "4-11");
            Order("Homing Missile", i, "1-12", Move, "4-12");
            Order("Homing Missile", i, "1-13", Move, "4-13");
            Order("Homing Missile", i, "1-14", Move, "4-14");
            PreserveTrigger();
        },
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Slow Missile", i, "1-0", Move, "4-0");
            Order("Slow Missile", i, "1-1", Move, "4-1");
            Order("Slow Missile", i, "1-2", Move, "4-2");
            Order("Slow Missile", i, "1-3", Move, "4-3");
            Order("Slow Missile", i, "1-4", Move, "4-4");
            Order("Slow Missile", i, "1-5", Move, "4-5");
            Order("Slow Missile", i, "1-6", Move, "4-6");
            Order("Slow Missile", i, "1-7", Move, "4-7");
            Order("Slow Missile", i, "1-8", Move, "4-8");
            Order("Slow Missile", i, "1-9", Move, "4-9");
            Order("Slow Missile", i, "1-10", Move, "4-10");
            Order("Slow Missile", i, "1-11", Move, "4-11");
            Order("Slow Missile", i, "1-12", Move, "4-12");
            Order("Slow Missile", i, "1-13", Move, "4-13");
            Order("Slow Missile", i, "1-14", Move, "4-14");
            PreserveTrigger();
        },
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Missile", i, "1-0", Move, "4-0");
            Order("Missile", i, "1-1", Move, "4-1");
            Order("Missile", i, "1-2", Move, "4-2");
            Order("Missile", i, "1-3", Move, "4-3");
            Order("Missile", i, "1-4", Move, "4-4");
            Order("Missile", i, "1-5", Move, "4-5");
            Order("Missile", i, "1-6", Move, "4-6");
            Order("Missile", i, "1-7", Move, "4-7");
            Order("Missile", i, "1-8", Move, "4-8");
            Order("Missile", i, "1-9", Move, "4-9");
            Order("Missile", i, "1-10", Move, "4-10");
            Order("Missile", i, "1-11", Move, "4-11");
            Order("Missile", i, "1-12", Move, "4-12");
            Order("Missile", i, "1-13", Move, "4-13");
            Order("Missile", i, "1-14", Move, "4-14");
            PreserveTrigger();
        },
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Fast Missile", i, "1-0", Move, "4-0");
            Order("Fast Missile", i, "1-1", Move, "4-1");
            Order("Fast Missile", i, "1-2", Move, "4-2");
            Order("Fast Missile", i, "1-3", Move, "4-3");
            Order("Fast Missile", i, "1-4", Move, "4-4");
            Order("Fast Missile", i, "1-5", Move, "4-5");
            Order("Fast Missile", i, "1-6", Move, "4-6");
            Order("Fast Missile", i, "1-7", Move, "4-7");
            Order("Fast Missile", i, "1-8", Move, "4-8");
            Order("Fast Missile", i, "1-9", Move, "4-9");
            Order("Fast Missile", i, "1-10", Move, "4-10");
            Order("Fast Missile", i, "1-11", Move, "4-11");
            Order("Fast Missile", i, "1-12", Move, "4-12");
            Order("Fast Missile", i, "1-13", Move, "4-13");
            Order("Fast Missile", i, "1-14", Move, "4-14");
            PreserveTrigger();
        },
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Refractor", i, "1-0", Move, "4-0");
            Order("Refractor", i, "1-1", Move, "4-1");
            Order("Refractor", i, "1-2", Move, "4-2");
            Order("Refractor", i, "1-3", Move, "4-3");
            Order("Refractor", i, "1-4", Move, "4-4");
            Order("Refractor", i, "1-5", Move, "4-5");
            Order("Refractor", i, "1-6", Move, "4-6");
            Order("Refractor", i, "1-7", Move, "4-7");
            Order("Refractor", i, "1-8", Move, "4-8");
            Order("Refractor", i, "1-9", Move, "4-9");
            Order("Refractor", i, "1-10", Move, "4-10");
            Order("Refractor", i, "1-11", Move, "4-11");
            Order("Refractor", i, "1-12", Move, "4-12");
            Order("Refractor", i, "1-13", Move, "4-13");
            Order("Refractor", i, "1-14", Move, "4-14");
            PreserveTrigger();
        },
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Sniping Missile", i, "1-0", Move, "4-0");
            Order("Sniping Missile", i, "1-1", Move, "4-1");
            Order("Sniping Missile", i, "1-2", Move, "4-2");
            Order("Sniping Missile", i, "1-3", Move, "4-3");
            Order("Sniping Missile", i, "1-4", Move, "4-4");
            Order("Sniping Missile", i, "1-5", Move, "4-5");
            Order("Sniping Missile", i, "1-6", Move, "4-6");
            Order("Sniping Missile", i, "1-7", Move, "4-7");
            Order("Sniping Missile", i, "1-8", Move, "4-8");
            Order("Sniping Missile", i, "1-9", Move, "4-9");
            Order("Sniping Missile", i, "1-10", Move, "4-10");
            Order("Sniping Missile", i, "1-11", Move, "4-11");
            Order("Sniping Missile", i, "1-12", Move, "4-12");
            Order("Sniping Missile", i, "1-13", Move, "4-13");
            Order("Sniping Missile", i, "1-14", Move, "4-14");
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (E2FAC5CA)
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Super Missile", i, "1-0", Move, "LairDL");
            Order("Super Missile", i, "1-1", Move, "LairDL");
            Order("Super Missile", i, "1-2", Move, "LairDL");
            Order("Super Missile", i, "1-12", Move, "LairDR");
            Order("Super Missile", i, "1-13", Move, "LairDR");
            Order("Super Missile", i, "1-14", Move, "LairDR");
            Order("Super Missile", i, "LairDL", Move, "LairDDR");
            Order("Super Missile", i, "LairDR", Move, "LairDDL");
            Order("Super Missile", i, "LairDDL", Move, "2팀 뒤쪽");
            Order("Super Missile", i, "LairDDR", Move, "2팀 뒤쪽");

            Order("Super Missile", i, "1-3", Move, "HiveCUL");
            Order("Super Missile", i, "1-4", Move, "HiveCUL");
            Order("Super Missile", i, "1-5", Move, "HiveCUL");
            Order("Super Missile", i, "1-9", Move, "HiveCUR");
            Order("Super Missile", i, "1-10", Move, "HiveCUR");
            Order("Super Missile", i, "1-11", Move, "HiveCUR");
            Order("Super Missile", i, "HiveCU", Move, "4-7");
            Order("Super Missile", i, "HiveCUL", Move, "HiveL");
            Order("Super Missile", i, "HiveCUR", Move, "HiveR");
            Order("Super Missile", i, "HiveL", Move, "HiveDR");
            Order("Super Missile", i, "HiveR", Move, "HiveDL");
            Order("Super Missile", i, "HiveDL", Move, "4-14");
            Order("Super Missile", i, "HiveDR", Move, "4-0");
            PreserveTrigger();
        },
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Big Sniping Missile", i, "1-0", Move, "4-0");
            Order("Big Sniping Missile", i, "1-1", Move, "4-1");
            Order("Big Sniping Missile", i, "1-2", Move, "4-2");
            Order("Big Sniping Missile", i, "1-3", Move, "4-3");
            Order("Big Sniping Missile", i, "1-4", Move, "4-4");
            Order("Big Sniping Missile", i, "1-5", Move, "4-5");
            Order("Big Sniping Missile", i, "1-6", Move, "4-6");
            Order("Big Sniping Missile", i, "1-7", Move, "4-7");
            Order("Big Sniping Missile", i, "1-8", Move, "4-8");
            Order("Big Sniping Missile", i, "1-9", Move, "4-9");
            Order("Big Sniping Missile", i, "1-10", Move, "4-10");
            Order("Big Sniping Missile", i, "1-11", Move, "4-11");
            Order("Big Sniping Missile", i, "1-12", Move, "4-12");
            Order("Big Sniping Missile", i, "1-13", Move, "4-13");
            Order("Big Sniping Missile", i, "1-14", Move, "4-14");
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (322669DE)
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Always();
        },
        actions = {
            Order("Hydrogen Bomb", i, "Anywhere", Move, "2팀필드");
            PreserveTrigger();
        },
    }
    
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Penetrating Missile★", i, "1-0", Move, "4-0");
            Order("Penetrating Missile★", i, "1-1", Move, "4-1");
            Order("Penetrating Missile★", i, "1-2", Move, "4-2");
            Order("Penetrating Missile★", i, "1-3", Move, "4-3");
            Order("Penetrating Missile★", i, "1-4", Move, "4-4");
            Order("Penetrating Missile★", i, "1-5", Move, "4-5");
            Order("Penetrating Missile★", i, "1-6", Move, "4-6");
            Order("Penetrating Missile★", i, "1-7", Move, "4-7");
            Order("Penetrating Missile★", i, "1-8", Move, "4-8");
            Order("Penetrating Missile★", i, "1-9", Move, "4-9");
            Order("Penetrating Missile★", i, "1-10", Move, "4-10");
            Order("Penetrating Missile★", i, "1-11", Move, "4-11");
            Order("Penetrating Missile★", i, "1-12", Move, "4-12");
            Order("Penetrating Missile★", i, "1-13", Move, "4-13");
            Order("Penetrating Missile★", i, "1-14", Move, "4-14");
            PreserveTrigger();
        },
    }

    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Invisible Missile☆", i, "1-0", Move, "4-0");
            Order("Invisible Missile☆", i, "1-1", Move, "4-1");
            Order("Invisible Missile☆", i, "1-2", Move, "4-2");
            Order("Invisible Missile☆", i, "1-3", Move, "4-3");
            Order("Invisible Missile☆", i, "1-4", Move, "4-4");
            Order("Invisible Missile☆", i, "1-5", Move, "4-5");
            Order("Invisible Missile☆", i, "1-6", Move, "4-6");
            Order("Invisible Missile☆", i, "1-7", Move, "4-7");
            Order("Invisible Missile☆", i, "1-8", Move, "4-8");
            Order("Invisible Missile☆", i, "1-9", Move, "4-9");
            Order("Invisible Missile☆", i, "1-10", Move, "4-10");
            Order("Invisible Missile☆", i, "1-11", Move, "4-11");
            Order("Invisible Missile☆", i, "1-12", Move, "4-12");
            Order("Invisible Missile☆", i, "1-13", Move, "4-13");
            Order("Invisible Missile☆", i, "1-14", Move, "4-14");
            PreserveTrigger();
        },
    }
    
    local k = i+6
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Cleared);
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",4,SetTo,368);
            SetLoc("ProbeS",12,SetTo,816);
            SetLoc("ProbeE",4,SetTo,1792);
            SetLoc("ProbeE",12,SetTo,1856);

            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            SetLoc("ProbeE",0,SetTo,640+64*0);
            SetLoc("ProbeE",8,SetTo,704+64*0);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*1);
            SetLoc("ProbeS",8,SetTo,704+64*1);
            SetLoc("ProbeE",0,SetTo,640+64*1);
            SetLoc("ProbeE",8,SetTo,704+64*1);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*2);
            SetLoc("ProbeS",8,SetTo,704+64*2);
            SetLoc("ProbeE",0,SetTo,640+64*2);
            SetLoc("ProbeE",8,SetTo,704+64*2);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*3);
            SetLoc("ProbeS",8,SetTo,704+64*3);
            SetLoc("ProbeE",0,SetTo,640+64*3);
            SetLoc("ProbeE",8,SetTo,704+64*3);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*4);
            SetLoc("ProbeS",8,SetTo,704+64*4);
            SetLoc("ProbeE",0,SetTo,640+64*4);
            SetLoc("ProbeE",8,SetTo,704+64*4);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*5);
            SetLoc("ProbeS",8,SetTo,704+64*5);
            SetLoc("ProbeE",0,SetTo,640+64*5);
            SetLoc("ProbeE",8,SetTo,704+64*5);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
        },
        flag = {Preserved}
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Cleared);
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,640+64*6);
            SetLoc("ProbeS",8,SetTo,704+64*6);
            SetLoc("ProbeE",0,SetTo,640+64*6);
            SetLoc("ProbeE",8,SetTo,704+64*6);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*7);
            SetLoc("ProbeS",8,SetTo,704+64*7);
            SetLoc("ProbeE",0,SetTo,640+64*7);
            SetLoc("ProbeE",8,SetTo,704+64*7);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*8);
            SetLoc("ProbeS",8,SetTo,704+64*8);
            SetLoc("ProbeE",0,SetTo,640+64*8);
            SetLoc("ProbeE",8,SetTo,704+64*8);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*9);
            SetLoc("ProbeS",8,SetTo,704+64*9);
            SetLoc("ProbeE",0,SetTo,640+64*9);
            SetLoc("ProbeE",8,SetTo,704+64*9);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*10);
            SetLoc("ProbeS",8,SetTo,704+64*10);
            SetLoc("ProbeE",0,SetTo,640+64*10);
            SetLoc("ProbeE",8,SetTo,704+64*10);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            SetLoc("ProbeE",0,SetTo,640+64*11);
            SetLoc("ProbeE",8,SetTo,704+64*11);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
        },
        flag = {Preserved}
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Cleared);
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",4,SetTo,368);
            SetLoc("ProbeS",12,SetTo,816);
            SetLoc("ProbeE",4,SetTo,1792);
            SetLoc("ProbeE",12,SetTo,1856);

            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            SetLoc("ProbeE",0,SetTo,640+64*0);
            SetLoc("ProbeE",8,SetTo,704+64*0);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*1);
            SetLoc("ProbeS",8,SetTo,704+64*1);
            SetLoc("ProbeE",0,SetTo,640+64*1);
            SetLoc("ProbeE",8,SetTo,704+64*1);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*2);
            SetLoc("ProbeS",8,SetTo,704+64*2);
            SetLoc("ProbeE",0,SetTo,640+64*2);
            SetLoc("ProbeE",8,SetTo,704+64*2);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*3);
            SetLoc("ProbeS",8,SetTo,704+64*3);
            SetLoc("ProbeE",0,SetTo,640+64*3);
            SetLoc("ProbeE",8,SetTo,704+64*3);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*4);
            SetLoc("ProbeS",8,SetTo,704+64*4);
            SetLoc("ProbeE",0,SetTo,640+64*4);
            SetLoc("ProbeE",8,SetTo,704+64*4);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*5);
            SetLoc("ProbeS",8,SetTo,704+64*5);
            SetLoc("ProbeE",0,SetTo,640+64*5);
            SetLoc("ProbeE",8,SetTo,704+64*5);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
        },
        flag = {Preserved}
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Cleared);
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,640+64*6);
            SetLoc("ProbeS",8,SetTo,704+64*6);
            SetLoc("ProbeE",0,SetTo,640+64*6);
            SetLoc("ProbeE",8,SetTo,704+64*6);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*7);
            SetLoc("ProbeS",8,SetTo,704+64*7);
            SetLoc("ProbeE",0,SetTo,640+64*7);
            SetLoc("ProbeE",8,SetTo,704+64*7);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*8);
            SetLoc("ProbeS",8,SetTo,704+64*8);
            SetLoc("ProbeE",0,SetTo,640+64*8);
            SetLoc("ProbeE",8,SetTo,704+64*8);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*9);
            SetLoc("ProbeS",8,SetTo,704+64*9);
            SetLoc("ProbeE",0,SetTo,640+64*9);
            SetLoc("ProbeE",8,SetTo,704+64*9);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*10);
            SetLoc("ProbeS",8,SetTo,704+64*10);
            SetLoc("ProbeE",0,SetTo,640+64*10);
            SetLoc("ProbeE",8,SetTo,704+64*10);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            SetLoc("ProbeE",0,SetTo,640+64*11);
            SetLoc("ProbeE",8,SetTo,704+64*11);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
        },
        flag = {Preserved}
    }
    
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Cleared);
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",4,SetTo,368);
            SetLoc("ProbeS",12,SetTo,816);
            SetLoc("ProbeE",4,SetTo,1792);
            SetLoc("ProbeE",12,SetTo,1856);

            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            SetLoc("ProbeE",0,SetTo,640+64*0);
            SetLoc("ProbeE",8,SetTo,704+64*0);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*1);
            SetLoc("ProbeS",8,SetTo,704+64*1);
            SetLoc("ProbeE",0,SetTo,640+64*1);
            SetLoc("ProbeE",8,SetTo,704+64*1);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*2);
            SetLoc("ProbeS",8,SetTo,704+64*2);
            SetLoc("ProbeE",0,SetTo,640+64*2);
            SetLoc("ProbeE",8,SetTo,704+64*2);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*3);
            SetLoc("ProbeS",8,SetTo,704+64*3);
            SetLoc("ProbeE",0,SetTo,640+64*3);
            SetLoc("ProbeE",8,SetTo,704+64*3);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*4);
            SetLoc("ProbeS",8,SetTo,704+64*4);
            SetLoc("ProbeE",0,SetTo,640+64*4);
            SetLoc("ProbeE",8,SetTo,704+64*4);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*5);
            SetLoc("ProbeS",8,SetTo,704+64*5);
            SetLoc("ProbeE",0,SetTo,640+64*5);
            SetLoc("ProbeE",8,SetTo,704+64*5);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
        },
        flag = {Preserved}
    }

    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Cleared);
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,640+64*6);
            SetLoc("ProbeS",8,SetTo,704+64*6);
            SetLoc("ProbeE",0,SetTo,640+64*6);
            SetLoc("ProbeE",8,SetTo,704+64*6);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*7);
            SetLoc("ProbeS",8,SetTo,704+64*7);
            SetLoc("ProbeE",0,SetTo,640+64*7);
            SetLoc("ProbeE",8,SetTo,704+64*7);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*8);
            SetLoc("ProbeS",8,SetTo,704+64*8);
            SetLoc("ProbeE",0,SetTo,640+64*8);
            SetLoc("ProbeE",8,SetTo,704+64*8);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*9);
            SetLoc("ProbeS",8,SetTo,704+64*9);
            SetLoc("ProbeE",0,SetTo,640+64*9);
            SetLoc("ProbeE",8,SetTo,704+64*9);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*10);
            SetLoc("ProbeS",8,SetTo,704+64*10);
            SetLoc("ProbeE",0,SetTo,640+64*10);
            SetLoc("ProbeE",8,SetTo,704+64*10);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            SetLoc("ProbeE",0,SetTo,640+64*11);
            SetLoc("ProbeE",8,SetTo,704+64*11);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
        },
        flag = {Preserved}
    }
    
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Set);
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",4,SetTo,368);
            SetLoc("ProbeS",12,SetTo,816);
            SetLoc("ProbeE",4,SetTo,1792);
            SetLoc("ProbeE",12,SetTo,1856);

            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            SetLoc("ProbeE",0,SetTo,640+64*11);
            SetLoc("ProbeE",8,SetTo,704+64*11);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*10);
            SetLoc("ProbeS",8,SetTo,704+64*10);
            SetLoc("ProbeE",0,SetTo,640+64*10);
            SetLoc("ProbeE",8,SetTo,704+64*10);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*9);
            SetLoc("ProbeS",8,SetTo,704+64*9);
            SetLoc("ProbeE",0,SetTo,640+64*9);
            SetLoc("ProbeE",8,SetTo,704+64*9);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*8);
            SetLoc("ProbeS",8,SetTo,704+64*8);
            SetLoc("ProbeE",0,SetTo,640+64*8);
            SetLoc("ProbeE",8,SetTo,704+64*8);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*7);
            SetLoc("ProbeS",8,SetTo,704+64*7);
            SetLoc("ProbeE",0,SetTo,640+64*7);
            SetLoc("ProbeE",8,SetTo,704+64*7);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*6);
            SetLoc("ProbeS",8,SetTo,704+64*6);
            SetLoc("ProbeE",0,SetTo,640+64*6);
            SetLoc("ProbeE",8,SetTo,704+64*6);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
        },
        flag = {Preserved}
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Set);
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,640+64*5);
            SetLoc("ProbeS",8,SetTo,704+64*5);
            SetLoc("ProbeE",0,SetTo,640+64*5);
            SetLoc("ProbeE",8,SetTo,704+64*5);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*4);
            SetLoc("ProbeS",8,SetTo,704+64*4);
            SetLoc("ProbeE",0,SetTo,640+64*4);
            SetLoc("ProbeE",8,SetTo,704+64*4);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*3);
            SetLoc("ProbeS",8,SetTo,704+64*3);
            SetLoc("ProbeE",0,SetTo,640+64*3);
            SetLoc("ProbeE",8,SetTo,704+64*3);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*2);
            SetLoc("ProbeS",8,SetTo,704+64*2);
            SetLoc("ProbeE",0,SetTo,640+64*2);
            SetLoc("ProbeE",8,SetTo,704+64*2);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*1);
            SetLoc("ProbeS",8,SetTo,704+64*1);
            SetLoc("ProbeE",0,SetTo,640+64*1);
            SetLoc("ProbeE",8,SetTo,704+64*1);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            SetLoc("ProbeE",0,SetTo,640+64*0);
            SetLoc("ProbeE",8,SetTo,704+64*0);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            PreserveTrigger();
        },
        flag = {Preserved}
    }

    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Set);
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",4,SetTo,368);
            SetLoc("ProbeS",12,SetTo,816);
            SetLoc("ProbeE",4,SetTo,1792);
            SetLoc("ProbeE",12,SetTo,1856);

            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            SetLoc("ProbeE",0,SetTo,640+64*11);
            SetLoc("ProbeE",8,SetTo,704+64*11);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*10);
            SetLoc("ProbeS",8,SetTo,704+64*10);
            SetLoc("ProbeE",0,SetTo,640+64*10);
            SetLoc("ProbeE",8,SetTo,704+64*10);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*9);
            SetLoc("ProbeS",8,SetTo,704+64*9);
            SetLoc("ProbeE",0,SetTo,640+64*9);
            SetLoc("ProbeE",8,SetTo,704+64*9);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*8);
            SetLoc("ProbeS",8,SetTo,704+64*8);
            SetLoc("ProbeE",0,SetTo,640+64*8);
            SetLoc("ProbeE",8,SetTo,704+64*8);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*7);
            SetLoc("ProbeS",8,SetTo,704+64*7);
            SetLoc("ProbeE",0,SetTo,640+64*7);
            SetLoc("ProbeE",8,SetTo,704+64*7);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*6);
            SetLoc("ProbeS",8,SetTo,704+64*6);
            SetLoc("ProbeE",0,SetTo,640+64*6);
            SetLoc("ProbeE",8,SetTo,704+64*6);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
        },
        flag = {Preserved}
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Set);
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,640+64*5);
            SetLoc("ProbeS",8,SetTo,704+64*5);
            SetLoc("ProbeE",0,SetTo,640+64*5);
            SetLoc("ProbeE",8,SetTo,704+64*5);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*4);
            SetLoc("ProbeS",8,SetTo,704+64*4);
            SetLoc("ProbeE",0,SetTo,640+64*4);
            SetLoc("ProbeE",8,SetTo,704+64*4);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*3);
            SetLoc("ProbeS",8,SetTo,704+64*3);
            SetLoc("ProbeE",0,SetTo,640+64*3);
            SetLoc("ProbeE",8,SetTo,704+64*3);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*2);
            SetLoc("ProbeS",8,SetTo,704+64*2);
            SetLoc("ProbeE",0,SetTo,640+64*2);
            SetLoc("ProbeE",8,SetTo,704+64*2);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*1);
            SetLoc("ProbeS",8,SetTo,704+64*1);
            SetLoc("ProbeE",0,SetTo,640+64*1);
            SetLoc("ProbeE",8,SetTo,704+64*1);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            SetLoc("ProbeE",0,SetTo,640+64*0);
            SetLoc("ProbeE",8,SetTo,704+64*0);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
        },
        flag = {Preserved}
    }
    
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Set);
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",4,SetTo,368);
            SetLoc("ProbeS",12,SetTo,816);
            SetLoc("ProbeE",4,SetTo,1792);
            SetLoc("ProbeE",12,SetTo,1856);

            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            SetLoc("ProbeE",0,SetTo,640+64*11);
            SetLoc("ProbeE",8,SetTo,704+64*11);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*10);
            SetLoc("ProbeS",8,SetTo,704+64*10);
            SetLoc("ProbeE",0,SetTo,640+64*10);
            SetLoc("ProbeE",8,SetTo,704+64*10);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*9);
            SetLoc("ProbeS",8,SetTo,704+64*9);
            SetLoc("ProbeE",0,SetTo,640+64*9);
            SetLoc("ProbeE",8,SetTo,704+64*9);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*8);
            SetLoc("ProbeS",8,SetTo,704+64*8);
            SetLoc("ProbeE",0,SetTo,640+64*8);
            SetLoc("ProbeE",8,SetTo,704+64*8);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*7);
            SetLoc("ProbeS",8,SetTo,704+64*7);
            SetLoc("ProbeE",0,SetTo,640+64*7);
            SetLoc("ProbeE",8,SetTo,704+64*7);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*6);
            SetLoc("ProbeS",8,SetTo,704+64*6);
            SetLoc("ProbeE",0,SetTo,640+64*6);
            SetLoc("ProbeE",8,SetTo,704+64*6);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
        },
        flag = {Preserved}
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Set);
            Void(71,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,640+64*5);
            SetLoc("ProbeS",8,SetTo,704+64*5);
            SetLoc("ProbeE",0,SetTo,640+64*5);
            SetLoc("ProbeE",8,SetTo,704+64*5);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*4);
            SetLoc("ProbeS",8,SetTo,704+64*4);
            SetLoc("ProbeE",0,SetTo,640+64*4);
            SetLoc("ProbeE",8,SetTo,704+64*4);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*3);
            SetLoc("ProbeS",8,SetTo,704+64*3);
            SetLoc("ProbeE",0,SetTo,640+64*3);
            SetLoc("ProbeE",8,SetTo,704+64*3);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*2);
            SetLoc("ProbeS",8,SetTo,704+64*2);
            SetLoc("ProbeE",0,SetTo,640+64*2);
            SetLoc("ProbeE",8,SetTo,704+64*2);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*1);
            SetLoc("ProbeS",8,SetTo,704+64*1);
            SetLoc("ProbeE",0,SetTo,640+64*1);
            SetLoc("ProbeE",8,SetTo,704+64*1);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            SetLoc("ProbeE",0,SetTo,640+64*0);
            SetLoc("ProbeE",8,SetTo,704+64*0);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
        },
        flag = {Preserved}
    }

    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(31+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,512);
            SetLoc("ProbeS",8,SetTo,576);
            SetLoc("ProbeE",0,SetTo,1600);
            SetLoc("ProbeE",8,SetTo,1664);

            SetLoc("ProbeS",4,SetTo,1232+32*0);
            SetLoc("ProbeS",12,SetTo,1260+32*0);
            SetLoc("ProbeE",4,SetTo,1232+32*0);
            SetLoc("ProbeE",12,SetTo,1264+32*0);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*1);
            SetLoc("ProbeS",12,SetTo,1260+32*1);
            SetLoc("ProbeE",4,SetTo,1232+32*1);
            SetLoc("ProbeE",12,SetTo,1264+32*1);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*2);
            SetLoc("ProbeS",12,SetTo,1260+32*2);
            SetLoc("ProbeE",4,SetTo,1232+32*2);
            SetLoc("ProbeE",12,SetTo,1264+32*2);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*3);
            SetLoc("ProbeS",12,SetTo,1260+32*3);
            SetLoc("ProbeE",4,SetTo,1232+32*3);
            SetLoc("ProbeE",12,SetTo,1264+32*3);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*4);
            SetLoc("ProbeS",12,SetTo,1260+32*4);
            SetLoc("ProbeE",4,SetTo,1232+32*4);
            SetLoc("ProbeE",12,SetTo,1264+32*4);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*5);
            SetLoc("ProbeS",12,SetTo,1260+32*5);
            SetLoc("ProbeE",4,SetTo,1232+32*5);
            SetLoc("ProbeE",12,SetTo,1264+32*5);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*6);
            SetLoc("ProbeS",12,SetTo,1260+32*6);
            SetLoc("ProbeE",4,SetTo,1232+32*6);
            SetLoc("ProbeE",12,SetTo,1264+32*6);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*7);
            SetLoc("ProbeS",12,SetTo,1260+32*7);
            SetLoc("ProbeE",4,SetTo,1232+32*7);
            SetLoc("ProbeE",12,SetTo,1264+32*7);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*8);
            SetLoc("ProbeS",12,SetTo,1260+32*8);
            SetLoc("ProbeE",4,SetTo,1232+32*8);
            SetLoc("ProbeE",12,SetTo,1264+32*8);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*9);
            SetLoc("ProbeS",12,SetTo,1260+32*9);
            SetLoc("ProbeE",4,SetTo,1232+32*9);
            SetLoc("ProbeE",12,SetTo,1264+32*9);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
        },
        flag = {Preserved}
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(31+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",4,SetTo,1228+32*10);
            SetLoc("ProbeS",12,SetTo,1260+32*10);
            SetLoc("ProbeE",4,SetTo,1232+32*10);
            SetLoc("ProbeE",12,SetTo,1264+32*10);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*11);
            SetLoc("ProbeS",12,SetTo,1260+32*11);
            SetLoc("ProbeE",4,SetTo,1232+32*11);
            SetLoc("ProbeE",12,SetTo,1264+32*11);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*12);
            SetLoc("ProbeS",12,SetTo,1260+32*12);
            SetLoc("ProbeE",4,SetTo,1232+32*12);
            SetLoc("ProbeE",12,SetTo,1264+32*12);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*13);
            SetLoc("ProbeS",12,SetTo,1264+32*13);
            SetLoc("ProbeE",4,SetTo,1232+32*13);
            SetLoc("ProbeE",12,SetTo,1264+32*13);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
        },
        flag = {Preserved}
    }

    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(31+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,512);
            SetLoc("ProbeS",8,SetTo,576);
            SetLoc("ProbeE",0,SetTo,1600);
            SetLoc("ProbeE",8,SetTo,1664);

            SetLoc("ProbeS",4,SetTo,1232+32*0);
            SetLoc("ProbeS",12,SetTo,1260+32*0);
            SetLoc("ProbeE",4,SetTo,1232+32*0);
            SetLoc("ProbeE",12,SetTo,1264+32*0);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*1);
            SetLoc("ProbeS",12,SetTo,1260+32*1);
            SetLoc("ProbeE",4,SetTo,1232+32*1);
            SetLoc("ProbeE",12,SetTo,1264+32*1);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*2);
            SetLoc("ProbeS",12,SetTo,1260+32*2);
            SetLoc("ProbeE",4,SetTo,1232+32*2);
            SetLoc("ProbeE",12,SetTo,1264+32*2);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*3);
            SetLoc("ProbeS",12,SetTo,1260+32*3);
            SetLoc("ProbeE",4,SetTo,1232+32*3);
            SetLoc("ProbeE",12,SetTo,1264+32*3);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*4);
            SetLoc("ProbeS",12,SetTo,1260+32*4);
            SetLoc("ProbeE",4,SetTo,1232+32*4);
            SetLoc("ProbeE",12,SetTo,1264+32*4);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*5);
            SetLoc("ProbeS",12,SetTo,1260+32*5);
            SetLoc("ProbeE",4,SetTo,1232+32*5);
            SetLoc("ProbeE",12,SetTo,1264+32*5);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*6);
            SetLoc("ProbeS",12,SetTo,1260+32*6);
            SetLoc("ProbeE",4,SetTo,1232+32*6);
            SetLoc("ProbeE",12,SetTo,1264+32*6);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*7);
            SetLoc("ProbeS",12,SetTo,1260+32*7);
            SetLoc("ProbeE",4,SetTo,1232+32*7);
            SetLoc("ProbeE",12,SetTo,1264+32*7);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*8);
            SetLoc("ProbeS",12,SetTo,1260+32*8);
            SetLoc("ProbeE",4,SetTo,1232+32*8);
            SetLoc("ProbeE",12,SetTo,1264+32*8);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*9);
            SetLoc("ProbeS",12,SetTo,1260+32*9);
            SetLoc("ProbeE",4,SetTo,1232+32*9);
            SetLoc("ProbeE",12,SetTo,1264+32*9);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
        },
        flag = {Preserved}
    }
    
    Trigger { -- No comment (051A2E5B)
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(31+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",4,SetTo,1228+32*10);
            SetLoc("ProbeS",12,SetTo,1260+32*10);
            SetLoc("ProbeE",4,SetTo,1232+32*10);
            SetLoc("ProbeE",12,SetTo,1264+32*10);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*11);
            SetLoc("ProbeS",12,SetTo,1260+32*11);
            SetLoc("ProbeE",4,SetTo,1232+32*11);
            SetLoc("ProbeE",12,SetTo,1264+32*11);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*12);
            SetLoc("ProbeS",12,SetTo,1260+32*12);
            SetLoc("ProbeE",4,SetTo,1232+32*12);
            SetLoc("ProbeE",12,SetTo,1264+32*12);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1228+32*13);
            SetLoc("ProbeS",12,SetTo,1264+32*13);
            SetLoc("ProbeE",4,SetTo,1232+32*13);
            SetLoc("ProbeE",12,SetTo,1264+32*13);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");

            Order("Missile", i, "S1-1", Move, "S2-1");
            Order("Missile", i, "S1-2", Move, "S2-2");
            Order("Missile", i, "S1-3", Move, "S2-3");
            Order("Missile", i, "S1-4", Move, "S2-4");
            Order("Missile", i, "S1-5", Move, "S2-5");
            Order("Missile", i, "S1-6", Move, "S2-6");
            Order("Missile", i, "S1-7", Move, "S2-7");
            
            Order("Fast Missile", i, "S1-1", Move, "S2-1");
            Order("Fast Missile", i, "S1-2", Move, "S2-2");
            Order("Fast Missile", i, "S1-3", Move, "S2-3");
            Order("Fast Missile", i, "S1-4", Move, "S2-4");
            Order("Fast Missile", i, "S1-5", Move, "S2-5");
            Order("Fast Missile", i, "S1-6", Move, "S2-6");
            Order("Fast Missile", i, "S1-7", Move, "S2-7");
            PreserveTrigger();
        },
    }
    
    Trigger { -- No comment (051A2E5B)
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Cleared);
            Void(31+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,512);
            SetLoc("ProbeS",8,SetTo,576);
            SetLoc("ProbeE",0,SetTo,1600);
            SetLoc("ProbeE",8,SetTo,1664);

            SetLoc("ProbeS",4,SetTo,1584-64*0);
            SetLoc("ProbeS",12,SetTo,1648-64*0);
            SetLoc("ProbeE",4,SetTo,1584-64*0);
            SetLoc("ProbeE",12,SetTo,1648-64*0);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1584-64*1);
            SetLoc("ProbeS",12,SetTo,1648-64*1);
            SetLoc("ProbeE",4,SetTo,1584-64*1);
            SetLoc("ProbeE",12,SetTo,1648-64*1);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1584-64*2);
            SetLoc("ProbeS",12,SetTo,1648-64*2);
            SetLoc("ProbeE",4,SetTo,1584-64*2);
            SetLoc("ProbeE",12,SetTo,1648-64*2);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1584-64*3);
            SetLoc("ProbeS",12,SetTo,1648-64*3);
            SetLoc("ProbeE",4,SetTo,1584-64*3);
            SetLoc("ProbeE",12,SetTo,1648-64*3);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1584-64*4);
            SetLoc("ProbeS",12,SetTo,1648-64*4);
            SetLoc("ProbeE",4,SetTo,1584-64*4);
            SetLoc("ProbeE",12,SetTo,1648-64*4);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1584-64*5);
            SetLoc("ProbeS",12,SetTo,1648-64*5);
            SetLoc("ProbeE",4,SetTo,1584-64*5);
            SetLoc("ProbeE",12,SetTo,1648-64*5);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (051A2E5B)
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Set);
            Void(31+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,512);
            SetLoc("ProbeS",8,SetTo,576);
            SetLoc("ProbeE",0,SetTo,1600);
            SetLoc("ProbeE",8,SetTo,1664);

            SetLoc("ProbeS",4,SetTo,1584-64*5);
            SetLoc("ProbeS",12,SetTo,1648-64*5);
            SetLoc("ProbeE",4,SetTo,1584-64*5);
            SetLoc("ProbeE",12,SetTo,1648-64*5);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1584-64*4);
            SetLoc("ProbeS",12,SetTo,1648-64*4);
            SetLoc("ProbeE",4,SetTo,1584-64*4);
            SetLoc("ProbeE",12,SetTo,1648-64*4);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1584-64*3);
            SetLoc("ProbeS",12,SetTo,1648-64*3);
            SetLoc("ProbeE",4,SetTo,1584-64*3);
            SetLoc("ProbeE",12,SetTo,1648-64*3);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1584-64*2);
            SetLoc("ProbeS",12,SetTo,1648-64*2);
            SetLoc("ProbeE",4,SetTo,1584-64*2);
            SetLoc("ProbeE",12,SetTo,1648-64*2);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1584-64*1);
            SetLoc("ProbeS",12,SetTo,1648-64*1);
            SetLoc("ProbeE",4,SetTo,1584-64*1);
            SetLoc("ProbeE",12,SetTo,1648-64*1);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,1584-64*0);
            SetLoc("ProbeS",12,SetTo,1648-64*0);
            SetLoc("ProbeE",4,SetTo,1584-64*0);
            SetLoc("ProbeE",12,SetTo,1648-64*0);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            PreserveTrigger();
        },
    }
    
    
    end
    for i = 4, 7 do -- 2팀 이동 ＃
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Fast Mini Missile", i, "2-0", Move, "3-0");
            Order("Fast Mini Missile", i, "2-1", Move, "3-1");
            Order("Fast Mini Missile", i, "2-2", Move, "3-2");
            Order("Fast Mini Missile", i, "2-3", Move, "3-3");
            Order("Fast Mini Missile", i, "2-4", Move, "3-4");
            Order("Fast Mini Missile", i, "2-5", Move, "3-5");
            Order("Fast Mini Missile", i, "2-6", Move, "3-6");
            Order("Fast Mini Missile", i, "2-7", Move, "3-7");
            Order("Fast Mini Missile", i, "2-8", Move, "3-8");
            Order("Fast Mini Missile", i, "2-9", Move, "3-9");
            Order("Fast Mini Missile", i, "2-10", Move, "3-10");
            Order("Fast Mini Missile", i, "2-11", Move, "3-11");
            Order("Fast Mini Missile", i, "2-12", Move, "3-12");
            Order("Fast Mini Missile", i, "2-13", Move, "3-13");
            Order("Fast Mini Missile", i, "2-14", Move, "3-14");
            
            Order("Mini Missile", i, "2-0", Move, "3-0");
            Order("Mini Missile", i, "2-1", Move, "3-1");
            Order("Mini Missile", i, "2-2", Move, "3-2");
            Order("Mini Missile", i, "2-3", Move, "3-3");
            Order("Mini Missile", i, "2-4", Move, "3-4");
            Order("Mini Missile", i, "2-5", Move, "3-5");
            Order("Mini Missile", i, "2-6", Move, "3-6");
            Order("Mini Missile", i, "2-7", Move, "3-7");
            Order("Mini Missile", i, "2-8", Move, "3-8");
            Order("Mini Missile", i, "2-9", Move, "3-9");
            Order("Mini Missile", i, "2-10", Move, "3-10");
            Order("Mini Missile", i, "2-11", Move, "3-11");
            Order("Mini Missile", i, "2-12", Move, "3-12");
            Order("Mini Missile", i, "2-13", Move, "3-13");
            Order("Mini Missile", i, "2-14", Move, "3-14");
            PreserveTrigger();
        },
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Homing Missile", i, "2-0", Move, "3-0");
            Order("Homing Missile", i, "2-1", Move, "3-1");
            Order("Homing Missile", i, "2-2", Move, "3-2");
            Order("Homing Missile", i, "2-3", Move, "3-3");
            Order("Homing Missile", i, "2-4", Move, "3-4");
            Order("Homing Missile", i, "2-5", Move, "3-5");
            Order("Homing Missile", i, "2-6", Move, "3-6");
            Order("Homing Missile", i, "2-7", Move, "3-7");
            Order("Homing Missile", i, "2-8", Move, "3-8");
            Order("Homing Missile", i, "2-9", Move, "3-9");
            Order("Homing Missile", i, "2-10", Move, "3-10");
            Order("Homing Missile", i, "2-11", Move, "3-11");
            Order("Homing Missile", i, "2-12", Move, "3-12");
            Order("Homing Missile", i, "2-13", Move, "3-13");
            Order("Homing Missile", i, "2-14", Move, "3-14");
            PreserveTrigger();
        },
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Slow Missile", i, "2-0", Move, "3-0");
            Order("Slow Missile", i, "2-1", Move, "3-1");
            Order("Slow Missile", i, "2-2", Move, "3-2");
            Order("Slow Missile", i, "2-3", Move, "3-3");
            Order("Slow Missile", i, "2-4", Move, "3-4");
            Order("Slow Missile", i, "2-5", Move, "3-5");
            Order("Slow Missile", i, "2-6", Move, "3-6");
            Order("Slow Missile", i, "2-7", Move, "3-7");
            Order("Slow Missile", i, "2-8", Move, "3-8");
            Order("Slow Missile", i, "2-9", Move, "3-9");
            Order("Slow Missile", i, "2-10", Move, "3-10");
            Order("Slow Missile", i, "2-11", Move, "3-11");
            Order("Slow Missile", i, "2-12", Move, "3-12");
            Order("Slow Missile", i, "2-13", Move, "3-13");
            Order("Slow Missile", i, "2-14", Move, "3-14");
            PreserveTrigger();
        },
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Missile", i, "2-0", Move, "3-0");
            Order("Missile", i, "2-1", Move, "3-1");
            Order("Missile", i, "2-2", Move, "3-2");
            Order("Missile", i, "2-3", Move, "3-3");
            Order("Missile", i, "2-4", Move, "3-4");
            Order("Missile", i, "2-5", Move, "3-5");
            Order("Missile", i, "2-6", Move, "3-6");
            Order("Missile", i, "2-7", Move, "3-7");
            Order("Missile", i, "2-8", Move, "3-8");
            Order("Missile", i, "2-9", Move, "3-9");
            Order("Missile", i, "2-10", Move, "3-10");
            Order("Missile", i, "2-11", Move, "3-11");
            Order("Missile", i, "2-12", Move, "3-12");
            Order("Missile", i, "2-13", Move, "3-13");
            Order("Missile", i, "2-14", Move, "3-14");
            PreserveTrigger();
        },
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Fast Missile", i, "2-0", Move, "3-0");
            Order("Fast Missile", i, "2-1", Move, "3-1");
            Order("Fast Missile", i, "2-2", Move, "3-2");
            Order("Fast Missile", i, "2-3", Move, "3-3");
            Order("Fast Missile", i, "2-4", Move, "3-4");
            Order("Fast Missile", i, "2-5", Move, "3-5");
            Order("Fast Missile", i, "2-6", Move, "3-6");
            Order("Fast Missile", i, "2-7", Move, "3-7");
            Order("Fast Missile", i, "2-8", Move, "3-8");
            Order("Fast Missile", i, "2-9", Move, "3-9");
            Order("Fast Missile", i, "2-10", Move, "3-10");
            Order("Fast Missile", i, "2-11", Move, "3-11");
            Order("Fast Missile", i, "2-12", Move, "3-12");
            Order("Fast Missile", i, "2-13", Move, "3-13");
            Order("Fast Missile", i, "2-14", Move, "3-14");
            PreserveTrigger();
        },
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Refractor", i, "2-0", Move, "3-0");
            Order("Refractor", i, "2-1", Move, "3-1");
            Order("Refractor", i, "2-2", Move, "3-2");
            Order("Refractor", i, "2-3", Move, "3-3");
            Order("Refractor", i, "2-4", Move, "3-4");
            Order("Refractor", i, "2-5", Move, "3-5");
            Order("Refractor", i, "2-6", Move, "3-6");
            Order("Refractor", i, "2-7", Move, "3-7");
            Order("Refractor", i, "2-8", Move, "3-8");
            Order("Refractor", i, "2-9", Move, "3-9");
            Order("Refractor", i, "2-10", Move, "3-10");
            Order("Refractor", i, "2-11", Move, "3-11");
            Order("Refractor", i, "2-12", Move, "3-12");
            Order("Refractor", i, "2-13", Move, "3-13");
            Order("Refractor", i, "2-14", Move, "3-14");
            PreserveTrigger();
        },
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Sniping Missile", i, "2-0", Move, "3-0");
            Order("Sniping Missile", i, "2-1", Move, "3-1");
            Order("Sniping Missile", i, "2-2", Move, "3-2");
            Order("Sniping Missile", i, "2-3", Move, "3-3");
            Order("Sniping Missile", i, "2-4", Move, "3-4");
            Order("Sniping Missile", i, "2-5", Move, "3-5");
            Order("Sniping Missile", i, "2-6", Move, "3-6");
            Order("Sniping Missile", i, "2-7", Move, "3-7");
            Order("Sniping Missile", i, "2-8", Move, "3-8");
            Order("Sniping Missile", i, "2-9", Move, "3-9");
            Order("Sniping Missile", i, "2-10", Move, "3-10");
            Order("Sniping Missile", i, "2-11", Move, "3-11");
            Order("Sniping Missile", i, "2-12", Move, "3-12");
            Order("Sniping Missile", i, "2-13", Move, "3-13");
            Order("Sniping Missile", i, "2-14", Move, "3-14");
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (910C77E9)
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Super Missile", i, "2-0", Move, "LairUL");
            Order("Super Missile", i, "2-1", Move, "LairUL");
            Order("Super Missile", i, "2-2", Move, "LairUL");
            Order("Super Missile", i, "2-12", Move, "LairUR");
            Order("Super Missile", i, "2-13", Move, "LairUR");
            Order("Super Missile", i, "2-14", Move, "LairUR");
            Order("Super Missile", i, "LairUL", Move, "LairUUR");
            Order("Super Missile", i, "LairUR", Move, "LairUUL");
            Order("Super Missile", i, "LairUUL", Move, "1팀 뒤쪽");
            Order("Super Missile", i, "LairUUR", Move, "1팀 뒤쪽");

            Order("Super Missile", i, "2-3", Move, "HiveCDL");
            Order("Super Missile", i, "2-4", Move, "HiveCDL");
            Order("Super Missile", i, "2-5", Move, "HiveCDL");
            Order("Super Missile", i, "2-9", Move, "HiveCDR");
            Order("Super Missile", i, "2-10", Move, "HiveCDR");
            Order("Super Missile", i, "2-11", Move, "HiveCDR");
            Order("Super Missile", i, "HiveCD", Move, "3-7");
            Order("Super Missile", i, "HiveCDL", Move, "HiveL");
            Order("Super Missile", i, "HiveCDR", Move, "HiveR");
            Order("Super Missile", i, "HiveL", Move, "HiveUR");
            Order("Super Missile", i, "HiveR", Move, "HiveUL");
            Order("Super Missile", i, "HiveUL", Move, "3-14");
            Order("Super Missile", i, "HiveUR", Move, "3-0");
            PreserveTrigger();
        },
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Big Sniping Missile", i, "2-0", Move, "3-0");
            Order("Big Sniping Missile", i, "2-1", Move, "3-1");
            Order("Big Sniping Missile", i, "2-2", Move, "3-2");
            Order("Big Sniping Missile", i, "2-3", Move, "3-3");
            Order("Big Sniping Missile", i, "2-4", Move, "3-4");
            Order("Big Sniping Missile", i, "2-5", Move, "3-5");
            Order("Big Sniping Missile", i, "2-6", Move, "3-6");
            Order("Big Sniping Missile", i, "2-7", Move, "3-7");
            Order("Big Sniping Missile", i, "2-8", Move, "3-8");
            Order("Big Sniping Missile", i, "2-9", Move, "3-9");
            Order("Big Sniping Missile", i, "2-10", Move, "3-10");
            Order("Big Sniping Missile", i, "2-11", Move, "3-11");
            Order("Big Sniping Missile", i, "2-12", Move, "3-12");
            Order("Big Sniping Missile", i, "2-13", Move, "3-13");
            Order("Big Sniping Missile", i, "2-14", Move, "3-14");
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (EAAB9FA6)
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Always();
        },
        actions = {
            Order("Hydrogen Bomb", i, "Anywhere", Move, "1팀필드");
            PreserveTrigger();
        },
    }
    
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Penetrating Missile★", i, "2-0", Move, "3-0");
            Order("Penetrating Missile★", i, "2-1", Move, "3-1");
            Order("Penetrating Missile★", i, "2-2", Move, "3-2");
            Order("Penetrating Missile★", i, "2-3", Move, "3-3");
            Order("Penetrating Missile★", i, "2-4", Move, "3-4");
            Order("Penetrating Missile★", i, "2-5", Move, "3-5");
            Order("Penetrating Missile★", i, "2-6", Move, "3-6");
            Order("Penetrating Missile★", i, "2-7", Move, "3-7");
            Order("Penetrating Missile★", i, "2-8", Move, "3-8");
            Order("Penetrating Missile★", i, "2-9", Move, "3-9");
            Order("Penetrating Missile★", i, "2-10", Move, "3-10");
            Order("Penetrating Missile★", i, "2-11", Move, "3-11");
            Order("Penetrating Missile★", i, "2-12", Move, "3-12");
            Order("Penetrating Missile★", i, "2-13", Move, "3-13");
            Order("Penetrating Missile★", i, "2-14", Move, "3-14");
            PreserveTrigger();
        },
    }

    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            Order("Invisible Missile☆", i, "2-0", Move, "3-0");
            Order("Invisible Missile☆", i, "2-1", Move, "3-1");
            Order("Invisible Missile☆", i, "2-2", Move, "3-2");
            Order("Invisible Missile☆", i, "2-3", Move, "3-3");
            Order("Invisible Missile☆", i, "2-4", Move, "3-4");
            Order("Invisible Missile☆", i, "2-5", Move, "3-5");
            Order("Invisible Missile☆", i, "2-6", Move, "3-6");
            Order("Invisible Missile☆", i, "2-7", Move, "3-7");
            Order("Invisible Missile☆", i, "2-8", Move, "3-8");
            Order("Invisible Missile☆", i, "2-9", Move, "3-9");
            Order("Invisible Missile☆", i, "2-10", Move, "3-10");
            Order("Invisible Missile☆", i, "2-11", Move, "3-11");
            Order("Invisible Missile☆", i, "2-12", Move, "3-12");
            Order("Invisible Missile☆", i, "2-13", Move, "3-13");
            Order("Invisible Missile☆", i, "2-14", Move, "3-14");
            PreserveTrigger();
        },
    }
    
    local k = i+6
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Cleared);
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",4,SetTo,1232);
            SetLoc("ProbeS",12,SetTo,1680);
            SetLoc("ProbeE",4,SetTo,192);
            SetLoc("ProbeE",12,SetTo,256);

            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            SetLoc("ProbeE",0,SetTo,640+64*0);
            SetLoc("ProbeE",8,SetTo,704+64*0);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*1);
            SetLoc("ProbeS",8,SetTo,704+64*1);
            SetLoc("ProbeE",0,SetTo,640+64*1);
            SetLoc("ProbeE",8,SetTo,704+64*1);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*2);
            SetLoc("ProbeS",8,SetTo,704+64*2);
            SetLoc("ProbeE",0,SetTo,640+64*2);
            SetLoc("ProbeE",8,SetTo,704+64*2);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*3);
            SetLoc("ProbeS",8,SetTo,704+64*3);
            SetLoc("ProbeE",0,SetTo,640+64*3);
            SetLoc("ProbeE",8,SetTo,704+64*3);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*4);
            SetLoc("ProbeS",8,SetTo,704+64*4);
            SetLoc("ProbeE",0,SetTo,640+64*4);
            SetLoc("ProbeE",8,SetTo,704+64*4);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*5);
            SetLoc("ProbeS",8,SetTo,704+64*5);
            SetLoc("ProbeE",0,SetTo,640+64*5);
            SetLoc("ProbeE",8,SetTo,704+64*5);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            PreserveTrigger();
        },
        flag = {Preserved}
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Cleared);
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,640+64*6);
            SetLoc("ProbeS",8,SetTo,704+64*6);
            SetLoc("ProbeE",0,SetTo,640+64*6);
            SetLoc("ProbeE",8,SetTo,704+64*6);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*7);
            SetLoc("ProbeS",8,SetTo,704+64*7);
            SetLoc("ProbeE",0,SetTo,640+64*7);
            SetLoc("ProbeE",8,SetTo,704+64*7);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*8);
            SetLoc("ProbeS",8,SetTo,704+64*8);
            SetLoc("ProbeE",0,SetTo,640+64*8);
            SetLoc("ProbeE",8,SetTo,704+64*8);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*9);
            SetLoc("ProbeS",8,SetTo,704+64*9);
            SetLoc("ProbeE",0,SetTo,640+64*9);
            SetLoc("ProbeE",8,SetTo,704+64*9);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*10);
            SetLoc("ProbeS",8,SetTo,704+64*10);
            SetLoc("ProbeE",0,SetTo,640+64*10);
            SetLoc("ProbeE",8,SetTo,704+64*10);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            SetLoc("ProbeE",0,SetTo,640+64*11);
            SetLoc("ProbeE",8,SetTo,704+64*11);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            PreserveTrigger();
        },
        flag = {Preserved}
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Cleared);
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",4,SetTo,1232);
            SetLoc("ProbeS",12,SetTo,1680);
            SetLoc("ProbeE",4,SetTo,192);
            SetLoc("ProbeE",12,SetTo,256);

            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            SetLoc("ProbeE",0,SetTo,640+64*0);
            SetLoc("ProbeE",8,SetTo,704+64*0);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*1);
            SetLoc("ProbeS",8,SetTo,704+64*1);
            SetLoc("ProbeE",0,SetTo,640+64*1);
            SetLoc("ProbeE",8,SetTo,704+64*1);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*2);
            SetLoc("ProbeS",8,SetTo,704+64*2);
            SetLoc("ProbeE",0,SetTo,640+64*2);
            SetLoc("ProbeE",8,SetTo,704+64*2);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*3);
            SetLoc("ProbeS",8,SetTo,704+64*3);
            SetLoc("ProbeE",0,SetTo,640+64*3);
            SetLoc("ProbeE",8,SetTo,704+64*3);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*4);
            SetLoc("ProbeS",8,SetTo,704+64*4);
            SetLoc("ProbeE",0,SetTo,640+64*4);
            SetLoc("ProbeE",8,SetTo,704+64*4);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*5);
            SetLoc("ProbeS",8,SetTo,704+64*5);
            SetLoc("ProbeE",0,SetTo,640+64*5);
            SetLoc("ProbeE",8,SetTo,704+64*5);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            PreserveTrigger();
        },
        flag = {Preserved}
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Cleared);
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,640+64*6);
            SetLoc("ProbeS",8,SetTo,704+64*6);
            SetLoc("ProbeE",0,SetTo,640+64*6);
            SetLoc("ProbeE",8,SetTo,704+64*6);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*7);
            SetLoc("ProbeS",8,SetTo,704+64*7);
            SetLoc("ProbeE",0,SetTo,640+64*7);
            SetLoc("ProbeE",8,SetTo,704+64*7);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*8);
            SetLoc("ProbeS",8,SetTo,704+64*8);
            SetLoc("ProbeE",0,SetTo,640+64*8);
            SetLoc("ProbeE",8,SetTo,704+64*8);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*9);
            SetLoc("ProbeS",8,SetTo,704+64*9);
            SetLoc("ProbeE",0,SetTo,640+64*9);
            SetLoc("ProbeE",8,SetTo,704+64*9);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*10);
            SetLoc("ProbeS",8,SetTo,704+64*10);
            SetLoc("ProbeE",0,SetTo,640+64*10);
            SetLoc("ProbeE",8,SetTo,704+64*10);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            SetLoc("ProbeE",0,SetTo,640+64*11);
            SetLoc("ProbeE",8,SetTo,704+64*11);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            PreserveTrigger();
        },
        flag = {Preserved}
    }
    
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Cleared);
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",4,SetTo,1232);
            SetLoc("ProbeS",12,SetTo,1680);
            SetLoc("ProbeE",4,SetTo,192);
            SetLoc("ProbeE",12,SetTo,256);

            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            SetLoc("ProbeE",0,SetTo,640+64*0);
            SetLoc("ProbeE",8,SetTo,704+64*0);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*1);
            SetLoc("ProbeS",8,SetTo,704+64*1);
            SetLoc("ProbeE",0,SetTo,640+64*1);
            SetLoc("ProbeE",8,SetTo,704+64*1);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*2);
            SetLoc("ProbeS",8,SetTo,704+64*2);
            SetLoc("ProbeE",0,SetTo,640+64*2);
            SetLoc("ProbeE",8,SetTo,704+64*2);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*3);
            SetLoc("ProbeS",8,SetTo,704+64*3);
            SetLoc("ProbeE",0,SetTo,640+64*3);
            SetLoc("ProbeE",8,SetTo,704+64*3);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*4);
            SetLoc("ProbeS",8,SetTo,704+64*4);
            SetLoc("ProbeE",0,SetTo,640+64*4);
            SetLoc("ProbeE",8,SetTo,704+64*4);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*5);
            SetLoc("ProbeS",8,SetTo,704+64*5);
            SetLoc("ProbeE",0,SetTo,640+64*5);
            SetLoc("ProbeE",8,SetTo,704+64*5);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            PreserveTrigger();
        },
        flag = {Preserved}
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Cleared);
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,640+64*6);
            SetLoc("ProbeS",8,SetTo,704+64*6);
            SetLoc("ProbeE",0,SetTo,640+64*6);
            SetLoc("ProbeE",8,SetTo,704+64*6);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*7);
            SetLoc("ProbeS",8,SetTo,704+64*7);
            SetLoc("ProbeE",0,SetTo,640+64*7);
            SetLoc("ProbeE",8,SetTo,704+64*7);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*8);
            SetLoc("ProbeS",8,SetTo,704+64*8);
            SetLoc("ProbeE",0,SetTo,640+64*8);
            SetLoc("ProbeE",8,SetTo,704+64*8);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*9);
            SetLoc("ProbeS",8,SetTo,704+64*9);
            SetLoc("ProbeE",0,SetTo,640+64*9);
            SetLoc("ProbeE",8,SetTo,704+64*9);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*10);
            SetLoc("ProbeS",8,SetTo,704+64*10);
            SetLoc("ProbeE",0,SetTo,640+64*10);
            SetLoc("ProbeE",8,SetTo,704+64*10);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            SetLoc("ProbeE",0,SetTo,640+64*11);
            SetLoc("ProbeE",8,SetTo,704+64*11);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            PreserveTrigger();
        },
        flag = {Preserved}
    }
    
    
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Set);
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",4,SetTo,1232);
            SetLoc("ProbeS",12,SetTo,1680);
            SetLoc("ProbeE",4,SetTo,192);
            SetLoc("ProbeE",12,SetTo,256);

            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            SetLoc("ProbeE",0,SetTo,640+64*11);
            SetLoc("ProbeE",8,SetTo,704+64*11);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*10);
            SetLoc("ProbeS",8,SetTo,704+64*10);
            SetLoc("ProbeE",0,SetTo,640+64*10);
            SetLoc("ProbeE",8,SetTo,704+64*10);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*9);
            SetLoc("ProbeS",8,SetTo,704+64*9);
            SetLoc("ProbeE",0,SetTo,640+64*9);
            SetLoc("ProbeE",8,SetTo,704+64*9);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*8);
            SetLoc("ProbeS",8,SetTo,704+64*8);
            SetLoc("ProbeE",0,SetTo,640+64*8);
            SetLoc("ProbeE",8,SetTo,704+64*8);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*7);
            SetLoc("ProbeS",8,SetTo,704+64*7);
            SetLoc("ProbeE",0,SetTo,640+64*7);
            SetLoc("ProbeE",8,SetTo,704+64*7);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*6);
            SetLoc("ProbeS",8,SetTo,704+64*6);
            SetLoc("ProbeE",0,SetTo,640+64*6);
            SetLoc("ProbeE",8,SetTo,704+64*6);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            PreserveTrigger();
        },
        flag = {Preserved}
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Set);
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,640+64*5);
            SetLoc("ProbeS",8,SetTo,704+64*5);
            SetLoc("ProbeE",0,SetTo,640+64*5);
            SetLoc("ProbeE",8,SetTo,704+64*5);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*4);
            SetLoc("ProbeS",8,SetTo,704+64*4);
            SetLoc("ProbeE",0,SetTo,640+64*4);
            SetLoc("ProbeE",8,SetTo,704+64*4);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*3);
            SetLoc("ProbeS",8,SetTo,704+64*3);
            SetLoc("ProbeE",0,SetTo,640+64*3);
            SetLoc("ProbeE",8,SetTo,704+64*3);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*2);
            SetLoc("ProbeS",8,SetTo,704+64*2);
            SetLoc("ProbeE",0,SetTo,640+64*2);
            SetLoc("ProbeE",8,SetTo,704+64*2);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*1);
            SetLoc("ProbeS",8,SetTo,704+64*1);
            SetLoc("ProbeE",0,SetTo,640+64*1);
            SetLoc("ProbeE",8,SetTo,704+64*1);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            SetLoc("ProbeE",0,SetTo,640+64*0);
            SetLoc("ProbeE",8,SetTo,704+64*0);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            PreserveTrigger();
        },
        flag = {Preserved}
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Set);
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",4,SetTo,1232);
            SetLoc("ProbeS",12,SetTo,1680);
            SetLoc("ProbeE",4,SetTo,192);
            SetLoc("ProbeE",12,SetTo,256);

            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            SetLoc("ProbeE",0,SetTo,640+64*11);
            SetLoc("ProbeE",8,SetTo,704+64*11);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*10);
            SetLoc("ProbeS",8,SetTo,704+64*10);
            SetLoc("ProbeE",0,SetTo,640+64*10);
            SetLoc("ProbeE",8,SetTo,704+64*10);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*9);
            SetLoc("ProbeS",8,SetTo,704+64*9);
            SetLoc("ProbeE",0,SetTo,640+64*9);
            SetLoc("ProbeE",8,SetTo,704+64*9);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*8);
            SetLoc("ProbeS",8,SetTo,704+64*8);
            SetLoc("ProbeE",0,SetTo,640+64*8);
            SetLoc("ProbeE",8,SetTo,704+64*8);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*7);
            SetLoc("ProbeS",8,SetTo,704+64*7);
            SetLoc("ProbeE",0,SetTo,640+64*7);
            SetLoc("ProbeE",8,SetTo,704+64*7);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*6);
            SetLoc("ProbeS",8,SetTo,704+64*6);
            SetLoc("ProbeE",0,SetTo,640+64*6);
            SetLoc("ProbeE",8,SetTo,704+64*6);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            PreserveTrigger();
        },
        flag = {Preserved}
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Set);
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,640+64*5);
            SetLoc("ProbeS",8,SetTo,704+64*5);
            SetLoc("ProbeE",0,SetTo,640+64*5);
            SetLoc("ProbeE",8,SetTo,704+64*5);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*4);
            SetLoc("ProbeS",8,SetTo,704+64*4);
            SetLoc("ProbeE",0,SetTo,640+64*4);
            SetLoc("ProbeE",8,SetTo,704+64*4);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*3);
            SetLoc("ProbeS",8,SetTo,704+64*3);
            SetLoc("ProbeE",0,SetTo,640+64*3);
            SetLoc("ProbeE",8,SetTo,704+64*3);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*2);
            SetLoc("ProbeS",8,SetTo,704+64*2);
            SetLoc("ProbeE",0,SetTo,640+64*2);
            SetLoc("ProbeE",8,SetTo,704+64*2);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*1);
            SetLoc("ProbeS",8,SetTo,704+64*1);
            SetLoc("ProbeE",0,SetTo,640+64*1);
            SetLoc("ProbeE",8,SetTo,704+64*1);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            SetLoc("ProbeE",0,SetTo,640+64*0);
            SetLoc("ProbeE",8,SetTo,704+64*0);
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            PreserveTrigger();
        },
        flag = {Preserved}
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Set);
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",4,SetTo,1232);
            SetLoc("ProbeS",12,SetTo,1680);
            SetLoc("ProbeE",4,SetTo,192);
            SetLoc("ProbeE",12,SetTo,256);

            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            SetLoc("ProbeE",0,SetTo,640+64*11);
            SetLoc("ProbeE",8,SetTo,704+64*11);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*10);
            SetLoc("ProbeS",8,SetTo,704+64*10);
            SetLoc("ProbeE",0,SetTo,640+64*10);
            SetLoc("ProbeE",8,SetTo,704+64*10);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*9);
            SetLoc("ProbeS",8,SetTo,704+64*9);
            SetLoc("ProbeE",0,SetTo,640+64*9);
            SetLoc("ProbeE",8,SetTo,704+64*9);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*8);
            SetLoc("ProbeS",8,SetTo,704+64*8);
            SetLoc("ProbeE",0,SetTo,640+64*8);
            SetLoc("ProbeE",8,SetTo,704+64*8);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*7);
            SetLoc("ProbeS",8,SetTo,704+64*7);
            SetLoc("ProbeE",0,SetTo,640+64*7);
            SetLoc("ProbeE",8,SetTo,704+64*7);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*6);
            SetLoc("ProbeS",8,SetTo,704+64*6);
            SetLoc("ProbeE",0,SetTo,640+64*6);
            SetLoc("ProbeE",8,SetTo,704+64*6);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            PreserveTrigger();
        },
        flag = {Preserved}
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Set);
            Void(72,Exactly,0);
            Void(23+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,640+64*5);
            SetLoc("ProbeS",8,SetTo,704+64*5);
            SetLoc("ProbeE",0,SetTo,640+64*5);
            SetLoc("ProbeE",8,SetTo,704+64*5);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*4);
            SetLoc("ProbeS",8,SetTo,704+64*4);
            SetLoc("ProbeE",0,SetTo,640+64*4);
            SetLoc("ProbeE",8,SetTo,704+64*4);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*3);
            SetLoc("ProbeS",8,SetTo,704+64*3);
            SetLoc("ProbeE",0,SetTo,640+64*3);
            SetLoc("ProbeE",8,SetTo,704+64*3);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*2);
            SetLoc("ProbeS",8,SetTo,704+64*2);
            SetLoc("ProbeE",0,SetTo,640+64*2);
            SetLoc("ProbeE",8,SetTo,704+64*2);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*1);
            SetLoc("ProbeS",8,SetTo,704+64*1);
            SetLoc("ProbeE",0,SetTo,640+64*1);
            SetLoc("ProbeE",8,SetTo,704+64*1);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            SetLoc("ProbeE",0,SetTo,640+64*0);
            SetLoc("ProbeE",8,SetTo,704+64*0);
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            PreserveTrigger();
        },
        flag = {Preserved}
    }

    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(31+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,512);
            SetLoc("ProbeS",8,SetTo,576);
            SetLoc("ProbeE",0,SetTo,1600);
            SetLoc("ProbeE",8,SetTo,1664);

            SetLoc("ProbeS",4,SetTo,788-32*0);
            SetLoc("ProbeS",12,SetTo,816-32*0);
            SetLoc("ProbeE",4,SetTo,784-32*0);
            SetLoc("ProbeE",12,SetTo,816-32*0);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*1);
            SetLoc("ProbeS",12,SetTo,812-32*1);
            SetLoc("ProbeE",4,SetTo,784-32*1);
            SetLoc("ProbeE",12,SetTo,816-32*1);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*2);
            SetLoc("ProbeS",12,SetTo,812-32*2);
            SetLoc("ProbeE",4,SetTo,784-32*2);
            SetLoc("ProbeE",12,SetTo,816-32*2);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*3);
            SetLoc("ProbeS",12,SetTo,812-32*3);
            SetLoc("ProbeE",4,SetTo,784-32*3);
            SetLoc("ProbeE",12,SetTo,816-32*3);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*4);
            SetLoc("ProbeS",12,SetTo,812-32*4);
            SetLoc("ProbeE",4,SetTo,784-32*4);
            SetLoc("ProbeE",12,SetTo,816-32*4);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*5);
            SetLoc("ProbeS",12,SetTo,812-32*5);
            SetLoc("ProbeE",4,SetTo,784-32*5);
            SetLoc("ProbeE",12,SetTo,816-32*5);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*6);
            SetLoc("ProbeS",12,SetTo,812-32*6);
            SetLoc("ProbeE",4,SetTo,784-32*6);
            SetLoc("ProbeE",12,SetTo,816-32*6);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*7);
            SetLoc("ProbeS",12,SetTo,812-32*7);
            SetLoc("ProbeE",4,SetTo,784-32*7);
            SetLoc("ProbeE",12,SetTo,816-32*7);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*8);
            SetLoc("ProbeS",12,SetTo,812-32*8);
            SetLoc("ProbeE",4,SetTo,784-32*8);
            SetLoc("ProbeE",12,SetTo,816-32*8);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*9);
            SetLoc("ProbeS",12,SetTo,812-32*9);
            SetLoc("ProbeE",4,SetTo,784-32*9);
            SetLoc("ProbeE",12,SetTo,816-32*9);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
        },
        flag = {Preserved}
    }
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(31+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",4,SetTo,788-32*10);
            SetLoc("ProbeS",12,SetTo,812-32*10);
            SetLoc("ProbeE",4,SetTo,784-32*10);
            SetLoc("ProbeE",12,SetTo,816-32*10);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*11);
            SetLoc("ProbeS",12,SetTo,812-32*11);
            SetLoc("ProbeE",4,SetTo,784-32*11);
            SetLoc("ProbeE",12,SetTo,816-32*11);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*12);
            SetLoc("ProbeS",12,SetTo,812-32*12);
            SetLoc("ProbeE",4,SetTo,784-32*12);
            SetLoc("ProbeE",12,SetTo,816-32*12);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,784-32*13);
            SetLoc("ProbeS",12,SetTo,812-32*13);
            SetLoc("ProbeE",4,SetTo,784-32*13);
            SetLoc("ProbeE",12,SetTo,816-32*13);
            Order("Mini Missile", i, "ProbeS", Move, "ProbeE");
        },
        flag = {Preserved}
    }
    
    Trigger { -- 미사일 이동
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(31+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,512);
            SetLoc("ProbeS",8,SetTo,576);
            SetLoc("ProbeE",0,SetTo,1600);
            SetLoc("ProbeE",8,SetTo,1664);

            SetLoc("ProbeS",4,SetTo,788-32*0);
            SetLoc("ProbeS",12,SetTo,816-32*0);
            SetLoc("ProbeE",4,SetTo,784-32*0);
            SetLoc("ProbeE",12,SetTo,816-32*0);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*1);
            SetLoc("ProbeS",12,SetTo,812-32*1);
            SetLoc("ProbeE",4,SetTo,784-32*1);
            SetLoc("ProbeE",12,SetTo,816-32*1);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*2);
            SetLoc("ProbeS",12,SetTo,812-32*2);
            SetLoc("ProbeE",4,SetTo,784-32*2);
            SetLoc("ProbeE",12,SetTo,816-32*2);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*3);
            SetLoc("ProbeS",12,SetTo,812-32*3);
            SetLoc("ProbeE",4,SetTo,784-32*3);
            SetLoc("ProbeE",12,SetTo,816-32*3);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*4);
            SetLoc("ProbeS",12,SetTo,812-32*4);
            SetLoc("ProbeE",4,SetTo,784-32*4);
            SetLoc("ProbeE",12,SetTo,816-32*4);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*5);
            SetLoc("ProbeS",12,SetTo,812-32*5);
            SetLoc("ProbeE",4,SetTo,784-32*5);
            SetLoc("ProbeE",12,SetTo,816-32*5);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*6);
            SetLoc("ProbeS",12,SetTo,812-32*6);
            SetLoc("ProbeE",4,SetTo,784-32*6);
            SetLoc("ProbeE",12,SetTo,816-32*6);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*7);
            SetLoc("ProbeS",12,SetTo,812-32*7);
            SetLoc("ProbeE",4,SetTo,784-32*7);
            SetLoc("ProbeE",12,SetTo,816-32*7);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*8);
            SetLoc("ProbeS",12,SetTo,812-32*8);
            SetLoc("ProbeE",4,SetTo,784-32*8);
            SetLoc("ProbeE",12,SetTo,816-32*8);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*9);
            SetLoc("ProbeS",12,SetTo,812-32*9);
            SetLoc("ProbeE",4,SetTo,784-32*9);
            SetLoc("ProbeE",12,SetTo,816-32*9);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
        },
        flag = {Preserved}
    }
    
    Trigger { -- No comment (D2500148)
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Void(31+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",4,SetTo,788-32*10);
            SetLoc("ProbeS",12,SetTo,812-32*10);
            SetLoc("ProbeE",4,SetTo,784-32*10);
            SetLoc("ProbeE",12,SetTo,816-32*10);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*11);
            SetLoc("ProbeS",12,SetTo,812-32*11);
            SetLoc("ProbeE",4,SetTo,784-32*11);
            SetLoc("ProbeE",12,SetTo,816-32*11);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,788-32*12);
            SetLoc("ProbeS",12,SetTo,812-32*12);
            SetLoc("ProbeE",4,SetTo,784-32*12);
            SetLoc("ProbeE",12,SetTo,816-32*12);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,784-32*13);
            SetLoc("ProbeS",12,SetTo,812-32*13);
            SetLoc("ProbeE",4,SetTo,784-32*13);
            SetLoc("ProbeE",12,SetTo,816-32*13);
            Order("Fast Mini Missile", i, "ProbeS", Move, "ProbeE");

            Order("Missile", i, "S3-1", Move, "S4-1");
            Order("Missile", i, "S3-2", Move, "S4-2");
            Order("Missile", i, "S3-3", Move, "S4-3");
            Order("Missile", i, "S3-4", Move, "S4-4");
            Order("Missile", i, "S3-5", Move, "S4-5");
            Order("Missile", i, "S3-6", Move, "S4-6");
            Order("Missile", i, "S3-7", Move, "S4-7");
            
            Order("Fast Missile", i, "S3-1", Move, "S4-1");
            Order("Fast Missile", i, "S3-2", Move, "S4-2");
            Order("Fast Missile", i, "S3-3", Move, "S4-3");
            Order("Fast Missile", i, "S3-4", Move, "S4-4");
            Order("Fast Missile", i, "S3-5", Move, "S4-5");
            Order("Fast Missile", i, "S3-6", Move, "S4-6");
            Order("Fast Missile", i, "S3-7", Move, "S4-7");
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (051A2E5B)
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Cleared);
            Void(31+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,512);
            SetLoc("ProbeS",8,SetTo,576);
            SetLoc("ProbeE",0,SetTo,1600);
            SetLoc("ProbeE",8,SetTo,1664);

            SetLoc("ProbeS",4,SetTo,400+64*0);
            SetLoc("ProbeS",12,SetTo,464+64*0);
            SetLoc("ProbeE",4,SetTo,400+64*0);
            SetLoc("ProbeE",12,SetTo,464+64*0);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,400+64*1);
            SetLoc("ProbeS",12,SetTo,464+64*1);
            SetLoc("ProbeE",4,SetTo,400+64*1);
            SetLoc("ProbeE",12,SetTo,464+64*1);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,400+64*2);
            SetLoc("ProbeS",12,SetTo,464+64*2);
            SetLoc("ProbeE",4,SetTo,400+64*2);
            SetLoc("ProbeE",12,SetTo,464+64*2);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,400+64*3);
            SetLoc("ProbeS",12,SetTo,464+64*3);
            SetLoc("ProbeE",4,SetTo,400+64*3);
            SetLoc("ProbeE",12,SetTo,464+64*3);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,400+64*4);
            SetLoc("ProbeS",12,SetTo,464+64*4);
            SetLoc("ProbeE",4,SetTo,400+64*4);
            SetLoc("ProbeE",12,SetTo,464+64*4);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,400+64*5);
            SetLoc("ProbeS",12,SetTo,464+64*5);
            SetLoc("ProbeE",4,SetTo,400+64*5);
            SetLoc("ProbeE",12,SetTo,464+64*5);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (051A2E5B)
        players = {P0},
        conditions = {Deaths(i,Exactly,1,"!Exist");
            Switch("Switch "..k,Set);
            Void(31+i,Exactly,0);
        },
        actions = {
            SetLoc("ProbeS",0,SetTo,512);
            SetLoc("ProbeS",8,SetTo,576);
            SetLoc("ProbeE",0,SetTo,1600);
            SetLoc("ProbeE",8,SetTo,1664);

            SetLoc("ProbeS",4,SetTo,400+64*5);
            SetLoc("ProbeS",12,SetTo,464+64*5);
            SetLoc("ProbeE",4,SetTo,400+64*5);
            SetLoc("ProbeE",12,SetTo,464+64*5);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,400+64*4);
            SetLoc("ProbeS",12,SetTo,464+64*4);
            SetLoc("ProbeE",4,SetTo,400+64*4);
            SetLoc("ProbeE",12,SetTo,464+64*4);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,400+64*3);
            SetLoc("ProbeS",12,SetTo,464+64*3);
            SetLoc("ProbeE",4,SetTo,400+64*3);
            SetLoc("ProbeE",12,SetTo,464+64*3);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,400+64*2);
            SetLoc("ProbeS",12,SetTo,464+64*2);
            SetLoc("ProbeE",4,SetTo,400+64*2);
            SetLoc("ProbeE",12,SetTo,464+64*2);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,400+64*1);
            SetLoc("ProbeS",12,SetTo,464+64*1);
            SetLoc("ProbeE",4,SetTo,400+64*1);
            SetLoc("ProbeE",12,SetTo,464+64*1);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",4,SetTo,400+64*0);
            SetLoc("ProbeS",12,SetTo,464+64*0);
            SetLoc("ProbeE",4,SetTo,400+64*0);
            SetLoc("ProbeE",12,SetTo,464+64*0);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            PreserveTrigger();
        },
    }
    
    end
    
    
    
    
end