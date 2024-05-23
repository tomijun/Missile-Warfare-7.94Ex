function SUB_Defender()
    -- 굴절 보호막 -----------------------------
for i = 4, 7 do -- 굴절 보호막 1팀
    Trigger { -- No comment (38056558)
        players = {P0},
        conditions = {
            Void(85,AtLeast,1);
            Void(15+i,AtLeast,250*2);
        },
        actions = {
            Order("Men", i, "1팀필드", Move, "1팀 뒤쪽");
            Order("Men", i, "1팀 Back", Move, "1팀 뒤쪽");
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (38056558)
        players = {P0},
        conditions = {
            Void(85,AtLeast,1);
            Void(15+i,Exactly,0);
        },
        actions = {
            Order("Men", i, "1팀필드", Move, "1팀 뒤쪽");
            Order("Men", i, "1팀 Back", Move, "1팀 뒤쪽");
            PreserveTrigger();
        },
    }
    end
    Trigger { -- No comment (38056558)
        players = {P0},
        conditions = {
            Void(85,AtLeast,1);
        },
        actions = {
            KillUnitAt(All,"Sniping Missile","1팀필드",P5);
            KillUnitAt(All,"Sniping Missile","1팀필드",P6);
            KillUnitAt(All,"Sniping Missile","1팀필드",P7);
            KillUnitAt(All,"Sniping Missile","1팀필드",P8);
            PreserveTrigger();
        },
    }
    Trigger { -- 굴절 보호막 1팀
        players = {P0},
        conditions = {
            Void(87,AtLeast,4);
        },
        actions = {
            SetVoid(87,SetTo,0);
            PreserveTrigger();
        },
    }
    for i = 4, 7 do -- 굴절 보호막 1팀
    Trigger { -- No comment (38056558)
        players = {P0},
        conditions = {
            Deaths(i,Exactly,1,"!Exist");
            Void(87,Exactly,i-4);
            Void(85,AtLeast,1);
            Void(15+i,Exactly,0);
        },
        actions = {
            CreateUnit(1, "Big Sniping Missile", "1팀 뒤쪽", i);
            KillUnitAt(All, "Big Sniping Missile", "1팀 뒤쪽", i);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (38056558)
        players = {P0},
        conditions = {
            Deaths(i,Exactly,1,"!Exist");
            Void(87,Exactly,i-4);
            Void(85,AtLeast,1);
            Void(15+i,AtLeast,250*2);
        },
        actions = {
            CreateUnit(1, "Big Sniping Missile", "1팀 뒤쪽", i);
            KillUnitAt(All, "Big Sniping Missile", "1팀 뒤쪽", i);
            PreserveTrigger();
        },
    }
    end
    
    for i = 0, 3 do -- 굴절 보호막 2팀
    Trigger { -- No comment (38056558)
        players = {P0},
        conditions = {
            Void(86,AtLeast,1);
            Void(15+i,AtLeast,250*2);
        },
        actions = {
            Order("Men", i, "2팀필드", Move, "2팀 뒤쪽");
            Order("Men", i, "2팀 Back", Move, "2팀 뒤쪽");
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (38056558)
        players = {P0},
        conditions = {
            Void(86,AtLeast,1);
            Void(15+i,Exactly,0);
        },
        actions = {
            Order("Men", i, "2팀필드", Move, "2팀 뒤쪽");
            Order("Men", i, "2팀 Back", Move, "2팀 뒤쪽");
            PreserveTrigger();
        },
    }
    end
    Trigger { -- No comment (38056558)
        players = {P0},
        conditions = {
            Void(86,AtLeast,1);
        },
        actions = {
            KillUnitAt(All,"Sniping Missile","2팀필드",P1);
            KillUnitAt(All,"Sniping Missile","2팀필드",P2);
            KillUnitAt(All,"Sniping Missile","2팀필드",P3);
            KillUnitAt(All,"Sniping Missile","2팀필드",P4);
            PreserveTrigger();
        },
    }
    Trigger { -- 굴절 보호막 2팀
        players = {P0},
        conditions = {
            Void(88,AtLeast,4);
        },
        actions = {
            SetVoid(88,SetTo,0);
            PreserveTrigger();
        },
    }
    for i = 0, 3 do -- 굴절 보호막 2팀
    Trigger { -- No comment (38056558)
        players = {P0},
        conditions = {
            Deaths(i,Exactly,1,"!Exist");
            Void(88,Exactly,i);
            Void(86,AtLeast,1);
            Void(15+i,Exactly,0);
        },
        actions = {
            CreateUnit(1, "Big Sniping Missile", "2팀 뒤쪽", i);
            KillUnitAt(All, "Big Sniping Missile", "2팀 뒤쪽", i);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (38056558)
        players = {P0},
        conditions = {
            Deaths(i,Exactly,1,"!Exist");
            Void(88,Exactly,i);
            Void(86,AtLeast,1);
            Void(15+i,AtLeast,250*2);
        },
        actions = {
            CreateUnit(1, "Big Sniping Missile", "2팀 뒤쪽", i);
            KillUnitAt(All, "Big Sniping Missile", "2팀 뒤쪽", i);
            PreserveTrigger();
        },
    }
    end
end