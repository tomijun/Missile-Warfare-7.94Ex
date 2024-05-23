function SUB_SN()
    
-- 슈퍼노바 ＃-----------------
for i = 0, 3 do -- 슈노 1팀
    NIf(i,{Void(177+i,AtLeast,1)})
    Trigger {
        players = {i},
        conditions = {
            Void(177+i,AtLeast,1);
            Deaths(i,Exactly,0,"!Exist");
        },
        actions = {
            SetVoid(177+i,SetTo,0);
            PreserveTrigger();
        }
    }

    Trigger { -- 슈퍼노바방해물
        players = {i},
        conditions = {
            Void(177+i,AtLeast,1);
        },
        actions = {
            RemoveUnit("Mini Missile", Force1);
            RemoveUnit("Fast Mini Missile", Force1);
            RemoveUnit("Homing Missile", Force1);
            RemoveUnit("Invisible Missile☆", Force1);
            RemoveUnit("Penetrating Missile★", Force1);
            RemoveUnit("Missile☆", Force1);
            RemoveUnit("Fast Missile☆", Force1);
            RemoveUnit("Big Sniping Missile☆", Force1);
            RemoveUnit("Slow Missile", Force1);
            RemoveUnit("Missile", Force1);
            RemoveUnit("Fast Missile", Force1);
            RemoveUnit("Refractor", Force1);
            RemoveUnit("Light", Force1);
            RemoveUnit("Sniping Missile", Force1);
            RemoveUnit("Super Missile", Force1);
            RemoveUnit("Big Sniping Missile", Force1);
            RemoveUnit("Hydrogen Bomb", Force1);
            RemoveUnit("Team Sniping Missile", P9);
            SetVoid(7+0,SetTo,0); SetVoid(7+1,SetTo,0); SetVoid(7+2,SetTo,0); SetVoid(7+3,SetTo,0);
            SetVoid(23+0,SetTo,0); SetVoid(23+1,SetTo,0); SetVoid(23+2,SetTo,0); SetVoid(23+3,SetTo,0);
            SetVoid(31+0,SetTo,0); SetVoid(31+1,SetTo,0); SetVoid(31+2,SetTo,0); SetVoid(31+3,SetTo,0);
            SetVoid(85,SetTo,0); SetVoid(71,SetTo,0); SetVoid(629,SetTo,0); SetVoid(655,SetTo,0); SetVoid(673,SetTo,0);
            KillUnitAt(All,"Nova ","2팀 뒤쪽",i);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바봉쇄
        players = {i},
        conditions = {
            Void(177+i,AtLeast,1);
        },
        actions = {
            SetLoc("CLoc79",0,SetTo,0);
            SetLoc("CLoc79",4,SetTo,0);
            SetLoc("CLoc79",8,SetTo,1024);
            SetLoc("CLoc79",12,SetTo,1024);
            Order("Nova ", i, "CLoc79", Move, "4-1");
            SetLoc("CLoc79",0,SetTo,1024);
            SetLoc("CLoc79",4,SetTo,0);
            SetLoc("CLoc79",8,SetTo,2048);
            SetLoc("CLoc79",12,SetTo,1024);
            Order("Nova ", i, "CLoc79", Move, "4-13");
            SetLoc("CLoc79",0,SetTo,0);
            SetLoc("CLoc79",4,SetTo,1024);
            SetLoc("CLoc79",8,SetTo,592);
            SetLoc("CLoc79",12,SetTo,2048);
            Order("Nova ", i, "CLoc79", Move, "4-7");
            SetLoc("CLoc79",0,SetTo,1456);
            SetLoc("CLoc79",4,SetTo,1024);
            SetLoc("CLoc79",8,SetTo,2048);
            SetLoc("CLoc79",12,SetTo,2048);
            Order("Nova ", i, "CLoc79", Move, "4-7");
            PreserveTrigger();
        },
    }
    Trigger { -- 슈퍼노바봉쇄2
        players = {i},
        conditions = {
            Void(177+i,AtLeast,1);
            Void(177+i,AtMost,660);
            Void(356+i,Exactly,0);
        },
        actions = {
            SetVoid(356+i,SetTo,20);
            SetMemoryB(0x664503,SetTo,80);
            CreateUnit(1, "Nova ", "1-1", i);
            CreateUnit(1, "Nova ", "1-13", i);
            SetMemoryB(0x664503,SetTo,72);
            CreateUnit(1, "Nova ", "SN22", i);
            CreateUnit(1, "Nova ", "SN23", i);
            CreateUnit(1, "Nova ", "SN24", i);
            CreateUnit(1, "Nova ", "SN25", i);
            CreateUnit(1, "Nova ", "SN26", i);
            CreateUnit(1, "Nova ", "S1-2", i);
            CreateUnit(1, "Nova ", "S1-3", i);
            CreateUnit(1, "Nova ", "S1-4", i);
            CreateUnit(1, "Nova ", "S1-5", i);
            CreateUnit(1, "Nova ", "S1-6", i);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바생성
        players = {i},
        conditions = {
            Void(177+i,AtLeast,1);
            Void(177+i,AtMost,360);
        },
        actions = {
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }
    Trigger { -- 슈퍼노바생성
        players = {i},
        conditions = {
            Void(389,Exactly,0);
            Void(177+i,AtLeast,1);
            Void(177+i,AtMost,360);
        },
        actions = {
            SetVoid(389,SetTo,2);
            CreateUnit(1, "Nova", "SN1", i);
            CreateUnit(1, "Nova", "SN2", i);
            CreateUnit(1, "Flash Missile", "SN1", i);
            CreateUnit(1, "Flash Missile", "SN2", i);
            KillUnit("Flash Missile", i);
            Order("Nova", i, "SN1", Move, "SN1");
            Order("Nova", i, "SN2", Move, "SN2");
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바쿨타임
        players = {i},
        conditions = {
            Void(177+i,AtLeast,361);
            Void(177+i,AtMost,427);
        },
        actions = {
            Order("Nova", i, "SN1", Move, "SN1");
            Order("Nova", i, "SN2", Move, "SN2");
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바첫공격
        players = {i},
        conditions = {
            Void(177+i,Exactly,428);
        },
        actions = {
            SetCp(i);
            RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "SN1J");
            RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "SN2J");
            SetCp(0);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F            『 미사일이여 돌격하라 !! 』\r\n\r\n\r\n\r\n", 4);
            SetCp(1);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F            『 미사일이여 돌격하라 !! 』\r\n\r\n\r\n\r\n", 4);
            SetCp(2);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F            『 미사일이여 돌격하라 !! 』\r\n\r\n\r\n\r\n", 4);
            SetCp(3);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F            『 미사일이여 돌격하라 !! 』\r\n\r\n\r\n\r\n", 4);
            SetCp(4);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F            『 미사일이여 돌격하라 !! 』\r\n\r\n\r\n\r\n", 4);
            SetCp(5);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F            『 미사일이여 돌격하라 !! 』\r\n\r\n\r\n\r\n", 4);
            SetCp(6);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F            『 미사일이여 돌격하라 !! 』\r\n\r\n\r\n\r\n", 4);
            SetCp(7);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F            『 미사일이여 돌격하라 !! 』\r\n\r\n\r\n\r\n", 4);
            SetCp(i);
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바쿨타임2
        players = {i},
        conditions = {
            Void(177+i,AtLeast,429);
            Void(177+i,AtMost,499);
        },
        actions = {
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바첫이동
        players = {i},
        conditions = {
            Void(177+i,AtLeast,500);
            Void(177+i,AtMost,660);
        },
        actions = {
            Order("Nova", i, "Anywhere", Move, "2팀 뒤쪽");
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바두번째공격
        players = {i},
        conditions = {
            Void(177+i,Exactly,661);
        },
        actions = {
            SetCp(0);
            PlayWAV("staredit\\wav\\Nuclear.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x08           『 한줌의 재도 없이 모두 사라져라! 』\r\n\r\n\r\n", 4);
            SetCp(1);
            PlayWAV("staredit\\wav\\Nuclear.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x08           『 한줌의 재도 없이 모두 사라져라! 』\r\n\r\n\r\n", 4);
            SetCp(2);
            PlayWAV("staredit\\wav\\Nuclear.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x08           『 한줌의 재도 없이 모두 사라져라! 』\r\n\r\n\r\n", 4);
            SetCp(3);
            PlayWAV("staredit\\wav\\Nuclear.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x08           『 한줌의 재도 없이 모두 사라져라! 』\r\n\r\n\r\n", 4);
            SetCp(4);
            PlayWAV("staredit\\wav\\Nuclear.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x08           『 한줌의 재도 없이 모두 사라져라! 』\r\n\r\n\r\n", 4);
            SetCp(5);
            PlayWAV("staredit\\wav\\Nuclear.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x08           『 한줌의 재도 없이 모두 사라져라! 』\r\n\r\n\r\n", 4);
            SetCp(6);
            PlayWAV("staredit\\wav\\Nuclear.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x08           『 한줌의 재도 없이 모두 사라져라! 』\r\n\r\n\r\n", 4);
            SetCp(7);
            PlayWAV("staredit\\wav\\Nuclear.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x08           『 한줌의 재도 없이 모두 사라져라! 』\r\n\r\n\r\n", 4);
            SetCp(i);
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바두번째이동
        players = {i},
        conditions = {
            Void(177+i,AtLeast,662);
            Void(177+i,AtMost,770);
        },
        actions = {
            Order("Nova", i, "Anywhere", Move, "2팀필드");
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바세번째공격
        players = {i},
        conditions = {
            Void(177+i,Exactly,771);
        },
        actions = {
            SetCp(i);
            RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "2팀필드");
            SetCp(0);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F       『  하 이 퍼 노 바 ( Hyper Nova ) 』\r\n\r\n\r\n", 4);
            SetCp(1);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F       『  하 이 퍼 노 바 ( Hyper Nova ) 』\r\n\r\n\r\n", 4);
            SetCp(2);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F       『  하 이 퍼 노 바 ( Hyper Nova ) 』\r\n\r\n\r\n", 4);
            SetCp(3);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F       『  하 이 퍼 노 바 ( Hyper Nova ) 』\r\n\r\n\r\n", 4);
            SetCp(4);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F       『  하 이 퍼 노 바 ( Hyper Nova ) 』\r\n\r\n\r\n", 4);
            SetCp(5);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F       『  하 이 퍼 노 바 ( Hyper Nova ) 』\r\n\r\n\r\n", 4);
            SetCp(6);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F       『  하 이 퍼 노 바 ( Hyper Nova ) 』\r\n\r\n\r\n", 4);
            SetCp(7);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F       『  하 이 퍼 노 바 ( Hyper Nova ) 』\r\n\r\n\r\n", 4);
            SetCp(i);
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바세번째이동
        players = {i},
        conditions = {
            Void(177+i,AtLeast,772);
            Void(177+i,AtMost,799+25);
        },
        actions = {
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바네번째공격
        players = {i},
        conditions = {
            Void(177+i,Exactly,800+25);
        },
        actions = {
            SetCp(i);
            SetLoc("CLoc79",0,SetTo,0);
            SetLoc("CLoc79",4,SetTo,0);
            SetLoc("CLoc79",8,SetTo,608);
            SetLoc("CLoc79",12,SetTo,2048);
            RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "CLoc79");
            SetLoc("CLoc79",0,SetTo,0);
            SetLoc("CLoc79",4,SetTo,0);
            SetLoc("CLoc79",8,SetTo,2048);
            SetLoc("CLoc79",12,SetTo,384);
            RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "CLoc79");
            SetLoc("CLoc79",0,SetTo,1440);
            SetLoc("CLoc79",4,SetTo,0);
            SetLoc("CLoc79",8,SetTo,2048);
            SetLoc("CLoc79",12,SetTo,2048);
            RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "CLoc79");
            SetLoc("CLoc79",0,SetTo,0);
            SetLoc("CLoc79",4,SetTo,768);
            SetLoc("CLoc79",8,SetTo,2048);
            SetLoc("CLoc79",12,SetTo,2048);
            RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "CLoc79");
            SetCp(i);
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바네번째이동
        players = {i},
        conditions = {
            Void(177+i,AtLeast,800+25);
            Void(177+i,AtMost,899+25);
        },
        actions = {
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바파괴
        players = {i},
        conditions = {
            Void(177+i,AtLeast,900+25);
        },
        actions = {
            KillUnit("Nova", i);
            KillUnit("Nova ", i);
            SetVoid(177+i,SetTo,0);
            PreserveTrigger();
        },
    }
    NIfEnd()
    end
    
    
    for i = 4, 7 do -- 슈노 2팀
    NIf(P0,{Void(177+i,AtLeast,1)})
    Trigger {
        players = {i},
        conditions = {
            Void(177+i,AtLeast,1);
            Deaths(i,Exactly,0,"!Exist");
        },
        actions = {
            SetVoid(177+i,SetTo,0);
            PreserveTrigger();
        }
    }

    Trigger { -- 슈퍼노바방해물
        players = {i},
        conditions = {
            Void(177+i,AtLeast,1);
        },
        actions = {
            RemoveUnit("Mini Missile", Force1);
            RemoveUnit("Fast Mini Missile", Force2);
            RemoveUnit("Homing Missile", Force2);
            RemoveUnit("Invisible Missile☆", Force2);
            RemoveUnit("Penetrating Missile★", Force2);
            RemoveUnit("Missile☆", Force2);
            RemoveUnit("Fast Missile☆", Force2);
            RemoveUnit("Big Sniping Missile☆", Force2);
            RemoveUnit("Slow Missile", Force2);
            RemoveUnit("Missile", Force2);
            RemoveUnit("Fast Missile", Force2);
            RemoveUnit("Refractor", Force2);
            RemoveUnit("Light", Force2);
            RemoveUnit("Sniping Missile", Force2);
            RemoveUnit("Super Missile", Force2);
            RemoveUnit("Big Sniping Missile", Force2);
            RemoveUnit("Hydrogen Bomb", Force2);
            RemoveUnit("Team Sniping Missile", P10);
            SetVoid(7+4,SetTo,0); SetVoid(7+5,SetTo,0); SetVoid(7+6,SetTo,0); SetVoid(7+7,SetTo,0);
            SetVoid(23+4,SetTo,0); SetVoid(23+5,SetTo,0); SetVoid(23+6,SetTo,0); SetVoid(23+7,SetTo,0);
            SetVoid(31+4,SetTo,0); SetVoid(31+5,SetTo,0); SetVoid(31+6,SetTo,0); SetVoid(31+7,SetTo,0);
            SetVoid(86,SetTo,0); SetVoid(72,SetTo,0); SetVoid(630,SetTo,0); SetVoid(656,SetTo,0); SetVoid(674,SetTo,0);
            KillUnitAt(All,"Nova ","1팀 뒤쪽",i);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바봉쇄
        players = {i},
        conditions = {
            Void(177+i,AtLeast,1);
        },
        actions = {
            SetLoc("CLoc79",0,SetTo,0);
            SetLoc("CLoc79",4,SetTo,1024);
            SetLoc("CLoc79",8,SetTo,1024);
            SetLoc("CLoc79",12,SetTo,2048);
            Order("Nova ", i, "CLoc79", Move, "3-1");
            SetLoc("CLoc79",0,SetTo,1024);
            SetLoc("CLoc79",4,SetTo,1024);
            SetLoc("CLoc79",8,SetTo,2048);
            SetLoc("CLoc79",12,SetTo,2048);
            Order("Nova ", i, "CLoc79", Move, "3-13");
            SetLoc("CLoc79",0,SetTo,0);
            SetLoc("CLoc79",4,SetTo,0);
            SetLoc("CLoc79",8,SetTo,592);
            SetLoc("CLoc79",12,SetTo,1024);
            Order("Nova ", i, "CLoc79", Move, "3-7");
            SetLoc("CLoc79",0,SetTo,1456);
            SetLoc("CLoc79",4,SetTo,0);
            SetLoc("CLoc79",8,SetTo,2048);
            SetLoc("CLoc79",12,SetTo,1024);
            Order("Nova ", i, "CLoc79", Move, "3-7");
            PreserveTrigger();
        },
    }
    Trigger { -- 슈퍼노바봉쇄2
        players = {i},
        conditions = {
            Void(177+i,AtLeast,1);
            Void(177+i,AtMost,660);
            Void(356+i,Exactly,0);
        },
        actions = {
            SetVoid(356+i,SetTo,20);
            SetMemoryB(0x664503,SetTo,80);
            CreateUnit(1, "Nova ", "2-1", i);
            CreateUnit(1, "Nova ", "2-13", i);
            SetMemoryB(0x664503,SetTo,72);
            CreateUnit(1, "Nova ", "SN12", i);
            CreateUnit(1, "Nova ", "SN13", i);
            CreateUnit(1, "Nova ", "SN14", i);
            CreateUnit(1, "Nova ", "SN15", i);
            CreateUnit(1, "Nova ", "SN16", i);
            CreateUnit(1, "Nova ", "S3-2", i);
            CreateUnit(1, "Nova ", "S3-3", i);
            CreateUnit(1, "Nova ", "S3-4", i);
            CreateUnit(1, "Nova ", "S3-5", i);
            CreateUnit(1, "Nova ", "S3-6", i);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바생성
        players = {i},
        conditions = {
            Void(177+i,AtLeast,1);
            Void(177+i,AtMost,360);
        },
        actions = {
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }
    Trigger { -- 슈퍼노바생성
        players = {i},
        conditions = {
            Void(390,Exactly,0);
            Void(177+i,AtLeast,1);
            Void(177+i,AtMost,360);
        },
        actions = {
            SetVoid(390,SetTo,2);
            CreateUnit(1, "Nova", "SN3", i);
            CreateUnit(1, "Nova", "SN4", i);
            CreateUnit(1, "Flash Missile", "SN3", i);
            CreateUnit(1, "Flash Missile", "SN4", i);
            KillUnit("Flash Missile", i);
            Order("Nova", i, "SN3", Move, "SN3");
            Order("Nova", i, "SN4", Move, "SN4");
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바쿨타임
        players = {i},
        conditions = {
            Void(177+i,AtLeast,361);
            Void(177+i,AtMost,427);
        },
        actions = {
            Order("Nova", i, "SN3", Move, "SN3");
            Order("Nova", i, "SN4", Move, "SN4");
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바첫공격
        players = {i},
        conditions = {
            Void(177+i,Exactly,428);
        },
        actions = {
            SetCp(i);
            RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "SN3J");
            RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "SN4J");
            SetCp(0);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F            『 미사일이여 돌격하라 !! 』\r\n\r\n\r\n\r\n", 4);
            SetCp(1);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F            『 미사일이여 돌격하라 !! 』\r\n\r\n\r\n\r\n", 4);
            SetCp(2);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F            『 미사일이여 돌격하라 !! 』\r\n\r\n\r\n\r\n", 4);
            SetCp(3);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F            『 미사일이여 돌격하라 !! 』\r\n\r\n\r\n\r\n", 4);
            SetCp(4);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F            『 미사일이여 돌격하라 !! 』\r\n\r\n\r\n\r\n", 4);
            SetCp(5);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F            『 미사일이여 돌격하라 !! 』\r\n\r\n\r\n\r\n", 4);
            SetCp(6);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F            『 미사일이여 돌격하라 !! 』\r\n\r\n\r\n\r\n", 4);
            SetCp(7);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F            『 미사일이여 돌격하라 !! 』\r\n\r\n\r\n\r\n", 4);
            SetCp(i);
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바쿨타임2
        players = {i},
        conditions = {
            Void(177+i,AtLeast,429);
            Void(177+i,AtMost,499);
        },
        actions = {
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바첫이동
        players = {i},
        conditions = {
            Void(177+i,AtLeast,500);
            Void(177+i,AtMost,660);
        },
        actions = {
            Order("Nova", i, "Anywhere", Move, "1팀 뒤쪽");
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바두번째공격
        players = {i},
        conditions = {
            Void(177+i,Exactly,661);
        },
        actions = {
            SetCp(0);
            PlayWAV("staredit\\wav\\Nuclear.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x08           『 한줌의 재도 없이 모두 사라져라! 』\r\n\r\n\r\n", 4);
            SetCp(1);
            PlayWAV("staredit\\wav\\Nuclear.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x08           『 한줌의 재도 없이 모두 사라져라! 』\r\n\r\n\r\n", 4);
            SetCp(2);
            PlayWAV("staredit\\wav\\Nuclear.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x08           『 한줌의 재도 없이 모두 사라져라! 』\r\n\r\n\r\n", 4);
            SetCp(3);
            PlayWAV("staredit\\wav\\Nuclear.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x08           『 한줌의 재도 없이 모두 사라져라! 』\r\n\r\n\r\n", 4);
            SetCp(4);
            PlayWAV("staredit\\wav\\Nuclear.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x08           『 한줌의 재도 없이 모두 사라져라! 』\r\n\r\n\r\n", 4);
            SetCp(5);
            PlayWAV("staredit\\wav\\Nuclear.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x08           『 한줌의 재도 없이 모두 사라져라! 』\r\n\r\n\r\n", 4);
            SetCp(6);
            PlayWAV("staredit\\wav\\Nuclear.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x08           『 한줌의 재도 없이 모두 사라져라! 』\r\n\r\n\r\n", 4);
            SetCp(7);
            PlayWAV("staredit\\wav\\Nuclear.wav");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x08           『 한줌의 재도 없이 모두 사라져라! 』\r\n\r\n\r\n", 4);
            SetCp(i);
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바두번째이동
        players = {i},
        conditions = {
            Void(177+i,AtLeast,662);
            Void(177+i,AtMost,770);
        },
        actions = {
            Order("Nova", i, "Anywhere", Move, "1팀필드");
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바세번째공격
        players = {i},
        conditions = {
            Void(177+i,Exactly,771);
        },
        actions = {
            SetCp(i);
            RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "1팀필드");
            SetCp(0);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F       『  하 이 퍼 노 바 ( Hyper Nova ) 』\r\n\r\n\r\n", 4);
            SetCp(1);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F       『  하 이 퍼 노 바 ( Hyper Nova ) 』\r\n\r\n\r\n", 4);
            SetCp(2);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F       『  하 이 퍼 노 바 ( Hyper Nova ) 』\r\n\r\n\r\n", 4);
            SetCp(3);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F       『  하 이 퍼 노 바 ( Hyper Nova ) 』\r\n\r\n\r\n", 4);
            SetCp(4);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F       『  하 이 퍼 노 바 ( Hyper Nova ) 』\r\n\r\n\r\n", 4);
            SetCp(5);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F       『  하 이 퍼 노 바 ( Hyper Nova ) 』\r\n\r\n\r\n", 4);
            SetCp(6);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F       『  하 이 퍼 노 바 ( Hyper Nova ) 』\r\n\r\n\r\n", 4);
            SetCp(7);
            PlayWAV("staredit\\wav\\MAGIC04.WAV");
            DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x1F       『  하 이 퍼 노 바 ( Hyper Nova ) 』\r\n\r\n\r\n", 4);
            SetCp(i);
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바세번째이동
        players = {i},
        conditions = {
            Void(177+i,AtLeast,772);
            Void(177+i,AtMost,799+25);
        },
        actions = {
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바네번째공격
        players = {i},
        conditions = {
            Void(177+i,Exactly,800+25);
        },
        actions = {
            SetCp(i);
            SetLoc("CLoc79",0,SetTo,0);
            SetLoc("CLoc79",4,SetTo,0);
            SetLoc("CLoc79",8,SetTo,608);
            SetLoc("CLoc79",12,SetTo,2048);
            RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "CLoc79");
            SetLoc("CLoc79",0,SetTo,0);
            SetLoc("CLoc79",4,SetTo,0);
            SetLoc("CLoc79",8,SetTo,2048);
            SetLoc("CLoc79",12,SetTo,1280);
            RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "CLoc79");
            SetLoc("CLoc79",0,SetTo,1440);
            SetLoc("CLoc79",4,SetTo,0);
            SetLoc("CLoc79",8,SetTo,2048);
            SetLoc("CLoc79",12,SetTo,2048);
            RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "CLoc79");
            SetLoc("CLoc79",0,SetTo,0);
            SetLoc("CLoc79",4,SetTo,1664);
            SetLoc("CLoc79",8,SetTo,2048);
            SetLoc("CLoc79",12,SetTo,2048);
            RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "CLoc79");
            SetCp(i);
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바네번째이동
        players = {i},
        conditions = {
            Void(177+i,AtLeast,800+25);
            Void(177+i,AtMost,899+25);
        },
        actions = {
            SetVoid(177+i,Add,1);
            PreserveTrigger();
        },
    }

    Trigger { -- 슈퍼노바파괴
        players = {i},
        conditions = {
            Void(177+i,AtLeast,900+25);
        },
        actions = {
            KillUnit("Nova", i);
            KillUnit("Nova ", i);
            SetVoid(177+i,SetTo,0);
            PreserveTrigger();
        },
    }
    NIfEnd()
    end
    
end