function SUB_Pitan()
    for i = 0, 7 do -- 무브 로케 고정
        local k = i+1
        Trigger { -- No comment (A0048B18)
            players = {i},
            conditions = {
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {
                MoveLocation(k.."P", "Factories", CurrentPlayer, "Anywhere");
                MoveLocation(k.."PP", "Factories", CurrentPlayer, "Anywhere");
                MoveLocation(k.."PG", "Factories", CurrentPlayer, "Anywhere");
                PreserveTrigger();
            },
        }
        end
        for i = 0, 7 do -- 해처리 무브 로케 고정
        local k = i+38
        local j = i+1
        
        DoActions(i,SetSwitch("Switch "..k,Set))
        
        Trigger { -- No comment (A54D2582)
            players = {i},
            conditions = {
                Bring(CurrentPlayer, AtMost, 0, "Creep Creater [U]", "전체필드");
            },
            actions = {
                SetSwitch("Switch "..k,Clear);
                PreserveTrigger();
            },
        }
        
        Trigger { 
            players = {i},
            conditions = {
                Switch("Switch "..k,Set);
            },
            actions = {
                MoveLocation(j.."PH", "Creep Creater [U]", CurrentPlayer, "Anywhere");
                PreserveTrigger();
            },
        }
        end
        for i = 0, 3 do -- Graze
        local k = i+1
        local j = i+14
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Void(45+i,Exactly,0);
                Bring(Force2, AtLeast, 1, "Men", k.."PG");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {
                SetVoid(121+i,Add,1);
                PlayWAV("staredit\\wav\\Graze.wav");
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Void(121+i,AtLeast,2);
            },
            actions = {
                SetResources(CurrentPlayer, Add, 1, Ore);
                SetVoid(121+i,Subtract,2);
                PreserveTrigger();
            },
        }
        end
        for i = 4, 7 do -- Graze
        local k = i+1
        local j = i+14
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Void(45+i,Exactly,0);
                Bring(Force1, AtLeast, 1, "Men", k.."PG");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {
                SetVoid(121+i,Add,1);
                PlayWAV("staredit\\wav\\Graze.wav");
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Void(121+i,AtLeast,2);
            },
            actions = {
                SetResources(CurrentPlayer, Add, 1, Ore);
                SetVoid(121+i,Subtract,2);
                PreserveTrigger();
            },
        }
        end
        
        
        
        
        
        
        for i = 0, 3 do -- 특수 피탄
        local n = i+30
        local k = i+1
        local j = i+14
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(P10, AtLeast, 1, "Team Sniping Missile", k.."P");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {SetVoid(381+i,Add,2);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Men", k.."P", P10);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x16적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        for i = 4, 7 do -- 특수 피탄
        local n = i+30
        local k = i+1
        local j = i+14
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(P9, AtLeast, 1, "Team Sniping Missile", k.."P");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {SetVoid(381+i,Add,2);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Men", k.."P", P9);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x16적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        for i = 0, 3 do -- 수폭 피탄
        local m = i + 46
        CIf(i,Switch("Switch "..m,Set),SetSwitch("Switch "..m,Clear))
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Void(97+i,Exactly,1);
            },
            actions = {
                SetLoc("Hydro1",0,SetTo,1024-32-64*2);
                SetLoc("Hydro1",8,SetTo,1024);
                SetLoc("Hydro1",4,SetTo,1280);
                SetLoc("Hydro1",12,SetTo,1664);
                KillUnitAt(1,191,"Hydro1",i);
                SetLoc("Hydro2",0,SetTo,1024);
                SetLoc("Hydro2",8,SetTo,1024+32+64*2);
                SetLoc("Hydro2",4,SetTo,1280);
                SetLoc("Hydro2",12,SetTo,1664);
                KillUnitAt(1,191,"Hydro2",i);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Void(97+i,Exactly,2);
            },
            actions = {
                SetLoc("Hydro1",0,SetTo,1024-32-64*3);
                SetLoc("Hydro1",8,SetTo,1024+32-64*3);
                SetLoc("Hydro1",4,SetTo,1280);
                SetLoc("Hydro1",12,SetTo,1664);
                KillUnitAt(1,191,"Hydro1",i);
                SetLoc("Hydro2",0,SetTo,1024-32+64*3);
                SetLoc("Hydro2",8,SetTo,1024+32+64*3);
                SetLoc("Hydro2",4,SetTo,1280);
                SetLoc("Hydro2",12,SetTo,1664);
                KillUnitAt(1,191,"Hydro2",i);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Void(97+i,Exactly,3);
            },
            actions = {
                SetLoc("Hydro1",0,SetTo,1024-32-64*4);
                SetLoc("Hydro1",8,SetTo,1024+32-64*4);
                SetLoc("Hydro1",4,SetTo,1280);
                SetLoc("Hydro1",12,SetTo,1664);
                KillUnitAt(1,191,"Hydro1",i);
                SetLoc("Hydro2",0,SetTo,1024-32+64*4);
                SetLoc("Hydro2",8,SetTo,1024+32+64*4);
                SetLoc("Hydro2",4,SetTo,1280);
                SetLoc("Hydro2",12,SetTo,1664);
                KillUnitAt(1,191,"Hydro2",i);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Void(97+i,Exactly,4);
            },
            actions = {
                SetLoc("Hydro1",0,SetTo,1024-32-64*5);
                SetLoc("Hydro1",8,SetTo,1024+32-64*5);
                SetLoc("Hydro1",4,SetTo,1280);
                SetLoc("Hydro1",12,SetTo,1664);
                KillUnitAt(1,191,"Hydro1",i);
                SetLoc("Hydro2",0,SetTo,1024-32+64*5);
                SetLoc("Hydro2",8,SetTo,1024+32+64*5);
                SetLoc("Hydro2",4,SetTo,1280);
                SetLoc("Hydro2",12,SetTo,1664);
                KillUnitAt(1,191,"Hydro2",i);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Void(97+i,Exactly,5);
            },
            actions = {
                SetLoc("Hydro1",0,SetTo,1024-32-64*6);
                SetLoc("Hydro1",8,SetTo,1024+32-64*6);
                SetLoc("Hydro1",4,SetTo,1280);
                SetLoc("Hydro1",12,SetTo,1664);
                KillUnitAt(1,191,"Hydro1",i);
                SetLoc("Hydro2",0,SetTo,1024-32+64*6);
                SetLoc("Hydro2",8,SetTo,1024+32+64*6);
                SetLoc("Hydro2",4,SetTo,1280);
                SetLoc("Hydro2",12,SetTo,1664);
                KillUnitAt(1,191,"Hydro2",i);
                PreserveTrigger();
            },
        }
        for l = 4, 7 do 
        local n = l+30
        local k = l+1
        local j = l+14
        local o = l+54
        DoActions(i,SetSwitch("Switch "..o,Set))
        
        Trigger { -- No comment (A54D2582)
            players = {i},
            conditions = {
                Deaths(l,Exactly,1,"!Exist");
                Bring(l, AtMost, 0, "Creep Creater [U]", "Hydro1");
            },
            actions = {
                SetSwitch("Switch "..o,Clear);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Deaths(l,Exactly,1,"!Exist");
                Switch("Switch "..n,Cleared);
                Void(45+l,Exactly,0);
                Switch("Switch "..o,Set);
            },
            actions = {SetVoid(348+l,Add,1);
                SetScore(i,Add,1,Kills); SetVoid(53+i,Add,1);
                SetResources(l, SetTo, 500, Gas); RemoveUnit("Cloak",l);
                SetCp(l);
                PlayWAV("staredit\\wav\\Boom.wav");
                DisplayText("\x16적의 "..ColorCode[i+1].."수소 폭탄\x04이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetCp(i);
                KillUnit("Factories", l);
                KillUnit("Buildings", l);
                KillUnit("사은품", l);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                SetVoidX(5,SetTo,0,15*16^l);
                SetVoidX(6,SetTo,0,15*16^l);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        
        DoActions(i,SetSwitch("Switch "..o,Set))
        
        Trigger { -- No comment (A54D2582)
            players = {i},
            conditions = {
                Deaths(l,Exactly,1,"!Exist");
                Bring(l, AtMost, 0, "Creep Creater [U]", "Hydro2");
            },
            actions = {
                SetSwitch("Switch "..o,Clear);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Deaths(l,Exactly,1,"!Exist");
                Switch("Switch "..n,Cleared);
                Void(45+l,Exactly,0);
                Switch("Switch "..o,Set);
            },
            actions = {SetVoid(348+l,Add,1);
                SetScore(i,Add,1,Kills); SetVoid(53+i,Add,1);
                SetResources(l, SetTo, 500, Gas); RemoveUnit("Cloak",l);
                SetCp(l);
                PlayWAV("staredit\\wav\\Boom.wav");
                DisplayText("\x16적의 "..ColorCode[i+1].."수소 폭탄\x04이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetCp(i);
                KillUnit("Factories", l);
                KillUnit("Buildings", l);
                KillUnit("사은품", l);
                KillUnit("Mirror", l); KillUnit("Super Mirror", l);
                SetVoidX(5,SetTo,0,15*16^l);
                SetVoidX(6,SetTo,0,15*16^l);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        
            CIfX(i,{Bring(i, AtLeast, 1, "사은품", "Anywhere")})
                Trigger { -- No comment (E68B18E1)
                    players = {i},
                    conditions = {
                        Deaths(l,Exactly,1,"!Exist");
                        Switch("Switch "..n,Cleared);
                        Void(45+l,Exactly,0);
                        Bring(l, AtLeast, 1, "Factories","Hydro1");
                    },
                    actions = {SetVoid(348+l,Add,1);
                        SetScore(i,Add,1,Kills); SetVoid(53+i,Add,1);
                        SetResources(l, SetTo, 500, Gas); RemoveUnit("Cloak",l);
                        SetCp(l);
                        PlayWAV("staredit\\wav\\Boom.wav");
                        DisplayText("\x16적의 "..ColorCode[i+1].."수소 폭탄\x04이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                        SetCp(i);
                        KillUnit("Factories", l);
                        KillUnit("Buildings", l);
                        KillUnit("사은품", l);
                        KillUnit("Mirror", l); KillUnit("Super Mirror", l);
                        SetVoidX(5,SetTo,0,15*16^l);
                        SetVoidX(6,SetTo,0,15*16^l);
                        SetSwitch("Switch "..j, Set);
                        PreserveTrigger();SetVoid(381+i,Add,2);
                        SetSwitch("Switch "..n,Set);
                    },
                }
                Trigger { -- No comment (E68B18E1)
                    players = {i},
                    conditions = {
                        Deaths(l,Exactly,1,"!Exist");
                        Switch("Switch "..n,Cleared);
                        Void(45+l,Exactly,0);
                        Bring(l, AtLeast, 1, "Factories","Hydro2");
                    },
                    actions = {SetVoid(348+l,Add,1);
                        SetScore(i,Add,1,Kills); SetVoid(53+i,Add,1);
                        SetResources(l, SetTo, 500, Gas); RemoveUnit("Cloak",l);
                        SetCp(l);
                        PlayWAV("staredit\\wav\\Boom.wav");
                        DisplayText("\x16적의 "..ColorCode[i+1].."수소 폭탄\x04이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                        SetCp(i);
                        KillUnit("Factories", l);
                        KillUnit("Buildings", l);
                        KillUnit("사은품", l);
                        KillUnit("Mirror", l); KillUnit("Super Mirror", l);
                        SetVoidX(5,SetTo,0,15*16^l);
                        SetVoidX(6,SetTo,0,15*16^l);
                        SetSwitch("Switch "..j, Set);
                        PreserveTrigger();SetVoid(381+i,Add,2);
                        SetSwitch("Switch "..n,Set);
                    },
                }
            CElseX()
                Trigger { -- No comment (E68B18E1)
                    players = {i},
                    conditions = {
                        Deaths(l,Exactly,1,"!Exist");
                        Switch("Switch "..n,Cleared);
                        Void(45+l,Exactly,0);
                        Bring(l, AtLeast, 1, "Factories","Hydro1");
                    },
                    actions = {
                        SetScore(i,Add,1,Kills); SetVoid(53+i,Add,1);
                        SetResources(l, SetTo, 500, Gas); RemoveUnit("Cloak",l);
                        SetCp(l);
                        PlayWAV("staredit\\wav\\Boom.wav");
                        DisplayText("\x16적의 "..ColorCode[i+1].."수소 폭탄\x04이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                        SetCp(i);
                        KillUnit("Factories", l);
                        KillUnit("Buildings", l);
                        KillUnit("사은품", l);
                        KillUnit("Mirror", l); KillUnit("Super Mirror", l);
                        SetVoidX(5,SetTo,0,15*16^l);
                        SetVoidX(6,SetTo,0,15*16^l);
                        SetSwitch("Switch "..j, Set);
                        PreserveTrigger();SetVoid(381+i,Add,2);
                        SetSwitch("Switch "..n,Set);
                    },
                }
                Trigger { -- No comment (E68B18E1)
                    players = {i},
                    conditions = {
                        Deaths(l,Exactly,1,"!Exist");
                        Switch("Switch "..n,Cleared);
                        Void(45+l,Exactly,0);
                        Bring(l, AtLeast, 1, "Factories","Hydro2");
                    },
                    actions = {
                        SetScore(i,Add,1,Kills); SetVoid(53+i,Add,1);
                        SetResources(l, SetTo, 500, Gas); RemoveUnit("Cloak",l);
                        SetCp(l);
                        PlayWAV("staredit\\wav\\Boom.wav");
                        DisplayText("\x16적의 "..ColorCode[i+1].."수소 폭탄\x04이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                        SetCp(i);
                        KillUnit("Factories", l);
                        KillUnit("Buildings", l);
                        KillUnit("사은품", l);
                        KillUnit("Mirror", l); KillUnit("Super Mirror", l);
                        SetVoidX(5,SetTo,0,15*16^l);
                        SetVoidX(6,SetTo,0,15*16^l);
                        SetSwitch("Switch "..j, Set);
                        PreserveTrigger();SetVoid(381+i,Add,2);
                        SetSwitch("Switch "..n,Set);
                    },
                }
            CIfXEnd()
        end
        CIfEnd()
        end
        
        for i = 4, 7 do -- 수폭 피탄
        local m = i + 46
        CIf(i,Switch("Switch "..m,Set),SetSwitch("Switch "..m,Clear))
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Void(97+i,Exactly,1);
            },
            actions = {
                SetLoc("Hydro1",0,SetTo,1024-32-64*2);
                SetLoc("Hydro1",8,SetTo,1024);
                SetLoc("Hydro1",4,SetTo,384);
                SetLoc("Hydro1",12,SetTo,768);
                KillUnitAt(1,191,"Hydro1",i);
                SetLoc("Hydro2",0,SetTo,1024);
                SetLoc("Hydro2",8,SetTo,1024+32+64*2);
                SetLoc("Hydro2",4,SetTo,384);
                SetLoc("Hydro2",12,SetTo,768);
                KillUnitAt(1,191,"Hydro2",i);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Void(97+i,Exactly,2);
            },
            actions = {
                SetLoc("Hydro1",0,SetTo,1024-32-64*3);
                SetLoc("Hydro1",8,SetTo,1024+32-64*3);
                SetLoc("Hydro1",4,SetTo,384);
                SetLoc("Hydro1",12,SetTo,768);
                KillUnitAt(1,191,"Hydro1",i);
                SetLoc("Hydro2",0,SetTo,1024-32+64*3);
                SetLoc("Hydro2",8,SetTo,1024+32+64*3);
                SetLoc("Hydro2",4,SetTo,384);
                SetLoc("Hydro2",12,SetTo,768);
                KillUnitAt(1,191,"Hydro2",i);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Void(97+i,Exactly,3);
            },
            actions = {
                SetLoc("Hydro1",0,SetTo,1024-32-64*4);
                SetLoc("Hydro1",8,SetTo,1024+32-64*4);
                SetLoc("Hydro1",4,SetTo,384);
                SetLoc("Hydro1",12,SetTo,768);
                KillUnitAt(1,191,"Hydro1",i);
                SetLoc("Hydro2",0,SetTo,1024-32+64*4);
                SetLoc("Hydro2",8,SetTo,1024+32+64*4);
                SetLoc("Hydro2",4,SetTo,384);
                SetLoc("Hydro2",12,SetTo,768);
                KillUnitAt(1,191,"Hydro2",i);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Void(97+i,Exactly,4);
            },
            actions = {
                SetLoc("Hydro1",0,SetTo,1024-32-64*5);
                SetLoc("Hydro1",8,SetTo,1024+32-64*5);
                SetLoc("Hydro1",4,SetTo,384);
                SetLoc("Hydro1",12,SetTo,768);
                KillUnitAt(1,191,"Hydro1",i);
                SetLoc("Hydro2",0,SetTo,1024-32+64*5);
                SetLoc("Hydro2",8,SetTo,1024+32+64*5);
                SetLoc("Hydro2",4,SetTo,384);
                SetLoc("Hydro2",12,SetTo,768);
                KillUnitAt(1,191,"Hydro2",i);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Void(97+i,Exactly,5);
            },
            actions = {
                SetLoc("Hydro1",0,SetTo,1024-32-64*6);
                SetLoc("Hydro1",8,SetTo,1024+32-64*6);
                SetLoc("Hydro1",4,SetTo,384);
                SetLoc("Hydro1",12,SetTo,768);
                KillUnitAt(1,191,"Hydro1",i);
                SetLoc("Hydro2",0,SetTo,1024-32+64*6);
                SetLoc("Hydro2",8,SetTo,1024+32+64*6);
                SetLoc("Hydro2",4,SetTo,384);
                SetLoc("Hydro2",12,SetTo,768);
                KillUnitAt(1,191,"Hydro2",i);
                PreserveTrigger();
            },
        }
        for l = 0, 3 do 
        local n = l+30
        local k = l+1
        local j = l+14
        local o = l+54
        DoActions(i,SetSwitch("Switch "..o,Set))
        
        Trigger { -- No comment (A54D2582)
            players = {i},
            conditions = {
                Deaths(l,Exactly,1,"!Exist");
                Bring(l, AtMost, 0, "Creep Creater [U]", "Hydro1");
            },
            actions = {
                SetSwitch("Switch "..o,Clear);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Deaths(l,Exactly,1,"!Exist");
                Switch("Switch "..n,Cleared);
                Void(45+l,Exactly,0);
                Switch("Switch "..o,Set);
            },
            actions = {SetVoid(348+l,Add,1);
                SetScore(i,Add,1,Kills); SetVoid(53+i,Add,1);
                SetResources(l, SetTo, 500, Gas); RemoveUnit("Cloak",l);
                SetCp(l);
                PlayWAV("staredit\\wav\\Boom.wav");
                DisplayText("\x16적의 "..ColorCode[i+1].."수소 폭탄\x04이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetCp(i);
                KillUnit("Factories", l);
                KillUnit("Buildings", l);
                KillUnit("사은품", l);
                KillUnit("Mirror", l); KillUnit("Super Mirror", l);
                SetVoidX(5,SetTo,0,15*16^l);
                SetVoidX(6,SetTo,0,15*16^l);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        
        DoActions(i,SetSwitch("Switch "..o,Set))
        
        Trigger { -- No comment (A54D2582)
            players = {i},
            conditions = {
                Deaths(l,Exactly,1,"!Exist");
                Bring(l, AtMost, 0, "Creep Creater [U]", "Hydro2");
            },
            actions = {
                SetSwitch("Switch "..o,Clear);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Deaths(l,Exactly,1,"!Exist");
                Switch("Switch "..n,Cleared);
                Void(45+l,Exactly,0);
                Switch("Switch "..o,Set);
            },
            actions = {SetVoid(348+l,Add,1);
                SetScore(i,Add,1,Kills); SetVoid(53+i,Add,1);
                SetResources(l, SetTo, 500, Gas); RemoveUnit("Cloak",l);
                SetCp(l);
                PlayWAV("staredit\\wav\\Boom.wav");
                DisplayText("\x16적의 "..ColorCode[i+1].."수소 폭탄\x04이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetCp(i);
                KillUnit("Factories", l);
                KillUnit("Buildings", l);
                KillUnit("사은품", l);
                KillUnit("Mirror", l); KillUnit("Super Mirror", l);
                SetVoidX(5,SetTo,0,15*16^l);
                SetVoidX(6,SetTo,0,15*16^l);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        
            CIfX(i,{Bring(i, AtLeast, 1, "사은품", "Anywhere")})
                Trigger { -- No comment (E68B18E1)
                    players = {i},
                    conditions = {
                        Deaths(l,Exactly,1,"!Exist");
                        Switch("Switch "..n,Cleared);
                        Void(45+l,Exactly,0);
                        Bring(l, AtLeast, 1, "Factories","Hydro1");
                    },
                    actions = {SetVoid(348+l,Add,1);
                        SetScore(i,Add,1,Kills); SetVoid(53+i,Add,1);
                        SetResources(l, SetTo, 500, Gas); RemoveUnit("Cloak",l);
                        SetCp(l);
                        PlayWAV("staredit\\wav\\Boom.wav");
                        DisplayText("\x16적의 "..ColorCode[i+1].."수소 폭탄\x04이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                        SetCp(i);
                        KillUnit("Factories", l);
                        KillUnit("Buildings", l);
                        KillUnit("사은품", l);
                        KillUnit("Mirror", l); KillUnit("Super Mirror", l);
                        SetVoidX(5,SetTo,0,15*16^l);
                        SetVoidX(6,SetTo,0,15*16^l);
                        SetSwitch("Switch "..j, Set);
                        PreserveTrigger();SetVoid(381+i,Add,2);
                        SetSwitch("Switch "..n,Set);
                    },
                }
                Trigger { -- No comment (E68B18E1)
                    players = {i},
                    conditions = {
                        Deaths(l,Exactly,1,"!Exist");
                        Switch("Switch "..n,Cleared);
                        Void(45+l,Exactly,0);
                        Bring(l, AtLeast, 1, "Factories","Hydro2");
                    },
                    actions = {SetVoid(348+l,Add,1);
                        SetScore(i,Add,1,Kills); SetVoid(53+i,Add,1);
                        SetResources(l, SetTo, 500, Gas); RemoveUnit("Cloak",l);
                        SetCp(l);
                        PlayWAV("staredit\\wav\\Boom.wav");
                        DisplayText("\x16적의 "..ColorCode[i+1].."수소 폭탄\x04이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                        SetCp(i);
                        KillUnit("Factories", l);
                        KillUnit("Buildings", l);
                        KillUnit("사은품", l);
                        KillUnit("Mirror", l); KillUnit("Super Mirror", l);
                        SetVoidX(5,SetTo,0,15*16^l);
                        SetVoidX(6,SetTo,0,15*16^l);
                        SetSwitch("Switch "..j, Set);
                        PreserveTrigger();SetVoid(381+i,Add,2);
                        SetSwitch("Switch "..n,Set);
                    },
                }
            CElseX()
                Trigger { -- No comment (E68B18E1)
                    players = {i},
                    conditions = {
                        Deaths(l,Exactly,1,"!Exist");
                        Switch("Switch "..n,Cleared);
                        Void(45+l,Exactly,0);
                        Bring(l, AtLeast, 1, "Factories","Hydro1");
                    },
                    actions = {
                        SetScore(i,Add,1,Kills); SetVoid(53+i,Add,1);
                        SetResources(l, SetTo, 500, Gas); RemoveUnit("Cloak",l);
                        SetCp(l);
                        PlayWAV("staredit\\wav\\Boom.wav");
                        DisplayText("\x16적의 "..ColorCode[i+1].."수소 폭탄\x04이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                        SetCp(i);
                        KillUnit("Factories", l);
                        KillUnit("Buildings", l);
                        KillUnit("사은품", l);
                        KillUnit("Mirror", l); KillUnit("Super Mirror", l);
                        SetVoidX(5,SetTo,0,15*16^l);
                        SetVoidX(6,SetTo,0,15*16^l);
                        SetSwitch("Switch "..j, Set);
                        PreserveTrigger();SetVoid(381+i,Add,2);
                        SetSwitch("Switch "..n,Set);
                    },
                }
                Trigger { -- No comment (E68B18E1)
                    players = {i},
                    conditions = {
                        Deaths(l,Exactly,1,"!Exist");
                        Switch("Switch "..n,Cleared);
                        Void(45+l,Exactly,0);
                        Bring(l, AtLeast, 1, "Factories","Hydro2");
                    },
                    actions = {
                        SetScore(i,Add,1,Kills); SetVoid(53+i,Add,1);
                        SetResources(l, SetTo, 500, Gas); RemoveUnit("Cloak",l);
                        SetCp(l);
                        PlayWAV("staredit\\wav\\Boom.wav");
                        DisplayText("\x16적의 "..ColorCode[i+1].."수소 폭탄\x04이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                        SetCp(i);
                        KillUnit("Factories", l);
                        KillUnit("Buildings", l);
                        KillUnit("사은품", l);
                        KillUnit("Mirror", l); KillUnit("Super Mirror", l);
                        SetVoidX(5,SetTo,0,15*16^l);
                        SetVoidX(6,SetTo,0,15*16^l);
                        SetSwitch("Switch "..j, Set);
                        PreserveTrigger();SetVoid(381+i,Add,2);
                        SetSwitch("Switch "..n,Set);
                    },
                }
            CIfXEnd()
        end
        CIfEnd()
        end
        
        
        
        
        
        
        for i = 0, 3 do -- 피탄 Hat
        local n = i+30
        local k = i+1
        local j = i+14
        local m = i+38
        for l = 4, 7 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Penetrating Missile★", k.."PH");
                Switch("Switch "..m,Set);
            },
            actions = {SetVoid(348+l,Add,1);
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Penetrating Missile★", k.."PH", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1C적의 관통 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
                SetSwitch("Switch "..m,Clear);
            },
        }
        end
        end
        for i = 4, 7 do -- 피탄 Hat
        local n = i+30
        local k = i+1
        local j = i+14
        local m = i+38
        for l = 0, 3 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Penetrating Missile★", k.."PH");
                Switch("Switch "..m,Set);
            },
            actions = {SetVoid(348+l,Add,1);
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Penetrating Missile★", k.."PH", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1C적의 관통 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
                SetSwitch("Switch "..m,Clear);
            },
        }
        end
        end
        CIfX(AllPlayers,{Bring(CurrentPlayer, AtLeast, 1, "사은품", "Anywhere")})
        for i = 0, 3 do -- 피탄 Big
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 4, 7 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Missile☆", k.."PP");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {SetVoid(348+l,Add,1);
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Missile☆", k.."PP", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1F적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        for i = 4, 7 do -- 피탄 Big
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 0, 3 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Missile☆", k.."PP");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {SetVoid(348+l,Add,1);
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Missile☆", k.."PP", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1F적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        for i = 0, 3 do -- 피탄 Big
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 4, 7 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Big Sniping Missile☆", k.."PP");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {SetVoid(348+l,Add,1);
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Big Sniping Missile☆", k.."PP", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1F적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        for i = 4, 7 do -- 피탄 Big
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 0, 3 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Big Sniping Missile☆", k.."PP");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {SetVoid(348+l,Add,1);
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Big Sniping Missile☆", k.."PP", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1F적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        for i = 0, 3 do -- 피탄 Big
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 4, 7 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Fast Missile☆", k.."PP");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {SetVoid(348+l,Add,1);
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Fast Missile☆", k.."PP", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1F적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        for i = 4, 7 do -- 피탄 Big
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 0, 3 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Fast Missile☆", k.."PP");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {SetVoid(348+l,Add,1);
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Fast Missile☆", k.."PP", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1F적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        for i = 0, 3 do -- 피탄 Big
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 4, 7 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Invisible Missile☆", k.."PP");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {SetVoid(348+l,Add,1);
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Invisible Missile☆", k.."PP", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1F적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        for i = 4, 7 do -- 피탄 Big
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 0, 3 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Invisible Missile☆", k.."PP");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {SetVoid(348+l,Add,1);
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Invisible Missile☆", k.."PP", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1F적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        
        for i = 0, 3 do -- 피탄
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 4, 7 do 
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Men", k.."P");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {SetVoid(348+l,Add,1);
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Men", k.."P", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x16적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        for i = 4, 7 do -- 피탄
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 0, 3 do 
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Men", k.."P");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {SetVoid(348+l,Add,1);
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Men", k.."P", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x16적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        CElseX()
        for i = 0, 3 do -- 피탄 Big
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 4, 7 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Missile☆", k.."PP");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Missile☆", k.."PP", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1F적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        for i = 4, 7 do -- 피탄 Big
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 0, 3 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Missile☆", k.."PP");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Missile☆", k.."PP", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1F적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        for i = 0, 3 do -- 피탄 Big
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 4, 7 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Big Sniping Missile☆", k.."PP");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Big Sniping Missile☆", k.."PP", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1F적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        for i = 4, 7 do -- 피탄 Big
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 0, 3 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Big Sniping Missile☆", k.."PP");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Big Sniping Missile☆", k.."PP", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1F적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        for i = 0, 3 do -- 피탄 Big
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 4, 7 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Fast Missile☆", k.."PP");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Fast Missile☆", k.."PP", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1F적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        for i = 4, 7 do -- 피탄 Big
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 0, 3 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Fast Missile☆", k.."PP");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Fast Missile☆", k.."PP", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1F적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        for i = 0, 3 do -- 피탄 Big
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 4, 7 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Invisible Missile☆", k.."PP");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Invisible Missile☆", k.."PP", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1F적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        for i = 4, 7 do -- 피탄 Big
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 0, 3 do
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Invisible Missile☆", k.."PP");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Invisible Missile☆", k.."PP", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x1F적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        
        
        for i = 0, 3 do -- 피탄
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 4, 7 do 
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Men", k.."P");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Men", k.."P", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x16적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        for i = 4, 7 do -- 피탄
        local n = i+30
        local k = i+1
        local j = i+14
        for l = 0, 3 do 
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch "..n,Cleared);
                Void(45+i,Exactly,0);
                Bring(l, AtLeast, 1, "Men", k.."P");
                Command(CurrentPlayer, AtLeast, 1, "Factories");
            },
            actions = {
                SetScore(l,Add,1,Kills); SetVoid(53+l,Add,1);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnitAt(1, "Men", k.."P", l);
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x16적의 미사일이 명중하였습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        end
        CIfXEnd()
        EdgeLimit = 16
        TimeLimit = 24*5
        for i = 0, 3 do -- 피탄 필드
        DoActions(i,SetSwitch("Switch 83",Clear))
        
        DoActions(i,{SetLoc("CLoc79",0,SetTo,0);
                SetLoc("CLoc79",4,SetTo,0);
                SetLoc("CLoc79",8,SetTo,608-EdgeLimit);
                SetLoc("CLoc79",12,SetTo,2048);
                KillUnitAt(1,191,"CLoc79", CurrentPlayer)})
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Bring(CurrentPlayer,AtLeast,1, "Factories","CLoc79");
            },
            actions = {
                SetSwitch("Switch 83",Set);
                SetVoid(600+i,Add,1);
                PreserveTrigger();
            },
        }
        DoActions(i,{SetLoc("CLoc79",0,SetTo,0);
                SetLoc("CLoc79",4,SetTo,0);
                SetLoc("CLoc79",8,SetTo,2048);
                SetLoc("CLoc79",12,SetTo,384-EdgeLimit);
                KillUnitAt(1,191,"CLoc79", CurrentPlayer)})
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Bring(CurrentPlayer,AtLeast,1, "Factories","CLoc79");
            },
            actions = {
                SetSwitch("Switch 83",Set);
                SetVoid(600+i,Add,1);
                PreserveTrigger();
            },
        }
        DoActions(i,{SetLoc("CLoc79",0,SetTo,1440+EdgeLimit);
                SetLoc("CLoc79",4,SetTo,0);
                SetLoc("CLoc79",8,SetTo,2048);
                SetLoc("CLoc79",12,SetTo,2048);
                KillUnitAt(1,191,"CLoc79", CurrentPlayer)})
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Bring(CurrentPlayer,AtLeast,1, "Factories","CLoc79");
            },
            actions = {
                SetSwitch("Switch 83",Set);
                SetVoid(600+i,Add,1);
                PreserveTrigger();
            },
        }
        DoActions(i,{SetLoc("CLoc79",0,SetTo,0);
                SetLoc("CLoc79",4,SetTo,768+EdgeLimit);
                SetLoc("CLoc79",8,SetTo,2048);
                SetLoc("CLoc79",12,SetTo,2048);
                KillUnitAt(1,191,"CLoc79", CurrentPlayer)})
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Bring(CurrentPlayer,AtLeast,1, "Factories","CLoc79");
            },
            actions = {
                SetSwitch("Switch 83",Set);
                SetVoid(600+i,Add,1);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch 83",Cleared);
            },
            actions = {
                SetVoid(600+i,SetTo,0);
                PreserveTrigger();
            },
        }
        
        end
        
        for i = 4, 7 do -- 피탄 필드
        DoActions(i,SetSwitch("Switch 84",Clear))
        
        DoActions(i,{SetLoc("CLoc79",0,SetTo,0);
                SetLoc("CLoc79",4,SetTo,0);
                SetLoc("CLoc79",8,SetTo,608-EdgeLimit);
                SetLoc("CLoc79",12,SetTo,2048);
                KillUnitAt(1,191,"CLoc79", CurrentPlayer)})
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Bring(CurrentPlayer,AtLeast,1, "Factories","CLoc79");
            },
            actions = {
                SetSwitch("Switch 84",Set);
                SetVoid(600+i,Add,1);
                PreserveTrigger();
            },
        }
        DoActions(i,{SetLoc("CLoc79",0,SetTo,0);
                SetLoc("CLoc79",4,SetTo,0);
                SetLoc("CLoc79",8,SetTo,2048);
                SetLoc("CLoc79",12,SetTo,1280-EdgeLimit);
                KillUnitAt(1,191,"CLoc79", CurrentPlayer)})
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Bring(CurrentPlayer,AtLeast,1, "Factories","CLoc79");
            },
            actions = {
                SetSwitch("Switch 84",Set);
                SetVoid(600+i,Add,1);
                PreserveTrigger();
            },
        }
        DoActions(i,{SetLoc("CLoc79",0,SetTo,1440+EdgeLimit);
                SetLoc("CLoc79",4,SetTo,0);
                SetLoc("CLoc79",8,SetTo,2048);
                SetLoc("CLoc79",12,SetTo,2048);
                KillUnitAt(1,191,"CLoc79", CurrentPlayer)})
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Bring(CurrentPlayer,AtLeast,1, "Factories","CLoc79");
            },
            actions = {
                SetSwitch("Switch 84",Set);
                SetVoid(600+i,Add,1);
                PreserveTrigger();
            },
        }
        DoActions(i,{SetLoc("CLoc79",0,SetTo,0);
                SetLoc("CLoc79",4,SetTo,1664+EdgeLimit);
                SetLoc("CLoc79",8,SetTo,2048);
                SetLoc("CLoc79",12,SetTo,2048);
                KillUnitAt(1,191,"CLoc79", CurrentPlayer)})
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Bring(CurrentPlayer,AtLeast,1, "Factories","CLoc79");
            },
            actions = {
                SetSwitch("Switch 84",Set);
                SetVoid(600+i,Add,1);
                PreserveTrigger();
            },
        }
        
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Switch("Switch 84",Cleared);
            },
            actions = {
                SetVoid(600+i,SetTo,0);
                PreserveTrigger();
            },
        }
        
        end
        
        for i = 0, 3 do -- 피탄 필드
        local n = i+30
        local k = i+1
        local j = i+14
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Void(600+i,AtLeast,24*4);
            },
            actions = {
                SetVoid(600+i,SetTo,0);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x16필드를 이탈해 사망하셨습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        for i = 4, 7 do -- 피탄 필드
        local n = i+30
        local k = i+1
        local j = i+14
        Trigger { -- No comment (E68B18E1)
            players = {i},
            conditions = {
                Void(600+i,AtLeast,24*4);
            },
            actions = {
                SetVoid(600+i,SetTo,0);
                SetResources(CurrentPlayer, SetTo, 500, Gas); RemoveUnit("Cloak",i);
                PlayWAV("staredit\\wav\\Boom.wav");
                KillUnit("Factories", CurrentPlayer);
                KillUnit("Buildings", CurrentPlayer);
                KillUnit("사은품", CurrentPlayer);
                KillUnit("Mirror", CurrentPlayer); KillUnit("Super Mirror", CurrentPlayer);
                DisplayText("\x16필드를 이탈해 사망하셨습니다.\r\n\r\n\x16부품이 수리될때까지 기다려주세요.", 4);
                SetVoidX(5,SetTo,0,15*16^i);
                SetVoidX(6,SetTo,0,15*16^i);
                SetSwitch("Switch "..j, Set);
                PreserveTrigger();SetVoid(381+i,Add,2);
                SetSwitch("Switch "..n,Set);
            },
        }
        end
        
        
        for i = 0, 7 do -- 피격시 사은품 파괴
        local k = i+14
        Trigger { -- No comment (8C42273C)
            players = {i},
            conditions = {
                Command(CurrentPlayer, AtLeast, 1, "사은품");
                Switch("Switch "..k, Set);
            },
            actions = {
                KillUnit("사은품", CurrentPlayer);
                PreserveTrigger();
            },
        }
        end
        
end