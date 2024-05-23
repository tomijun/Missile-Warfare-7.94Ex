function SUB_SCVMissile()
    -- SCV Missile Set -----------------------------------------------------------------------------------
-- 건물 순서   사이드 엔베 > 엔베 > 베럭 > 시리얼볼 (20 1 2 3)

    for i = 0, 3 do -- 사이드 엔베
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*20,Exactly,0); Void(1000+i+16*20,Exactly,0);
            Bring(CurrentPlayer, AtLeast, 1, "Side Edge Missile [B]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Side Edge Missile [B]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",0,SetTo,512);
            SetLoc("ProbeS",8,SetTo,576);

            SetLoc("ProbeS",4,SetTo,1584-64*0);
            SetLoc("ProbeS",12,SetTo,1648-64*0);
            CreateUnit(1, "Missile☆", "ProbeS", i);
            SetLoc("ProbeS",4,SetTo,1584-64*5);
            SetLoc("ProbeS",12,SetTo,1648-64*5);
            CreateUnit(1, "Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*20,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,Void(1008+i+16*20,AtLeast,1))
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*20,Exactly,1); 
                
            },
            actions = {
                SetVoid(1008+i+16*20,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*20,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,1584-64*0);
                SetLoc("ProbeS",12,SetTo,1648-64*0);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,1584-64*5);
                SetLoc("ProbeS",12,SetTo,1648-64*5);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*20,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*20,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,1584-64*0);
                SetLoc("ProbeS",12,SetTo,1648-64*0);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,1584-64*5);
                SetLoc("ProbeS",12,SetTo,1648-64*5);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*20,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*20,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,1584-64*0);
                SetLoc("ProbeS",12,SetTo,1648-64*0);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,1584-64*5);
                SetLoc("ProbeS",12,SetTo,1648-64*5);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*20,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    for i = 4, 7 do -- 사이드엔베
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*20,Exactly,0); Void(1000+i+16*20,Exactly,0);
            Bring(CurrentPlayer, AtLeast, 1, "Side Edge Missile [B]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Side Edge Missile [B]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",0,SetTo,512);
            SetLoc("ProbeS",8,SetTo,576);

            SetLoc("ProbeS",4,SetTo,400+64*0);
            SetLoc("ProbeS",12,SetTo,464+64*0);
            CreateUnit(1, "Missile☆", "ProbeS", i);
            SetLoc("ProbeS",4,SetTo,400+64*5);
            SetLoc("ProbeS",12,SetTo,464+64*5);
            CreateUnit(1, "Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*20,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,Void(1008+i+16*20,AtLeast,1))
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*20,Exactly,1); 
                
            },
            actions = {
                SetVoid(1008+i+16*20,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*20,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,400+64*0);
                SetLoc("ProbeS",12,SetTo,464+64*0);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,400+64*5);
                SetLoc("ProbeS",12,SetTo,464+64*5);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*20,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*20,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,400+64*0);
                SetLoc("ProbeS",12,SetTo,464+64*0);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,400+64*5);
                SetLoc("ProbeS",12,SetTo,464+64*5);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*20,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*20,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,400+64*0);
                SetLoc("ProbeS",12,SetTo,464+64*0);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,400+64*5);
                SetLoc("ProbeS",12,SetTo,464+64*5);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*20,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end

    for i = 0, 3 do -- 엔베
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*1,Exactly,0); Void(1000+i+16*1,Exactly,0);
            Bring(CurrentPlayer, AtLeast, 1, "Side Missile [B]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Side Missile [B]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",4,SetTo,368);
            SetLoc("ProbeS",12,SetTo,816);

            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            CreateUnit(1, "Fast Missile☆", "ProbeS", i);
            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            CreateUnit(1, "Fast Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*1,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,Void(1008+i+16*1,AtLeast,1))
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,1); 
                Void(1008+i+16*20,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*1,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);

                SetLoc("ProbeS",0,SetTo,640+64*0);
                SetLoc("ProbeS",8,SetTo,704+64*0);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*11);
                SetLoc("ProbeS",8,SetTo,704+64*11);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*1,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);

                SetLoc("ProbeS",0,SetTo,640+64*0);
                SetLoc("ProbeS",8,SetTo,704+64*0);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*11);
                SetLoc("ProbeS",8,SetTo,704+64*11);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*1,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);

                SetLoc("ProbeS",0,SetTo,640+64*0);
                SetLoc("ProbeS",8,SetTo,704+64*0);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*11);
                SetLoc("ProbeS",8,SetTo,704+64*11);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*1,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    for i = 4, 7 do -- 엔베
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*1,Exactly,0); Void(1000+i+16*1,Exactly,0);
            Bring(CurrentPlayer, AtLeast, 1, "Side Missile [B]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Side Missile [B]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",4,SetTo,1232);
            SetLoc("ProbeS",12,SetTo,1680);

            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            CreateUnit(1, "Fast Missile☆", "ProbeS", i);
            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            CreateUnit(1, "Fast Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*1,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,Void(1008+i+16*1,AtLeast,1))
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,1); 
                Void(1008+i+16*20,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*1,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);

                SetLoc("ProbeS",0,SetTo,640+64*0);
                SetLoc("ProbeS",8,SetTo,704+64*0);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*11);
                SetLoc("ProbeS",8,SetTo,704+64*11);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*1,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);

                SetLoc("ProbeS",0,SetTo,640+64*0);
                SetLoc("ProbeS",8,SetTo,704+64*0);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*11);
                SetLoc("ProbeS",8,SetTo,704+64*11);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*1,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*1,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);

                SetLoc("ProbeS",0,SetTo,640+64*0);
                SetLoc("ProbeS",8,SetTo,704+64*0);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*11);
                SetLoc("ProbeS",8,SetTo,704+64*11);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*1,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    for i = 0, 3 do -- 베럭 
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*2,Exactly,0); Void(1000+i+16*2,Exactly,0);
            Bring(CurrentPlayer, AtLeast, 1, "Clock Missile Set [B]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Clock Missile Set [B]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Refractor", "1-1", i);
            CreateUnit(1, "Refractor", "1-5", i);
            CreateUnit(1, "Refractor", "1-9", i);
            CreateUnit(1, "Refractor", "1-13", i);
            SetVoid(1008+i+16*2,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,Void(1008+i+16*2,AtLeast,1))
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*2,Exactly,1); 
                Void(1008+i+16*20,Exactly,0); Void(1008+i+16*1,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*2,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*2,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Refractor", "1-3", i);
                CreateUnit(1, "Refractor", "1-7", i);
                CreateUnit(1, "Refractor", "1-11", i);
                SetVoid(1008+i+16*2,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    for i = 4, 7 do -- 베럭 
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*2,Exactly,0); Void(1000+i+16*2,Exactly,0);
            Bring(CurrentPlayer, AtLeast, 1, "Clock Missile Set [B]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Clock Missile Set [B]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(1, "Refractor", "2-1", i);
            CreateUnit(1, "Refractor", "2-5", i);
            CreateUnit(1, "Refractor", "2-9", i);
            CreateUnit(1, "Refractor", "2-13", i);
            SetVoid(1008+i+16*2,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,Void(1008+i+16*2,AtLeast,1))
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*2,Exactly,1); 
                Void(1008+i+16*20,Exactly,0); Void(1008+i+16*1,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*2,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*2,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Refractor", "2-3", i);
                CreateUnit(1, "Refractor", "2-7", i);
                CreateUnit(1, "Refractor", "2-11", i);
                SetVoid(1008+i+16*2,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    for i = 0, 3 do -- 시리얼볼 (커맨드)
    local k = i+1
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*3,Exactly,0); Void(1000+i+16*3,Exactly,0);
            Bring(CurrentPlayer, AtLeast, 1, "Serial Ball Missile [B]", "전체필드");
        },
        actions = {
            MoveLocation("Serial"..k, "Serial Ball Missile [B]", CurrentPlayer, "전체필드");
            RemoveUnitAt(1, "Serial Ball Missile [B]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(14, "Fast Missile", "Serial"..k, i);
            SetVoid(1008+i+16*3,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,Void(1008+i+16*3,AtLeast,1))
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*3,Exactly,1); 
                Void(1008+i+16*20,Exactly,0); Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*3,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*3,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(14, "Fast Missile", "Serial"..k, i);
                SetVoid(1008+i+16*3,SetTo,3);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*3,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(14, "Fast Missile", "Serial"..k, i);
                SetVoid(1008+i+16*3,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*3,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(14, "Fast Missile", "Serial"..k, i);
                SetVoid(1008+i+16*3,SetTo,5);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*3,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(14, "Fast Missile", "Serial"..k, i);
                SetVoid(1008+i+16*3,SetTo,6);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*3,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(14, "Fast Missile", "Serial"..k, i);
                SetVoid(1008+i+16*3,SetTo,7);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*3,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(14, "Fast Missile", "Serial"..k, i);
                SetVoid(1008+i+16*3,SetTo,8);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*3,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(14, "Fast Missile", "Serial"..k, i);
                SetVoid(1008+i+16*3,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    for i = 4, 7 do -- 시리얼볼 (커맨드)
    local k = i+1
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*3,Exactly,0); Void(1000+i+16*3,Exactly,0);
            Bring(CurrentPlayer, AtLeast, 1, "Serial Ball Missile [B]", "전체필드");
        },
        actions = {
            MoveLocation("Serial"..k, "Serial Ball Missile [B]", CurrentPlayer, "전체필드");
            RemoveUnitAt(1, "Serial Ball Missile [B]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            CreateUnit(14, "Fast Missile", "Serial"..k, i);
            SetVoid(1008+i+16*3,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,Void(1008+i+16*3,AtLeast,1))
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*3,Exactly,1); 
                Void(1008+i+16*20,Exactly,0); Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*3,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*3,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(14, "Fast Missile", "Serial"..k, i);
                SetVoid(1008+i+16*3,SetTo,3);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*3,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(14, "Fast Missile", "Serial"..k, i);
                SetVoid(1008+i+16*3,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*3,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(14, "Fast Missile", "Serial"..k, i);
                SetVoid(1008+i+16*3,SetTo,5);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*3,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(14, "Fast Missile", "Serial"..k, i);
                SetVoid(1008+i+16*3,SetTo,6);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*3,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(14, "Fast Missile", "Serial"..k, i);
                SetVoid(1008+i+16*3,SetTo,7);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*3,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(14, "Fast Missile", "Serial"..k, i);
                SetVoid(1008+i+16*3,SetTo,8);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*3,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(14, "Fast Missile", "Serial"..k, i);
                SetVoid(1008+i+16*3,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    for i = 0, 7 do -- 서플
    local k = i+1
    Trigger { -- B 서플
        players = {i},
        conditions = {
            Command(i, AtLeast, 1, "Slow Missile [B]");
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            MoveLocation(k.."ZP", "Slow Missile [B]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Slow Missile [B]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            CreateUnit(1, "Slow Missile", k.."ZP", i);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 7 do -- 아카데미
    local k = i+1
    Trigger { 
        players = {i},
        conditions = {
            Command(i, AtLeast, 1, "Missile [B]");
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            MoveLocation(k.."ZP", "Missile [B]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Missile [B]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            CreateUnit(1, "Missile", k.."ZP", i);
            PreserveTrigger();
        },
    }
    end
    
    for i = 0, 7 do -- 벙커
    local k = i+1
    Trigger { 
        players = {i},
        conditions = {
            Command(i, AtLeast, 1, "Fast Missile [B]");
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            MoveLocation(k.."ZP", "Fast Missile [B]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Fast Missile [B]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            CreateUnit(1, "Fast Missile", k.."ZP", i);
            PreserveTrigger();
        },
    }
    end
    
    for i = 0, 7 do -- 스타포트
    local k = i+1
    Trigger { 
        players = {i},
        conditions = {
            Command(i, AtLeast, 1, "Refraction Missile [B]");
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            MoveLocation(k.."ZP", "Refraction Missile [B]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Refraction Missile [B]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            CreateUnit(1, "Refractor", k.."ZP", i);
            PreserveTrigger();
        },
    }
    end

    for i = 0, 7 do -- 노라드
        local k = i+1
        Trigger { 
            players = {i},
            conditions = {
                Command(i, AtLeast, 1, "Invisible Missile [B]");
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                MoveLocation(k.."ZP", "Invisible Missile [B]", CurrentPlayer, "Anywhere");
                RemoveUnitAt(1, "Invisible Missile [B]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일 발사!", 4);
                CreateUnitWithProperties(1, "Invisible Missile☆", k.."ZP", i,{
                    clocked = true,
                    burrowed = false,
                    intransit = false,
                    hallucinated = false,
                    invincible = true,
                    hitpoint = 100,
                    shield = 100,
                    energy = 100,
                    resource = 0,
                    hanger = 0,
                });
                PreserveTrigger();
            },
        }
    end

    for i = 0, 7 do -- 머신샵
        local k = i+1
        Trigger { 
            players = {i},
            conditions = {
                Command(i, AtLeast, 1, "Sniping Missile [B]");
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                MoveLocation(k.."ZP", "Sniping Missile [B]", CurrentPlayer, "Anywhere");
                RemoveUnitAt(1, "Sniping Missile [B]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일 발사!", 4);
                CreateUnit(1, "Sniping Missile", k.."ZP", i);
                PreserveTrigger();
            },
        }
    end

    for i = 0, 7 do -- 이온캐논
        local k = i+1
        Trigger { 
            players = {i},
            conditions = {
                Command(i, AtLeast, 1, "Homing Missile [B]");
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                MoveLocation(k.."ZP", "Homing Missile [B]", CurrentPlayer, "Anywhere");
                RemoveUnitAt(1, "Homing Missile [B]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일 발사!", 4);
                CreateUnit(1, "Homing Missile", k.."ZP", i);
                PreserveTrigger();
            },
        }
    end
    
    
    for i = 0, 7 do -- 아머리 : SCV -> Probe
    local k = i+1
    Trigger { -- No comment (35D25167)
        players = {i},
        conditions = {
            Bring(CurrentPlayer, AtLeast, 1, "Builder [B]", "전체필드");
        },
        actions = {
            PlayWAV("staredit\\wav\\Notice.wav");
            MoveLocation(k.."ZP", "Builder [B]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Builder [B]", "전체필드", CurrentPlayer);
            DisplayText("\x16빌더가 업그레이드 되었습니다.", 4);
            CreateUnit(1, "Builder", k.."ZP", CurrentPlayer);
            RemoveUnitAt(1, "Basic Builder", "전체필드", CurrentPlayer);
            PreserveTrigger();
        },
    }
    end
    
    
    
    
    for i = 0, 3 do -- 미러 (터렛) ＃
    local k = i+1
    Trigger { -- No comment (E8887C2E)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Mirror [B]");
            Command(CurrentPlayer, Exactly, 0, "Mirror");
        },
        actions = {
            MoveLocation("p"..k.."m", "Mirror [B]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Mirror [B]", "전체필드", CurrentPlayer);
            CreateUnit(1, "Mirror", "p"..k.."m", CurrentPlayer);
            SetVoid(63+i,SetTo,0);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (BA0F8CB4)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Mirror");
            Void(63+i,AtMost,159*2+1);
        },
        actions = {
            SetVoid(63+i,Add,1);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (BA0F8CB4)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Mirror");
            Void(63+i,AtMost,159*2+1);
            Void(161+i,Exactly,0);
        },
        actions = {
            SetVoid(161+i,SetTo,2);
            CreateUnit(1, "미러레이스", "p"..k.."m", CurrentPlayer);
            KillUnitAt(All, "미러레이스", "Anywhere", CurrentPlayer);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (CA51221F)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Mirror");
            Void(63+i,AtLeast,160*2);
        },
        actions = {
            KillUnitAt(All, "Mirror", "Anywhere", CurrentPlayer);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (D4EF32A3)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Mirror");
        },
        actions = {
            Order("Mirror", CurrentPlayer, "Anywhere", Move, "p"..k.."m");
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (370A65A4)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Mirror");
            Void(63+i,AtMost,159*2+1);
            Bring(Force2, AtLeast, 1, "Men", "p"..k.."m");
        },
        actions = {
            GiveUnits(All, "Mini Missile", Force2, "p"..k.."m", i);
            GiveUnits(All, "Fast Mini Missile", Force2, "p"..k.."m", i);
            GiveUnits(All, "Homing Missile", Force2, "p"..k.."m", i);
            ModifyUnitShields(All,"Homing Missile",i,"p"..k.."m",100);
            GiveUnits(All, "Penetrating Missile★", Force2, "p"..k.."m", i);
            GiveUnits(All, "Invisible Missile☆", Force2, "p"..k.."m", i);
            GiveUnits(All, "Slow Missile", Force2, "p"..k.."m", i);
            GiveUnits(All, "Missile", Force2, "p"..k.."m", i);
            GiveUnits(All, "Fast Missile", Force2, "p"..k.."m", i);
            GiveUnits(All, "Missile☆", Force2, "p"..k.."m", i);
            GiveUnits(All, "Fast Missile☆", Force2, "p"..k.."m", i);
            PreserveTrigger();
        },
    }
    for j = 1, 19 do
        Trigger { -- No comment (B2A7DEDB)
            players = {i},
            conditions = {
                Command(CurrentPlayer, AtLeast, 1, "Mirror");
                Void(63+i,AtLeast,j*16);
                Void(63+i,AtMost,j*16+5);
            },
            actions = {
                PreserveTrigger();
                ModifyUnitHitPoints(All, "Mirror", CurrentPlayer, "Anywhere",100-j*5);
            },
        }
    end
    end
    for i = 4, 7 do -- 미러 (터렛) ＃
    local k = i+1
    Trigger { -- No comment (E8887C2E)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Mirror [B]");
            Command(CurrentPlayer, Exactly, 0, "Mirror");
        },
        actions = {
            MoveLocation("p"..k.."m", "Mirror [B]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Mirror [B]", "전체필드", CurrentPlayer);
            CreateUnit(1, "Mirror", "p"..k.."m", CurrentPlayer);
            SetVoid(63+i,SetTo,0);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (BA0F8CB4)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Mirror");
            Void(63+i,AtMost,159*2+1);
        },
        actions = {
            SetVoid(63+i,Add,1);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (BA0F8CB4)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Mirror");
            Void(63+i,AtMost,159*2+1);
            Void(161+i,Exactly,0);
        },
        actions = {
            SetVoid(161+i,SetTo,2);
            CreateUnit(1, "미러레이스", "p"..k.."m", CurrentPlayer);
            KillUnitAt(All, "미러레이스", "Anywhere", CurrentPlayer);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (CA51221F)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Mirror");
            Void(63+i,AtLeast,160*2);
        },
        actions = {
            KillUnitAt(All, "Mirror", "Anywhere", CurrentPlayer);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (D4EF32A3)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Mirror");
        },
        actions = {
            Order("Mirror", CurrentPlayer, "Anywhere", Move, "p"..k.."m");
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (370A65A4)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Mirror");
            Void(63+i,AtMost,159*2+1);
            Bring(Force1, AtLeast, 1, "Men", "p"..k.."m");
        },
        actions = {
            GiveUnits(All, "Mini Missile", Force1, "p"..k.."m", i);
            GiveUnits(All, "Fast Mini Missile", Force1, "p"..k.."m", i);
            GiveUnits(All, "Homing Missile", Force1, "p"..k.."m", i);
            ModifyUnitShields(All,"Homing Missile",i,"p"..k.."m",100);
            GiveUnits(All, "Penetrating Missile★", Force1, "p"..k.."m", i);
            GiveUnits(All, "Invisible Missile☆", Force1, "p"..k.."m", i);
            GiveUnits(All, "Slow Missile", Force1, "p"..k.."m", i);
            GiveUnits(All, "Missile", Force1, "p"..k.."m", i);
            GiveUnits(All, "Fast Missile", Force1, "p"..k.."m", i);
            GiveUnits(All, "Missile☆", Force1, "p"..k.."m", i);
            GiveUnits(All, "Fast Missile☆", Force1, "p"..k.."m", i);
            PreserveTrigger();
        },
    }
    for j = 1, 19 do
        Trigger { -- No comment (B2A7DEDB)
            players = {i},
            conditions = {
                Command(CurrentPlayer, AtLeast, 1, "Mirror");
                Void(63+i,AtLeast,j*16);
                Void(63+i,AtMost,j*16+15);
            },
            actions = {
                PreserveTrigger();
                ModifyUnitHitPoints(All, "Mirror", CurrentPlayer, "Anywhere",100-j*5);
            },
        }
    end
    end
    
    for i = 0, 3 do -- 리버스 체인 (팩토리)
    Trigger { -- No comment (8017EA17)
        players = {i},
        conditions = {
            Void(177+4,Exactly,0);
            Void(177+5,Exactly,0);
            Void(177+6,Exactly,0);
            Void(177+7,Exactly,0);
            Bring(CurrentPlayer, AtLeast, 1, "Reverse Chain Missile [B]", "전체필드");
        },
        actions = {
            PlayWAV("staredit\\wav\\Notice.wav");
            RemoveUnitAt(1, "Reverse Chain Missile [B]", "전체필드", CurrentPlayer);
            DisplayText("\x16적팀에 강제로 체인 미사일을 시전합니다.", 4);
            SetVoid(72,SetTo,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x1F상대팀에서 Reverse Chain Missile 을 시전하였습니다.\r\n\r\n\r\n", 4);
            SetCp(5);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x1F상대팀에서 Reverse Chain Missile 을 시전하였습니다.\r\n\r\n\r\n", 4);
            SetCp(6);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x1F상대팀에서 Reverse Chain Missile 을 시전하였습니다.\r\n\r\n\r\n", 4);
            SetCp(7);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x1F상대팀에서 Reverse Chain Missile 을 시전하였습니다.\r\n\r\n\r\n", 4);
            SetCp(i);
            PreserveTrigger();
        },
    }
    for j = 0, 3 do
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+j+4,AtLeast,1);
                Bring(CurrentPlayer, AtLeast, 1, "Reverse Chain Missile [B]", "전체필드");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Reverse Chain Missile [B]", "전체필드", CurrentPlayer);
                DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                SetResources(CurrentPlayer, Add, RChainOre, Ore);
                PreserveTrigger();
            },
        }
    end
    end
    for i = 4, 7 do -- 리버스 체인 (팩토리)
    Trigger { -- No comment (8017EA17)
        players = {i},
        conditions = {
            Void(177+0,Exactly,0);
            Void(177+1,Exactly,0);
            Void(177+2,Exactly,0);
            Void(177+3,Exactly,0);
            Bring(CurrentPlayer, AtLeast, 1, "Reverse Chain Missile [B]", "전체필드");
        },
        actions = {
            PlayWAV("staredit\\wav\\Notice.wav");
            RemoveUnitAt(1, "Reverse Chain Missile [B]", "전체필드", CurrentPlayer);
            DisplayText("\x16적팀에 강제로 체인 미사일을 시전합니다.", 4);
            SetVoid(71,SetTo,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x1F상대팀에서 Reverse Chain Missile 을 시전하였습니다.\r\n\r\n\r\n", 4);
            SetCp(1);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x1F상대팀에서 Reverse Chain Missile 을 시전하였습니다.\r\n\r\n\r\n", 4);
            SetCp(2);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x1F상대팀에서 Reverse Chain Missile 을 시전하였습니다.\r\n\r\n\r\n", 4);
            SetCp(3);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x1F상대팀에서 Reverse Chain Missile 을 시전하였습니다.\r\n\r\n\r\n", 4);
            SetCp(i);
            PreserveTrigger();
        },
    }
    for j = 4, 7 do
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+j-4,AtLeast,1);
                Bring(CurrentPlayer, AtLeast, 1, "Reverse Chain Missile [B]", "전체필드");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Reverse Chain Missile [B]", "전체필드", CurrentPlayer);
                DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                SetResources(CurrentPlayer, Add, RChainOre, Ore);
                PreserveTrigger();
            },
        }
    end
    end
    for i = 0, 3 do -- 굴절 보호막 (퍼실리티/자기장)
    Trigger { -- 굴절반환
        players = {i},
        conditions = {
            Bring(CurrentPlayer, AtLeast, 1, "Refraction Defender [B]", "전체필드");
            Void(83,Exactly,0);
        },
        actions = {
            RemoveUnitAt(1, "Refraction Defender [B]", "전체필드", CurrentPlayer);
            DisplayText("\x04굴절보호막사용횟수를 넘어 사용이 불가능합니다.", 4); 
            PlayWAV("staredit\\wav\\Notice.wav");
            SetResources(CurrentPlayer, Add, RDefenderOre, Ore);
            PreserveTrigger();
        },
    }
    
    Trigger { -- No comment (02936480)
        players = {i},
        conditions = {
            Bring(CurrentPlayer, AtLeast, 1, "Refraction Defender [B]", "전체필드");
            Void(83,AtLeast,1);
        },
        actions = {
            PlayWAV("staredit\\wav\\Notice.wav");
            RemoveUnitAt(1, "Refraction Defender [B]", "전체필드", CurrentPlayer);
            DisplayText("\x16우리팀 본진 중앙에 자기장을 형성합니다.", 4);
            SetVoid(83,Subtract,1);
            SetVoid(85,Add,600);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 굴절 보호막 (퍼실리티/자기장)
    Trigger { -- 굴절반환
        players = {i},
        conditions = {
            Bring(CurrentPlayer, AtLeast, 1, "Refraction Defender [B]", "전체필드");
            Void(84,Exactly,0);
        },
        actions = {
            RemoveUnitAt(1, "Refraction Defender [B]", "전체필드", CurrentPlayer);
            DisplayText("\x04굴절보호막사용횟수를 넘어 사용이 불가능합니다.", 4); 
            PlayWAV("staredit\\wav\\Notice.wav");
            SetResources(CurrentPlayer, Add, RDefenderOre, Ore);
            PreserveTrigger();
        },
    }
    
    Trigger { -- No comment (02936480)
        players = {i},
        conditions = {
            Bring(CurrentPlayer, AtLeast, 1, "Refraction Defender [B]", "전체필드");
            Void(84,AtLeast,1);
        },
        actions = {
            PlayWAV("staredit\\wav\\Notice.wav");
            RemoveUnitAt(1, "Refraction Defender [B]", "전체필드", CurrentPlayer);
            DisplayText("\x16우리팀 본진 중앙에 자기장을 형성합니다.", 4);
            SetVoid(84,Subtract,1);
            SetVoid(86,Add,600);
            PreserveTrigger();
        },
    }
    end

    
    for i = 0, 3 do -- 포탈
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(655,Exactly,0);
                Void(177+0,Exactly,0);
                Void(177+1,Exactly,0);
                Void(177+2,Exactly,0);
                Void(177+3,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Portal [B]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Portal [B]", "전체필드", CurrentPlayer);
                DisplayText("\x16상대필드로 연결되는 포탈을 필드 앞쪽에 설치합니다.", 4);
                SetVoid(655,SetTo,24*21);
                SetVoid(657,SetTo,0);
                SetVoid(661,SetTo,i);
                SetCp(4);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Portal \x16이 감지되었습니다.", 4);
                TalkingPortrait("Refractor", 1500);
                SetCp(5);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Portal \x16이 감지되었습니다.", 4);
                TalkingPortrait("Refractor", 1500);
                SetCp(6);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Portal \x16이 감지되었습니다.", 4);
                TalkingPortrait("Refractor", 1500);
                SetCp(7);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Portal \x16이 감지되었습니다.", 4);
                TalkingPortrait("Refractor", 1500);
                SetCp(i);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(655,AtLeast,1);
                Void(177+0,Exactly,0);
                Void(177+1,Exactly,0);
                Void(177+2,Exactly,0);
                Void(177+3,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Portal [B]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Portal [B]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일 포탈 지속시간이 연장되었습니다.", 4);
                SetVoid(655,Add,24*21);
                SetVoid(661,SetTo,i);
                PreserveTrigger();
            },
        }
        for j = 0, 3 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Portal [B]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Portal [B]", "전체필드", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, PortalOre, Ore);
                    PreserveTrigger();
                },
            }
        end
    end
    for i = 4, 7 do -- 포탈
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(656,Exactly,0);
                Void(177+4,Exactly,0);
                Void(177+5,Exactly,0);
                Void(177+6,Exactly,0);
                Void(177+7,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Portal [B]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Portal [B]", "전체필드", CurrentPlayer);
                DisplayText("\x16상대필드로 연결되는 포탈을 필드 앞쪽에 설치합니다.", 4);
                SetVoid(656,SetTo,24*21);
                SetVoid(658,SetTo,0);
                SetVoid(662,SetTo,i);
                SetCp(0);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Portal \x16이 감지되었습니다.", 4);
                TalkingPortrait("Refractor", 1500);
                SetCp(1);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Portal \x16이 감지되었습니다.", 4);
                TalkingPortrait("Refractor", 1500);
                SetCp(2);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Portal \x16이 감지되었습니다.", 4);
                TalkingPortrait("Refractor", 1500);
                SetCp(3);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Portal \x16이 감지되었습니다.", 4);
                TalkingPortrait("Refractor", 1500);
                SetCp(i);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(656,AtLeast,1);
                Void(177+4,Exactly,0);
                Void(177+5,Exactly,0);
                Void(177+6,Exactly,0);
                Void(177+7,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Portal [B]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Portal [B]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일 포탈 지속시간이 연장되었습니다.", 4);
                SetVoid(656,Add,24*21);
                SetVoid(662,SetTo,i);
                PreserveTrigger();
            },
        }
        for j = 4, 7 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Portal [B]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Portal [B]", "전체필드", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, PortalOre, Ore);
                    PreserveTrigger();
                },
            }
        end
    end

    for i = 0, 3 do -- 미사일 리무버
    Trigger { -- No comment (8017EA17)
        players = {i},
        conditions = {
            Void(177+4,Exactly,0);
            Void(177+5,Exactly,0);
            Void(177+6,Exactly,0);
            Void(177+7,Exactly,0);
            Bring(CurrentPlayer, AtLeast, 1, "Missile Remover [B]", "전체필드");
        },
        actions = {
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            RemoveUnitAt(1, "Missile Remover [B]", "전체필드", CurrentPlayer);
            DisplayText("\x1F<System>  \x16적팀의 모든 반사불가 미사일과 발키리를 파괴합니다.\r\n\x16다만 Big Sniping Missile과 Light는 파괴되지 않습니다.", 4);
            KillUnit("Sniping Missile",Force2);
            KillUnit("Super Missile",Force2);
            KillUnit("Refractor",Force2);
            KillUnit("Penetrating Missile★",Force2);
            KillUnit("Homing Missile",Force2);
            KillUnit("Sniping Missile",Force2);
            PreserveTrigger();
        },
    }
    for j = 0, 3 do
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+j+4,AtLeast,1);
                Bring(CurrentPlayer, AtLeast, 1, "Missile Remover [B]", "전체필드");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Missile Remover [B]", "전체필드", CurrentPlayer);
                DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                SetResources(CurrentPlayer, Add, RemoverOre, Ore);
                PreserveTrigger();
            },
        }
    end
    end

    for i = 4, 7 do -- 미사일 리무버
    Trigger { -- No comment (8017EA17)
        players = {i},
        conditions = {
            Void(177+0,Exactly,0);
            Void(177+1,Exactly,0);
            Void(177+2,Exactly,0);
            Void(177+3,Exactly,0);
            Bring(CurrentPlayer, AtLeast, 1, "Missile Remover [B]", "전체필드");
        },
        actions = {
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            RemoveUnitAt(1, "Missile Remover [B]", "전체필드", CurrentPlayer);
            DisplayText("\x1F<System>  \x16적팀의 모든 반사불가 미사일과 발키리를 파괴합니다.\r\n\x16다만 Big Sniping Missile과 Light는 파괴되지 않습니다.", 4);
            KillUnit("Sniping Missile",Force1);
            KillUnit("Super Missile",Force1);
            KillUnit("Refractor",Force1);
            KillUnit("Penetrating Missile★",Force1);
            KillUnit("Homing Missile",Force1);
            KillUnit("Sniping Missile",Force1);
            PreserveTrigger();
        },
    }
    for j = 4, 7 do
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+j-4,AtLeast,1);
                Bring(CurrentPlayer, AtLeast, 1, "Missile Remover [B]", "전체필드");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Missile Remover [B]", "전체필드", CurrentPlayer);
                DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                SetResources(CurrentPlayer, Add, RemoverOre, Ore);
                PreserveTrigger();
            },
        }
    end
    end
end