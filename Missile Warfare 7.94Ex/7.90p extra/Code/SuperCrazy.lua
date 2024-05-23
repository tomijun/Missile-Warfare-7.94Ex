function SUB_SuperCrazy()
    -- 슈퍼 크레이지 ＃-------------------------------------------------------------------
    for i = 0, 3 do -- 슈클 1팀
    NIf(i,{Void(23+i,AtLeast,1)})
    Trigger {
        players = {i},
        conditions = {
            Void(23+i,AtLeast,1);
            Deaths(i,Exactly,0,"!Exist");
        },
        actions = {
            SetVoid(23+i,SetTo,0);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {i},
        conditions = {
            Void(23+i,AtLeast,1); Void(23+i,AtMost,197*2-1);
            Deaths(i,Exactly,1,"!Exist");
        },
        actions = {
            SetVoid(23+i,Add,1);
            PreserveTrigger();
        }
    }
    if i == 0 then
        NIf(i,{Void(185+i,Exactly,0),Void(23+i,AtLeast,1,0),Void(23+i,AtMost,150*2,0)})
                DoActionsX(i,{
                    SetVoid(185+i,SetTo,20);
                    GiveUnits(All,"Men",P2,"Anywhere",P1);
                    GiveUnits(All,"Men",P3,"Anywhere",P1);
                    GiveUnits(All,"Men",P4,"Anywhere",P1);
                    SetVoid(40,SetTo,i);
                    SetCtrigX("X","X",0x4,0,SetTo,P1,0x5110,0x0,0,0);
                    SetCtrigX(P1,0x5120,0x4,0,SetTo,"X","X",0x0,0,1);
                })
        NIfEnd()
    end
    if i == 1 then
        NIf(i,{Void(185+i,Exactly,0),Void(23+i,AtLeast,1,0),Void(23+i,AtMost,150*2,0)})
                DoActionsX(i,{
                    SetVoid(185+i,SetTo,20);
                    GiveUnits(All,"Men",P1,"Anywhere",P2);
                    GiveUnits(All,"Men",P3,"Anywhere",P2);
                    GiveUnits(All,"Men",P4,"Anywhere",P2);
                    SetVoid(40,SetTo,i);
                    SetCtrigX("X","X",0x4,0,SetTo,P1,0x5110,0x0,0,0);
                    SetCtrigX(P1,0x5120,0x4,0,SetTo,"X","X",0x0,0,1);
                })
        NIfEnd()
    end
    if i == 2 then 
        NIf(i,{Void(185+i,Exactly,0),Void(23+i,AtLeast,1,0),Void(23+i,AtMost,150*2,0)})
                DoActionsX(i,{
                    SetVoid(185+i,SetTo,20);
                    GiveUnits(All,"Men",P1,"Anywhere",P3);
                    GiveUnits(All,"Men",P2,"Anywhere",P3);
                    GiveUnits(All,"Men",P4,"Anywhere",P3);
                    SetVoid(40,SetTo,i);
                    SetCtrigX("X","X",0x4,0,SetTo,P1,0x5110,0x0,0,0);
                    SetCtrigX(P1,0x5120,0x4,0,SetTo,"X","X",0x0,0,1);
                })
        NIfEnd()
    end
    if i == 3 then
        NIf(i,{Void(185+i,Exactly,0),Void(23+i,AtLeast,1,0),Void(23+i,AtMost,150*2,0)})
                DoActionsX(i,{
                    SetVoid(185+i,SetTo,20);
                    GiveUnits(All,"Men",P1,"Anywhere",P4);
                    GiveUnits(All,"Men",P2,"Anywhere",P4);
                    GiveUnits(All,"Men",P3,"Anywhere",P4);
                    SetVoid(40,SetTo,i);
                    SetCtrigX("X","X",0x4,0,SetTo,P1,0x5110,0x0,0,0);
                    SetCtrigX(P1,0x5120,0x4,0,SetTo,"X","X",0x0,0,1);
                })
        NIfEnd()
    end

        Trigger { -- No comment (3B9C6F03)
            players = {i},
            conditions = {
                Void(23+i,AtLeast,150*2+1);
            },
            actions = { -- 수폭 & 노바 제외 
                Order("Men",i,"Anywhere",Move,"2팀 뒤쪽");
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (3B9C6F03)
            players = {i},
            conditions = {
                Void(23+i,Exactly,197*2);
                Void(15,Exactly,0);
                Void(16,Exactly,0);
                Void(17,Exactly,0);
                Void(18,Exactly,0);
                Void(31,Exactly,0);
                Void(32,Exactly,0);
                Void(33,Exactly,0);
                Void(34,Exactly,0);
            },
            actions = { -- 수폭 & 노바 제외 
                KillUnit("Mini Missile", i);
                KillUnit("Fast Mini Missile", i);
                KillUnit("Homing Missile", i);
                KillUnit("Slow Missile", i);
                KillUnit("Missile", i);
                KillUnit("Fast Missile", i);
                KillUnit("Big Sniping Missile", i);
                KillUnit("Penetrating Missile★", i);
                KillUnit("Invisible Missile☆", i);
                KillUnit("Missile☆", i);
                KillUnit("Fast Missile☆", i);
                KillUnit("Big Sniping Missile☆", i);
                KillUnit("Sniping Missile", i);
                KillUnit("Light", i);
                KillUnit("Refractor", i);
                KillUnit("Super Missile", i);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (3B9C6F03)
            players = {i},
            conditions = {
                Void(23+i,AtLeast,197*2);
            },
            actions = {
                SetVoid(23+i,SetTo,0);
                PreserveTrigger();
            },
        }
    NIfEnd()
    end
    
    for i = 4, 7 do -- 슈클 2팀
    NIf(i,{Void(23+i,AtLeast,1)})
    Trigger {
        players = {i},
        conditions = {
            Void(23+i,AtLeast,1);
            Deaths(i,Exactly,0,"!Exist");
        },
        actions = {
            SetVoid(23+i,SetTo,0);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {i},
        conditions = {
            Void(23+i,AtLeast,1); Void(23+i,AtMost,197*2-1);
            Deaths(i,Exactly,1,"!Exist");
        },
        actions = {
            SetVoid(23+i,Add,1);
            PreserveTrigger();
        }
    }
    if i == 4 then
        NIf(i,{Void(185+i,Exactly,0),Void(23+i,AtLeast,1,0),Void(23+i,AtMost,150*2,0)})
                DoActionsX(i,{
                    SetVoid(185+i,SetTo,20);
                    GiveUnits(All,"Men",P6,"Anywhere",P5);
                    GiveUnits(All,"Men",P7,"Anywhere",P5);
                    GiveUnits(All,"Men",P8,"Anywhere",P5);
                    SetVoid(41,SetTo,i);
                    SetCtrigX("X","X",0x4,0,SetTo,P1,0x5111,0x0,0,0);
                    SetCtrigX(P1,0x5121,0x4,0,SetTo,"X","X",0x0,0,1);
                })
        NIfEnd()
    end
    if i == 5 then
        NIf(i,{Void(185+i,Exactly,0),Void(23+i,AtLeast,1,0),Void(23+i,AtMost,150*2,0)})
                DoActionsX(i,{
                    SetVoid(185+i,SetTo,20);
                    GiveUnits(All,"Men",P5,"Anywhere",P6);
                    GiveUnits(All,"Men",P7,"Anywhere",P6);
                    GiveUnits(All,"Men",P8,"Anywhere",P6);
                    SetVoid(41,SetTo,i);
                    SetCtrigX("X","X",0x4,0,SetTo,P1,0x5111,0x0,0,0);
                    SetCtrigX(P1,0x5121,0x4,0,SetTo,"X","X",0x0,0,1);
                })
        NIfEnd()
    end
    if i == 6 then
        NIf(i,{Void(185+i,Exactly,0),Void(23+i,AtLeast,1,0),Void(23+i,AtMost,150*2,0)})
                DoActionsX(i,{
                    SetVoid(185+i,SetTo,20);
                    GiveUnits(All,"Men",P5,"Anywhere",P7);
                    GiveUnits(All,"Men",P6,"Anywhere",P7);
                    GiveUnits(All,"Men",P8,"Anywhere",P7);
                    SetVoid(41,SetTo,i);
                    SetCtrigX("X","X",0x4,0,SetTo,P1,0x5111,0x0,0,0);
                    SetCtrigX(P1,0x5121,0x4,0,SetTo,"X","X",0x0,0,1);
                })
        NIfEnd()
    end
    if i == 7 then
        NIf(i,{Void(185+i,Exactly,0),Void(23+i,AtLeast,1,0),Void(23+i,AtMost,150*2,0)})
                DoActionsX(i,{
                    SetVoid(185+i,SetTo,20);
                    GiveUnits(All,"Men",P5,"Anywhere",P8);
                    GiveUnits(All,"Men",P6,"Anywhere",P8);
                    GiveUnits(All,"Men",P7,"Anywhere",P8);
                    SetVoid(41,SetTo,i);
                    SetCtrigX("X","X",0x4,0,SetTo,P1,0x5111,0x0,0,0);
                    SetCtrigX(P1,0x5121,0x4,0,SetTo,"X","X",0x0,0,1);
                })
        NIfEnd()
    end
        Trigger { -- No comment (3B9C6F03)
            players = {i},
            conditions = {
                Void(23+i,AtLeast,150*2+1);
            },
            actions = { -- 수폭 & 노바 제외 
                Order("Men",i,"Anywhere",Move,"1팀 뒤쪽");
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (3B9C6F03)
            players = {i},
            conditions = {
                Void(23+i,Exactly,197*2);
                Void(19,Exactly,0);
                Void(20,Exactly,0);
                Void(21,Exactly,0);
                Void(22,Exactly,0);
                Void(35,Exactly,0);
                Void(36,Exactly,0);
                Void(37,Exactly,0);
                Void(38,Exactly,0);
            },
            actions = { -- 수폭 & 노바 제외 
                KillUnit("Mini Missile", i);
                KillUnit("Fast Mini Missile", i);
                KillUnit("Homing Missile", i);
                KillUnit("Slow Missile", i);
                KillUnit("Missile", i);
                KillUnit("Fast Missile", i);
                KillUnit("Big Sniping Missile", i);
                KillUnit("Penetrating Missile★", i);
                KillUnit("Invisible Missile☆", i);
                KillUnit("Missile☆", i);
                KillUnit("Fast Missile☆", i);
                KillUnit("Big Sniping Missile☆", i);
                KillUnit("Sniping Missile", i);
                KillUnit("Light", i);
                KillUnit("Refractor", i);
                KillUnit("Super Missile", i);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (3B9C6F03)
            players = {i},
            conditions = {
                Void(23+i,AtLeast,197*2);
            },
            actions = {
                SetVoid(23+i,SetTo,0);
                PreserveTrigger();
            },
        }
    NIfEnd()
    end
end