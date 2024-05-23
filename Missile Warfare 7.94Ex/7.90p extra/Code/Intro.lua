function SUB_Intro()
    P0 = AllPlayers

        Trigger { -- Intro
            players = {P1,P2,P3,P4,P5,P6,P7,P8},
            conditions = {
                ElapsedTime(AtLeast, 2);
            },
            actions = {
                PlayWAV("staredit\\wav\\scan.wav");
                DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x05미\r\n\r\n\r\n\r\n\r\n\r\n\r\n", 4);
                Wait(50);
                DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x02미\x05사\r\n\r\n\r\n\r\n\r\n\r\n\r\n", 4);
                Wait(50);
                DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x1F미\x02사\x05일\r\n\r\n\r\n\r\n\r\n\r\n\r\n", 4);
                Wait(50);
                DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x1F미사\x02일\x05 \r\n\r\n\r\n\r\n\r\n\r\n\r\n", 4);
                Wait(50);
                DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x1F미사일\x02 \x05피\r\n\r\n\r\n\r\n\r\n\r\n\r\n", 4);
                Wait(50);
                DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x1F미사일 \x02피\x05하\r\n\r\n\r\n\r\n\r\n\r\n\r\n", 4);
                Wait(50);
                DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x1F미사일 피\x02하\x05기\r\n\r\n\r\n\r\n\r\n\r\n\r\n", 4);
                Wait(50);
                DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x1F미사일 피하\x02기\r\n\r\n\x13\x05Created by Ninfia\r\n\r\n\r\n\r\n\r\n", 4);
                Wait(50);
                DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x1F미사일 피하기\r\n\r\n\x13\x02Created by Ninfia\r\n\r\n\x13\x05Cafe http://cafe.naver.com/missilewarfare.cafe\r\n\r\n\r\n", 4);
                Wait(50);
                DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x1F미사일 피하기\r\n\r\n\x13\x04Created by \x1BNinfia\r\n\r\n\x13\x02Cafe http://cafe.naver.com/missilewarfare.cafe\r\n\r\n\x13\x05Clan : Op mipi-\r\n", 4);
                Wait(50);
                DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\x13\x05미사일피하기에 비매너 미사일같은것은 존재하지 않습니다.\r\n\r\n\x13\x1F미사일 피하기\r\n\r\n\x13\x04Created by \x1BNinfia\r\n\r\n\x13\x1CCafe \x04http://cafe.naver.com/missilewarfare.cafe\r\n\r\n\x13\x02Clan : Op mipi-\r\n", 4);
                Wait(50);
                DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\x13\x02미사일피하기에 비매너 미사일같은것은 존재하지 않습니다.\r\n\r\n\x13\x1F미사일 피하기\r\n\r\n\x13\x04Created by \x1BNinfia\r\n\r\n\x13\x1CCafe \x04http://cafe.naver.com/missilewarfare.cafe\r\n\r\n\x13\x0EClan : Op mipi-\r\n", 4);
                Wait(50);
                DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\x13\x04미사일피하기에 비매너 미사일같은것은 존재하지 않습니다.\r\n\r\n\x13\x1F미사일 피하기\r\n\r\n\x13\x04Created by \x1BNinfia\r\n\r\n\x13\x1CCafe \x04http://cafe.naver.com/missilewarfare.cafe\r\n\r\n\x13\x0EClan : Op mipi-\r\n", 4);
                Wait(2000);
                DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\x13\x02미사일피하기에 비매너 미사일같은것은 존재하지 않습니다.\r\n\r\n\x13\x02미사일 피하기\r\n\r\n\x13\x02Created by Ninfia\r\n\r\n\x13\x02Cafe http://cafe.naver.com/missilewarfare.cafe\r\n\r\n\x13\x02Clan : Op mipi-\r\n", 4);
                Wait(50);
                DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\x13\x05미사일피하기에 비매너 미사일같은것은 존재하지 않습니다.\r\n\r\n\x13\x05미사일 피하기\r\n\r\n\x13\x05Created by Ninfia\r\n\r\n\x13\x05Cafe http://cafe.naver.com/missilewarfare.cafe\r\n\r\n\x13\x05Clan : Op mipi-\r\n", 4);
                Wait(50);
                DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n", 4);
                RemoveUnit(101,CurrentPlayer);
                RemoveUnit(101,P12);
                RemoveUnit(15,AllPlayers); RemoveUnit(197,AllPlayers); RemoveUnit(198,AllPlayers); SetVoid(707,SetTo,1);
            },
        }


        for i = 0, 0 do -- 아비터 생성
            DoActions(i,{SetVoid(75+i,SetTo,0),SetDeaths(i,Add,1,"아비터")})
            CIf(i,{Deaths(i,Exactly,1,"!Exist"),Deaths(i, AtLeast, 10, "아비터")},{SetDeaths(i, SetTo, 0, "아비터"),RemoveUnit("Blue Moon", i)})
                CRead(i,V(CTemp),0x628438,nil,nil,1)
                Trigger { -- No comment (47C74DE7)
                    players = {i},
                    conditions = {
                        Label(0);
                        CVar("X",CTemp,AtLeast,19025);
                        CVar("X",CTemp,AtMost,161741);
                    },
                    actions = {
                        SetLoc("CLoc79",0,SetTo,1760);
                        SetLoc("CLoc79",4,SetTo,1856);
                        SetLoc("CLoc79",8,SetTo,1856);
                        SetLoc("CLoc79",12,SetTo,1952);
                        CreateUnit(1, "Blue Moon", "CLoc79", i);
                        SetInvincibility(Enable, "Blue Moon", i, "Anywhere");
                        PreserveTrigger();
                    },
                }
                CMov(i,VO(75+i),V(CTemp))
                DoActions(i,KillUnitAt(1,191,"CLoc79",i))
                Trigger { -- No comment (47C74DE7)
                    players = {i},
                    conditions = {
                        Bring(i,Exactly,0,"Blue Moon","Anywhere");
                    },
                    actions = {
                        SetVoid(75+i,SetTo,0);
                        PreserveTrigger();
                    },
                }
            CIfEnd()
        end
        for i = 1, 1 do -- 아비터 생성
            DoActions(i,{SetVoid(75+i,SetTo,0),SetDeaths(i,Add,1,"아비터")})
            CIf(i,{Deaths(i,Exactly,1,"!Exist"),Deaths(i, AtLeast, 10, "아비터")},{SetDeaths(i, SetTo, 0, "아비터"),RemoveUnit("Blue Moon", i)})
                CRead(i,V(CTemp),0x628438,nil,nil,1)
                Trigger { -- No comment (47C74DE7)
                    players = {i},
                    conditions = {
                        Label(0);
                        CVar("X",CTemp,AtLeast,19025);
                        CVar("X",CTemp,AtMost,161741);
                    },
                    actions = {
                        SetLoc("CLoc79",0,SetTo,1824);
                        SetLoc("CLoc79",4,SetTo,1856);
                        SetLoc("CLoc79",8,SetTo,1920);
                        SetLoc("CLoc79",12,SetTo,1952);
                        CreateUnit(1, "Blue Moon", "CLoc79", i);
                        SetInvincibility(Enable, "Blue Moon", i, "Anywhere");
                        PreserveTrigger();
                    },
                }
                CMov(i,VO(75+i),V(CTemp))
                DoActions(i,KillUnitAt(1,191,"CLoc79",i))
                Trigger { -- No comment (47C74DE7)
                    players = {i},
                    conditions = {
                        Bring(i,Exactly,0,"Blue Moon","Anywhere");
                    },
                    actions = {
                        SetVoid(75+i,SetTo,0);
                        PreserveTrigger();
                    },
                }
            CIfEnd()
        end
        for i = 2, 2 do -- 아비터 생성
            DoActions(i,{SetVoid(75+i,SetTo,0),SetDeaths(i,Add,1,"아비터")})
            CIf(i,{Deaths(i,Exactly,1,"!Exist"),Deaths(i, AtLeast, 10, "아비터")},{SetDeaths(i, SetTo, 0, "아비터"),RemoveUnit("Blue Moon", i)})
                CRead(i,V(CTemp),0x628438,nil,nil,1)
                Trigger { -- No comment (47C74DE7)
                    players = {i},
                    conditions = {
                        Label(0);
                        CVar("X",CTemp,AtLeast,19025);
                        CVar("X",CTemp,AtMost,161741);
                    },
                    actions = {
                        SetLoc("CLoc79",0,SetTo,1760);
                        SetLoc("CLoc79",4,SetTo,1920);
                        SetLoc("CLoc79",8,SetTo,1856);
                        SetLoc("CLoc79",12,SetTo,2016);
                        CreateUnit(1, "Blue Moon", "CLoc79", i);
                        SetInvincibility(Enable, "Blue Moon", i, "Anywhere");
                        PreserveTrigger();
                    },
                }
                CMov(i,VO(75+i),V(CTemp))
                DoActions(i,KillUnitAt(1,191,"CLoc79",i))
                Trigger { -- No comment (47C74DE7)
                    players = {i},
                    conditions = {
                        Bring(i,Exactly,0,"Blue Moon","Anywhere");
                    },
                    actions = {
                        SetVoid(75+i,SetTo,0);
                        PreserveTrigger();
                    },
                }
            CIfEnd()
        end
        for i = 3, 3 do -- 아비터 생성
            DoActions(i,{SetVoid(75+i,SetTo,0),SetDeaths(i,Add,1,"아비터")})
            CIf(i,{Deaths(i,Exactly,1,"!Exist"),Deaths(i, AtLeast, 10, "아비터")},{SetDeaths(i, SetTo, 0, "아비터"),RemoveUnit("Blue Moon", i)})
                CRead(i,V(CTemp),0x628438,nil,nil,1)
                Trigger { -- No comment (47C74DE7)
                    players = {i},
                    conditions = {
                        Label(0);
                        CVar("X",CTemp,AtLeast,19025);
                        CVar("X",CTemp,AtMost,161741);
                    },
                    actions = {
                        SetLoc("CLoc79",0,SetTo,1824);
                        SetLoc("CLoc79",4,SetTo,1920);
                        SetLoc("CLoc79",8,SetTo,1920);
                        SetLoc("CLoc79",12,SetTo,2016);
                        CreateUnit(1, "Blue Moon", "CLoc79", i);
                        SetInvincibility(Enable, "Blue Moon", i, "Anywhere");
                        PreserveTrigger();
                    },
                }
                CMov(i,VO(75+i),V(CTemp))
                DoActions(i,KillUnitAt(1,191,"CLoc79",i))
                Trigger { -- No comment (47C74DE7)
                    players = {i},
                    conditions = {
                        Bring(i,Exactly,0,"Blue Moon","Anywhere");
                    },
                    actions = {
                        SetVoid(75+i,SetTo,0);
                        PreserveTrigger();
                    },
                }
            CIfEnd()
        end
        for i = 4, 4 do -- 아비터 생성
            DoActions(i,{SetVoid(75+i,SetTo,0),SetDeaths(i,Add,1,"아비터")})
            CIf(i,{Deaths(i,Exactly,1,"!Exist"),Deaths(i, AtLeast, 10, "아비터")},{SetDeaths(i, SetTo, 0, "아비터"),RemoveUnit("Blue Moon", i)})
                CRead(i,V(CTemp),0x628438,nil,nil,1)
                Trigger { -- No comment (47C74DE7)
                    players = {i},
                    conditions = {
                        Label(0);
                        CVar("X",CTemp,AtLeast,19025);
                        CVar("X",CTemp,AtMost,161741);
                    },
                    actions = {
                        SetLoc("CLoc79",0,SetTo,1760+128);
                        SetLoc("CLoc79",4,SetTo,1856);
                        SetLoc("CLoc79",8,SetTo,1856+128);
                        SetLoc("CLoc79",12,SetTo,1952);
                        CreateUnit(1, "Blue Moon", "CLoc79", i);
                        SetInvincibility(Enable, "Blue Moon", i, "Anywhere");
                        PreserveTrigger();
                    },
                }
                CMov(i,VO(75+i),V(CTemp))
                DoActions(i,KillUnitAt(1,191,"CLoc79",i))
                Trigger { -- No comment (47C74DE7)
                    players = {i},
                    conditions = {
                        Bring(i,Exactly,0,"Blue Moon","Anywhere");
                    },
                    actions = {
                        SetVoid(75+i,SetTo,0);
                        PreserveTrigger();
                    },
                }
            CIfEnd()
        end
        for i = 5, 5 do -- 아비터 생성
            DoActions(i,{SetVoid(75+i,SetTo,0),SetDeaths(i,Add,1,"아비터")})
            CIf(i,{Deaths(i,Exactly,1,"!Exist"),Deaths(i, AtLeast, 10, "아비터")},{SetDeaths(i, SetTo, 0, "아비터"),RemoveUnit("Blue Moon", i)})
                CRead(i,V(CTemp),0x628438,nil,nil,1)
                Trigger { -- No comment (47C74DE7)
                    players = {i},
                    conditions = {
                        Label(0);
                        CVar("X",CTemp,AtLeast,19025);
                        CVar("X",CTemp,AtMost,161741);
                    },
                    actions = {
                        SetLoc("CLoc79",0,SetTo,1824+128);
                        SetLoc("CLoc79",4,SetTo,1856);
                        SetLoc("CLoc79",8,SetTo,1920+128);
                        SetLoc("CLoc79",12,SetTo,1952);
                        CreateUnit(1, "Blue Moon", "CLoc79", i);
                        SetInvincibility(Enable, "Blue Moon", i, "Anywhere");
                        PreserveTrigger();
                    },
                }
                CMov(i,VO(75+i),V(CTemp))
                DoActions(i,KillUnitAt(1,191,"CLoc79",i))
                Trigger { -- No comment (47C74DE7)
                    players = {i},
                    conditions = {
                        Bring(i,Exactly,0,"Blue Moon","Anywhere");
                    },
                    actions = {
                        SetVoid(75+i,SetTo,0);
                        PreserveTrigger();
                    },
                }
            CIfEnd()
        end
        for i = 6, 6 do -- 아비터 생성
            DoActions(i,{SetVoid(75+i,SetTo,0),SetDeaths(i,Add,1,"아비터")})
            CIf(i,{Deaths(i,Exactly,1,"!Exist"),Deaths(i, AtLeast, 10, "아비터")},{SetDeaths(i, SetTo, 0, "아비터"),RemoveUnit("Blue Moon", i)})
                CRead(i,V(CTemp),0x628438,nil,nil,1)
                Trigger { -- No comment (47C74DE7)
                    players = {i},
                    conditions = {
                        Label(0);
                        CVar("X",CTemp,AtLeast,19025);
                        CVar("X",CTemp,AtMost,161741);
                    },
                    actions = {
                        SetLoc("CLoc79",0,SetTo,1760+128);
                        SetLoc("CLoc79",4,SetTo,1920);
                        SetLoc("CLoc79",8,SetTo,1856+128);
                        SetLoc("CLoc79",12,SetTo,2016);
                        CreateUnit(1, "Blue Moon", "CLoc79", i);
                        SetInvincibility(Enable, "Blue Moon", i, "Anywhere");
                        PreserveTrigger();
                    },
                }
                CMov(i,VO(75+i),V(CTemp))
                DoActions(i,KillUnitAt(1,191,"CLoc79",i))
                Trigger { -- No comment (47C74DE7)
                    players = {i},
                    conditions = {
                        Bring(i,Exactly,0,"Blue Moon","Anywhere");
                    },
                    actions = {
                        SetVoid(75+i,SetTo,0);
                        PreserveTrigger();
                    },
                }
            CIfEnd()
        end
        for i = 7, 7 do -- 아비터 생성
            DoActions(i,{SetVoid(75+i,SetTo,0),SetDeaths(i,Add,1,"아비터")})
            CIf(i,{Deaths(i,Exactly,1,"!Exist"),Deaths(i, AtLeast, 10, "아비터")},{SetDeaths(i, SetTo, 0, "아비터"),RemoveUnit("Blue Moon", i)})
                CRead(i,V(CTemp),0x628438,nil,nil,1)
                Trigger { -- No comment (47C74DE7)
                    players = {i},
                    conditions = {
                        Label(0);
                        CVar("X",CTemp,AtLeast,19025);
                        CVar("X",CTemp,AtMost,161741);
                    },
                    actions = {
                        SetLoc("CLoc79",0,SetTo,1824+128);
                        SetLoc("CLoc79",4,SetTo,1920);
                        SetLoc("CLoc79",8,SetTo,1920+128);
                        SetLoc("CLoc79",12,SetTo,2016);
                        CreateUnit(1, "Blue Moon", "CLoc79", i);
                        SetInvincibility(Enable, "Blue Moon", i, "Anywhere");
                        PreserveTrigger();
                    },
                }
                CMov(i,VO(75+i),V(CTemp))
                DoActions(i,KillUnitAt(1,191,"CLoc79",i))
                Trigger { -- No comment (47C74DE7)
                    players = {i},
                    conditions = {
                        Bring(i,Exactly,0,"Blue Moon","Anywhere");
                    },
                    actions = {
                        SetVoid(75+i,SetTo,0);
                        PreserveTrigger();
                    },
                }
            CIfEnd()
        end
                
end