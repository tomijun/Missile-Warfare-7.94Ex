function SUB_DroneMissile()
    -- Drone Missile Set -----------------------------------------------------------------------------------
-- 건물 순서   사울 = 울(Wait X) > 스테어 > 패옵 > 하이브 > 레어 > 챔 > 사센 > 퀸 > 디파 > 사퀸 > 사디파 > W > 덴 > 스퀸 > 사커널 > 커널 (X X 21 11 22 12 13 24 14 15 16 25 26 17 18 23 19)
for i = 0, 7 do -- 해처리
    local k = i+1
    Trigger { -- No comment (B0F989C8)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Creep Creater [U]");
        },
        actions = {
            PreserveTrigger();
            SetDeaths(CurrentPlayer, Add, 1, " Hat Time");
        },
    }
    Trigger { -- No comment (568C65EC)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Creep Creater [U]");
            Deaths(CurrentPlayer, AtLeast, 36, " Hat Time");
        },
        actions = {
            PreserveTrigger();
            SetDeaths(CurrentPlayer, SetTo, 0, " Hat Time");
            MoveLocation(k.."ZP", "Creep Creater [U]", CurrentPlayer, "전체필드");
            RemoveUnitAt(All, "Creep Creater [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetResources(CurrentPlayer, Add, 200, Ore);
        },
    }
    Trigger { -- No comment (919D2A6F)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Creep Creater [U]");
            Deaths(CurrentPlayer, Exactly, 0, " Hat Time");
        },
        actions = {
            PlayWAV("staredit\\wav\\Notice.wav");
            MoveLocation(k.."ZP", "Creep Creater [U]", CurrentPlayer, "Anywhere");
            DisplayText("\x16크립이 생산되었습니다.", 4);
            PreserveTrigger();
        },
    }
    end
    
    for i = 0, 3 do -- 사울 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Side Straight Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Side Straight Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Side Straight Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(1600+i+8*0,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 3 do -- 사울
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1600+i+8*0,AtLeast,1);
        },
        actions = {
            SetVoid(1600+i+8*0,Subtract,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Straight Missile [U]\x16 이 감지되었습니다.", 4);
            TalkingPortrait("Missile", 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Straight Missile [U]\x16 이 감지되었습니다.", 4);
            TalkingPortrait("Missile", 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Straight Missile [U]\x16 이 감지되었습니다.", 4);
            TalkingPortrait("Missile", 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Straight Missile [U]\x16 이 감지되었습니다.", 4);
            TalkingPortrait("Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Missile", "S1-1", i);
            CreateUnit(1, "Missile", "S1-2", i);
            CreateUnit(1, "Missile", "S1-3", i);
            CreateUnit(1, "Missile", "S1-4", i);
            CreateUnit(1, "Missile", "S1-5", i);
            CreateUnit(1, "Missile", "S1-6", i);
            CreateUnit(1, "Missile", "S1-7", i);
        },
        flag = {Preserved}
    }
    end
    
    
    for i = 4, 7 do -- 사울 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Side Straight Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Side Straight Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Side Straight Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(1600+i+8*0,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 사울
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1600+i+8*0,AtLeast,1);
        },
        actions = {
            SetVoid(1600+i+8*0,Subtract,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Straight Missile [U]\x16 이 감지되었습니다.", 4);
            TalkingPortrait("Missile", 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Straight Missile [U]\x16 이 감지되었습니다.", 4);
            TalkingPortrait("Missile", 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Straight Missile [U]\x16 이 감지되었습니다.", 4);
            TalkingPortrait("Missile", 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Straight Missile [U]\x16 이 감지되었습니다.", 4);
            TalkingPortrait("Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Missile", "S3-1", i);
            CreateUnit(1, "Missile", "S3-2", i);
            CreateUnit(1, "Missile", "S3-3", i);
            CreateUnit(1, "Missile", "S3-4", i);
            CreateUnit(1, "Missile", "S3-5", i);
            CreateUnit(1, "Missile", "S3-6", i);
            CreateUnit(1, "Missile", "S3-7", i);
        },
        flag = {Preserved}
    }
    end
    
    for i = 0, 3 do -- 울 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Straight Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Straight Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Straight Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*0,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 3 do -- 울
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(201+i+8*0,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*0,Subtract,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Straight Missile [U]\x16 이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Straight Missile [U]\x16 이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Straight Missile [U]\x16 이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Straight Missile [U]\x16 이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Missile", "1-1", i);
            CreateUnit(1, "Fast Missile", "1-2", i);
            CreateUnit(1, "Fast Missile", "1-3", i);
            CreateUnit(1, "Fast Missile", "1-4", i);
            CreateUnit(1, "Fast Missile", "1-5", i);
            CreateUnit(1, "Fast Missile", "1-6", i);
            CreateUnit(1, "Fast Missile", "1-7", i);
            CreateUnit(1, "Fast Missile", "1-8", i);
            CreateUnit(1, "Fast Missile", "1-9", i);
            CreateUnit(1, "Fast Missile", "1-10", i);
            CreateUnit(1, "Fast Missile", "1-11", i);
            CreateUnit(1, "Fast Missile", "1-12", i);
            CreateUnit(1, "Fast Missile", "1-13", i);
        },
        flag = {Preserved}
    }
    end
    
    
    for i = 4, 7 do -- 울 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Straight Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Straight Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Straight Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*0,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 울
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(201+i+8*0,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*0,Subtract,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Straight Missile [U]\x16 이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Straight Missile [U]\x16 이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Straight Missile [U]\x16 이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Straight Missile [U]\x16 이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Missile", "2-1", i);
            CreateUnit(1, "Fast Missile", "2-2", i);
            CreateUnit(1, "Fast Missile", "2-3", i);
            CreateUnit(1, "Fast Missile", "2-4", i);
            CreateUnit(1, "Fast Missile", "2-5", i);
            CreateUnit(1, "Fast Missile", "2-6", i);
            CreateUnit(1, "Fast Missile", "2-7", i);
            CreateUnit(1, "Fast Missile", "2-8", i);
            CreateUnit(1, "Fast Missile", "2-9", i);
            CreateUnit(1, "Fast Missile", "2-10", i);
            CreateUnit(1, "Fast Missile", "2-11", i);
            CreateUnit(1, "Fast Missile", "2-12", i);
            CreateUnit(1, "Fast Missile", "2-13", i);
        },
        flag = {Preserved}
    }
    end
    
    for i = 0, 3 do -- 스테어 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Stair Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Stair Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Stair Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(1600+i+8*21,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 3 do -- 스테어
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*21,Exactly,0); Void(1000+i+16*21,Exactly,0);
            Void(1600+i+8*21,AtLeast,1);
        },
        actions = {
            SetVoid(1600+i+8*21,Subtract,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Stair Missile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Stair Missile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Stair Missile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Stair Missile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Big Sniping Missile", "1-1", i);
            CreateUnit(1, "Big Sniping Missile", "1-2", i);
            SetVoid(1008+i+16*21,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*21,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,1); Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*21,SetTo,2);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-2", i);
                CreateUnit(1, "Big Sniping Missile", "1-3", i);
                SetVoid(1008+i+16*21,SetTo,3);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-3", i);
                CreateUnit(1, "Big Sniping Missile", "1-4", i);
                SetVoid(1008+i+16*21,SetTo,4);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-4", i);
                CreateUnit(1, "Big Sniping Missile", "1-5", i);
                SetVoid(1008+i+16*21,SetTo,5);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-5", i);
                CreateUnit(1, "Big Sniping Missile", "1-6", i);
                SetVoid(1008+i+16*21,SetTo,6);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-6", i);
                CreateUnit(1, "Big Sniping Missile", "1-7", i);
                SetVoid(1008+i+16*21,SetTo,7);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-7", i);
                CreateUnit(1, "Big Sniping Missile", "1-8", i);
                SetVoid(1008+i+16*21,SetTo,8);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-8", i);
                CreateUnit(1, "Big Sniping Missile", "1-9", i);
                SetVoid(1008+i+16*21,SetTo,9);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-9", i);
                CreateUnit(1, "Big Sniping Missile", "1-10", i);
                SetVoid(1008+i+16*21,SetTo,10);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-10", i);
                CreateUnit(1, "Big Sniping Missile", "1-11", i);
                SetVoid(1008+i+16*21,SetTo,11);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-11", i);
                CreateUnit(1, "Big Sniping Missile", "1-12", i);
                SetVoid(1008+i+16*21,SetTo,12);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,12); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-12", i);
                CreateUnit(1, "Big Sniping Missile", "1-13", i);
                SetVoid(1008+i+16*21,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    for i = 4, 7 do -- 스테어 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Stair Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Stair Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Stair Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(1600+i+8*21,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 스테어
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*21,Exactly,0); Void(1000+i+16*21,Exactly,0);
            Void(1600+i+8*21,AtLeast,1);
        },
        actions = {
            SetVoid(1600+i+8*21,Subtract,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Stair Missile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Stair Missile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Stair Missile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Stair Missile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Big Sniping Missile", "2-1", i);
            CreateUnit(1, "Big Sniping Missile", "2-2", i);
            SetVoid(1008+i+16*21,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*21,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,1); Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*21,SetTo,2);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-2", i);
                CreateUnit(1, "Big Sniping Missile", "2-3", i);
                SetVoid(1008+i+16*21,SetTo,3);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-3", i);
                CreateUnit(1, "Big Sniping Missile", "2-4", i);
                SetVoid(1008+i+16*21,SetTo,4);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-4", i);
                CreateUnit(1, "Big Sniping Missile", "2-5", i);
                SetVoid(1008+i+16*21,SetTo,5);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-5", i);
                CreateUnit(1, "Big Sniping Missile", "2-6", i);
                SetVoid(1008+i+16*21,SetTo,6);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-6", i);
                CreateUnit(1, "Big Sniping Missile", "2-7", i);
                SetVoid(1008+i+16*21,SetTo,7);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-7", i);
                CreateUnit(1, "Big Sniping Missile", "2-8", i);
                SetVoid(1008+i+16*21,SetTo,8);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-8", i);
                CreateUnit(1, "Big Sniping Missile", "2-9", i);
                SetVoid(1008+i+16*21,SetTo,9);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-9", i);
                CreateUnit(1, "Big Sniping Missile", "2-10", i);
                SetVoid(1008+i+16*21,SetTo,10);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-10", i);
                CreateUnit(1, "Big Sniping Missile", "2-11", i);
                SetVoid(1008+i+16*21,SetTo,11);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-11", i);
                CreateUnit(1, "Big Sniping Missile", "2-12", i);
                SetVoid(1008+i+16*21,SetTo,12);
                SetVoid(1000+i,Add,24*0.65); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*21,Exactly,12); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-12", i);
                CreateUnit(1, "Big Sniping Missile", "2-13", i);
                SetVoid(1008+i+16*21,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
        

    
    for i = 0, 3 do -- 패옵 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Fast Stage Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Fast Stage Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Fast Stage Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*1,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 3 do -- 패옵
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*11,Exactly,0); Void(1000+i+16*11,Exactly,0);
            Void(201+i+8*1,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*1,Subtract,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Fast Stage Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Fast Stage Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Fast Stage Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Fast Stage Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Missile", "1-1", i);
            SetVoid(1008+i+16*11,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*11,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,1); Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*21,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*11,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-2", i);
                SetVoid(1008+i+16*11,SetTo,3);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-3", i);
                SetVoid(1008+i+16*11,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-4", i);
                SetVoid(1008+i+16*11,SetTo,5);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-5", i);
                SetVoid(1008+i+16*11,SetTo,6);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-6", i);
                SetVoid(1008+i+16*11,SetTo,7);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-7", i);
                SetVoid(1008+i+16*11,SetTo,8);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-8", i);
                SetVoid(1008+i+16*11,SetTo,9);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-9", i);
                SetVoid(1008+i+16*11,SetTo,10);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-10", i);
                SetVoid(1008+i+16*11,SetTo,11);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-11", i);
                SetVoid(1008+i+16*11,SetTo,12);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,12); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-12", i);
                SetVoid(1008+i+16*11,SetTo,13);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,13); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-13", i);
                SetVoid(1008+i+16*11,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    
    for i = 4, 7 do -- 패옵 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Fast Stage Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Fast Stage Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Fast Stage Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*1,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 패옵
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*11,Exactly,0); Void(1000+i+16*11,Exactly,0);
            Void(201+i+8*1,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*1,Subtract,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Fast Stage Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Fast Stage Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Fast Stage Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Fast Stage Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Missile", "2-1", i);
            SetVoid(1008+i+16*11,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*11,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,1); Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*21,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*11,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-2", i);
                SetVoid(1008+i+16*11,SetTo,3);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-3", i);
                SetVoid(1008+i+16*11,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-4", i);
                SetVoid(1008+i+16*11,SetTo,5);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-5", i);
                SetVoid(1008+i+16*11,SetTo,6);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-6", i);
                SetVoid(1008+i+16*11,SetTo,7);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-7", i);
                SetVoid(1008+i+16*11,SetTo,8);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-8", i);
                SetVoid(1008+i+16*11,SetTo,9);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-9", i);
                SetVoid(1008+i+16*11,SetTo,10);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-10", i);
                SetVoid(1008+i+16*11,SetTo,11);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-11", i);
                SetVoid(1008+i+16*11,SetTo,12);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,12); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-12", i);
                SetVoid(1008+i+16*11,SetTo,13);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*11,Exactly,13); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-13", i);
                SetVoid(1008+i+16*11,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    
    for i = 0, 3 do -- 하이브 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "SuperMissile Another [U]");
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 0, " Hat Time");
            MoveLocation(k.."ZP", "SuperMissile Another [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "SuperMissile Another [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(1600+i+8*22,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Super Missile 의 효과로 적의 관통미사일(반사불가)을제거합니다.", 4);
            RemoveUnit("Big Sniping Missile", Force2);
            RemoveUnit("Big Sniping Missile☆", Force2);
            RemoveUnit("Refractor", Force2);
            RemoveUnit("Light", Force2);
            RemoveUnit("Sniping Missile", Force2);
            RemoveUnit("Super Missile", Force2);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 3 do -- 하이브
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*22,Exactly,0); Void(1000+i+16*22,Exactly,0);
            Void(1600+i+8*22,AtLeast,1);
        },
        actions = {
            SetVoid(1600+i+8*22,Subtract,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."SuperMissile Another [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Super Missile", 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."SuperMissile Another [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Super Missile", 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."SuperMissile Another [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Super Missile", 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."SuperMissile Another [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Super Missile", 1500);
            SetCp(i);
            CreateUnit(1, "Super Missile", "1-4", i);
            CreateUnit(1, "Super Missile", "1-10", i);
            
            SetVoid(1008+i+16*22,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*22,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*22,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*11,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*22,SetTo,2);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*22,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "1-4", i);
                CreateUnit(1, "Super Missile", "1-10", i);
                SetVoid(1008+i+16*22,SetTo,3);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*22,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "1-4", i);
                CreateUnit(1, "Super Missile", "1-10", i);
                SetVoid(1008+i+16*22,SetTo,4);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*22,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "1-7", i);
                SetVoid(1008+i+16*22,SetTo,5);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*22,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "1-7", i);
                SetVoid(1008+i+16*22,SetTo,6);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*22,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "1-7", i);
                SetVoid(1008+i+16*22,SetTo,7);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*22,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "1-7", i);
                SetVoid(1008+i+16*22,SetTo,8);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*22,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "1-7", i);
                SetVoid(1008+i+16*22,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end

    for i = 4, 7 do -- 하이브 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "SuperMissile Another [U]");
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 0, " Hat Time");
            MoveLocation(k.."ZP", "SuperMissile Another [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "SuperMissile Another [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(1600+i+8*22,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Super Missile 의 효과로 적의 관통미사일(반사불가)을제거합니다.", 4);
            RemoveUnit("Big Sniping Missile", Force1);
            RemoveUnit("Big Sniping Missile☆", Force1);
            RemoveUnit("Refractor", Force1);
            RemoveUnit("Light", Force1);
            RemoveUnit("Sniping Missile", Force1);
            RemoveUnit("Super Missile", Force1);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 하이브
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*22,Exactly,0); Void(1000+i+16*22,Exactly,0);
            Void(1600+i+8*22,AtLeast,1);
        },
        actions = {
            SetVoid(1600+i+8*22,Subtract,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."SuperMissile Another [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Super Missile", 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."SuperMissile Another [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Super Missile", 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."SuperMissile Another [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Super Missile", 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."SuperMissile Another [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Super Missile", 1500);
            SetCp(i);
            CreateUnit(1, "Super Missile", "2-4", i);
            CreateUnit(1, "Super Missile", "2-10", i);
            
            SetVoid(1008+i+16*22,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*22,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*22,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*11,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*22,SetTo,2);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*22,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "2-4", i);
                CreateUnit(1, "Super Missile", "2-10", i);
                SetVoid(1008+i+16*22,SetTo,3);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*22,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "2-4", i);
                CreateUnit(1, "Super Missile", "2-10", i);
                SetVoid(1008+i+16*22,SetTo,4);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*22,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "2-7", i);
                SetVoid(1008+i+16*22,SetTo,5);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*22,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "2-7", i);
                SetVoid(1008+i+16*22,SetTo,6);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*22,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "2-7", i);
                SetVoid(1008+i+16*22,SetTo,7);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*22,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "2-7", i);
                SetVoid(1008+i+16*22,SetTo,8);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*22,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "2-7", i);
                SetVoid(1008+i+16*22,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    for i = 0, 3 do -- 레어 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "SuperMissile [U]");
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 0, " Hat Time");
            MoveLocation(k.."ZP", "SuperMissile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "SuperMissile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*2,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Super Missile 의 효과로 적의 관통미사일(반사불가)을제거합니다.", 4);
            RemoveUnit("Big Sniping Missile", Force2);
            RemoveUnit("Big Sniping Missile☆", Force2);
            RemoveUnit("Refractor", Force2);
            RemoveUnit("Light", Force2);
            RemoveUnit("Sniping Missile", Force2);
            RemoveUnit("Super Missile", Force2);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 3 do -- 레어
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*12,Exactly,0); Void(1000+i+16*12,Exactly,0);
            Void(201+i+8*2,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*2,Subtract,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."SuperMissile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Super Missile", 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."SuperMissile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Super Missile", 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."SuperMissile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Super Missile", 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."SuperMissile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Super Missile", 1500);
            SetCp(i);
            CreateUnit(1, "Super Missile", "1-1", i);
            CreateUnit(1, "Super Missile", "1-13", i);
            
            SetVoid(1008+i+16*12,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*12,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*12,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*22,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*12,SetTo,2);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*12,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "1-1", i);
                CreateUnit(1, "Super Missile", "1-13", i);
                SetVoid(1008+i+16*12,SetTo,3);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*12,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "1-1", i);
                CreateUnit(1, "Super Missile", "1-13", i);
                SetVoid(1008+i+16*12,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    for i = 4, 7 do -- 레어 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "SuperMissile [U]");
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 0, " Hat Time");
            MoveLocation(k.."ZP", "SuperMissile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "SuperMissile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*2,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Super Missile 의 효과로 적의 관통미사일(반사불가)을제거합니다.", 4);
            RemoveUnit("Big Sniping Missile", Force1);
            RemoveUnit("Big Sniping Missile☆", Force1);
            RemoveUnit("Refractor", Force1);
            RemoveUnit("Light", Force1);
            RemoveUnit("Sniping Missile", Force1);
            RemoveUnit("Super Missile", Force1);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 레어
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*12,Exactly,0); Void(1000+i+16*12,Exactly,0);
            Void(201+i+8*2,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*2,Subtract,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."SuperMissile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Super Missile", 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."SuperMissile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Super Missile", 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."SuperMissile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Super Missile", 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."SuperMissile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Super Missile", 1500);
            SetCp(i);
            CreateUnit(1, "Super Missile", "2-1", i);
            CreateUnit(1, "Super Missile", "2-13", i);
            
            SetVoid(1008+i+16*12,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*12,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*12,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*22,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*12,SetTo,2);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*12,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "2-1", i);
                CreateUnit(1, "Super Missile", "2-13", i);
                SetVoid(1008+i+16*12,SetTo,3);
                SetVoid(1000+i,Add,24*2.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*12,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                CreateUnit(1, "Super Missile", "2-1", i);
                CreateUnit(1, "Super Missile", "2-13", i);
                SetVoid(1008+i+16*12,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    for i = 0, 3 do -- 챔버 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Fast Center Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Fast Center Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Fast Center Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*3,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 3 do -- 챔버
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*13,Exactly,0); Void(1000+i+16*13,Exactly,0);
            Void(201+i+8*3,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*3,Subtract,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Fast Center Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Fast Center Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Fast Center Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Fast Center Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Missile", "1-7", i);
            SetVoid(1008+i+16*13,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*13,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*13,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*12,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*13,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*13,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-6", i);
                CreateUnit(1, "Fast Missile", "1-8", i);
                SetVoid(1008+i+16*13,SetTo,3);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*13,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-5", i);
                CreateUnit(1, "Fast Missile", "1-9", i);
                SetVoid(1008+i+16*13,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*13,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-4", i);
                CreateUnit(1, "Fast Missile", "1-10", i);
                SetVoid(1008+i+16*13,SetTo,5);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*13,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-3", i);
                CreateUnit(1, "Fast Missile", "1-11", i);
                SetVoid(1008+i+16*13,SetTo,6);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*13,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-2", i);
                CreateUnit(1, "Fast Missile", "1-12", i);
                SetVoid(1008+i+16*13,SetTo,7);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*13,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-1", i);
                CreateUnit(1, "Fast Missile", "1-13", i);
                SetVoid(1008+i+16*13,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    for i = 4, 7 do -- 챔버 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Fast Center Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Fast Center Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Fast Center Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*3,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 챔버
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*13,Exactly,0); Void(1000+i+16*13,Exactly,0);
            Void(201+i+8*3,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*3,Subtract,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Fast Center Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Fast Center Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Fast Center Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Fast Center Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Missile", "2-7", i);
            SetVoid(1008+i+16*13,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*13,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*13,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*12,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*13,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*13,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-6", i);
                CreateUnit(1, "Fast Missile", "2-8", i);
                SetVoid(1008+i+16*13,SetTo,3);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*13,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-5", i);
                CreateUnit(1, "Fast Missile", "2-9", i);
                SetVoid(1008+i+16*13,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*13,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-4", i);
                CreateUnit(1, "Fast Missile", "2-10", i);
                SetVoid(1008+i+16*13,SetTo,5);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*13,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-3", i);
                CreateUnit(1, "Fast Missile", "2-11", i);
                SetVoid(1008+i+16*13,SetTo,6);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*13,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-2", i);
                CreateUnit(1, "Fast Missile", "2-12", i);
                SetVoid(1008+i+16*13,SetTo,7);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*13,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-1", i);
                CreateUnit(1, "Fast Missile", "2-13", i);
                SetVoid(1008+i+16*13,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end

    for i = 0, 3 do -- 사센 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Side Center Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Side Center Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Side Center Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(1600+i+8*24,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 3 do -- 사센
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*24,Exactly,0); Void(1000+i+16*24,Exactly,0);
            Void(1600+i+8*24,AtLeast,1);
        },
        actions = {
            SetVoid(1600+i+8*24,Subtract,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Center Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait(73, 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Center Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait(73, 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Center Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait(73, 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Center Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait(73, 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Missile", "S1-4", i);
            SetVoid(1008+i+16*24,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*24,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); 
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*24,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*24,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*24,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,1232+32*5);
                SetLoc("ProbeS",12,SetTo,1264+32*5);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,1232+32*8);
                SetLoc("ProbeS",12,SetTo,1264+32*8);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*24,SetTo,3);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*24,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,1232+32*4);
                SetLoc("ProbeS",12,SetTo,1264+32*4);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,1232+32*9);
                SetLoc("ProbeS",12,SetTo,1264+32*9);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*24,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*24,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,1232+32*3);
                SetLoc("ProbeS",12,SetTo,1264+32*3);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,1232+32*10);
                SetLoc("ProbeS",12,SetTo,1264+32*10);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*24,SetTo,5);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*24,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,1232+32*2);
                SetLoc("ProbeS",12,SetTo,1264+32*2);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,1232+32*11);
                SetLoc("ProbeS",12,SetTo,1264+32*11);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*24,SetTo,6);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*24,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,1232+32*1);
                SetLoc("ProbeS",12,SetTo,1264+32*1);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,1232+32*12);
                SetLoc("ProbeS",12,SetTo,1264+32*12);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*24,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end

    for i = 4, 7 do -- 사센 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Side Center Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Side Center Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Side Center Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(1600+i+8*24,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 사센
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*24,Exactly,0); Void(1000+i+16*24,Exactly,0);
            Void(1600+i+8*24,AtLeast,1);
        },
        actions = {
            SetVoid(1600+i+8*24,Subtract,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Center Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait(73, 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Center Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait(73, 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Center Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait(73, 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Center Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait(73, 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Missile", "S3-4", i);
            SetVoid(1008+i+16*24,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*24,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); 
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*24,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*24,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*24,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,784-32*5);
                SetLoc("ProbeS",12,SetTo,816-32*5);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,784-32*8);
                SetLoc("ProbeS",12,SetTo,816-32*8);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*24,SetTo,3);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*24,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,784-32*4);
                SetLoc("ProbeS",12,SetTo,816-32*4);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,784-32*9);
                SetLoc("ProbeS",12,SetTo,816-32*9);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*24,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*24,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,784-32*3);
                SetLoc("ProbeS",12,SetTo,816-32*3);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,784-32*10);
                SetLoc("ProbeS",12,SetTo,816-32*10);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*24,SetTo,5);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*24,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,784-32*2);
                SetLoc("ProbeS",12,SetTo,816-32*2);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,784-32*11);
                SetLoc("ProbeS",12,SetTo,816-32*11);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*24,SetTo,6);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*24,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,784-32*1);
                SetLoc("ProbeS",12,SetTo,816-32*1);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,784-32*12);
                SetLoc("ProbeS",12,SetTo,816-32*12);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*24,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end







    for i = 0, 3 do -- 퀸 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Missile Set [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Missile Set [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Missile Set [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*4,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 3 do -- 퀸
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*14,Exactly,0); Void(1000+i+16*14,Exactly,0);
            Void(201+i+8*4,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*4,Subtract,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Missile Set [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Missile Set [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Missile Set [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Missile Set [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Missile", "1-1", i);
            CreateUnit(1, "Fast Missile", "1-3", i);
            CreateUnit(1, "Fast Missile", "1-5", i);
            CreateUnit(1, "Fast Missile", "1-7", i);
            CreateUnit(1, "Fast Missile", "1-9", i);
            CreateUnit(1, "Fast Missile", "1-11", i);
            CreateUnit(1, "Fast Missile", "1-13", i);
            SetVoid(1008+i+16*14,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*14,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0);
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*14,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*24,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*14,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*14,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-2", i);
                CreateUnit(1, "Fast Missile", "1-4", i);
                CreateUnit(1, "Fast Missile", "1-6", i);
                CreateUnit(1, "Fast Missile", "1-8", i);
                CreateUnit(1, "Fast Missile", "1-10", i);
                CreateUnit(1, "Fast Missile", "1-12", i);
                SetVoid(1008+i+16*14,SetTo,3);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*14,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-1", i);
                CreateUnit(1, "Fast Missile", "1-3", i);
                CreateUnit(1, "Fast Missile", "1-5", i);
                CreateUnit(1, "Fast Missile", "1-7", i);
                CreateUnit(1, "Fast Missile", "1-9", i);
                CreateUnit(1, "Fast Missile", "1-11", i);
                CreateUnit(1, "Fast Missile", "1-13", i);
                SetVoid(1008+i+16*14,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*14,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-2", i);
                CreateUnit(1, "Fast Missile", "1-4", i);
                CreateUnit(1, "Fast Missile", "1-6", i);
                CreateUnit(1, "Fast Missile", "1-8", i);
                CreateUnit(1, "Fast Missile", "1-10", i);
                CreateUnit(1, "Fast Missile", "1-12", i);
                SetVoid(1008+i+16*14,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    for i = 4, 7 do -- 퀸 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Missile Set [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Missile Set [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Missile Set [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*4,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 퀸
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*14,Exactly,0); Void(1000+i+16*14,Exactly,0);
            Void(201+i+8*4,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*4,Subtract,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Missile Set [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Missile Set [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Missile Set [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Missile Set [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Missile", "2-1", i);
            CreateUnit(1, "Fast Missile", "2-3", i);
            CreateUnit(1, "Fast Missile", "2-5", i);
            CreateUnit(1, "Fast Missile", "2-7", i);
            CreateUnit(1, "Fast Missile", "2-9", i);
            CreateUnit(1, "Fast Missile", "2-11", i);
            CreateUnit(1, "Fast Missile", "2-13", i);
            SetVoid(1008+i+16*14,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*14,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0);
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*14,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*24,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*14,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*14,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-2", i);
                CreateUnit(1, "Fast Missile", "2-4", i);
                CreateUnit(1, "Fast Missile", "2-6", i);
                CreateUnit(1, "Fast Missile", "2-8", i);
                CreateUnit(1, "Fast Missile", "2-10", i);
                CreateUnit(1, "Fast Missile", "2-12", i);
                SetVoid(1008+i+16*14,SetTo,3);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*14,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-1", i);
                CreateUnit(1, "Fast Missile", "2-3", i);
                CreateUnit(1, "Fast Missile", "2-5", i);
                CreateUnit(1, "Fast Missile", "2-7", i);
                CreateUnit(1, "Fast Missile", "2-9", i);
                CreateUnit(1, "Fast Missile", "2-11", i);
                CreateUnit(1, "Fast Missile", "2-13", i);
                SetVoid(1008+i+16*14,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*14,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-2", i);
                CreateUnit(1, "Fast Missile", "2-4", i);
                CreateUnit(1, "Fast Missile", "2-6", i);
                CreateUnit(1, "Fast Missile", "2-8", i);
                CreateUnit(1, "Fast Missile", "2-10", i);
                CreateUnit(1, "Fast Missile", "2-12", i);
                SetVoid(1008+i+16*14,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    for i = 0, 3 do -- 디파 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Cross X Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Cross X Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Cross X Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*5,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 3 do -- 디파
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*15,Exactly,0); Void(1000+i+16*15,Exactly,0);
            Void(201+i+8*5,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*5,Subtract,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Cross X Missile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Cross X Missile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Cross X Missile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Cross X Missile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Big Sniping Missile", "1-1", i);
            CreateUnit(1, "Big Sniping Missile", "1-5", i);
            CreateUnit(1, "Big Sniping Missile", "1-6", i);
            CreateUnit(1, "Big Sniping Missile", "1-7", i);
            CreateUnit(1, "Big Sniping Missile", "1-8", i);
            CreateUnit(1, "Big Sniping Missile", "1-9", i);
            CreateUnit(1, "Big Sniping Missile", "1-13", i);
            SetVoid(1008+i+16*15,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*15,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); Void(1008+i+16*14,Exactly,0);
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*24,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*15,SetTo,2);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-2", i);
                CreateUnit(1, "Big Sniping Missile", "1-12", i);
                SetVoid(1008+i+16*15,SetTo,3);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-3", i);
                CreateUnit(1, "Big Sniping Missile", "1-11", i);
                SetVoid(1008+i+16*15,SetTo,4);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-4", i);
                CreateUnit(1, "Big Sniping Missile", "1-10", i);
                SetVoid(1008+i+16*15,SetTo,5);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-5", i);
                CreateUnit(1, "Big Sniping Missile", "1-9", i);
                SetVoid(1008+i+16*15,SetTo,6);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-6", i);
                CreateUnit(1, "Big Sniping Missile", "1-8", i);
                SetVoid(1008+i+16*15,SetTo,7);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-7", i);
                SetVoid(1008+i+16*15,SetTo,8);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-6", i);
                CreateUnit(1, "Big Sniping Missile", "1-8", i);
                SetVoid(1008+i+16*15,SetTo,9);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-5", i);
                CreateUnit(1, "Big Sniping Missile", "1-9", i);
                SetVoid(1008+i+16*15,SetTo,10);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-4", i);
                CreateUnit(1, "Big Sniping Missile", "1-10", i);
                SetVoid(1008+i+16*15,SetTo,11);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-3", i);
                CreateUnit(1, "Big Sniping Missile", "1-11", i);
                SetVoid(1008+i+16*15,SetTo,12);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,12); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-2", i);
                CreateUnit(1, "Big Sniping Missile", "1-12", i);
                SetVoid(1008+i+16*15,SetTo,13);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,13); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-1", i);
                CreateUnit(1, "Big Sniping Missile", "1-5", i);
                CreateUnit(1, "Big Sniping Missile", "1-6", i);
                CreateUnit(1, "Big Sniping Missile", "1-7", i);
                CreateUnit(1, "Big Sniping Missile", "1-8", i);
                CreateUnit(1, "Big Sniping Missile", "1-9", i);
                CreateUnit(1, "Big Sniping Missile", "1-13", i);
                SetVoid(1008+i+16*15,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    for i = 4, 7 do -- 디파 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Cross X Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Cross X Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Cross X Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*5,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 디파
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*15,Exactly,0); Void(1000+i+16*15,Exactly,0);
            Void(201+i+8*5,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*5,Subtract,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Cross X Missile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Cross X Missile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Cross X Missile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Cross X Missile [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Big Sniping Missile", "2-1", i);
            CreateUnit(1, "Big Sniping Missile", "2-5", i);
            CreateUnit(1, "Big Sniping Missile", "2-6", i);
            CreateUnit(1, "Big Sniping Missile", "2-7", i);
            CreateUnit(1, "Big Sniping Missile", "2-8", i);
            CreateUnit(1, "Big Sniping Missile", "2-9", i);
            CreateUnit(1, "Big Sniping Missile", "2-13", i);
            SetVoid(1008+i+16*15,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*15,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); Void(1008+i+16*14,Exactly,0);
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*24,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*15,SetTo,2);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-2", i);
                CreateUnit(1, "Big Sniping Missile", "2-12", i);
                SetVoid(1008+i+16*15,SetTo,3);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-3", i);
                CreateUnit(1, "Big Sniping Missile", "2-11", i);
                SetVoid(1008+i+16*15,SetTo,4);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-4", i);
                CreateUnit(1, "Big Sniping Missile", "2-10", i);
                SetVoid(1008+i+16*15,SetTo,5);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-5", i);
                CreateUnit(1, "Big Sniping Missile", "2-9", i);
                SetVoid(1008+i+16*15,SetTo,6);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-6", i);
                CreateUnit(1, "Big Sniping Missile", "2-8", i);
                SetVoid(1008+i+16*15,SetTo,7);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-7", i);
                SetVoid(1008+i+16*15,SetTo,8);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-6", i);
                CreateUnit(1, "Big Sniping Missile", "2-8", i);
                SetVoid(1008+i+16*15,SetTo,9);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-5", i);
                CreateUnit(1, "Big Sniping Missile", "2-9", i);
                SetVoid(1008+i+16*15,SetTo,10);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-4", i);
                CreateUnit(1, "Big Sniping Missile", "2-10", i);
                SetVoid(1008+i+16*15,SetTo,11);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-3", i);
                CreateUnit(1, "Big Sniping Missile", "2-11", i);
                SetVoid(1008+i+16*15,SetTo,12);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,12); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-2", i);
                CreateUnit(1, "Big Sniping Missile", "2-12", i);
                SetVoid(1008+i+16*15,SetTo,13);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*15,Exactly,13); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-1", i);
                CreateUnit(1, "Big Sniping Missile", "2-5", i);
                CreateUnit(1, "Big Sniping Missile", "2-6", i);
                CreateUnit(1, "Big Sniping Missile", "2-7", i);
                CreateUnit(1, "Big Sniping Missile", "2-8", i);
                CreateUnit(1, "Big Sniping Missile", "2-9", i);
                CreateUnit(1, "Big Sniping Missile", "2-13", i);
                SetVoid(1008+i+16*15,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    for i = 0, 3 do -- 사퀸 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Side Missile Set [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Side Missile Set [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Side Missile Set [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*6,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 3 do -- 사퀸
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*16,Exactly,0); Void(1000+i+16*16,Exactly,0);
            Void(201+i+8*6,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*6,Subtract,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Missile Set [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Missile Set [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Missile Set [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Missile Set [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Missile", "S1-1", i);
            CreateUnit(1, "Missile", "S1-3", i);
            CreateUnit(1, "Missile", "S1-5", i);
            CreateUnit(1, "Missile", "S1-7", i);
            SetVoid(1008+i+16*16,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*16,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); Void(1008+i+16*14,Exactly,0); Void(1008+i+16*15,Exactly,0);
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*16,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*24,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*16,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*16,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Missile", "S1-2", i);
                CreateUnit(1, "Missile", "S1-4", i);
                CreateUnit(1, "Missile", "S1-6", i);
                SetVoid(1008+i+16*16,SetTo,3);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*16,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Missile", "S1-1", i);
                CreateUnit(1, "Missile", "S1-3", i);
                CreateUnit(1, "Missile", "S1-5", i);
                CreateUnit(1, "Missile", "S1-7", i);
                SetVoid(1008+i+16*16,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*16,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Missile", "S1-2", i);
                CreateUnit(1, "Missile", "S1-4", i);
                CreateUnit(1, "Missile", "S1-6", i);
                SetVoid(1008+i+16*16,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    for i = 4, 7 do -- 사퀸 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Side Missile Set [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Side Missile Set [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Side Missile Set [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*6,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 사퀸
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*16,Exactly,0); Void(1000+i+16*16,Exactly,0);
            Void(201+i+8*6,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*6,Subtract,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Missile Set [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Missile Set [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Missile Set [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Missile Set [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Missile", "S3-1", i);
            CreateUnit(1, "Missile", "S3-3", i);
            CreateUnit(1, "Missile", "S3-5", i);
            CreateUnit(1, "Missile", "S3-7", i);
            SetVoid(1008+i+16*16,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*16,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); Void(1008+i+16*14,Exactly,0); Void(1008+i+16*15,Exactly,0);
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*16,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*24,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*16,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*16,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Missile", "S3-2", i);
                CreateUnit(1, "Missile", "S3-4", i);
                CreateUnit(1, "Missile", "S3-6", i);
                SetVoid(1008+i+16*16,SetTo,3);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*16,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Missile", "S3-1", i);
                CreateUnit(1, "Missile", "S3-3", i);
                CreateUnit(1, "Missile", "S3-5", i);
                CreateUnit(1, "Missile", "S3-7", i);
                SetVoid(1008+i+16*16,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*16,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Missile", "S3-2", i);
                CreateUnit(1, "Missile", "S3-4", i);
                CreateUnit(1, "Missile", "S3-6", i);
                SetVoid(1008+i+16*16,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    
    for i = 0, 3 do -- 사디파 스택
        local k = i+1
        Trigger { -- No comment (F2080344)
            players = {i},
            conditions = {
                Command(CurrentPlayer, AtLeast, 1, "Side Cross X Missile [U]");
            },
            actions = {
                MoveLocation(k.."ZP", "Side Cross X Missile [U]", CurrentPlayer, "Anywhere");
                RemoveUnitAt(1, "Side Cross X Missile [U]", k.."ZP", CurrentPlayer);
                CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
                SetVoid(1600+i+8*25,Add,1);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText("\x16미사일 발사!", 4);
                PreserveTrigger();
            },
        }
        end
        for i = 0, 3 do -- 사디파
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {Void(1008+i+16*25,Exactly,0); Void(1000+i+16*25,Exactly,0);
                Void(1600+i+8*25,AtLeast,1);
            },
            actions = {
                SetVoid(1600+i+8*25,Subtract,1);
                SetCp(4);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Side Cross X Missile [U] \x16이 감지되었습니다.", 4);
                TalkingPortrait(73, 1500);
                SetCp(5);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Side Cross X Missile [U] \x16이 감지되었습니다.", 4);
                TalkingPortrait(73, 1500);
                SetCp(6);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Side Cross X Missile [U] \x16이 감지되었습니다.", 4);
                TalkingPortrait(73, 1500);
                SetCp(7);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Side Cross X Missile [U] \x16이 감지되었습니다.", 4);
                TalkingPortrait(73, 1500);
                SetCp(i);
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,1232+32*1);
                SetLoc("ProbeS",12,SetTo,1264+32*1);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                CreateUnit(1, "Missile", "S1-4", i);
                SetLoc("ProbeS",4,SetTo,1232+32*12);
                SetLoc("ProbeS",12,SetTo,1264+32*12);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,1);
            },
            flag = {Preserved}
        }
        CIf(i,{Void(1008+i+16*25,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); Void(1008+i+16*14,Exactly,0); Void(1008+i+16*15,Exactly,0); Void(1008+i+16*16,Exactly,0);
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*24,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*25,SetTo,2);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,1232+32*2);
                SetLoc("ProbeS",12,SetTo,1264+32*2);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,1232+32*11);
                SetLoc("ProbeS",12,SetTo,1264+32*11);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,3);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,1232+32*3);
                SetLoc("ProbeS",12,SetTo,1264+32*3);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,1232+32*10);
                SetLoc("ProbeS",12,SetTo,1264+32*10);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,4);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,1232+32*4);
                SetLoc("ProbeS",12,SetTo,1264+32*4);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,1232+32*9);
                SetLoc("ProbeS",12,SetTo,1264+32*9);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,5);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,1232+32*5);
                SetLoc("ProbeS",12,SetTo,1264+32*5);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,1232+32*8);
                SetLoc("ProbeS",12,SetTo,1264+32*8);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,6);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Missile", "S1-4", i);
                SetVoid(1008+i+16*25,SetTo,7);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,1232+32*5);
                SetLoc("ProbeS",12,SetTo,1264+32*5);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,1232+32*8);
                SetLoc("ProbeS",12,SetTo,1264+32*8);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,8);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,1232+32*4);
                SetLoc("ProbeS",12,SetTo,1264+32*4);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,1232+32*9);
                SetLoc("ProbeS",12,SetTo,1264+32*9);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,9);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,1232+32*3);
                SetLoc("ProbeS",12,SetTo,1264+32*3);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,1232+32*10);
                SetLoc("ProbeS",12,SetTo,1264+32*10);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,10);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,1232+32*2);
                SetLoc("ProbeS",12,SetTo,1264+32*2);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,1232+32*11);
                SetLoc("ProbeS",12,SetTo,1264+32*11);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,11);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,1232+32*1);
                SetLoc("ProbeS",12,SetTo,1264+32*1);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                CreateUnit(1, "Missile", "S1-4", i);
                SetLoc("ProbeS",4,SetTo,1232+32*12);
                SetLoc("ProbeS",12,SetTo,1264+32*12);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end


    for i = 4, 7 do -- 사디파 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Side Cross X Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Side Cross X Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Side Cross X Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(1600+i+8*25,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 사디파
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {Void(1008+i+16*25,Exactly,0); Void(1000+i+16*25,Exactly,0);
                Void(1600+i+8*25,AtLeast,1);
            },
            actions = {
                SetVoid(1600+i+8*25,Subtract,1);
                SetCp(0);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Side Cross X Missile [U] \x16이 감지되었습니다.", 4);
                TalkingPortrait(73, 1500);
                SetCp(1);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Side Cross X Missile [U] \x16이 감지되었습니다.", 4);
                TalkingPortrait(73, 1500);
                SetCp(2);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Side Cross X Missile [U] \x16이 감지되었습니다.", 4);
                TalkingPortrait(73, 1500);
                SetCp(3);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Side Cross X Missile [U] \x16이 감지되었습니다.", 4);
                TalkingPortrait(73, 1500);
                SetCp(i);
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,784-32*1);
                SetLoc("ProbeS",12,SetTo,816-32*1);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                CreateUnit(1, "Missile", "S3-4", i);
                SetLoc("ProbeS",4,SetTo,784-32*12);
                SetLoc("ProbeS",12,SetTo,816-32*12);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,1);
            },
            flag = {Preserved}
        }
        CIf(i,{Void(1008+i+16*25,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); Void(1008+i+16*14,Exactly,0); Void(1008+i+16*15,Exactly,0); Void(1008+i+16*16,Exactly,0);
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*24,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*25,SetTo,2);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,784-32*2);
                SetLoc("ProbeS",12,SetTo,816-32*2);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,784-32*11);
                SetLoc("ProbeS",12,SetTo,816-32*11);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,3);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,784-32*3);
                SetLoc("ProbeS",12,SetTo,816-32*3);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,784-32*10);
                SetLoc("ProbeS",12,SetTo,816-32*10);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,4);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,784-32*4);
                SetLoc("ProbeS",12,SetTo,816-32*4);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,784-32*9);
                SetLoc("ProbeS",12,SetTo,816-32*9);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,5);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,784-32*5);
                SetLoc("ProbeS",12,SetTo,816-32*5);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,784-32*8);
                SetLoc("ProbeS",12,SetTo,816-32*8);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,6);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Missile", "S3-4", i);
                SetVoid(1008+i+16*25,SetTo,7);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,784-32*5);
                SetLoc("ProbeS",12,SetTo,816-32*5);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,784-32*8);
                SetLoc("ProbeS",12,SetTo,816-32*8);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,8);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,784-32*4);
                SetLoc("ProbeS",12,SetTo,816-32*4);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,784-32*9);
                SetLoc("ProbeS",12,SetTo,816-32*9);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,9);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,784-32*3);
                SetLoc("ProbeS",12,SetTo,816-32*3);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,784-32*10);
                SetLoc("ProbeS",12,SetTo,816-32*10);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,10);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,784-32*2);
                SetLoc("ProbeS",12,SetTo,816-32*2);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,784-32*11);
                SetLoc("ProbeS",12,SetTo,816-32*11);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,11);
                SetVoid(1000+i,Add,24*0.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*25,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);
                SetLoc("ProbeS",4,SetTo,784-32*1);
                SetLoc("ProbeS",12,SetTo,816-32*1);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                CreateUnit(1, "Missile", "S3-4", i);
                SetLoc("ProbeS",4,SetTo,784-32*12);
                SetLoc("ProbeS",12,SetTo,816-32*12);
                CreateUnit(1, "Mini Missile", "ProbeS", i);
                SetVoid(1008+i+16*25,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end



    for i = 0, 3 do -- 슬덴 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Slow W Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Slow W Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Slow W Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(1600+i+8*26,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 3 do -- 슬덴
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*26,Exactly,0); Void(1000+i+16*26,Exactly,0);
            Void(1600+i+8*26,AtLeast,1);
        },
        actions = {
            SetVoid(1600+i+8*26,Subtract,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Slow W Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Missile", 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Slow W Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Missile", 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Slow W Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Missile", 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Slow W Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Missile", "1-2", i);
            CreateUnit(1, "Missile", "1-4", i);
            CreateUnit(1, "Missile", "1-6", i);
            CreateUnit(1, "Missile", "1-8", i);
            CreateUnit(1, "Missile", "1-10", i);
            CreateUnit(1, "Missile", "1-12", i);
            SetVoid(1008+i+16*26,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*26,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); Void(1008+i+16*14,Exactly,0); Void(1008+i+16*15,Exactly,0); Void(1008+i+16*16,Exactly,0);
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*26,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*24,Exactly,0); Void(1008+i+16*25,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*26,SetTo,2);
                SetVoid(1000+i,Add,24*0.9+1); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*26,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Missile", "1-1", i);
                CreateUnit(1, "Missile", "1-3", i);
                CreateUnit(1, "Missile", "1-5", i);
                CreateUnit(1, "Missile", "1-7", i);
                CreateUnit(1, "Missile", "1-9", i);
                CreateUnit(1, "Missile", "1-11", i);
                CreateUnit(1, "Missile", "1-13", i);
                SetVoid(1008+i+16*26,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end

    for i = 4, 7 do -- 슬덴 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Slow W Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Slow W Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Slow W Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(1600+i+8*26,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 슬덴
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*26,Exactly,0); Void(1000+i+16*26,Exactly,0);
            Void(1600+i+8*26,AtLeast,1);
        },
        actions = {
            SetVoid(1600+i+8*26,Subtract,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Slow W Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Missile", 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Slow W Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Missile", 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Slow W Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Missile", 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Slow W Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Missile", "2-2", i);
            CreateUnit(1, "Missile", "2-4", i);
            CreateUnit(1, "Missile", "2-6", i);
            CreateUnit(1, "Missile", "2-8", i);
            CreateUnit(1, "Missile", "2-10", i);
            CreateUnit(1, "Missile", "2-12", i);
            SetVoid(1008+i+16*26,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*26,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); Void(1008+i+16*14,Exactly,0); Void(1008+i+16*15,Exactly,0); Void(1008+i+16*16,Exactly,0);
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*26,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*24,Exactly,0); Void(1008+i+16*25,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*26,SetTo,2);
                SetVoid(1000+i,Add,24*0.9+1); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*26,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Missile", "2-1", i);
                CreateUnit(1, "Missile", "2-3", i);
                CreateUnit(1, "Missile", "2-5", i);
                CreateUnit(1, "Missile", "2-7", i);
                CreateUnit(1, "Missile", "2-9", i);
                CreateUnit(1, "Missile", "2-11", i);
                CreateUnit(1, "Missile", "2-13", i);
                SetVoid(1008+i+16*26,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end



    
    for i = 0, 3 do -- 덴 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Side Fast W Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Side Fast W Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Side Fast W Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*7,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 3 do -- 덴
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*17,Exactly,0); Void(1000+i+16*17,Exactly,0);
            Void(201+i+8*7,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*7,Subtract,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Fast W Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Fast W Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Fast W Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Fast W Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Missile", "S1-2", i);
            CreateUnit(1, "Fast Missile", "S1-4", i);
            CreateUnit(1, "Fast Missile", "S1-6", i);
            Order("Fast Missile",i,"S1-2",Move,"S2-2");
            Order("Fast Missile",i,"S1-4",Move,"S2-4");
            Order("Fast Missile",i,"S1-6",Move,"S2-6");
            SetVoid(1008+i+16*17,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*17,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); Void(1008+i+16*14,Exactly,0); Void(1008+i+16*15,Exactly,0); Void(1008+i+16*16,Exactly,0);
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*17,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*24,Exactly,0); Void(1008+i+16*25,Exactly,0); Void(1008+i+16*26,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*17,SetTo,2);
                SetVoid(1000+i,Add,24*0.8); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*17,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "S1-1", i);
                CreateUnit(1, "Fast Missile", "S1-3", i);
                CreateUnit(1, "Fast Missile", "S1-5", i);
                CreateUnit(1, "Fast Missile", "S1-7", i);
                Order("Fast Missile",i,"S1-1",Move,"S2-1");
                Order("Fast Missile",i,"S1-3",Move,"S2-3");
                Order("Fast Missile",i,"S1-5",Move,"S2-5");
                Order("Fast Missile",i,"S1-7",Move,"S2-7");
                SetVoid(1008+i+16*17,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    for i = 4, 7 do -- 덴 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Side Fast W Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Side Fast W Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Side Fast W Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*7,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 덴
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*17,Exactly,0); Void(1000+i+16*17,Exactly,0);
            Void(201+i+8*7,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*7,Subtract,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Fast W Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Fast W Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Fast W Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Fast W Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Missile", "S3-2", i);
            CreateUnit(1, "Fast Missile", "S3-4", i);
            CreateUnit(1, "Fast Missile", "S3-6", i);
            Order("Fast Missile",i,"S3-2",Move,"S4-2");
            Order("Fast Missile",i,"S3-4",Move,"S4-4");
            Order("Fast Missile",i,"S3-6",Move,"S4-6");
            SetVoid(1008+i+16*17,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*17,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); Void(1008+i+16*14,Exactly,0); Void(1008+i+16*15,Exactly,0); Void(1008+i+16*16,Exactly,0);
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*17,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*24,Exactly,0); Void(1008+i+16*25,Exactly,0); Void(1008+i+16*26,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*17,SetTo,2);
                SetVoid(1000+i,Add,24*0.8); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*17,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "S3-1", i);
                CreateUnit(1, "Fast Missile", "S3-3", i);
                CreateUnit(1, "Fast Missile", "S3-5", i);
                CreateUnit(1, "Fast Missile", "S3-7", i);
                Order("Fast Missile",i,"S3-1",Move,"S4-1");
                Order("Fast Missile",i,"S3-3",Move,"S4-3");
                Order("Fast Missile",i,"S3-5",Move,"S4-5");
                Order("Fast Missile",i,"S3-7",Move,"S4-7");
                SetVoid(1008+i+16*17,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    for i = 0, 3 do -- 스퀸 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Sniping Missile Set [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Sniping Missile Set [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Sniping Missile Set [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*8,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 3 do -- 스퀸
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*18,Exactly,0); Void(1000+i+16*18,Exactly,0);
            Void(201+i+8*8,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*8,Subtract,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Sniping Missile Set [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Sniping Missile Set [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Sniping Missile Set [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Sniping Missile Set [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Big Sniping Missile", "1-1", i);
            CreateUnit(1, "Big Sniping Missile", "1-3", i);
            CreateUnit(1, "Big Sniping Missile", "1-5", i);
            CreateUnit(1, "Big Sniping Missile", "1-7", i);
            CreateUnit(1, "Big Sniping Missile", "1-9", i);
            CreateUnit(1, "Big Sniping Missile", "1-11", i);
            CreateUnit(1, "Big Sniping Missile", "1-13", i);
            SetVoid(1008+i+16*18,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*18,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); Void(1008+i+16*14,Exactly,0); Void(1008+i+16*15,Exactly,0); Void(1008+i+16*16,Exactly,0);
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*18,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*17,Exactly,0); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*24,Exactly,0); Void(1008+i+16*25,Exactly,0); Void(1008+i+16*26,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*18,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*18,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-2", i);
                CreateUnit(1, "Big Sniping Missile", "1-4", i);
                CreateUnit(1, "Big Sniping Missile", "1-6", i);
                CreateUnit(1, "Big Sniping Missile", "1-8", i);
                CreateUnit(1, "Big Sniping Missile", "1-10", i);
                CreateUnit(1, "Big Sniping Missile", "1-12", i);
                SetVoid(1008+i+16*18,SetTo,3);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*18,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-1", i);
                CreateUnit(1, "Big Sniping Missile", "1-3", i);
                CreateUnit(1, "Big Sniping Missile", "1-5", i);
                CreateUnit(1, "Big Sniping Missile", "1-7", i);
                CreateUnit(1, "Big Sniping Missile", "1-9", i);
                CreateUnit(1, "Big Sniping Missile", "1-11", i);
                CreateUnit(1, "Big Sniping Missile", "1-13", i);
                SetVoid(1008+i+16*18,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*18,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "1-2", i);
                CreateUnit(1, "Big Sniping Missile", "1-4", i);
                CreateUnit(1, "Big Sniping Missile", "1-6", i);
                CreateUnit(1, "Big Sniping Missile", "1-8", i);
                CreateUnit(1, "Big Sniping Missile", "1-10", i);
                CreateUnit(1, "Big Sniping Missile", "1-12", i);
                SetVoid(1008+i+16*18,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    
    for i = 4, 7 do -- 스퀸 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Sniping Missile Set [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Sniping Missile Set [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Sniping Missile Set [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*8,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 스퀸
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*18,Exactly,0); Void(1000+i+16*18,Exactly,0);
            Void(201+i+8*8,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*8,Subtract,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Sniping Missile Set [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Sniping Missile Set [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Sniping Missile Set [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\warning.wav");
            DisplayText(ColorCode[i+1].."Sniping Missile Set [U] \x16이 감지되었습니다.\r\n\x1B반사가 불가능한 미사일입니다.", 4);
            TalkingPortrait("Big Sniping Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Big Sniping Missile", "2-1", i);
            CreateUnit(1, "Big Sniping Missile", "2-3", i);
            CreateUnit(1, "Big Sniping Missile", "2-5", i);
            CreateUnit(1, "Big Sniping Missile", "2-7", i);
            CreateUnit(1, "Big Sniping Missile", "2-9", i);
            CreateUnit(1, "Big Sniping Missile", "2-11", i);
            CreateUnit(1, "Big Sniping Missile", "2-13", i);
            SetVoid(1008+i+16*18,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*18,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); Void(1008+i+16*14,Exactly,0); Void(1008+i+16*15,Exactly,0); Void(1008+i+16*16,Exactly,0);
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*18,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*17,Exactly,0); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*24,Exactly,0); Void(1008+i+16*25,Exactly,0); Void(1008+i+16*26,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*18,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*18,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-2", i);
                CreateUnit(1, "Big Sniping Missile", "2-4", i);
                CreateUnit(1, "Big Sniping Missile", "2-6", i);
                CreateUnit(1, "Big Sniping Missile", "2-8", i);
                CreateUnit(1, "Big Sniping Missile", "2-10", i);
                CreateUnit(1, "Big Sniping Missile", "2-12", i);
                SetVoid(1008+i+16*18,SetTo,3);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*18,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-1", i);
                CreateUnit(1, "Big Sniping Missile", "2-3", i);
                CreateUnit(1, "Big Sniping Missile", "2-5", i);
                CreateUnit(1, "Big Sniping Missile", "2-7", i);
                CreateUnit(1, "Big Sniping Missile", "2-9", i);
                CreateUnit(1, "Big Sniping Missile", "2-11", i);
                CreateUnit(1, "Big Sniping Missile", "2-13", i);
                SetVoid(1008+i+16*18,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*18,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Big Sniping Missile", "2-2", i);
                CreateUnit(1, "Big Sniping Missile", "2-4", i);
                CreateUnit(1, "Big Sniping Missile", "2-6", i);
                CreateUnit(1, "Big Sniping Missile", "2-8", i);
                CreateUnit(1, "Big Sniping Missile", "2-10", i);
                CreateUnit(1, "Big Sniping Missile", "2-12", i);
                SetVoid(1008+i+16*18,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    for i = 0, 3 do -- 사커널 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Side Builder Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Side Builder Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Side Builder Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(1600+i+8*23,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 3 do -- 사커널
    local k = i+1
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*23,Exactly,0); Void(1000+i+16*23,Exactly,0);
            Void(1600+i+8*23,AtLeast,1);
        },
        actions = {
            SetVoid(1600+i+8*23,Subtract,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Builder Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait(73, 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Builder Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait(73, 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Builder Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait(73, 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Builder Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait(73, 1500);
            SetCp(i);
            SetVoid(1008+i+16*23,SetTo,1000);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*23,AtLeast,1)},{SetSwitch("Switch 63",Clear)
        ,SetLoc("ProbeS",0,SetTo,512)
        ,SetLoc("ProbeS",4,SetTo,0)
        ,SetLoc("ProbeS",8,SetTo,576)
        ,SetLoc("ProbeS",12,SetTo,0)
    })
    CRead(i,_Loc("ProbeS",4),_Loc(k.."P",4),864,0xFFFF)
    CRead(i,_Loc("ProbeS",12),_Loc(k.."P",12),864,0xFFFF)
    
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,1000); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger {
        players = {i},
        conditions = {
            Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
            Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); Void(1008+i+16*14,Exactly,0); Void(1008+i+16*15,Exactly,0); Void(1008+i+16*16,Exactly,0);
        },
        actions = {
            SetSwitch("Switch 63",Set);
            PreserveTrigger();
        }
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
            Switch("Switch 63",Set); Void(1008+i+16*17,Exactly,0); Void(1008+i+16*18,Exactly,0); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*24,Exactly,0); Void(1008+i+16*25,Exactly,0); Void(1008+i+16*26,Exactly,0);
        },
        actions = {
            SetVoid(1008+i+16*23,SetTo,2);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,2); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,3);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,3); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,4);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,4); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,5);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,5); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,6);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,6); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,7);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,7); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,8);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,8); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,9);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,9); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,10);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,10); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,11);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,11); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,12);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,12); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,13);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,13); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,14);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,14); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,15);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,15); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,16);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,16); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,0);
        },
        flag = {Preserved}
    }
    
    
    CIfEnd()
    end
    


    for i = 4, 7 do -- 사커널 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Side Builder Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Side Builder Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Side Builder Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(1600+i+8*23,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 사커널
    local k = i+1
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*23,Exactly,0); Void(1000+i+16*23,Exactly,0);
            Void(1600+i+8*23,AtLeast,1);
        },
        actions = {
            SetVoid(1600+i+8*23,Subtract,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Builder Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait(73, 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Builder Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait(73, 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Builder Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait(73, 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Side Builder Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait(73, 1500);
            SetCp(i);
            SetVoid(1008+i+16*23,SetTo,1000);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*23,AtLeast,1)},{SetSwitch("Switch 63",Clear)
        ,SetLoc("ProbeS",0,SetTo,512)
        ,SetLoc("ProbeS",4,SetTo,0)
        ,SetLoc("ProbeS",8,SetTo,576)
        ,SetLoc("ProbeS",12,SetTo,0)
    })
    CRead(i,_Loc("ProbeS",4),_Loc(k.."P",4),0,0xFFFF)
    CRead(i,_Loc("ProbeS",12),_Loc(k.."P",12),0,0xFFFF)
    DoActionsX(i,{SetLoc("ProbeS",4,Subtract,864),SetLoc("ProbeS",12,Subtract,864)})

    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,1000); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger {
        players = {i},
        conditions = {
            Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
            Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); Void(1008+i+16*14,Exactly,0); Void(1008+i+16*15,Exactly,0); Void(1008+i+16*16,Exactly,0);
        },
        actions = {
            SetSwitch("Switch 63",Set);
            PreserveTrigger();
        }
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
            Switch("Switch 63",Set); Void(1008+i+16*17,Exactly,0); Void(1008+i+16*18,Exactly,0); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*24,Exactly,0); Void(1008+i+16*25,Exactly,0); Void(1008+i+16*26,Exactly,0);
        },
        actions = {
            SetVoid(1008+i+16*23,SetTo,2);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,2); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,3);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,3); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,4);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,4); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,5);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,5); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,6);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,6); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,7);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,7); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,8);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,8); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,9);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,9); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,10);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,10); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,11);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,11); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,12);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,12); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,13);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,13); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,14);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,14); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,15);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,15); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,16);
            SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
        },
        flag = {Preserved}
    }
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {
            Void(1008+i+16*23,Exactly,16); 
            Void(1000+i,Exactly,0); 
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Mini Missile", "ProbeS", i);
            SetVoid(1008+i+16*23,SetTo,0);
        },
        flag = {Preserved}
    }
    CIfEnd()
    end
    
    
    
    
    for i = 0, 3 do -- 커널 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Builder Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Builder Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Builder Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*9,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 3 do -- 커널
    local k = i+1
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*19,Exactly,0); Void(1000+i+16*19,Exactly,0);
            Void(201+i+8*9,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*9,Subtract,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Builder Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Builder Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Builder Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Builder Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Missile", k.."P", i);
            SetVoid(1008+i+16*19,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*19,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); Void(1008+i+16*14,Exactly,0); Void(1008+i+16*15,Exactly,0); Void(1008+i+16*16,Exactly,0);
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*17,Exactly,0); Void(1008+i+16*18,Exactly,0); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*23,Exactly,0); Void(1008+i+16*24,Exactly,0); Void(1008+i+16*25,Exactly,0); Void(1008+i+16*26,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*19,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,3);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,5);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,6);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,7);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,8);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,9);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,10);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,11);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,12);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,12); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,13);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,13); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,14);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,14); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,15);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,15); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,16);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,16); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,17);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,17); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,18);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,18); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,19);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,19); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    for i = 4, 7 do -- 커널 스택
    local k = i+1
    Trigger { -- No comment (F2080344)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Builder Missile [U]");
        },
        actions = {
            MoveLocation(k.."ZP", "Builder Missile [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Builder Missile [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetVoid(201+i+8*9,Add,1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16미사일 발사!", 4);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 커널
    local k = i+1
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*19,Exactly,0); Void(1000+i+16*19,Exactly,0);
            Void(201+i+8*9,AtLeast,1);
        },
        actions = {
            SetVoid(201+i+8*9,Subtract,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Builder Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Builder Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Builder Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Builder Missile [U] \x16이 감지되었습니다.", 4);
            TalkingPortrait("Fast Missile", 1500);
            SetCp(i);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Fast Missile", k.."P", i);
            SetVoid(1008+i+16*19,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*19,AtLeast,1)},{SetSwitch("Switch 63",Clear)})
        
        Trigger {
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
                Void(1008+i+16*10,Exactly,0); Void(1008+i+16*11,Exactly,0); Void(1008+i+16*12,Exactly,0); Void(1008+i+16*13,Exactly,0); Void(1008+i+16*14,Exactly,0); Void(1008+i+16*15,Exactly,0); Void(1008+i+16*16,Exactly,0);
            },
            actions = {
                SetSwitch("Switch 63",Set);
                PreserveTrigger();
            }
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,1);  Void(1008+i+16*20,Exactly,0); 
                Switch("Switch 63",Set); Void(1008+i+16*17,Exactly,0); Void(1008+i+16*18,Exactly,0); Void(1008+i+16*21,Exactly,0); Void(1008+i+16*22,Exactly,0); Void(1008+i+16*23,Exactly,0); Void(1008+i+16*24,Exactly,0); Void(1008+i+16*25,Exactly,0); Void(1008+i+16*26,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*19,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,3);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,5);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,6);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,7);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,8);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,9);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,10);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,11);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,12);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,12); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,13);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,13); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,14);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,14); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,15);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,15); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,16);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,16); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,17);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,17); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,18);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,18); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,19);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*19,Exactly,19); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", k.."P", i);
                SetVoid(1008+i+16*19,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    




    for i = 0, 3 do -- 타임락
        local k = i+1
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(673,Exactly,0);
                Void(177+0,Exactly,0);
                Void(177+1,Exactly,0);
                Void(177+2,Exactly,0);
                Void(177+3,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Time Lock [U]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                MoveLocation(k.."ZP", "Time Lock [U]", CurrentPlayer, "Anywhere");
                RemoveUnitAt(1, "Time Lock [U]", k.."ZP", CurrentPlayer);
                CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
                DisplayText("\x16미사일의 시간을 번갈아가며 정지시킵니다. (3초후 적용)", 4);
                SetVoid(673,SetTo,24*(32+3));
                SetVoid(675,SetTo,0);
                SetVoid(679,SetTo,24*3);
                SetVoid(681,SetTo,i);
                SetCp(4);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 감지되었습니다.\r\n\x05잠시 후, 적 미사일의 시간이 왜곡됩니다.", 4);
                TalkingPortrait(152, 1500);
                SetCp(5);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 감지되었습니다.\r\n\x05잠시 후, 적 미사일의 시간이 왜곡됩니다.", 4);
                TalkingPortrait(152, 1500);
                SetCp(6);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 감지되었습니다.\r\n\x05잠시 후, 적 미사일의 시간이 왜곡됩니다.", 4);
                TalkingPortrait(152, 1500);
                SetCp(7);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 감지되었습니다.\r\n\x05잠시 후, 적 미사일의 시간이 왜곡됩니다.", 4);
                TalkingPortrait(152, 1500);
                SetCp(i);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(673,AtLeast,1);
                Void(177+0,Exactly,0);
                Void(177+1,Exactly,0);
                Void(177+2,Exactly,0);
                Void(177+3,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Time Lock [U]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                MoveLocation(k.."ZP", "Time Lock [U]", CurrentPlayer, "Anywhere");
                RemoveUnitAt(1, "Time Lock [U]", k.."ZP", CurrentPlayer);
                CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
                DisplayText("\x16미사일이 번갈아가며 멈추는 시간이 늘어납니다.", 4);
                SetVoid(673,Add,24*(32));
                SetVoid(681,SetTo,i);
                SetCp(4);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 감지되었습니다.\r\n\x05적 미사일의 시간왜곡 지속시간이 늘어납니다.", 4);
                TalkingPortrait(152, 1500);
                SetCp(5);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 감지되었습니다.\r\n\x05적 미사일의 시간왜곡 지속시간이 늘어납니다.", 4);
                TalkingPortrait(152, 1500);
                SetCp(6);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 감지되었습니다.\r\n\x05적 미사일의 시간왜곡 지속시간이 늘어납니다.", 4);
                TalkingPortrait(152, 1500);
                SetCp(7);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 감지되었습니다.\r\n\x05적 미사일의 시간왜곡 지속시간이 늘어납니다.", 4);
                TalkingPortrait(152, 1500);
                SetCp(i);
                PreserveTrigger();
            },
        }
        for j = 0, 3 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Time Lock [U]","Anywhere");
                },
                actions = {
                    MoveLocation(k.."ZP", "Time Lock [U]", CurrentPlayer, "Anywhere");
                    RemoveUnitAt(1, "Time Lock [U]", k.."ZP", CurrentPlayer);
                    CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, TimeLockOre, Ore);
                    PreserveTrigger();
                },
            }
        end
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(673,Exactly,24*3);
                Void(681,Exactly,i);
            },
            actions = {
                SetCp(4);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 잠시후 해제됩니다.", 4);
                SetCp(5);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 잠시후 해제됩니다.", 4);
                SetCp(6);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 잠시후 해제됩니다.", 4);
                SetCp(7);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 잠시후 해제됩니다.", 4);
                SetCp(i);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 잠시후 해제됩니다.", 4);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(673,Exactly,1);
                Void(681,Exactly,i);
            },
            actions = {
                SetCp(4);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 해제되었습니다.", 4);
                SetCp(5);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 해제되었습니다.", 4);
                SetCp(6);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 해제되었습니다.", 4);
                SetCp(7);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 해제되었습니다.", 4);
                SetCp(i);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 해제되었습니다.", 4);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(679,Exactly,1);
                Void(681,Exactly,i);
            },
            actions = {
                SetCp(4);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                SetCp(5);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                SetCp(6);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                SetCp(7);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                SetCp(i);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                PreserveTrigger();
            },
        }
    end


    for i = 4, 7 do -- 타임락
        local k = i+1
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(674,Exactly,0);
                Void(177+4,Exactly,0);
                Void(177+5,Exactly,0);
                Void(177+6,Exactly,0);
                Void(177+7,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Time Lock [U]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                MoveLocation(k.."ZP", "Time Lock [U]", CurrentPlayer, "Anywhere");
                RemoveUnitAt(1, "Time Lock [U]", k.."ZP", CurrentPlayer);
                CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
                DisplayText("\x16미사일의 시간을 번갈아가며 정지시킵니다. (3초후 적용)", 4);
                SetVoid(674,SetTo,24*(32+3));
                SetVoid(676,SetTo,0);
                SetVoid(680,SetTo,24*3);
                SetVoid(682,SetTo,i);
                SetCp(0);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 감지되었습니다.\r\n\x05잠시 후, 적 미사일의 시간이 왜곡됩니다.", 4);
                TalkingPortrait(152, 1500);
                SetCp(1);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 감지되었습니다.\r\n\x05잠시 후, 적 미사일의 시간이 왜곡됩니다.", 4);
                TalkingPortrait(152, 1500);
                SetCp(2);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 감지되었습니다.\r\n\x05잠시 후, 적 미사일의 시간이 왜곡됩니다.", 4);
                TalkingPortrait(152, 1500);
                SetCp(3);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 감지되었습니다.\r\n\x05잠시 후, 적 미사일의 시간이 왜곡됩니다.", 4);
                TalkingPortrait(152, 1500);
                SetCp(i);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(674,AtLeast,1);
                Void(177+4,Exactly,0);
                Void(177+5,Exactly,0);
                Void(177+6,Exactly,0);
                Void(177+7,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Time Lock [U]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                MoveLocation(k.."ZP", "Time Lock [U]", CurrentPlayer, "Anywhere");
                RemoveUnitAt(1, "Time Lock [U]", k.."ZP", CurrentPlayer);
                CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
                DisplayText("\x16미사일이 번갈아가며 멈추는 시간이 늘어납니다.", 4);
                SetVoid(674,Add,24*(32));
                SetVoid(682,SetTo,i);
                SetCp(0);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 감지되었습니다.\r\n\x05적 미사일의 시간왜곡 지속시간이 늘어납니다.", 4);
                TalkingPortrait(152, 1500);
                SetCp(1);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 감지되었습니다.\r\n\x05적 미사일의 시간왜곡 지속시간이 늘어납니다.", 4);
                TalkingPortrait(152, 1500);
                SetCp(2);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 감지되었습니다.\r\n\x05적 미사일의 시간왜곡 지속시간이 늘어납니다.", 4);
                TalkingPortrait(152, 1500);
                SetCp(3);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 감지되었습니다.\r\n\x05적 미사일의 시간왜곡 지속시간이 늘어납니다.", 4);
                TalkingPortrait(152, 1500);
                SetCp(i);
                PreserveTrigger();
            },
        }
        for j = 4, 7 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Time Lock [U]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    MoveLocation(k.."ZP", "Time Lock [U]", CurrentPlayer, "Anywhere");
                    RemoveUnitAt(1, "Time Lock [U]", k.."ZP", CurrentPlayer);
                    CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, TimeLockOre, Ore);
                    PreserveTrigger();
                },
            }
        end
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(674,Exactly,24*3);
                Void(682,Exactly,i);
            },
            actions = {
                SetCp(0);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 잠시후 해제됩니다.", 4);
                SetCp(1);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 잠시후 해제됩니다.", 4);
                SetCp(2);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 잠시후 해제됩니다.", 4);
                SetCp(3);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 잠시후 해제됩니다.", 4);
                SetCp(i);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 잠시후 해제됩니다.", 4);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(674,Exactly,1);
                Void(682,Exactly,i);
            },
            actions = {
                SetCp(0);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 해제되었습니다.", 4);
                SetCp(1);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 해제되었습니다.", 4);
                SetCp(2);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 해제되었습니다.", 4);
                SetCp(3);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 해제되었습니다.", 4);
                SetCp(i);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                DisplayText(ColorCode[i+1].."Time Lock [U] \x16이 해제되었습니다.", 4);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(680,Exactly,1);
                Void(682,Exactly,i);
            },
            actions = {
                SetCp(0);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                SetCp(1);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                SetCp(2);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                SetCp(3);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                SetCp(i);
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                PreserveTrigger();
            },
        }
    end





















    
    
    for i = 0, 7 do -- 슈노 스택
    local k = i+1
    Trigger { -- No comment (1D676857)
        players = {i},
        conditions = {
            Void(324+i,Exactly,0);
            Bring(CurrentPlayer, AtLeast, 1, "Hyper Nova [U]", "전체필드");
        },
        actions = {
            PlayWAV("staredit\\wav\\Notice.wav");
            MoveLocation(k.."ZP", "Hyper Nova [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Hyper Nova [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            DisplayText("\x16 Hyper Nova 충전완료", 4);
            SetVoid(324+i,SetTo,1);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 3 do -- 슈노 : Clear -> 트위/클/슈클/수폭/코발트/자기장/리체 + 미사일 삭제
    local k = i+1
    Trigger { -- No comment (1D676857)
        players = {i},
        conditions = {
            Void(177+0,Exactly,0);
            Void(177+1,Exactly,0);
            Void(177+2,Exactly,0);
            Void(177+3,Exactly,0);
            Void(3,Exactly,0);
            Void(324+i,Exactly,1);
            Bring(CurrentPlayer, AtLeast, 1, "Hyper Nova [U]", "전체필드");
        },
        actions = {
            PlayWAV("staredit\\wav\\Notice.wav");
            MoveLocation(k.."ZP", "Hyper Nova [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Hyper Nova [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetCp(0);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText(ColorCode[i+1].."Player Team1\x16이 \x1FHyper Nova\x16를 시전했습니다.\r\n\x1C*매우 강력한 미사일이므로 주의하시기 바랍니다.", 4);
            SetCp(1);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText(ColorCode[i+1].."Player Team1\x16이 \x1FHyper Nova\x16를 시전했습니다.\r\n\x1C*매우 강력한 미사일이므로 주의하시기 바랍니다.", 4);
            SetCp(2);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText(ColorCode[i+1].."Player Team1\x16이 \x1FHyper Nova\x16를 시전했습니다.\r\n\x1C*매우 강력한 미사일이므로 주의하시기 바랍니다.", 4);
            SetCp(3);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText(ColorCode[i+1].."Player Team1\x16이 \x1FHyper Nova\x16를 시전했습니다.\r\n\x1C*매우 강력한 미사일이므로 주의하시기 바랍니다.", 4);
            SetCp(4);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText(ColorCode[i+1].."Player Team1\x16이 \x1FHyper Nova\x16를 시전했습니다.\r\n\x1C*매우 강력한 미사일이므로 주의하시기 바랍니다.", 4);
            SetCp(5);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText(ColorCode[i+1].."Player Team1\x16이 \x1FHyper Nova\x16를 시전했습니다.\r\n\x1C*매우 강력한 미사일이므로 주의하시기 바랍니다.", 4);
            SetCp(6);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText(ColorCode[i+1].."Player Team1\x16이 \x1FHyper Nova\x16를 시전했습니다.\r\n\x1C*매우 강력한 미사일이므로 주의하시기 바랍니다.", 4);
            SetCp(7);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText(ColorCode[i+1].."Player Team1\x16이 \x1FHyper Nova\x16를 시전했습니다.\r\n\x1C*매우 강력한 미사일이므로 주의하시기 바랍니다.", 4);
            SetCp(i);
            SetVoid(324+i,SetTo,0);
            SetVoid(177+i,SetTo,1);
            PreserveTrigger();
        },
    }
        Trigger { -- No comment (1D676857)
            players = {i},
            conditions = {
                Void(3,AtLeast,1);
                Void(324+i,Exactly,1);
                Bring(CurrentPlayer, AtLeast, 1, "Hyper Nova [U]", "전체필드");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                MoveLocation(k.."ZP", "Hyper Nova [U]", CurrentPlayer, "Anywhere");
                RemoveUnitAt(1, "Hyper Nova [U]", k.."ZP", CurrentPlayer);
                CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
                DisplayText("\x16코발트미사일 사용도중에 사용할수 없습니다.", 4);
                SetResources(i,Add,NovaOre,Ore);
                PreserveTrigger();
            },
        }
        for j = 0, 3 do
            Trigger { -- No comment (1D676857)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Void(324+i,Exactly,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Hyper Nova [U]", "전체필드");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    MoveLocation(k.."ZP", "Hyper Nova [U]", CurrentPlayer, "Anywhere");
                    RemoveUnitAt(1, "Hyper Nova [U]", k.."ZP", CurrentPlayer);
                    CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
                    DisplayText("\x1FHyper Nova \x16가 이미 시전중입니다.", 4);
                    SetResources(i,Add,NovaOre,Ore);
                    PreserveTrigger();
                },
            }
        end
    end
    for i = 4, 7 do -- 슈노 : Clear -> 트위/클/슈클/수폭/코발트/자기장/리체 + 미사일 삭제
    local k = i+1
    Trigger { -- No comment (1D676857)
        players = {i},
        conditions = {
            Void(177+4,Exactly,0);
            Void(177+5,Exactly,0);
            Void(177+6,Exactly,0);
            Void(177+7,Exactly,0);
            Void(4,Exactly,0);
            Void(324+i,Exactly,1);
            Bring(CurrentPlayer, AtLeast, 1, "Hyper Nova [U]", "전체필드");
        },
        actions = {
            PlayWAV("staredit\\wav\\Notice.wav");
            MoveLocation(k.."ZP", "Hyper Nova [U]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Hyper Nova [U]", k.."ZP", CurrentPlayer);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            SetCp(0);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText(ColorCode[i+1].."Player Team2\x16이 \x1FHyper Nova\x16를 시전했습니다.\r\n\x1C*매우 강력한 미사일이므로 주의하시기 바랍니다.", 4);
            SetCp(1);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText(ColorCode[i+1].."Player Team2\x16이 \x1FHyper Nova\x16를 시전했습니다.\r\n\x1C*매우 강력한 미사일이므로 주의하시기 바랍니다.", 4);
            SetCp(2);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText(ColorCode[i+1].."Player Team2\x16이 \x1FHyper Nova\x16를 시전했습니다.\r\n\x1C*매우 강력한 미사일이므로 주의하시기 바랍니다.", 4);
            SetCp(3);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText(ColorCode[i+1].."Player Team2\x16이 \x1FHyper Nova\x16를 시전했습니다.\r\n\x1C*매우 강력한 미사일이므로 주의하시기 바랍니다.", 4);
            SetCp(4);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText(ColorCode[i+1].."Player Team2\x16이 \x1FHyper Nova\x16를 시전했습니다.\r\n\x1C*매우 강력한 미사일이므로 주의하시기 바랍니다.", 4);
            SetCp(5);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText(ColorCode[i+1].."Player Team2\x16이 \x1FHyper Nova\x16를 시전했습니다.\r\n\x1C*매우 강력한 미사일이므로 주의하시기 바랍니다.", 4);
            SetCp(6);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText(ColorCode[i+1].."Player Team2\x16이 \x1FHyper Nova\x16를 시전했습니다.\r\n\x1C*매우 강력한 미사일이므로 주의하시기 바랍니다.", 4);
            SetCp(7);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText(ColorCode[i+1].."Player Team2\x16이 \x1FHyper Nova\x16를 시전했습니다.\r\n\x1C*매우 강력한 미사일이므로 주의하시기 바랍니다.", 4);
            SetCp(i);
            SetVoid(324+i,SetTo,0);
            SetVoid(177+i,SetTo,1);
            PreserveTrigger();
        },
    }
        Trigger { -- No comment (1D676857)
            players = {i},
            conditions = {
                Void(4,AtLeast,1);
                Void(324+i,Exactly,1);
                Bring(CurrentPlayer, AtLeast, 1, "Hyper Nova [U]", "전체필드");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                MoveLocation(k.."ZP", "Hyper Nova [U]", CurrentPlayer, "Anywhere");
                RemoveUnitAt(1, "Hyper Nova [U]", k.."ZP", CurrentPlayer);
                CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
                DisplayText("\x16코발트미사일 사용도중에 사용할수 없습니다.", 4);
                SetResources(i,Add,NovaOre,Ore);
                PreserveTrigger();
            },
        }
        for j = 4, 7 do
            Trigger { -- No comment (1D676857)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Void(324+i,Exactly,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Hyper Nova [U]", "전체필드");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    MoveLocation(k.."ZP", "Hyper Nova [U]", CurrentPlayer, "Anywhere");
                    RemoveUnitAt(1, "Hyper Nova [U]", k.."ZP", CurrentPlayer);
                    CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
                    DisplayText("\x1FHyper Nova \x16가 이미 시전중입니다.", 4);
                    SetResources(i,Add,NovaOre,Ore);
                    PreserveTrigger();
                },
            }
        end
    end
end