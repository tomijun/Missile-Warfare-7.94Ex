function SUB_Chain()
    -- 체인 ＃-------------------------------------------------------------------
for i = 0, 3 do -- 체인 1팀
    NIf(i,{Void(15+i,AtLeast,1)})
    Trigger {
        players = {i},
        conditions = {
            Void(15+i,AtLeast,1);
            Deaths(i,Exactly,0,"!Exist");
        },
        actions = {
            SetVoid(15+i,SetTo,0);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {i},
        conditions = {
            Void(15+i,AtLeast,1); Void(15+i,AtMost,300*2-1);
            Deaths(i,Exactly,1,"!Exist");
        },
        actions = {
            SetVoid(15+i,Add,1);
            PreserveTrigger();
        }
    }
        local MissileArr = {"Slow Missile","Missile","Fast Missile","Penetrating Missile★","Missile☆","Fast Missile☆","Invisible Missile☆","Fast Mini Missile","Mini Missile","Homing Missile"}
        for j = 1, 10 do
            Trigger { -- No comment (27027158)
                players = {i},
                conditions = {
                    Void(15+i,AtLeast,1);
                    Bring(Force1, AtLeast, 1, MissileArr[j],"Team1");
                },
                actions = {
                    MoveLocation("Chain", MissileArr[j], Force1, "Team1");
                    KillUnitAt(1, MissileArr[j], "Chain", Force1);
                    CreateUnit(2, "Sniping Missile", "Chain", i);
                    PreserveTrigger();
                },
            }
            Trigger { -- No comment (27027158)
                players = {i},
                conditions = {
                    Void(15+i,AtLeast,1);
                    Bring(Force1, AtLeast, 1, MissileArr[j],"Team2");
                },
                actions = {
                    MoveLocation("Chain", MissileArr[j], Force1, "Team2");
                    KillUnitAt(1, MissileArr[j], "Chain", Force1);
                    CreateUnit(1, "Sniping Missile", "Chain", i);
                    PreserveTrigger();
                },
            }
        end
        Trigger { -- No comment (27027158)
                players = {i},
                conditions = {
                    Void(15+i,AtLeast,1);
                    Bring(Force1, AtLeast, 1, "Super Missile","Team1");
                },
                actions = {
                    MoveLocation("Chain", "Super Missile", Force1, "Team1");
                    KillUnitAt(1, "Super Missile", "Chain", Force1);
                    CreateUnit(6, "Sniping Missile", "Chain", i);
                    PreserveTrigger();
                },
            }
        Trigger { -- No comment (27027158)
                players = {i},
                conditions = {
                    Void(15+i,AtLeast,1);
                    Bring(Force1, AtLeast, 1, "Super Missile","Team2");
                },
                actions = {
                    MoveLocation("Chain", "Super Missile", Force1, "Team2");
                    KillUnitAt(1, "Super Missile", "Chain", Force1);
                    CreateUnit(3, "Sniping Missile", "Chain", i);
                    PreserveTrigger();
                },
            }
        --[[
        Trigger { -- No comment (27027158)
                players = {i},
                conditions = {
                    Void(193+i,Exactly,0);
                    Void(15+i,AtLeast,1); Void(15+i,AtMost,499);
                    Bring(Force1, AtLeast, 1, "Twist Missile [N]","Team1");
                },
                actions = {
                    SetVoid(193+i,SetTo,1);
                    MoveLocation("Chain", "Twist Missile [N]", Force1, "Team1");
                    RemoveUnitAt(1, "Twist Missile [N]", "Chain", Force1);
                    CreateUnit(7, "Big Sniping Missile☆", "Chain", i);
                    SetCp(i);
                    DisplayText("\x1F<System>  \x16Chain Missile 연속기가 발동 되었습니다.\r\n\x16연쇄 폭발 대상에 Big Sniping Missile이 추가됩니다.", 4);
                    PlayWAV("staredit\\wav\\SpeedMessage.wav");
                    SetCp(0);
                    PreserveTrigger();
                },
            }
        Trigger { -- No comment (27027158)
                players = {i},
                conditions = {
                    Void(193+i,Exactly,1);
                    Void(15+i,AtLeast,1); Void(15+i,AtMost,499);
                    Bring(Force1, AtLeast, 1, "Twist Missile [N]","Team1");
                },
                actions = {
                    SetResources(i,Add,TwistOre,Ore);
                    MoveLocation("Chain", "Twist Missile [N]", Force1, "Team1");
                    RemoveUnitAt(1, "Twist Missile [N]", "Chain", Force1);
                    CreateUnit(5, "Big Sniping Missile☆", "Chain", i);
                    SetCp(i);
                    DisplayText("\x1F<System>  \x16Twist Big Sniping Missile이 발사 되었습니다.\r\n\x16Chain Missile 시전 도중에 발사되는 미사일 입니다.", 4);
                    PlayWAV("staredit\\wav\\Fire.wav");
                    SetCp(0);
                    PreserveTrigger();
                },
            }
        ]]--
        CIf(i,{Void(15+i,AtLeast,1),Void(15+i,AtMost,399),
        Deaths(i,Exactly,1,"!Exist"),Void(75+i,AtLeast,19025),Void(75+i,AtMost,161741)})
           CRead(i,V(CTemp),VO(75+i))
            CTrigger(i,{TDeathsX(Vi(CTemp,19),AtLeast,1*256,0,0xFF00)},
            {TSetDeaths(Vi(CTemp,22),SetTo,1024+1024*65536,0),TSetDeathsX(Vi(CTemp,19),SetTo,137*256,0,0xFF00)},{Preserved})

        Trigger { -- No comment (364235AA)
            players = {i},
            conditions = {
                Void(15+i,AtLeast,1);Void(15+i,AtMost,399);
            },
            actions = {
                Order("Mini Missile", Force1, "Anywhere", Move, "Cntr");
                Order("Fast Mini Missile", Force1, "Anywhere", Move, "Cntr");
                Order("Homing Missile", Force1, "Anywhere", Move, "Cntr");
                Order("Slow Missile", Force1, "Anywhere", Move, "Cntr");
                Order("Missile", Force1, "Anywhere", Move, "Cntr");
                Order("Fast Missile", Force1, "Anywhere", Move, "Cntr");
                Order("Sniping Missile", Force1, "Anywhere", Move, "Cntr");
                Order("Penetrating Missile★", Force1, "Anywhere", Move, "Cntr");
                Order("Invisible Missile☆", Force1, "Anywhere", Move, "Cntr");
                Order("Missile☆", Force1, "Anywhere", Move, "Cntr");
                Order("Fast Missile☆", Force1, "Anywhere", Move, "Cntr");
                Order("Super Missile", Force1, "Anywhere", Move, "Cntr");
                PreserveTrigger();
            },
        }
    
        Trigger { -- No comment (364235AA)
            players = {i},
            conditions = {
                Void(193+i,Exactly,1);
                Void(15+i,AtLeast,1);Void(15+i,AtMost,464);
            },
            actions = {
                Order("Big Sniping Missile", Force1, "Cntr", Move, "Cntr");
                Order("Big Sniping Missile", Force1, "Team1", Move, "Cntr");
                Order("Big Sniping Missile☆", Force1, "Anywhere", Move, "Cntr");
                PreserveTrigger();
            },
        }

        CIf(i,{Void(15+i,AtLeast,400),Void(15+i,AtMost,499),
        Deaths(i,Exactly,1,"!Exist"),Void(75+i,AtLeast,19025),Void(75+i,AtMost,161741)})
            CRead(i,V(CTemp),VO(75+i))
            CTrigger(i,{TDeathsX(Vi(CTemp,19),AtLeast,1*256,0,0xFF00)},
            {TSetDeaths(Vi(CTemp,22),SetTo,1024+1472*65536,0),TSetDeathsX(Vi(CTemp,19),SetTo,137*256,0,0xFF00)},{Preserved})
        CIfEnd()

        Trigger { -- No comment (364235AA)
            players = {i},
            conditions = {
                Void(15+i,AtLeast,400);Void(15+i,AtMost,499);
            },
            actions = {
                Order("Mini Missile", Force1, "Anywhere", Move, "2-7");
                Order("Fast Mini Missile", Force1, "Anywhere", Move, "2-7");
                Order("Homing Missile", Force1, "Anywhere", Move, "2-7");
                Order("Slow Missile", Force1, "Anywhere", Move, "2-7");
                Order("Missile", Force1, "Anywhere", Move, "2-7");
                Order("Fast Missile", Force1, "Anywhere", Move, "2-7");
                Order("Sniping Missile", Force1, "Anywhere", Move, "2-7");
                Order("Penetrating Missile★", Force1, "Anywhere", Move, "2-7");
                Order("Invisible Missile☆", Force1, "Anywhere", Move, "2-7");
                Order("Missile☆", Force1, "Anywhere", Move, "2-7");
                Order("Fast Missile☆", Force1, "Anywhere", Move, "2-7");
                Order("Super Missile", Force1, "Anywhere", Move, "2-7");
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (364235AA)
            players = {i},
            conditions = {
                Void(193+i,Exactly,1);
                Void(15+i,AtLeast,465);Void(15+i,AtMost,499);
            },
            actions = {
                Order("Big Sniping Missile", Force1, "Cntr", Move, "TChain2");
                Order("Big Sniping Missile", Force1, "Team1", Move, "TChain2");
                Order("Big Sniping Missile☆", Force1, "Anywhere", Move, "TChain2");
                PreserveTrigger();
            },
        }

        NIf(i,{Void(15+i,Exactly,500,0)})
                DoActionsX(i,{
                    GiveUnits(All,"Men",Force1,"Anywhere",i);
                    SetVoid(40,SetTo,i);
                    SetCtrigX("X","X",0x4,0,SetTo,P1,0x5110,0x0,0,0);
                    SetCtrigX(P1,0x5120,0x4,0,SetTo,"X","X",0x0,0,1);
                })
        NIfEnd()

        Trigger { -- No comment (3B9C6F03)
            players = {i},
            conditions = {
                Void(15+i,Exactly,600);
                Void(7,Exactly,0);
                Void(8,Exactly,0);
                Void(9,Exactly,0);
                Void(10,Exactly,0);
                Void(23,Exactly,0);
                Void(24,Exactly,0);
                Void(25,Exactly,0);
                Void(26,Exactly,0);
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
                Void(15+i,AtLeast,600);
            },
            actions = {
                SetVoid(15+i,SetTo,0);
                SetVoid(193+i,SetTo,0);
                PreserveTrigger();
            },
        }
    NIfEnd()
    end
    for i = 4, 7 do -- 체인 2팀
    NIf(i,{Void(15+i,AtLeast,1)})
    Trigger {
        players = {i},
        conditions = {
            Void(15+i,AtLeast,1);
            Deaths(i,Exactly,0,"!Exist");
        },
        actions = {
            SetVoid(15+i,SetTo,0);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {i},
        conditions = {
            Void(15+i,AtLeast,1); Void(15+i,AtMost,300*2-1);
            Deaths(i,Exactly,1,"!Exist");
        },
        actions = {
            SetVoid(15+i,Add,1);
            PreserveTrigger();
        }
    }
        local MissileArr = {"Slow Missile","Missile","Fast Missile","Penetrating Missile★","Missile☆","Fast Missile☆","Invisible Missile☆","Fast Mini Missile","Mini Missile","Homing Missile"}
        for j = 1, 10 do
            Trigger { -- No comment (27027158)
                players = {i},
                conditions = {
                    Void(15+i,AtLeast,1);
                    Bring(Force2, AtLeast, 1, MissileArr[j],"Team2");
                },
                actions = {
                    MoveLocation("Chain", MissileArr[j], Force2, "Team2");
                    KillUnitAt(1, MissileArr[j], "Chain", Force2);
                    CreateUnit(2, "Sniping Missile", "Chain", i);
                    PreserveTrigger();
                },
            }
            Trigger { -- No comment (27027158)
                players = {i},
                conditions = {
                    Void(15+i,AtLeast,1);
                    Bring(Force2, AtLeast, 1, MissileArr[j],"Team1");
                },
                actions = {
                    MoveLocation("Chain", MissileArr[j], Force2, "Team1");
                    KillUnitAt(1, MissileArr[j], "Chain", Force2);
                    CreateUnit(1, "Sniping Missile", "Chain", i);
                    PreserveTrigger();
                },
            }
        end
        Trigger { -- No comment (27027158)
                players = {i},
                conditions = {
                    Void(15+i,AtLeast,1);
                    Bring(Force2, AtLeast, 1, "Super Missile","Team2");
                },
                actions = {
                    MoveLocation("Chain", "Super Missile", Force2, "Team2");
                    KillUnitAt(1, "Super Missile", "Chain", Force2);
                    CreateUnit(6, "Sniping Missile", "Chain", i);
                    PreserveTrigger();
                },
            }
        Trigger { -- No comment (27027158)
                players = {i},
                conditions = {
                    Void(15+i,AtLeast,1);
                    Bring(Force2, AtLeast, 1, "Super Missile","Team1");
                },
                actions = {
                    MoveLocation("Chain", "Super Missile", Force2, "Team1");
                    KillUnitAt(1, "Super Missile", "Chain", Force2);
                    CreateUnit(3, "Sniping Missile", "Chain", i);
                    PreserveTrigger();
                },
            }
        --[[
        Trigger { -- No comment (27027158)
                players = {i},
                conditions = {
                    Void(193+i,Exactly,0);
                    Void(15+i,AtLeast,1); Void(15+i,AtMost,499);
                    Bring(Force2, AtLeast, 1, "Twist Missile [N]","Team2");
                },
                actions = {
                    SetVoid(193+i,SetTo,1);
                    MoveLocation("Chain", "Twist Missile [N]", Force2, "Team2");
                    RemoveUnitAt(1, "Twist Missile [N]", "Chain", Force2);
                    CreateUnit(7, "Big Sniping Missile☆", "Chain", i);
                    SetCp(i);
                    DisplayText("\x1F<System>  \x16Chain Missile 연속기가 발동 되었습니다.\r\n\x16연쇄 폭발 대상에 Big Sniping Missile이 추가됩니다.", 4);
                    PlayWAV("staredit\\wav\\SpeedMessage.wav");
                    SetCp(0);
                    PreserveTrigger();
                },
            }
        Trigger { -- No comment (27027158)
                players = {i},
                conditions = {
                    Void(193+i,Exactly,1);
                    Void(15+i,AtLeast,1); Void(15+i,AtMost,499);
                    Bring(Force2, AtLeast, 1, "Twist Missile [N]","Team2");
                },
                actions = {
                    SetResources(i,Add,TwistOre,Ore);
                    MoveLocation("Chain", "Twist Missile [N]", Force2, "Team2");
                    RemoveUnitAt(1, "Twist Missile [N]", "Chain", Force2);
                    CreateUnit(5, "Big Sniping Missile☆", "Chain", i);
                    SetCp(i);
                    DisplayText("\x1F<System>  \x16Twist Big Sniping Missile이 발사 되었습니다.\r\n\x16Chain Missile 시전 도중에 발사되는 미사일 입니다.", 4);
                    PlayWAV("staredit\\wav\\Fire.wav");
                    SetCp(0);
                    PreserveTrigger();
                },
            }
        ]]--
        
        CIf(i,{Void(15+i,AtLeast,1),Void(15+i,AtMost,399),
        Deaths(i,Exactly,1,"!Exist"),Void(75+i,AtLeast,19025),Void(75+i,AtMost,161741)})
           CRead(i,V(CTemp),VO(75+i))
            CTrigger(i,{TDeathsX(Vi(CTemp,19),AtLeast,1*256,0,0xFF00)},
            {TSetDeaths(Vi(CTemp,22),SetTo,1024+1024*65536,0),TSetDeathsX(Vi(CTemp,19),SetTo,137*256,0,0xFF00)},{Preserved})
        CIfEnd()

        Trigger { -- No comment (364235AA)
            players = {i},
            conditions = {
                Void(15+i,AtLeast,1);Void(15+i,AtMost,399);
            },
            actions = {
                Order("Mini Missile", Force2, "Anywhere", Move, "Cntr");
                Order("Fast Mini Missile", Force2, "Anywhere", Move, "Cntr");
                Order("Homing Missile", Force2, "Anywhere", Move, "Cntr");
                Order("Slow Missile", Force2, "Anywhere", Move, "Cntr");
                Order("Missile", Force2, "Anywhere", Move, "Cntr");
                Order("Fast Missile", Force2, "Anywhere", Move, "Cntr");
                Order("Sniping Missile", Force2, "Anywhere", Move, "Cntr");
                Order("Penetrating Missile★", Force2, "Anywhere", Move, "Cntr");
                Order("Invisible Missile☆", Force2, "Anywhere", Move, "Cntr");
                Order("Missile☆", Force2, "Anywhere", Move, "Cntr");
                Order("Fast Missile☆", Force2, "Anywhere", Move, "Cntr");
                Order("Super Missile", Force2, "Anywhere", Move, "Cntr");
                PreserveTrigger();
            },
        }
    
        Trigger { -- No comment (364235AA)
            players = {i},
            conditions = {
                Void(193+i,Exactly,1);
                Void(15+i,AtLeast,1);Void(15+i,AtMost,449);
            },
            actions = {
                Order("Big Sniping Missile", Force2, "Cntr", Move, "Cntr");
                Order("Big Sniping Missile", Force2, "Team2", Move, "Cntr");
                Order("Big Sniping Missile☆", Force2, "Anywhere", Move, "Cntr");
                PreserveTrigger();
            },
        }

        CIf(i,{Void(15+i,AtLeast,400),Void(15+i,AtMost,499),
        Deaths(i,Exactly,1,"!Exist"),Void(75+i,AtLeast,19025),Void(75+i,AtMost,161741)})
           CRead(i,V(CTemp),VO(75+i))
            CTrigger(i,{TDeathsX(Vi(CTemp,19),AtLeast,1*256,0,0xFF00)},
            {TSetDeaths(Vi(CTemp,22),SetTo,1024+576*65536,0),TSetDeathsX(Vi(CTemp,19),SetTo,137*256,0,0xFF00)},{Preserved})
        CIfEnd()

        Trigger { -- No comment (364235AA)
            players = {i},
            conditions = {
                Void(15+i,AtLeast,400);Void(15+i,AtMost,499);
            },
            actions = {
                Order("Mini Missile", Force2, "Anywhere", Move, "1-7");
                Order("Fast Mini Missile", Force2, "Anywhere", Move, "1-7");
                Order("Homing Missile", Force2, "Anywhere", Move, "1-7");
                Order("Slow Missile", Force2, "Anywhere", Move, "1-7");
                Order("Missile", Force2, "Anywhere", Move, "1-7");
                Order("Fast Missile", Force2, "Anywhere", Move, "1-7");
                Order("Sniping Missile", Force2, "Anywhere", Move, "1-7");
                Order("Penetrating Missile★", Force2, "Anywhere", Move, "1-7");
                Order("Invisible Missile☆", Force2, "Anywhere", Move, "1-7");
                Order("Missile☆", Force2, "Anywhere", Move, "1-7");
                Order("Fast Missile☆", Force2, "Anywhere", Move, "1-7");
                Order("Super Missile", Force2, "Anywhere", Move, "1-7");
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (364235AA)
            players = {i},
            conditions = {
                Void(193+i,Exactly,1);
                Void(15+i,AtLeast,450);Void(15+i,AtMost,499);
            },
            actions = {
                Order("Big Sniping Missile", Force2, "Cntr", Move, "TChain1");
                Order("Big Sniping Missile", Force2, "Team2", Move, "TChain1");
                Order("Big Sniping Missile☆", Force2, "Anywhere", Move, "TChain1");
                PreserveTrigger();
            },
        }

        NIf(i,{Void(15+i,Exactly,500,0)})
                DoActionsX(i,{
                    GiveUnits(All,"Men",Force2,"Anywhere",i);
                    SetVoid(41,SetTo,i);
                    SetCtrigX("X","X",0x4,0,SetTo,P1,0x5111,0x0,0,0);
                    SetCtrigX(P1,0x5121,0x4,0,SetTo,"X","X",0x0,0,1);
                })
        NIfEnd()

        Trigger { -- No comment (3B9C6F03)
            players = {i},
            conditions = {
                Void(15+i,Exactly,600);
                Void(11,Exactly,0);
                Void(12,Exactly,0);
                Void(13,Exactly,0);
                Void(14,Exactly,0);
                Void(27,Exactly,0);
                Void(28,Exactly,0);
                Void(29,Exactly,0);
                Void(30,Exactly,0);
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
                Void(15+i,AtLeast,600);
            },
            actions = {
                SetVoid(15+i,SetTo,0);
                SetVoid(193+i,SetTo,0);
                PreserveTrigger();
            },
        }
    NIfEnd()
    end
end