function SUB_Twist()
-- 트위스트 ＃-------------------------------------------------------------------
for i = 0, 3 do -- 트위스트 1팀
    Trigger {
        players = {P0},
        conditions = {
            Void(31+i,AtLeast,1);
            Deaths(i,Exactly,0,"!Exist");
        },
        actions = {
            SetVoid(31+i,SetTo,0);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {P0},
        conditions = {
            Void(31+i,AtLeast,2);
            Deaths(i,Exactly,1,"!Exist");
        },
        actions = {
            SetVoid(31+i,Subtract,1);
            PreserveTrigger();
        }
    }
    end
    
    
    for i = 0, 0 do 
        Trigger {
            players = {P0},
            conditions = {
                Void(31+i,AtLeast,140);
            },
            actions = {
                GiveUnits(All,"Men",P2,"Anywhere",i);
                GiveUnits(All,"Men",P3,"Anywhere",i);
                GiveUnits(All,"Men",P4,"Anywhere",i);
                SetLoc("CLoc79",0,SetTo,4096);
                SetLoc("CLoc79",4,SetTo,4096);
                SetLoc("CLoc79",8,SetTo,4096);
                SetLoc("CLoc79",12,SetTo,4096);
                MoveUnit(All, "Men", i, "Anywhere", "CLoc79");
                PreserveTrigger();
            }
        }
    end
    for i = 1, 1 do 
        Trigger {
            players = {P0},
            conditions = {
                Void(31+i,AtLeast,140);
            },
            actions = {
                GiveUnits(All,"Men",P1,"Anywhere",i);
                GiveUnits(All,"Men",P3,"Anywhere",i);
                GiveUnits(All,"Men",P4,"Anywhere",i);
                SetLoc("CLoc79",0,SetTo,4096);
                SetLoc("CLoc79",4,SetTo,4096);
                SetLoc("CLoc79",8,SetTo,4096);
                SetLoc("CLoc79",12,SetTo,4096);
                MoveUnit(All, "Men", i, "Anywhere", "CLoc79");
                PreserveTrigger();
            }
        }
    end
    for i = 2, 2 do 
        Trigger {
            players = {P0},
            conditions = {
                Void(31+i,AtLeast,140);
            },
            actions = {
                GiveUnits(All,"Men",P1,"Anywhere",i);
                GiveUnits(All,"Men",P2,"Anywhere",i);
                GiveUnits(All,"Men",P4,"Anywhere",i);
                SetLoc("CLoc79",0,SetTo,4096);
                SetLoc("CLoc79",4,SetTo,4096);
                SetLoc("CLoc79",8,SetTo,4096);
                SetLoc("CLoc79",12,SetTo,4096);
                MoveUnit(All, "Men", i, "Anywhere", "CLoc79");
                PreserveTrigger();
            }
        }
    end
    for i = 3, 3 do 
        Trigger {
            players = {P0},
            conditions = {
                Void(31+i,AtLeast,140);
            },
            actions = {
                GiveUnits(All,"Men",P1,"Anywhere",i);
                GiveUnits(All,"Men",P2,"Anywhere",i);
                GiveUnits(All,"Men",P3,"Anywhere",i);
                SetLoc("CLoc79",0,SetTo,4096);
                SetLoc("CLoc79",4,SetTo,4096);
                SetLoc("CLoc79",8,SetTo,4096);
                SetLoc("CLoc79",12,SetTo,4096);
                MoveUnit(All, "Men", i, "Anywhere", "CLoc79");
                PreserveTrigger();
            }
        }
    end
    for i = 0, 3 do 
        NIf(P0,{Void(31+i,Exactly,140,0)})
                DoActionsX(P0,{
                    GiveUnits(All,"Men",Force1,"Anywhere",i);
                    SetVoid(40,SetTo,i);
                    SetNext("X",0x5110);
                    SetNext(0x5120,"X",1);
                })
        NIfEnd()
    end
    
    for i = 0, 3 do 
        Trigger { -- No comment (3B9C6F03)
            players = {P0},
            conditions = {
                Void(31+i,Exactly,1);
                Void(7,Exactly,0);
                Void(8,Exactly,0);
                Void(9,Exactly,0);
                Void(10,Exactly,0);
                Void(15,Exactly,0);
                Void(16,Exactly,0);
                Void(17,Exactly,0);
                Void(18,Exactly,0);
                Void(23,Exactly,0);
                Void(24,Exactly,0);
                Void(25,Exactly,0);
                Void(26,Exactly,0);
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
            players = {P0},
            conditions = {
                Void(31+i,Exactly,1);
            },
            actions = {
                SetVoid(31+i,SetTo,0);
                PreserveTrigger();
            },
        }
    end
    
    for i = 4, 7 do -- 트위스트 2팀
    Trigger {
        players = {P0},
        conditions = {
            Void(31+i,AtLeast,1);
            Deaths(i,Exactly,0,"!Exist");
        },
        actions = {
            SetVoid(31+i,SetTo,0);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {P0},
        conditions = {
            Void(31+i,AtLeast,2);
            Deaths(i,Exactly,1,"!Exist");
        },
        actions = {
            SetVoid(31+i,Subtract,1);
            PreserveTrigger();
        }
    }
    end
    
    
    for i = 4, 4 do 
        Trigger {
            players = {P0},
            conditions = {
                Void(31+i,AtLeast,140);
            },
            actions = {
                GiveUnits(All,"Men",P6,"Anywhere",i);
                GiveUnits(All,"Men",P7,"Anywhere",i);
                GiveUnits(All,"Men",P8,"Anywhere",i);
                SetLoc("CLoc79",0,SetTo,4096);
                SetLoc("CLoc79",4,SetTo,4096);
                SetLoc("CLoc79",8,SetTo,4096);
                SetLoc("CLoc79",12,SetTo,4096);
                MoveUnit(All, "Men", i, "Anywhere", "CLoc79");
                PreserveTrigger();
            }
        }
    end
    for i = 5, 5 do 
        Trigger {
            players = {P0},
            conditions = {
                Void(31+i,AtLeast,140);
            },
            actions = {
                GiveUnits(All,"Men",P5,"Anywhere",i);
                GiveUnits(All,"Men",P7,"Anywhere",i);
                GiveUnits(All,"Men",P8,"Anywhere",i);
                SetLoc("CLoc79",0,SetTo,4096);
                SetLoc("CLoc79",4,SetTo,4096);
                SetLoc("CLoc79",8,SetTo,4096);
                SetLoc("CLoc79",12,SetTo,4096);
                MoveUnit(All, "Men", i, "Anywhere", "CLoc79");
                PreserveTrigger();
            }
        }
    end
    for i = 6, 6 do 
        Trigger {
            players = {P0},
            conditions = {
                Void(31+i,AtLeast,140);
            },
            actions = {
                GiveUnits(All,"Men",P5,"Anywhere",i);
                GiveUnits(All,"Men",P6,"Anywhere",i);
                GiveUnits(All,"Men",P8,"Anywhere",i);
                SetLoc("CLoc79",0,SetTo,4096);
                SetLoc("CLoc79",4,SetTo,4096);
                SetLoc("CLoc79",8,SetTo,4096);
                SetLoc("CLoc79",12,SetTo,4096);
                MoveUnit(All, "Men", i, "Anywhere", "CLoc79");
                PreserveTrigger();
            }
        }
    end
    for i = 7, 7 do 
        Trigger {
            players = {P0},
            conditions = {
                Void(31+i,AtLeast,140);
            },
            actions = {
                GiveUnits(All,"Men",P5,"Anywhere",i);
                GiveUnits(All,"Men",P6,"Anywhere",i);
                GiveUnits(All,"Men",P7,"Anywhere",i);
                SetLoc("CLoc79",0,SetTo,4096);
                SetLoc("CLoc79",4,SetTo,4096);
                SetLoc("CLoc79",8,SetTo,4096);
                SetLoc("CLoc79",12,SetTo,4096);
                MoveUnit(All, "Men", i, "Anywhere", "CLoc79");
                PreserveTrigger();
            }
        }
    end
    for i = 4, 7 do 
        NIf(P0,{Void(31+i,Exactly,140,0)})
                DoActionsX(P0,{
                    GiveUnits(All,"Men",Force2,"Anywhere",i);
                    SetVoid(41,SetTo,i);
                    SetNext("X",0x5111);
                    SetNext(0x5121,"X",1);
                })
        NIfEnd()
    end
    
    for i = 4, 7 do 
        Trigger { -- No comment (3B9C6F03)
            players = {P0},
            conditions = {
                Void(31+i,Exactly,1);
                Void(11,Exactly,0);
                Void(12,Exactly,0);
                Void(13,Exactly,0);
                Void(14,Exactly,0);
                Void(19,Exactly,0);
                Void(20,Exactly,0);
                Void(21,Exactly,0);
                Void(22,Exactly,0);
                Void(27,Exactly,0);
                Void(28,Exactly,0);
                Void(29,Exactly,0);
                Void(30,Exactly,0);
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
                KillUnit("Missile☆", i);
                KillUnit("Invisible Missile☆", i);
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
            players = {P0},
            conditions = {
                Void(31+i,Exactly,1);
            },
            actions = {
                SetVoid(31+i,SetTo,0);
                PreserveTrigger();
            },
        }
    end

end