function SUB_ProbeMissile()
    -- Probe Missile Set -----------------------------------------------------------------------------------
-- 건물 순서   (반사불가>일반) 역옵>옵 > 스펙 > 센터 > 역사옵>사옵 > 사센 (4 5 6 7 8 9 10)


for i = 0, 3 do -- 수소폭탄 
    Trigger { -- No comment (0B14D8D0)
        players = {i},
        conditions = {Void(145+i,Exactly,0);
            Bring(i, AtLeast, 1, "Hydrogen Bomb [N]", "1팀필드");
            Bring(i, AtLeast, 15, "Power [N]", "1팀필드");
            Void(89+i,Exactly,0);
        },
        actions = {
            KillUnitAt(All, "Hydrogen Bomb [N]", "1팀필드", i);
            KillUnitAt(All, "Power [N]", "1팀필드", i);
            SetVoid(145+i,SetTo,24*0.5);
            SetVoid(89+i,SetTo,1);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16속이 비어있는 미사일을 완성했습니다.", 4);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16속이 비어있는 미사일을 완성했습니다.", 4);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16속이 비어있는 미사일을 완성했습니다.", 4);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16속이 비어있는 미사일을 완성했습니다.", 4);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 1\x16이 속이 빈 미사일을 제작했습니다.", 4);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 1\x16이 속이 빈 미사일을 제작했습니다.", 4);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 1\x16이 속이 빈 미사일을 제작했습니다.", 4);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 1\x16이 속이 빈 미사일을 제작했습니다.", 4);
            SetCp(i);
        },
    }
    Trigger { -- No comment (0B14D8D0)
        players = {i},
        conditions = {Void(145+i,Exactly,0);
            Bring(i, AtLeast, 1, "Hydrogen Bomb [N]", "1팀필드");
            Bring(i, AtLeast, 15, "Power [N]", "1팀필드");
            Void(89+i,Exactly,1);
        },
        actions = {
            KillUnitAt(All, "Hydrogen Bomb [N]", "1팀필드", i);
            KillUnitAt(All, "Power [N]", "1팀필드", i);
            SetVoid(145+i,SetTo,24*0.5);
            SetVoid(89+i,SetTo,2);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16속이 빈 미사일에 수소를 충전했습니다.", 4);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16속이 빈 미사일에 수소를 충전했습니다.", 4);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16속이 빈 미사일에 수소를 충전했습니다.", 4);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16속이 빈 미사일에 수소를 충전했습니다.", 4);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 1\x16이 속이 빈 미사일에 수소를 충전했습니다.", 4);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 1\x16이 속이 빈 미사일에 수소를 충전했습니다.", 4);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 1\x16이 속이 빈 미사일에 수소를 충전했습니다.", 4);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 1\x16이 속이 빈 미사일에 수소를 충전했습니다.", 4);
            SetCp(i);
        },
    }
    
    Trigger { -- No comment (0B14D8D0)
        players = {i},
        conditions = {Void(145+i,Exactly,0);
            Bring(i, AtLeast, 1, "Hydrogen Bomb [N]", "1팀필드");
            Bring(i, AtLeast, 15, "Power [N]", "1팀필드");
            Void(89+i,Exactly,2);
        },
        actions = {
            KillUnitAt(All, "Hydrogen Bomb [N]", "1팀필드", i);
            KillUnitAt(All, "Power [N]", "1팀필드", i);
            SetVoid(145+i,SetTo,24*0.5);
            SetVoid(89+i,SetTo,3);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16수소를 충전한 미사일을 장전했습니다.", 4);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16수소를 충전한 미사일을 장전했습니다.", 4);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16수소를 충전한 미사일을 장전했습니다.", 4);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16수소를 충전한 미사일을 장전했습니다.", 4);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 1\x16이 수소를 충전한 미사일의 발사 준비를 마쳤습니다.", 4);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 1\x16이 수소를 충전한 미사일의 발사 준비를 마쳤습니다.", 4);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 1\x16이 수소를 충전한 미사일의 발사 준비를 마쳤습니다.", 4);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 1\x16이 수소를 충전한 미사일의 발사 준비를 마쳤습니다.", 4);
            SetCp(i);
        },
    }
    
    Trigger { -- No comment (0B14D8D0)
        players = {i},
        conditions = {Void(145+i,Exactly,0);
            Bring(i, AtLeast, 1, "Hydrogen Bomb [N]", "1팀필드");
            Bring(i, AtLeast, 15, "Power [N]", "1팀필드");
            Void(89+i,Exactly,3);
        },
        actions = {
            CreateUnit(1, "Hydrogen Bomb", "1팀필드", i);
            KillUnitAt(All, "Hydrogen Bomb [N]", "1팀필드", i);
            KillUnitAt(All, "Power [N]", "1팀필드", i);
            SetVoid(89+i,SetTo,4);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16Hydrogen Bomb 이 발사되었습니다.\r\n\x11[이 폭탄은 명중한후 폭팔합니다.]", 4);
            TalkingPortrait("Hydrogen Bomb", 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16Hydrogen Bomb 이 발사되었습니다.\r\n\x11[이 폭탄은 명중한후 폭팔합니다.]", 4);
            TalkingPortrait("Hydrogen Bomb", 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16Hydrogen Bomb 이 발사되었습니다.\r\n\x11[이 폭탄은 명중한후 폭팔합니다.]", 4);
            TalkingPortrait("Hydrogen Bomb", 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16Hydrogen Bomb 이 발사되었습니다.\r\n\x11[이 폭탄은 명중한후 폭팔합니다.]", 4);
            TalkingPortrait("Hydrogen Bomb", 1500);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Hydrogen Bomb \x16이 감지되었습니다.\r\n\x11[이 폭탄은 명중한후 폭팔합니다.]", 4);
            TalkingPortrait("Hydrogen Bomb", 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Hydrogen Bomb \x16이 감지되었습니다.\r\n\x11[이 폭탄은 명중한후 폭팔합니다.]", 4);
            TalkingPortrait("Hydrogen Bomb", 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Hydrogen Bomb \x16이 감지되었습니다.\r\n\x11[이 폭탄은 명중한후 폭팔합니다.]", 4);
            TalkingPortrait("Hydrogen Bomb", 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Hydrogen Bomb \x16이 감지되었습니다.\r\n\x11[이 폭탄은 명중한후 폭팔합니다.]", 4);
            TalkingPortrait("Hydrogen Bomb", 1500);
            SetCp(i);
            SetVoid(145+i,SetTo,24*0.5);
            SetVoid(89+i,SetTo,5);
        },
    }
    Trigger { -- reset
        players = {i},
        conditions = {Void(145+i,Exactly,0);
            Bring(i, AtLeast, 1, "Hydrogen Bomb [N]", "1팀필드");
            Bring(i, AtLeast, 15, "Power [N]", "1팀필드");
            Void(89+i,Exactly,5);
        },
        actions = {
            SetResources(i,Add,PylonOre*15,Ore);
            KillUnitAt(All, "Hydrogen Bomb [N]", "1팀필드", Force1);
            KillUnitAt(All, "Power [N]", "1팀필드", Force1);
            KillUnitAt(All, "Builder Marker [N]", "1팀필드", Force1);
            SetCp(0);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText("\x1F<System>  \x04Pylon Reset\x04을 발동시켰습니다. 모든 \x1FPower\x04와 \x1CBuilder Marker\x04가 제거됩니다.\r\n", 4);
            SetCp(1);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText("\x1F<System>  \x04Pylon Reset\x04을 발동시켰습니다. 모든 \x1FPower\x04와 \x1CBuilder Marker\x04가 제거됩니다.\r\n", 4);
            SetCp(2);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText("\x1F<System>  \x04Pylon Reset\x04을 발동시켰습니다. 모든 \x1FPower\x04와 \x1CBuilder Marker\x04가 제거됩니다.\r\n", 4);
            SetCp(3);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText("\x1F<System>  \x04Pylon Reset\x04을 발동시켰습니다. 모든 \x1FPower\x04와 \x1CBuilder Marker\x04가 제거됩니다.\r\n", 4);
            SetCp(i);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (00BD1FCC)
        players = {i},
        conditions = {
            Bring(i, AtLeast, 1, "Hydrogen Bomb [N]", "1팀필드");
            Bring(i, AtMost, 14, "Power [N]", "1팀필드");
        },
        actions = {
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16Hydrogen Bomb 를 발사하기위한\r\n\x16조건이 갖추어지지 않았습니다.", 4);
            KillUnitAt(All, "Hydrogen Bomb [N]", "1팀필드", i);
            TalkingPortrait("Hydrogen Bomb", 1500);
            PreserveTrigger();
        },
    }
    end
    for i = 4, 7 do -- 수소폭탄 
    Trigger { -- No comment (0B14D8D0)
        players = {i},
        conditions = {Void(145+i,Exactly,0);
            Bring(i, AtLeast, 1, "Hydrogen Bomb [N]", "2팀필드");
            Bring(i, AtLeast, 15, "Power [N]", "2팀필드");
            Void(89+i,Exactly,0);
        },
        actions = {
            KillUnitAt(All, "Hydrogen Bomb [N]", "2팀필드", i);
            KillUnitAt(All, "Power [N]", "2팀필드", i);
            SetVoid(145+i,SetTo,24*0.5);
            SetVoid(89+i,SetTo,1);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16속이 비어있는 미사일을 완성했습니다.", 4);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16속이 비어있는 미사일을 완성했습니다.", 4);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16속이 비어있는 미사일을 완성했습니다.", 4);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16속이 비어있는 미사일을 완성했습니다.", 4);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 2\x16가 속이 빈 미사일을 제작했습니다.", 4);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 2\x16가 속이 빈 미사일을 제작했습니다.", 4);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 2\x16가 속이 빈 미사일을 제작했습니다.", 4);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 2\x16가 속이 빈 미사일을 제작했습니다.", 4);
            SetCp(i);
        },
    }
    Trigger { -- No comment (0B14D8D0)
        players = {i},
        conditions = {Void(145+i,Exactly,0);
            Bring(i, AtLeast, 1, "Hydrogen Bomb [N]", "2팀필드");
            Bring(i, AtLeast, 15, "Power [N]", "2팀필드");
            Void(89+i,Exactly,1);
        },
        actions = {
            KillUnitAt(All, "Hydrogen Bomb [N]", "2팀필드", i);
            KillUnitAt(All, "Power [N]", "2팀필드", i);
            SetVoid(145+i,SetTo,24*0.5);
            SetVoid(89+i,SetTo,2);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16속이 빈 미사일에 수소를 충전했습니다.", 4);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16속이 빈 미사일에 수소를 충전했습니다.", 4);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16속이 빈 미사일에 수소를 충전했습니다.", 4);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16속이 빈 미사일에 수소를 충전했습니다.", 4);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 2\x16가 속이 빈 미사일에 수소를 충전했습니다.", 4);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 2\x16가 속이 빈 미사일에 수소를 충전했습니다.", 4);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 2\x16가 속이 빈 미사일에 수소를 충전했습니다.", 4);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 2\x16가 속이 빈 미사일에 수소를 충전했습니다.", 4);
            SetCp(i);
        },
    }
    
    Trigger { -- No comment (0B14D8D0)
        players = {i},
        conditions = {Void(145+i,Exactly,0);
            Bring(i, AtLeast, 1, "Hydrogen Bomb [N]", "2팀필드");
            Bring(i, AtLeast, 15, "Power [N]", "2팀필드");
            Void(89+i,Exactly,2);
        },
        actions = {
            KillUnitAt(All, "Hydrogen Bomb [N]", "2팀필드", i);
            KillUnitAt(All, "Power [N]", "2팀필드", i);
            SetVoid(145+i,SetTo,24*0.5);
            SetVoid(89+i,SetTo,3);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16수소를 충전한 미사일을 장전했습니다.", 4);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16수소를 충전한 미사일을 장전했습니다.", 4);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16수소를 충전한 미사일을 장전했습니다.", 4);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16수소를 충전한 미사일을 장전했습니다.", 4);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 2\x16가 수소를 충전한 미사일의 발사 준비를 마쳤습니다.", 4);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 2\x16가 수소를 충전한 미사일의 발사 준비를 마쳤습니다.", 4);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 2\x16가 수소를 충전한 미사일의 발사 준비를 마쳤습니다.", 4);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Team 2\x16가 수소를 충전한 미사일의 발사 준비를 마쳤습니다.", 4);
            SetCp(i);
        },
    }
    
    Trigger { -- No comment (0B14D8D0)
        players = {i},
        conditions = {Void(145+i,Exactly,0);
            Bring(i, AtLeast, 1, "Hydrogen Bomb [N]", "2팀필드");
            Bring(i, AtLeast, 15, "Power [N]", "2팀필드");
            Void(89+i,Exactly,3);
        },
        actions = {
            CreateUnit(1, "Hydrogen Bomb", "2팀필드", i);
            KillUnitAt(All, "Hydrogen Bomb [N]", "2팀필드", i);
            KillUnitAt(All, "Power [N]", "2팀필드", i);
            SetVoid(89+i,SetTo,4);
            SetCp(4);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16Hydrogen Bomb 이 발사되었습니다.\r\n\x11[이 폭탄은 명중한후 폭팔합니다.]", 4);
            TalkingPortrait("Hydrogen Bomb", 1500);
            SetCp(5);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16Hydrogen Bomb 이 발사되었습니다.\r\n\x11[이 폭탄은 명중한후 폭팔합니다.]", 4);
            TalkingPortrait("Hydrogen Bomb", 1500);
            SetCp(6);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16Hydrogen Bomb 이 발사되었습니다.\r\n\x11[이 폭탄은 명중한후 폭팔합니다.]", 4);
            TalkingPortrait("Hydrogen Bomb", 1500);
            SetCp(7);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16Hydrogen Bomb 이 발사되었습니다.\r\n\x11[이 폭탄은 명중한후 폭팔합니다.]", 4);
            TalkingPortrait("Hydrogen Bomb", 1500);
            SetCp(0);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Hydrogen Bomb \x16이 감지되었습니다.\r\n\x11[이 폭탄은 명중한후 폭팔합니다.]", 4);
            TalkingPortrait("Hydrogen Bomb", 1500);
            SetCp(1);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Hydrogen Bomb \x16이 감지되었습니다.\r\n\x11[이 폭탄은 명중한후 폭팔합니다.]", 4);
            TalkingPortrait("Hydrogen Bomb", 1500);
            SetCp(2);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Hydrogen Bomb \x16이 감지되었습니다.\r\n\x11[이 폭탄은 명중한후 폭팔합니다.]", 4);
            TalkingPortrait("Hydrogen Bomb", 1500);
            SetCp(3);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText(ColorCode[i+1].."Hydrogen Bomb \x16이 감지되었습니다.\r\n\x11[이 폭탄은 명중한후 폭팔합니다.]", 4);
            TalkingPortrait("Hydrogen Bomb", 1500);
            SetCp(i);
            SetVoid(145+i,SetTo,24*0.5);
            SetVoid(89+i,SetTo,5);
        },
    }
    Trigger { -- reset
        players = {i},
        conditions = {Void(145+i,Exactly,0);
            Bring(i, AtLeast, 1, "Hydrogen Bomb [N]", "2팀필드");
            Bring(i, AtLeast, 15, "Power [N]", "2팀필드");
            Void(89+i,Exactly,5);
        },
        actions = {
            SetResources(i,Add,PylonOre*15,Ore);
            KillUnitAt(All, "Hydrogen Bomb [N]", "2팀필드", Force2);
            KillUnitAt(All, "Power [N]", "2팀필드", Force2);
            KillUnitAt(All, "Builder Marker [N]", "2팀필드", Force2);
            SetCp(4);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText("\x1F<System>  \x04Pylon Reset\x04을 발동시켰습니다. 모든 \x1FPower\x04와 \x1CBuilder Marker\x04가 제거됩니다.\r\n", 4);
            SetCp(5);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText("\x1F<System>  \x04Pylon Reset\x04을 발동시켰습니다. 모든 \x1FPower\x04와 \x1CBuilder Marker\x04가 제거됩니다.\r\n", 4);
            SetCp(6);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText("\x1F<System>  \x04Pylon Reset\x04을 발동시켰습니다. 모든 \x1FPower\x04와 \x1CBuilder Marker\x04가 제거됩니다.\r\n", 4);
            SetCp(7);
            PlayWAV("staredit\\wav\\SpeedMessage.wav");
            DisplayText("\x1F<System>  \x04Pylon Reset\x04을 발동시켰습니다. 모든 \x1FPower\x04와 \x1CBuilder Marker\x04가 제거됩니다.\r\n", 4);
            SetCp(i);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (00BD1FCC)
        players = {i},
        conditions = {
            Bring(i, AtLeast, 1, "Hydrogen Bomb [N]", "2팀필드");
            Bring(i, AtMost, 14, "Power [N]", "2팀필드");
        },
        actions = {
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16Hydrogen Bomb 를 발사하기위한\r\n\x16조건이 갖추어지지 않았습니다.", 4);
            KillUnitAt(All, "Hydrogen Bomb [N]", "2팀필드", i);
            TalkingPortrait("Hydrogen Bomb", 1500);
            PreserveTrigger();
        },
    }
    end
    for i = 0, 7 do -- 파일런 & 마커 갯수 제한
    Trigger { -- No comment (05C18FCA)
        players = {i},
        conditions = {
            Command(i,AtLeast,79,"Power [N]");
        },
        actions = {
            KillUnitAt(1,"Power [N]","Anywhere",i);
            DisplayText("\x16Power가 필드 위에 너무 많습니다.", 4);
            PlayWAV("staredit\\wav\\Notice.wav");
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (05C18FCA)
        players = {i},
        conditions = {
            Command(i,AtLeast,55,"Builder Marker [N]");
        },
        actions = {
            KillUnitAt(1,"Builder Marker [N]","Anywhere",i);
            DisplayText("\x16Builder Marker가 필드 위에 너무 많습니다.", 4);
            PlayWAV("staredit\\wav\\Notice.wav");
            PreserveTrigger();
        },
    }
    
    Trigger { -- No comment (05C18FCA)
        players = {i},
        conditions = {
            Command(i,AtLeast,25, "Factories");
        },
        actions = {
            KillUnitAt(1,"Factories","Anywhere",i);
            DisplayText("\x16Builder가 필드 위에 너무 많습니다.", 4);
            PlayWAV("staredit\\wav\\Notice.wav");
            PreserveTrigger();
        },
    }
    
    end
    for i = 0, 7 do -- 포지 : Probe -> Drone
    local k = i+1
    Trigger { -- No comment (05C18FCA)
        players = {i},
        conditions = {
            Bring(CurrentPlayer, AtLeast, 1, "Ultimate Builder [N]", "전체필드");
        },
        actions = {
            PlayWAV("staredit\\wav\\Notice.wav");
            MoveLocation(k.."ZP", "Ultimate Builder [N]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(All, "Ultimate Builder [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16빌더가 업그레이드 되었습니다.", 4);
            CreateUnit(1, "Ultimate Builder", k.."ZP", CurrentPlayer);
            CreateUnit(1, "사은품", k.."ZP", CurrentPlayer);
            RemoveUnitAt(1, "Builder", "전체필드", CurrentPlayer);
            RemoveUnit("Power [N]",CurrentPlayer);
            RemoveUnit("Builder Marker [N]",CurrentPlayer);
            PreserveTrigger();
        },
    }
    end
    
    for i = 0, 3 do -- 스테이지 (옵저버)
    local k = 6+i
    
    
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*4,Exactly,0); Void(1000+i+16*4,Exactly,0);
            Switch("Switch "..k,Set);
            VoidX(6,Exactly,16^i,15*16^i);
            Bring(CurrentPlayer, AtLeast, 1, "Stage Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Stage Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",4,SetTo,368);
            SetLoc("ProbeS",12,SetTo,816);
            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*4,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*4,AtLeast,1),VoidX(6,Exactly,16^i,15*16^i)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,1); 
                Void(1008+i+16*20,Exactly,0); Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*4,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*10);
                SetLoc("ProbeS",8,SetTo,704+64*10);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*9);
                SetLoc("ProbeS",8,SetTo,704+64*9);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*8);
                SetLoc("ProbeS",8,SetTo,704+64*8);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,5);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*7);
                SetLoc("ProbeS",8,SetTo,704+64*7);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,6);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*6);
                SetLoc("ProbeS",8,SetTo,704+64*6);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,7);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*5);
                SetLoc("ProbeS",8,SetTo,704+64*5);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,8);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*4);
                SetLoc("ProbeS",8,SetTo,704+64*4);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,9);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*3);
                SetLoc("ProbeS",8,SetTo,704+64*3);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,10);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*2);
                SetLoc("ProbeS",8,SetTo,704+64*2);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,11);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*1);
                SetLoc("ProbeS",8,SetTo,704+64*1);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,12);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,12); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*0);
                SetLoc("ProbeS",8,SetTo,704+64*0);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*4,Exactly,0); Void(1000+i+16*4,Exactly,0);
            Switch("Switch "..k,Set);
            VoidX(6,Exactly,0,15*16^i);
            Bring(CurrentPlayer, AtLeast, 1, "Stage Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Stage Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",4,SetTo,368);
            SetLoc("ProbeS",12,SetTo,816);
            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            CreateUnit(1, "Fast Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*4,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*4,AtLeast,1),VoidX(6,Exactly,0,15*16^i)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,1); 
                Void(1008+i+16*20,Exactly,0); Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*4,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*10);
                SetLoc("ProbeS",8,SetTo,704+64*10);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*9);
                SetLoc("ProbeS",8,SetTo,704+64*9);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*8);
                SetLoc("ProbeS",8,SetTo,704+64*8);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,5);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*7);
                SetLoc("ProbeS",8,SetTo,704+64*7);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,6);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*6);
                SetLoc("ProbeS",8,SetTo,704+64*6);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,7);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*5);
                SetLoc("ProbeS",8,SetTo,704+64*5);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,8);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*4);
                SetLoc("ProbeS",8,SetTo,704+64*4);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,9);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*3);
                SetLoc("ProbeS",8,SetTo,704+64*3);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,10);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*2);
                SetLoc("ProbeS",8,SetTo,704+64*2);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,11);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*1);
                SetLoc("ProbeS",8,SetTo,704+64*1);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,12);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,12); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*0);
                SetLoc("ProbeS",8,SetTo,704+64*0);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    
    
    
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*5,Exactly,0); Void(1000+i+16*5,Exactly,0);
            Switch("Switch "..k,Cleared);
            VoidX(6,Exactly,16^i,15*16^i);
            Bring(CurrentPlayer, AtLeast, 1, "Stage Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Stage Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",4,SetTo,368);
            SetLoc("ProbeS",12,SetTo,816);
            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*5,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*5,AtLeast,1),VoidX(6,Exactly,16^i,15*16^i)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,1); 
                Void(1008+i+16*20,Exactly,0); Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*5,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*1);
                SetLoc("ProbeS",8,SetTo,704+64*1);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*2);
                SetLoc("ProbeS",8,SetTo,704+64*2);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*3);
                SetLoc("ProbeS",8,SetTo,704+64*3);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,5);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*4);
                SetLoc("ProbeS",8,SetTo,704+64*4);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,6);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*5);
                SetLoc("ProbeS",8,SetTo,704+64*5);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,7);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*6);
                SetLoc("ProbeS",8,SetTo,704+64*6);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,8);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*7);
                SetLoc("ProbeS",8,SetTo,704+64*7);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,9);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*8);
                SetLoc("ProbeS",8,SetTo,704+64*8);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,10);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*9);
                SetLoc("ProbeS",8,SetTo,704+64*9);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,11);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*10);
                SetLoc("ProbeS",8,SetTo,704+64*10);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,12);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,12); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*11);
                SetLoc("ProbeS",8,SetTo,704+64*11);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*5,Exactly,0); Void(1000+i+16*5,Exactly,0);
            Switch("Switch "..k,Cleared);
            VoidX(6,Exactly,0,15*16^i);
            Bring(CurrentPlayer, AtLeast, 1, "Stage Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Stage Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",4,SetTo,368);
            SetLoc("ProbeS",12,SetTo,816);
            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            CreateUnit(1, "Fast Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*5,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*5,AtLeast,1),VoidX(6,Exactly,0,15*16^i)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,1); 
                Void(1008+i+16*20,Exactly,0); Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*5,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*1);
                SetLoc("ProbeS",8,SetTo,704+64*1);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*2);
                SetLoc("ProbeS",8,SetTo,704+64*2);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*3);
                SetLoc("ProbeS",8,SetTo,704+64*3);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,5);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*4);
                SetLoc("ProbeS",8,SetTo,704+64*4);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,6);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*5);
                SetLoc("ProbeS",8,SetTo,704+64*5);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,7);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*6);
                SetLoc("ProbeS",8,SetTo,704+64*6);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,8);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*7);
                SetLoc("ProbeS",8,SetTo,704+64*7);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,9);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*8);
                SetLoc("ProbeS",8,SetTo,704+64*8);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,10);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*9);
                SetLoc("ProbeS",8,SetTo,704+64*9);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,11);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*10);
                SetLoc("ProbeS",8,SetTo,704+64*10);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,12);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,12); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                SetLoc("ProbeS",0,SetTo,640+64*11);
                SetLoc("ProbeS",8,SetTo,704+64*11);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    
    end
    for i = 4, 7 do -- 스테이지 (옵저버)
    local k = 6+i
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*4,Exactly,0); Void(1000+i+16*4,Exactly,0);
            Switch("Switch "..k,Set);
            VoidX(6,Exactly,16^i,15*16^i);
            Bring(CurrentPlayer, AtLeast, 1, "Stage Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Stage Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",4,SetTo,1232);
            SetLoc("ProbeS",12,SetTo,1680);
            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*4,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*4,AtLeast,1),VoidX(6,Exactly,16^i,15*16^i)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,1); 
                Void(1008+i+16*20,Exactly,0); Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*4,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*10);
                SetLoc("ProbeS",8,SetTo,704+64*10);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*9);
                SetLoc("ProbeS",8,SetTo,704+64*9);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*8);
                SetLoc("ProbeS",8,SetTo,704+64*8);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,5);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*7);
                SetLoc("ProbeS",8,SetTo,704+64*7);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,6);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*6);
                SetLoc("ProbeS",8,SetTo,704+64*6);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,7);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*5);
                SetLoc("ProbeS",8,SetTo,704+64*5);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,8);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*4);
                SetLoc("ProbeS",8,SetTo,704+64*4);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,9);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*3);
                SetLoc("ProbeS",8,SetTo,704+64*3);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,10);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*2);
                SetLoc("ProbeS",8,SetTo,704+64*2);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,11);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*1);
                SetLoc("ProbeS",8,SetTo,704+64*1);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,12);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,12); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*0);
                SetLoc("ProbeS",8,SetTo,704+64*0);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*4,Exactly,0); Void(1000+i+16*4,Exactly,0);
            Switch("Switch "..k,Set);
            VoidX(6,Exactly,0,15*16^i);
            Bring(CurrentPlayer, AtLeast, 1, "Stage Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Stage Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",4,SetTo,1232);
            SetLoc("ProbeS",12,SetTo,1680);
            SetLoc("ProbeS",0,SetTo,640+64*11);
            SetLoc("ProbeS",8,SetTo,704+64*11);
            CreateUnit(1, "Fast Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*4,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*4,AtLeast,1),VoidX(6,Exactly,0,15*16^i)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,1); 
                Void(1008+i+16*20,Exactly,0); Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*4,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*10);
                SetLoc("ProbeS",8,SetTo,704+64*10);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*9);
                SetLoc("ProbeS",8,SetTo,704+64*9);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*8);
                SetLoc("ProbeS",8,SetTo,704+64*8);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,5);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*7);
                SetLoc("ProbeS",8,SetTo,704+64*7);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,6);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*6);
                SetLoc("ProbeS",8,SetTo,704+64*6);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,7);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*5);
                SetLoc("ProbeS",8,SetTo,704+64*5);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,8);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*4);
                SetLoc("ProbeS",8,SetTo,704+64*4);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,9);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*3);
                SetLoc("ProbeS",8,SetTo,704+64*3);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,10);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*2);
                SetLoc("ProbeS",8,SetTo,704+64*2);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,11);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*1);
                SetLoc("ProbeS",8,SetTo,704+64*1);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,12);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*4,Exactly,12); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*0);
                SetLoc("ProbeS",8,SetTo,704+64*0);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*4,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    
    
    
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*5,Exactly,0); Void(1000+i+16*5,Exactly,0);
            Switch("Switch "..k,Cleared);
            VoidX(6,Exactly,16^i,15*16^i);
            Bring(CurrentPlayer, AtLeast, 1, "Stage Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Stage Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",4,SetTo,1232);
            SetLoc("ProbeS",12,SetTo,1680);
            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*5,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*5,AtLeast,1),VoidX(6,Exactly,16^i,15*16^i)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,1); 
                Void(1008+i+16*20,Exactly,0); Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*5,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*1);
                SetLoc("ProbeS",8,SetTo,704+64*1);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*2);
                SetLoc("ProbeS",8,SetTo,704+64*2);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*3);
                SetLoc("ProbeS",8,SetTo,704+64*3);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,5);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*4);
                SetLoc("ProbeS",8,SetTo,704+64*4);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,6);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*5);
                SetLoc("ProbeS",8,SetTo,704+64*5);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,7);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*6);
                SetLoc("ProbeS",8,SetTo,704+64*6);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,8);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*7);
                SetLoc("ProbeS",8,SetTo,704+64*7);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,9);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*8);
                SetLoc("ProbeS",8,SetTo,704+64*8);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,10);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*9);
                SetLoc("ProbeS",8,SetTo,704+64*9);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,11);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*10);
                SetLoc("ProbeS",8,SetTo,704+64*10);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,12);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,12); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*11);
                SetLoc("ProbeS",8,SetTo,704+64*11);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*5,Exactly,0); Void(1000+i+16*5,Exactly,0);
            Switch("Switch "..k,Cleared);
            VoidX(6,Exactly,0,15*16^i);
            Bring(CurrentPlayer, AtLeast, 1, "Stage Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Stage Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",4,SetTo,1232);
            SetLoc("ProbeS",12,SetTo,1680);
            SetLoc("ProbeS",0,SetTo,640+64*0);
            SetLoc("ProbeS",8,SetTo,704+64*0);
            CreateUnit(1, "Fast Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*5,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*5,AtLeast,1),VoidX(6,Exactly,0,15*16^i)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,1); 
                Void(1008+i+16*20,Exactly,0); Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*5,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*1);
                SetLoc("ProbeS",8,SetTo,704+64*1);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*2);
                SetLoc("ProbeS",8,SetTo,704+64*2);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*3);
                SetLoc("ProbeS",8,SetTo,704+64*3);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,5);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*4);
                SetLoc("ProbeS",8,SetTo,704+64*4);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,6);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*5);
                SetLoc("ProbeS",8,SetTo,704+64*5);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,7);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,7); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*6);
                SetLoc("ProbeS",8,SetTo,704+64*6);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,8);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,8); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*7);
                SetLoc("ProbeS",8,SetTo,704+64*7);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,9);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,9); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*8);
                SetLoc("ProbeS",8,SetTo,704+64*8);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,10);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,10); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*9);
                SetLoc("ProbeS",8,SetTo,704+64*9);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,11);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,11); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*10);
                SetLoc("ProbeS",8,SetTo,704+64*10);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,12);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*5,Exactly,12); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
                SetLoc("ProbeS",0,SetTo,640+64*11);
                SetLoc("ProbeS",8,SetTo,704+64*11);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*5,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    for i = 0, 3 do -- 스펙 (로보틱스)
    
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*6,Exactly,0); Void(1000+i+16*6,Exactly,0);
            Bring(CurrentPlayer, AtLeast, 1, "Spectrum Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Spectrum Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("CLoc79",0,SetTo,992);
            SetLoc("CLoc79",4,SetTo,480+128+32);
            SetLoc("CLoc79",8,SetTo,1056);
            SetLoc("CLoc79",12,SetTo,544+128);   
            CreateUnit(1, "Refractor", "CLoc79", i);
            SetVoid(1008+i+16*6,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*6,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*6,Exactly,1); 
                Void(1008+i+16*20,Exactly,0); Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*6,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*6,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                DisplayText("\x16미사일 발사!", 4);
                CreateUnit(1, "Light", "1-1", i);
                CreateUnit(1, "Light", "1-2", i);
                CreateUnit(1, "Light", "1-3", i);
                CreateUnit(1, "Light", "1-4", i);
                CreateUnit(1, "Light", "1-5", i);
                CreateUnit(1, "Light", "1-6", i);
                CreateUnit(1, "Light", "1-7", i);
                CreateUnit(1, "Light", "1-8", i);
                CreateUnit(1, "Light", "1-9", i);
                CreateUnit(1, "Light", "1-10", i);
                CreateUnit(1, "Light", "1-11", i);
                CreateUnit(1, "Light", "1-12", i);
                CreateUnit(1, "Light", "1-13", i);
                SetVoid(1008+i+16*6,SetTo,3);
                SetVoid(1000+i,Add,3); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*6,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                Order("Light", i, "1-1", Move, "4-13");
                Order("Light", i, "1-2", Move, "4-12");
                Order("Light", i, "1-3", Move, "4-11");
                Order("Light", i, "1-4", Move, "4-10");
                Order("Light", i, "1-5", Move, "4-9");
                Order("Light", i, "1-6", Move, "4-8");
                Order("Light", i, "1-7", Move, "4-7");
                Order("Light", i, "1-8", Move, "4-6");
                Order("Light", i, "1-9", Move, "4-5");
                Order("Light", i, "1-10", Move, "4-4");
                Order("Light", i, "1-11", Move, "4-3");
                Order("Light", i, "1-12", Move, "4-2");
                Order("Light", i, "1-13", Move, "4-1");
                PlayWAV("staredit\\wav\\Fire.wav");
                DisplayText("\x16미사일 발사!", 4);
                CreateUnit(1, "Refractor", "1-7", i);
                SetVoid(1008+i+16*6,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*6,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                DisplayText("\x16미사일 발사!", 4);
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "1-1", i);
                CreateUnit(1, "Fast Missile", "1-2", i);
                CreateUnit(1, "Fast Missile", "1-3", i);
                CreateUnit(1, "Fast Missile", "1-11", i);
                CreateUnit(1, "Fast Missile", "1-12", i);
                CreateUnit(1, "Fast Missile", "1-13", i);
                SetVoid(1008+i+16*6,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    for i = 4, 7 do -- 스펙 (로보틱스)
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*6,Exactly,0); Void(1000+i+16*6,Exactly,0);
            Bring(CurrentPlayer, AtLeast, 1, "Spectrum Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Spectrum Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("CLoc79",0,SetTo,992);
            SetLoc("CLoc79",4,SetTo,1376);
            SetLoc("CLoc79",8,SetTo,1056);
            SetLoc("CLoc79",12,SetTo,1440-32);   
            CreateUnit(1, "Refractor", "CLoc79", i);
            SetVoid(1008+i+16*6,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*6,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*6,Exactly,1); 
                Void(1008+i+16*20,Exactly,0); Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*6,SetTo,2);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*6,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                DisplayText("\x16미사일 발사!", 4);
                CreateUnit(1, "Light", "2-1", i);
                CreateUnit(1, "Light", "2-2", i);
                CreateUnit(1, "Light", "2-3", i);
                CreateUnit(1, "Light", "2-4", i);
                CreateUnit(1, "Light", "2-5", i);
                CreateUnit(1, "Light", "2-6", i);
                CreateUnit(1, "Light", "2-7", i);
                CreateUnit(1, "Light", "2-8", i);
                CreateUnit(1, "Light", "2-9", i);
                CreateUnit(1, "Light", "2-10", i);
                CreateUnit(1, "Light", "2-11", i);
                CreateUnit(1, "Light", "2-12", i);
                CreateUnit(1, "Light", "2-13", i);
                SetVoid(1008+i+16*6,SetTo,3);
                SetVoid(1000+i,Add,3); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*6,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                Order("Light", i, "2-1", Move, "3-13");
                Order("Light", i, "2-2", Move, "3-12");
                Order("Light", i, "2-3", Move, "3-11");
                Order("Light", i, "2-4", Move, "3-10");
                Order("Light", i, "2-5", Move, "3-9");
                Order("Light", i, "2-6", Move, "3-8");
                Order("Light", i, "2-7", Move, "3-7");
                Order("Light", i, "2-8", Move, "3-6");
                Order("Light", i, "2-9", Move, "3-5");
                Order("Light", i, "2-10", Move, "3-4");
                Order("Light", i, "2-11", Move, "3-3");
                Order("Light", i, "2-12", Move, "3-2");
                Order("Light", i, "2-13", Move, "3-1");
                PlayWAV("staredit\\wav\\Fire.wav");
                DisplayText("\x16미사일 발사!", 4);
                CreateUnit(1, "Refractor", "2-7", i);
                SetVoid(1008+i+16*6,SetTo,4);
                SetVoid(1000+i,Add,24*1.0); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*6,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                DisplayText("\x16미사일 발사!", 4);
                PlayWAV("staredit\\wav\\Fire.wav");
                CreateUnit(1, "Fast Missile", "2-1", i);
                CreateUnit(1, "Fast Missile", "2-2", i);
                CreateUnit(1, "Fast Missile", "2-3", i);
                CreateUnit(1, "Fast Missile", "2-11", i);
                CreateUnit(1, "Fast Missile", "2-12", i);
                CreateUnit(1, "Fast Missile", "2-13", i);
                SetVoid(1008+i+16*6,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    for i = 0, 3 do -- 센터 (리버)
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*7,Exactly,0); Void(1000+i+16*7,Exactly,0);
            VoidX(6,Exactly,16^i,15*16^i);
            Bring(CurrentPlayer, AtLeast, 1, "Center Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Center Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",4,SetTo,368);
            SetLoc("ProbeS",12,SetTo,816);
                
            SetLoc("ProbeS",0,SetTo,640+64*5);
            SetLoc("ProbeS",8,SetTo,704+64*5);
            CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
            SetLoc("ProbeS",0,SetTo,640+64*6);
            SetLoc("ProbeS",8,SetTo,704+64*6);
            CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*7,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*7,AtLeast,1),VoidX(6,Exactly,16^i,15*16^i)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,1); Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*7,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                    
                SetLoc("ProbeS",0,SetTo,640+64*4);
                SetLoc("ProbeS",8,SetTo,704+64*4);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*7);
                SetLoc("ProbeS",8,SetTo,704+64*7);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                    
                SetLoc("ProbeS",0,SetTo,640+64*3);
                SetLoc("ProbeS",8,SetTo,704+64*3);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*8);
                SetLoc("ProbeS",8,SetTo,704+64*8);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                    
                SetLoc("ProbeS",0,SetTo,640+64*2);
                SetLoc("ProbeS",8,SetTo,704+64*2);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*9);
                SetLoc("ProbeS",8,SetTo,704+64*9);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,5);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                    
                SetLoc("ProbeS",0,SetTo,640+64*1);
                SetLoc("ProbeS",8,SetTo,704+64*1);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*10);
                SetLoc("ProbeS",8,SetTo,704+64*10);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,6);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                    
                SetLoc("ProbeS",0,SetTo,640+64*0);
                SetLoc("ProbeS",8,SetTo,704+64*0);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*11);
                SetLoc("ProbeS",8,SetTo,704+64*11);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    
    
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*7,Exactly,0); Void(1000+i+16*7,Exactly,0);
            VoidX(6,Exactly,0,15*16^i);
            Bring(CurrentPlayer, AtLeast, 1, "Center Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Center Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",4,SetTo,368);
            SetLoc("ProbeS",12,SetTo,816);
                    
            SetLoc("ProbeS",0,SetTo,640+64*5);
            SetLoc("ProbeS",8,SetTo,704+64*5);
            CreateUnit(1, "Fast Missile☆", "ProbeS", i);
            SetLoc("ProbeS",0,SetTo,640+64*6);
            SetLoc("ProbeS",8,SetTo,704+64*6);
            CreateUnit(1, "Fast Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*7,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*7,AtLeast,1),VoidX(6,Exactly,0,15*16^i)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,1); Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*7,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                        
                SetLoc("ProbeS",0,SetTo,640+64*4);
                SetLoc("ProbeS",8,SetTo,704+64*4);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*7);
                SetLoc("ProbeS",8,SetTo,704+64*7);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                        
                SetLoc("ProbeS",0,SetTo,640+64*3);
                SetLoc("ProbeS",8,SetTo,704+64*3);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*8);
                SetLoc("ProbeS",8,SetTo,704+64*8);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                        
                SetLoc("ProbeS",0,SetTo,640+64*2);
                SetLoc("ProbeS",8,SetTo,704+64*2);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*9);
                SetLoc("ProbeS",8,SetTo,704+64*9);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,5);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,368);
                SetLoc("ProbeS",12,SetTo,816);
                        
                SetLoc("ProbeS",0,SetTo,640+64*1);
                SetLoc("ProbeS",8,SetTo,704+64*1);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*10);
                SetLoc("ProbeS",8,SetTo,704+64*10);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,6);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,6); 
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
                SetVoid(1008+i+16*7,SetTo,0);
            },
            flag = {Preserved}
        }
    
    CIfEnd()
    end
    
    for i = 4, 7 do -- 센터 (리버)
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*7,Exactly,0); Void(1000+i+16*7,Exactly,0);
            VoidX(6,Exactly,16^i,15*16^i);
            Bring(CurrentPlayer, AtLeast, 1, "Center Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Center Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",4,SetTo,1232);
            SetLoc("ProbeS",12,SetTo,1680);

            SetLoc("ProbeS",0,SetTo,640+64*5);
            SetLoc("ProbeS",8,SetTo,704+64*5);
            CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
            SetLoc("ProbeS",0,SetTo,640+64*6);
            SetLoc("ProbeS",8,SetTo,704+64*6);
            CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*7,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*7,AtLeast,1),VoidX(6,Exactly,16^i,15*16^i)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,1); Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*7,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);

                SetLoc("ProbeS",0,SetTo,640+64*4);
                SetLoc("ProbeS",8,SetTo,704+64*4);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*7);
                SetLoc("ProbeS",8,SetTo,704+64*7);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);

                SetLoc("ProbeS",0,SetTo,640+64*3);
                SetLoc("ProbeS",8,SetTo,704+64*3);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*8);
                SetLoc("ProbeS",8,SetTo,704+64*8);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);

                SetLoc("ProbeS",0,SetTo,640+64*2);
                SetLoc("ProbeS",8,SetTo,704+64*2);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*9);
                SetLoc("ProbeS",8,SetTo,704+64*9);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,5);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);

                SetLoc("ProbeS",0,SetTo,640+64*1);
                SetLoc("ProbeS",8,SetTo,704+64*1);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*10);
                SetLoc("ProbeS",8,SetTo,704+64*10);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,6);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);

                SetLoc("ProbeS",0,SetTo,640+64*0);
                SetLoc("ProbeS",8,SetTo,704+64*0);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*11);
                SetLoc("ProbeS",8,SetTo,704+64*11);
                CreateUnit(1, "Big Sniping Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    
    
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*7,Exactly,0); Void(1000+i+16*7,Exactly,0);
            VoidX(6,Exactly,0,15*16^i);
            Bring(CurrentPlayer, AtLeast, 1, "Center Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Center Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",4,SetTo,1232);
            SetLoc("ProbeS",12,SetTo,1680);

            SetLoc("ProbeS",0,SetTo,640+64*5);
            SetLoc("ProbeS",8,SetTo,704+64*5);
            CreateUnit(1, "Fast Missile☆", "ProbeS", i);
            SetLoc("ProbeS",0,SetTo,640+64*6);
            SetLoc("ProbeS",8,SetTo,704+64*6);
            CreateUnit(1, "Fast Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*7,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*7,AtLeast,1),VoidX(6,Exactly,0,15*16^i)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,1); Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*7,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
    
                SetLoc("ProbeS",0,SetTo,640+64*4);
                SetLoc("ProbeS",8,SetTo,704+64*4);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*7);
                SetLoc("ProbeS",8,SetTo,704+64*7);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
    
                SetLoc("ProbeS",0,SetTo,640+64*3);
                SetLoc("ProbeS",8,SetTo,704+64*3);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*8);
                SetLoc("ProbeS",8,SetTo,704+64*8);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
    
                SetLoc("ProbeS",0,SetTo,640+64*2);
                SetLoc("ProbeS",8,SetTo,704+64*2);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*9);
                SetLoc("ProbeS",8,SetTo,704+64*9);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,5);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",4,SetTo,1232);
                SetLoc("ProbeS",12,SetTo,1680);
    
                SetLoc("ProbeS",0,SetTo,640+64*1);
                SetLoc("ProbeS",8,SetTo,704+64*1);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetLoc("ProbeS",0,SetTo,640+64*10);
                SetLoc("ProbeS",8,SetTo,704+64*10);
                CreateUnit(1, "Fast Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*7,SetTo,6);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*7,Exactly,6); 
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
                SetVoid(1008+i+16*7,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    for i = 0, 3 do -- 사옵 (게이트)
    local k = 6+i
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*8,Exactly,0); Void(1000+i+16*8,Exactly,0);
            Switch("Switch "..k,Set);
            Bring(CurrentPlayer, AtLeast, 1, "Side Stage Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Side Stage Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",0,SetTo,512);
            SetLoc("ProbeS",8,SetTo,576);

            SetLoc("ProbeS",4,SetTo,1584-64*5);
            SetLoc("ProbeS",12,SetTo,1648-64*5);
            CreateUnit(1, "Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*8,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*8,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*8,Exactly,1); Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*8,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*8,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,1584-64*4);
                SetLoc("ProbeS",12,SetTo,1648-64*4);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*8,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*8,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,1584-64*3);
                SetLoc("ProbeS",12,SetTo,1648-64*3);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*8,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*8,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,1584-64*2);
                SetLoc("ProbeS",12,SetTo,1648-64*2);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*8,SetTo,5);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*8,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,1584-64*1);
                SetLoc("ProbeS",12,SetTo,1648-64*1);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*8,SetTo,6);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*8,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,1584-64*0);
                SetLoc("ProbeS",12,SetTo,1648-64*0);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*8,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*9,Exactly,0); Void(1000+i+16*9,Exactly,0);
            Switch("Switch "..k,Cleared);
            Bring(CurrentPlayer, AtLeast, 1, "Side Stage Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Side Stage Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",0,SetTo,512);
            SetLoc("ProbeS",8,SetTo,576);

            SetLoc("ProbeS",4,SetTo,1584-64*0);
            SetLoc("ProbeS",12,SetTo,1648-64*0);
            CreateUnit(1, "Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*9,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*9,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*9,Exactly,1); Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*9,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*9,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,1584-64*1);
                SetLoc("ProbeS",12,SetTo,1648-64*1);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*9,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*9,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,1584-64*2);
                SetLoc("ProbeS",12,SetTo,1648-64*2);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*9,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*9,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,1584-64*3);
                SetLoc("ProbeS",12,SetTo,1648-64*3);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*9,SetTo,5);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*9,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,1584-64*4);
                SetLoc("ProbeS",12,SetTo,1648-64*4);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*9,SetTo,6);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*9,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,1584-64*5);
                SetLoc("ProbeS",12,SetTo,1648-64*5);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*9,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    for i = 4, 7 do -- 사옵 (게이트)
    local k = 6+i
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*8,Exactly,0); Void(1000+i+16*8,Exactly,0);
            Switch("Switch "..k,Set);
            Bring(CurrentPlayer, AtLeast, 1, "Side Stage Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Side Stage Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",0,SetTo,512);
            SetLoc("ProbeS",8,SetTo,576);

            SetLoc("ProbeS",4,SetTo,400+64*5);
            SetLoc("ProbeS",12,SetTo,464+64*5);
            CreateUnit(1, "Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*8,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*8,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*8,Exactly,1); Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*8,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*8,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,400+64*4);
                SetLoc("ProbeS",12,SetTo,464+64*4);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*8,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*8,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,400+64*3);
                SetLoc("ProbeS",12,SetTo,464+64*3);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*8,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*8,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,400+64*2);
                SetLoc("ProbeS",12,SetTo,464+64*2);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*8,SetTo,5);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*8,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,400+64*1);
                SetLoc("ProbeS",12,SetTo,464+64*1);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*8,SetTo,6);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*8,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,400+64*0);
                SetLoc("ProbeS",12,SetTo,464+64*0);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*8,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*9,Exactly,0); Void(1000+i+16*9,Exactly,0);
            Switch("Switch "..k,Cleared);
            Bring(CurrentPlayer, AtLeast, 1, "Side Stage Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Side Stage Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",0,SetTo,512);
            SetLoc("ProbeS",8,SetTo,576);

            SetLoc("ProbeS",4,SetTo,400+64*0);
            SetLoc("ProbeS",12,SetTo,464+64*0);
            CreateUnit(1, "Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*9,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*9,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*9,Exactly,1); Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*9,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*9,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,400+64*1);
                SetLoc("ProbeS",12,SetTo,464+64*1);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*9,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*9,Exactly,3); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,400+64*2);
                SetLoc("ProbeS",12,SetTo,464+64*2);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*9,SetTo,4);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*9,Exactly,4); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,400+64*3);
                SetLoc("ProbeS",12,SetTo,464+64*3);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*9,SetTo,5);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*9,Exactly,5); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,400+64*4);
                SetLoc("ProbeS",12,SetTo,464+64*4);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*9,SetTo,6);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*9,Exactly,6); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,400+64*5);
                SetLoc("ProbeS",12,SetTo,464+64*5);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*9,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    
    for i = 0, 3 do -- 사센 (스타게이트)
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*10,Exactly,0); Void(1000+i+16*10,Exactly,0);
            Bring(CurrentPlayer, AtLeast, 1, "Side Center Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Side Center Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",0,SetTo,512);
            SetLoc("ProbeS",8,SetTo,576);

            SetLoc("ProbeS",4,SetTo,1584-64*2);
            SetLoc("ProbeS",12,SetTo,1648-64*2);
            CreateUnit(1, "Missile☆", "ProbeS", i);
            SetLoc("ProbeS",4,SetTo,1584-64*3);
            SetLoc("ProbeS",12,SetTo,1648-64*3);
            CreateUnit(1, "Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*10,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*10,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*10,Exactly,1); Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*10,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*10,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,1584-64*1);
                SetLoc("ProbeS",12,SetTo,1648-64*1);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,1584-64*4);
                SetLoc("ProbeS",12,SetTo,1648-64*4);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*10,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*10,Exactly,3); 
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
                SetVoid(1008+i+16*10,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    for i = 4, 7 do -- 사센 (스타게이트)
    Trigger { -- No comment (C012742C)
        players = {i},
        conditions = {Void(1008+i+16*10,Exactly,0); Void(1000+i+16*10,Exactly,0);
            Bring(CurrentPlayer, AtLeast, 1, "Side Center Missile [N]", "전체필드");
        },
        actions = {
            RemoveUnitAt(1, "Side Center Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            
            PlayWAV("staredit\\wav\\Fire.wav");
            SetLoc("ProbeS",0,SetTo,512);
            SetLoc("ProbeS",8,SetTo,576);

            SetLoc("ProbeS",4,SetTo,400+64*2);
            SetLoc("ProbeS",12,SetTo,464+64*2);
            CreateUnit(1, "Missile☆", "ProbeS", i);
            SetLoc("ProbeS",4,SetTo,400+64*3);
            SetLoc("ProbeS",12,SetTo,464+64*3);
            CreateUnit(1, "Missile☆", "ProbeS", i);
            SetVoid(1008+i+16*10,SetTo,1);
        },
        flag = {Preserved}
    }
    CIf(i,{Void(1008+i+16*10,AtLeast,1)})
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*10,Exactly,1); Void(1008+i+16*20,Exactly,0); 
                Void(1008+i+16*1,Exactly,0); Void(1008+i+16*2,Exactly,0); Void(1008+i+16*3,Exactly,0); Void(1008+i+16*4,Exactly,0); Void(1008+i+16*5,Exactly,0); Void(1008+i+16*6,Exactly,0); Void(1008+i+16*7,Exactly,0); Void(1008+i+16*8,Exactly,0); Void(1008+i+16*9,Exactly,0);
            },
            actions = {
                SetVoid(1008+i+16*10,SetTo,2);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*10,Exactly,2); 
                Void(1000+i,Exactly,0); 
            },
            actions = {
                PlayWAV("staredit\\wav\\Fire.wav");
                SetLoc("ProbeS",0,SetTo,512);
                SetLoc("ProbeS",8,SetTo,576);

                SetLoc("ProbeS",4,SetTo,400+64*1);
                SetLoc("ProbeS",12,SetTo,464+64*1);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetLoc("ProbeS",4,SetTo,400+64*4);
                SetLoc("ProbeS",12,SetTo,464+64*4);
                CreateUnit(1, "Missile☆", "ProbeS", i);
                SetVoid(1008+i+16*10,SetTo,3);
                SetVoid(1000+i,Add,24*1.5); SetVoid(1008+i,SetTo,1);
            },
            flag = {Preserved}
        }
        Trigger { -- No comment (C012742C)
            players = {i},
            conditions = {
                Void(1008+i+16*10,Exactly,3); 
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
                SetVoid(1008+i+16*10,SetTo,0);
            },
            flag = {Preserved}
        }
    CIfEnd()
    end
    

    for i = 0, 3 do -- 배터리 & 코어
    CIf(i,{VoidX(631+i,Exactly,1,0xFF)},{SetVoidX(631+i,SetTo,0,0xFF),
        SetLoc("ProbeS",0,SetTo,1024),
        SetLoc("ProbeS",4,SetTo,1024),
        SetLoc("ProbeS",8,SetTo,1024),
        SetLoc("ProbeS",12,SetTo,1024),
        MoveLocation("ProbeS","Missile [N]",i,"전체필드")})

        CWhile(i,{Loc("ProbeS",12,AtMost,768)})
            DoActions(i,{
                MoveLocation((i+1).."ZP", "Missile [N]", CurrentPlayer, "Anywhere");
                GiveUnits(1,"Missile [N]",CurrentPlayer,"전체필드",P12);
                RemoveUnitAt(All, "Missile [N]", "전체필드", P12);
                CreateUnit(1, "Missile☆", (i+1).."ZP", i);
                CreateUnit(1, "Fire", (i+1).."ZP", i);

                SetLoc("ProbeS",0,SetTo,1024),
                SetLoc("ProbeS",4,SetTo,1024),
                SetLoc("ProbeS",8,SetTo,1024),
                SetLoc("ProbeS",12,SetTo,1024),
                MoveLocation("ProbeS","Missile [N]",i,"전체필드");
            })    
        CWhileEnd()

        DoActions(i,{
            KillUnit("Fire",CurrentPlayer);
            SetLoc("ProbeS",0,SetTo,1024),
            SetLoc("ProbeS",4,SetTo,1024),
            SetLoc("ProbeS",8,SetTo,1024),
            SetLoc("ProbeS",12,SetTo,1024),
            MoveLocation("ProbeS","Fast Missile [N]",i,"전체필드")})

        CWhile(i,{Loc("ProbeS",12,AtMost,768)})
            DoActions(i,{
                MoveLocation((i+1).."ZP", "Fast Missile [N]", CurrentPlayer, "Anywhere");
                GiveUnits(1,"Fast Missile [N]",CurrentPlayer,"전체필드",P12);
                RemoveUnitAt(All, "Fast Missile [N]", "전체필드", P12);
                CreateUnit(1, "Fast Missile☆", (i+1).."ZP", i);
                CreateUnit(1, "Fire", (i+1).."ZP", i);

                SetLoc("ProbeS",0,SetTo,1024),
                SetLoc("ProbeS",4,SetTo,1024),
                SetLoc("ProbeS",8,SetTo,1024),
                SetLoc("ProbeS",12,SetTo,1024),
                MoveLocation("ProbeS","Fast Missile [N]",i,"전체필드");
            })    
        CWhileEnd()

        DoActions(i,{
            KillUnit("Fire",CurrentPlayer)})
    CIfEnd()

    local j = i+1
    local k = i+6
    CIfX(i,{Switch("Switch "..k,Set)},
    {SetSwitch("Switch 62",Clear),SetCVar("X",CTemp,SetTo,0),SetLoc("CLoc79",4,SetTo,384),SetLoc("CLoc79",12,SetTo,1664),SetLoc("CLoc79",0,SetTo,1408),SetLoc("CLoc79",8,SetTo,1440),
    SetLoc("CLoc235",4,SetTo,0),SetLoc("CLoc235",12,SetTo,0),SetLoc("CLoc235",0,SetTo,0),SetLoc("CLoc235",8,SetTo,0)})
        CIf(i,Bring(CurrentPlayer, AtLeast, 1, "Missile [N]", "전체필드"))
            CWhile(i,{Switch("Switch 62",Cleared),CVar("X",CTemp,AtMost,25)},{MoveLocation("CLoc235","Missile [N]",i,"CLoc79")})
                Trigger { -- No comment (54F1AF83)
                    players = {i},
                    conditions = {
                        Loc("CLoc235",4,AtMost,768);
                    },
                    actions = {
                        SetSwitch("Switch 62",Set);
                        PlayWAV("staredit\\wav\\Fire.wav");
                        SetLoc("CLoc235",0,Subtract,16);
                        SetLoc("CLoc235",4,Subtract,16);
                        SetLoc("CLoc235",8,Add,16);
                        SetLoc("CLoc235",12,Add,16);
                        RemoveUnitAt(1, "Missile [N]", "CLoc235", CurrentPlayer);
                        DisplayText("\x16미사일 발사!", 4);
                        CreateUnit(1, "Missile☆", "CLoc235", i);
                        SetLoc("CLoc235",0,Add,16);
                        SetLoc("CLoc235",4,Add,16);
                        SetLoc("CLoc235",8,Subtract,16);
                        SetLoc("CLoc235",12,Subtract,16);
                        PreserveTrigger();
                    },
                }
            CWhileEnd({SetCVar("X",CTemp,Add,1),SetLoc("CLoc79",0,Subtract,32),SetLoc("CLoc79",8,Subtract,32)})
        CIfEnd()
        DoActionsX(i,{SetSwitch("Switch 62",Clear),SetCVar("X",CTemp,SetTo,0),SetLoc("CLoc79",4,SetTo,384),SetLoc("CLoc79",12,SetTo,1664),SetLoc("CLoc79",0,SetTo,1408),SetLoc("CLoc79",8,SetTo,1440),
        SetLoc("CLoc235",4,SetTo,0),SetLoc("CLoc235",12,SetTo,0),SetLoc("CLoc235",0,SetTo,0),SetLoc("CLoc235",8,SetTo,0)})
        CIf(i,Bring(CurrentPlayer, AtLeast, 1, "Fast Missile [N]", "전체필드"))
            CWhile(i,{Switch("Switch 62",Cleared),CVar("X",CTemp,AtMost,25)},{MoveLocation("CLoc235","Fast Missile [N]",i,"CLoc79")})
                Trigger { -- No comment (54F1AF83)
                    players = {i},
                    conditions = {
                        Loc("CLoc235",4,AtMost,768);
                    },
                    actions = {
                        SetSwitch("Switch 62",Set);
                        PlayWAV("staredit\\wav\\Fire.wav");
                        SetLoc("CLoc235",0,Subtract,16);
                        SetLoc("CLoc235",4,Subtract,16);
                        SetLoc("CLoc235",8,Add,16);
                        SetLoc("CLoc235",12,Add,16);
                        RemoveUnitAt(1, "Fast Missile [N]", "CLoc235", CurrentPlayer);
                        DisplayText("\x16미사일 발사!", 4);
                        CreateUnit(1, "Fast Missile☆", "CLoc235", i);
                        SetLoc("CLoc235",0,Add,16);
                        SetLoc("CLoc235",4,Add,16);
                        SetLoc("CLoc235",8,Subtract,16);
                        SetLoc("CLoc235",12,Subtract,16);
                        PreserveTrigger();
                    },
                }
            CWhileEnd({SetCVar("X",CTemp,Add,1),SetLoc("CLoc79",0,Subtract,32),SetLoc("CLoc79",8,Subtract,32)})
        CIfEnd()
    CElseX()
    Trigger { -- No comment (54F1AF83)
        players = {i},
        conditions = {
            Switch("Switch "..k,Cleared);
            Bring(CurrentPlayer, AtLeast, 1, "Missile [N]", "전체필드");
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            MoveLocation(j.."ZP", "Missile [N]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            CreateUnit(1, "Missile☆", j.."ZP", i);
            PreserveTrigger();
        },
    }
    
    Trigger { -- No comment (54F1AF83)
        players = {i},
        conditions = {
            Switch("Switch "..k,Cleared);
            Bring(CurrentPlayer, AtLeast, 1, "Fast Missile [N]", "전체필드");
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            MoveLocation(j.."ZP", "Fast Missile [N]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Fast Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            CreateUnit(1, "Fast Missile☆", j.."ZP", i);
            PreserveTrigger();
        },
    }
    CIfXEnd()
    end
    for i = 4, 7 do -- 배터리 & 코어 
        CIf(i,{VoidX(631+i,Exactly,1,0xFF)},{SetVoidX(631+i,SetTo,0,0xFF),
        SetLoc("ProbeS",0,SetTo,1024),
        SetLoc("ProbeS",4,SetTo,1024),
        SetLoc("ProbeS",8,SetTo,1024),
        SetLoc("ProbeS",12,SetTo,1024),
        MoveLocation("ProbeS","Missile [N]",i,"전체필드")})

        CWhile(i,{Loc("ProbeS",4,AtLeast,1280)})
            DoActions(i,{
                MoveLocation((i+1).."ZP", "Missile [N]", CurrentPlayer, "Anywhere");
                GiveUnits(1,"Missile [N]",CurrentPlayer,"전체필드",P12);
                RemoveUnitAt(All, "Missile [N]", "전체필드", P12);
                CreateUnit(1, "Missile☆", (i+1).."ZP", i);
                CreateUnit(1, "Fire", (i+1).."ZP", i);

                SetLoc("ProbeS",0,SetTo,1024),
                SetLoc("ProbeS",4,SetTo,1024),
                SetLoc("ProbeS",8,SetTo,1024),
                SetLoc("ProbeS",12,SetTo,1024),
                MoveLocation("ProbeS","Missile [N]",i,"전체필드");
            })    
        CWhileEnd()

        DoActions(i,{
            KillUnit("Fire",CurrentPlayer);
            SetLoc("ProbeS",0,SetTo,1024),
            SetLoc("ProbeS",4,SetTo,1024),
            SetLoc("ProbeS",8,SetTo,1024),
            SetLoc("ProbeS",12,SetTo,1024),
            MoveLocation("ProbeS","Fast Missile [N]",i,"전체필드")})

        CWhile(i,{Loc("ProbeS",4,AtLeast,1280)})
            DoActions(i,{
                MoveLocation((i+1).."ZP", "Fast Missile [N]", CurrentPlayer, "Anywhere");
                GiveUnits(1,"Fast Missile [N]",CurrentPlayer,"전체필드",P12);
                RemoveUnitAt(All, "Fast Missile [N]", "전체필드", P12);
                CreateUnit(1, "Fast Missile☆", (i+1).."ZP", i);
                CreateUnit(1, "Fire", (i+1).."ZP", i);
                
                SetLoc("ProbeS",0,SetTo,1024),
                SetLoc("ProbeS",4,SetTo,1024),
                SetLoc("ProbeS",8,SetTo,1024),
                SetLoc("ProbeS",12,SetTo,1024),
                MoveLocation("ProbeS","Fast Missile [N]",i,"전체필드");
            })    
        CWhileEnd()

        DoActions(i,{
            KillUnit("Fire",CurrentPlayer)})
    CIfEnd()

    local j = i+1
    local k = i+6
    CIfX(i,{Switch("Switch "..k,Set)},
    {SetSwitch("Switch 62",Clear),SetCVar("X",CTemp,SetTo,0),SetLoc("CLoc79",4,SetTo,384),SetLoc("CLoc79",12,SetTo,1664),SetLoc("CLoc79",0,SetTo,1408),SetLoc("CLoc79",8,SetTo,1440),
    SetLoc("CLoc235",4,SetTo,0),SetLoc("CLoc235",12,SetTo,0),SetLoc("CLoc235",0,SetTo,0),SetLoc("CLoc235",8,SetTo,0)})
        CIf(i,Bring(CurrentPlayer, AtLeast, 1, "Missile [N]", "전체필드"))
            CWhile(i,{Switch("Switch 62",Cleared),CVar("X",CTemp,AtMost,25)},{MoveLocation("CLoc235","Missile [N]",i,"CLoc79")})
                Trigger { -- No comment (54F1AF83)
                    players = {i},
                    conditions = {
                        Loc("CLoc235",4,AtLeast,1280);
                    },
                    actions = {
                        SetSwitch("Switch 62",Set);
                        PlayWAV("staredit\\wav\\Fire.wav");
                        SetLoc("CLoc235",0,Subtract,16);
                        SetLoc("CLoc235",4,Subtract,16);
                        SetLoc("CLoc235",8,Add,16);
                        SetLoc("CLoc235",12,Add,16);
                        RemoveUnitAt(1, "Missile [N]", "CLoc235", CurrentPlayer);
                        DisplayText("\x16미사일 발사!", 4);
                        CreateUnit(1, "Missile☆", "CLoc235", i);
                        SetLoc("CLoc235",0,Add,16);
                        SetLoc("CLoc235",4,Add,16);
                        SetLoc("CLoc235",8,Subtract,16);
                        SetLoc("CLoc235",12,Subtract,16);
                        PreserveTrigger();
                    },
                }
            CWhileEnd({SetCVar("X",CTemp,Add,1),SetLoc("CLoc79",0,Subtract,32),SetLoc("CLoc79",8,Subtract,32)})
        CIfEnd()
        DoActionsX(i,{SetSwitch("Switch 62",Clear),SetCVar("X",CTemp,SetTo,0),SetLoc("CLoc79",4,SetTo,384),SetLoc("CLoc79",12,SetTo,1664),SetLoc("CLoc79",0,SetTo,1408),SetLoc("CLoc79",8,SetTo,1440),
        SetLoc("CLoc235",4,SetTo,0),SetLoc("CLoc235",12,SetTo,0),SetLoc("CLoc235",0,SetTo,0),SetLoc("CLoc235",8,SetTo,0)})
        CIf(i,Bring(CurrentPlayer, AtLeast, 1, "Fast Missile [N]", "전체필드"))
            CWhile(i,{Switch("Switch 62",Cleared),CVar("X",CTemp,AtMost,25)},{MoveLocation("CLoc235","Fast Missile [N]",i,"CLoc79")})
                Trigger { -- No comment (54F1AF83)
                    players = {i},
                    conditions = {
                        Loc("CLoc235",4,AtLeast,1280);
                    },
                    actions = {
                        SetSwitch("Switch 62",Set);
                        PlayWAV("staredit\\wav\\Fire.wav");
                        SetLoc("CLoc235",0,Subtract,16);
                        SetLoc("CLoc235",4,Subtract,16);
                        SetLoc("CLoc235",8,Add,16);
                        SetLoc("CLoc235",12,Add,16);
                        RemoveUnitAt(1, "Fast Missile [N]", "CLoc235", CurrentPlayer);
                        DisplayText("\x16미사일 발사!", 4);
                        CreateUnit(1, "Fast Missile☆", "CLoc235", i);
                        SetLoc("CLoc235",0,Add,16);
                        SetLoc("CLoc235",4,Add,16);
                        SetLoc("CLoc235",8,Subtract,16);
                        SetLoc("CLoc235",12,Subtract,16);
                        PreserveTrigger();
                    },
                }
            CWhileEnd({SetCVar("X",CTemp,Add,1),SetLoc("CLoc79",0,Subtract,32),SetLoc("CLoc79",8,Subtract,32)})
        CIfEnd()
    CElseX()
    Trigger { -- No comment (54F1AF83)
        players = {i},
        conditions = {
            Switch("Switch "..k,Cleared);
            Bring(CurrentPlayer, AtLeast, 1, "Missile [N]", "전체필드");
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            MoveLocation(j.."ZP", "Missile [N]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            CreateUnit(1, "Missile☆", j.."ZP", i);
            PreserveTrigger();
        },
    }
    
    Trigger { -- No comment (54F1AF83)
        players = {i},
        conditions = {
            Switch("Switch "..k,Cleared);
            Bring(CurrentPlayer, AtLeast, 1, "Fast Missile [N]", "전체필드");
        },
        actions = {
            PlayWAV("staredit\\wav\\Fire.wav");
            MoveLocation(j.."ZP", "Fast Missile [N]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Fast Missile [N]", "전체필드", CurrentPlayer);
            DisplayText("\x16미사일 발사!", 4);
            CreateUnit(1, "Fast Missile☆", j.."ZP", i);
            PreserveTrigger();
        },
    }
    CIfXEnd()
    end
    
    
    
    
    
    
    for i = 0, 3 do -- 슈퍼 미러 (캐논) ＃
    local k = i+1
    Trigger { -- No comment (E8887C2E)
        players = {i},
        conditions = {
            Void(627,Exactly,0);
            Command(CurrentPlayer, AtLeast, 1, "Super Mirror [N]");
            Command(CurrentPlayer, Exactly, 0, "Super Mirror");
        },
        actions = {
            RemoveUnitAt(1, "Super Mirror [N]", "전체필드", CurrentPlayer);
            DisplayText("\x04슈퍼미러사용횟수를 넘어 사용이 불가능합니다.", 4);
            PlayWAV("staredit\\wav\\Notice.wav");
            SetResources(CurrentPlayer, Add, SMirrorOre, Ore);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (E8887C2E)
        players = {i},
        conditions = {
            Void(627,AtLeast,1);
            Command(CurrentPlayer, AtLeast, 1, "Super Mirror [N]");
            Command(CurrentPlayer, Exactly, 0, "Super Mirror");
        },
        actions = {
            SetVoid(627,Subtract,1);
            MoveLocation("p"..k.."m", "Super Mirror [N]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Super Mirror [N]", "전체필드", CurrentPlayer);
            CreateUnit(1, "Super Mirror", "p"..k.."m", CurrentPlayer);
            SetVoid(153+i,SetTo,0);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (BA0F8CB4)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Super Mirror");
            Void(153+i,AtMost,159*2+1);
        },
        actions = {
            SetVoid(153+i,Add,1);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (BA0F8CB4)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Super Mirror");
            Void(153+i,AtMost,159*2+1);
            Void(169+i,Exactly,0);
        },
        actions = {
            SetVoid(169+i,SetTo,2);
            CreateUnit(1, "슈퍼미러커세어", "p"..k.."m", CurrentPlayer);
            KillUnitAt(All, "슈퍼미러커세어", "Anywhere", CurrentPlayer);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (CA51221F)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Super Mirror");
            Void(153+i,AtLeast,160*2);
        },
        actions = {
            KillUnitAt(All, "Super Mirror", "Anywhere", CurrentPlayer);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (D4EF32A3)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Super Mirror");
        },
        actions = {
            Order("Super Mirror", CurrentPlayer, "Anywhere", Move, "p"..k.."m");
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (370A65A4)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Super Mirror");
            Void(153+i,AtMost,159*2+1);
            Bring(Force2, AtLeast, 1, "Men", "1팀필드");
        },
        actions = {
            GiveUnits(All, "Mini Missile", Force2, "1팀필드", i);
            GiveUnits(All, "Fast Mini Missile", Force2, "1팀필드", i);
            GiveUnits(All, "Homing Missile", Force2, "1팀필드", i);
            ModifyUnitShields(All,"Homing Missile",i,"1팀필드",100);
            GiveUnits(All, "Penetrating Missile★", Force2, "1팀필드", i);
            GiveUnits(All, "Invisible Missile☆", Force2, "1팀필드", i);
            GiveUnits(All, "Slow Missile", Force2, "1팀필드", i);
            GiveUnits(All, "Missile", Force2, "1팀필드", i);
            GiveUnits(All, "Fast Missile", Force2, "1팀필드", i);
            GiveUnits(All, "Missile☆", Force2, "1팀필드", i);
            GiveUnits(All, "Fast Missile☆", Force2, "1팀필드", i);
            PreserveTrigger();
        },
    }
    for j = 1, 19 do
        Trigger { -- No comment (B2A7DEDB)
            players = {i},
            conditions = {
                Command(CurrentPlayer, AtLeast, 1, "Super Mirror");
                Void(153+i,AtLeast,j*16);
                Void(153+i,AtMost,j*16+15);
            },
            actions = {
                PreserveTrigger();
                ModifyUnitHitPoints(All, "Super Mirror", CurrentPlayer, "Anywhere",100-j*5);
            },
        }
    end
    end
    for i = 4, 7 do -- 슈퍼 미러 (캐논) ＃
    local k = i+1
    Trigger { -- No comment (E8887C2E)
        players = {i},
        conditions = {
            Void(628,Exactly,0);
            Command(CurrentPlayer, AtLeast, 1, "Super Mirror [N]");
            Command(CurrentPlayer, Exactly, 0, "Super Mirror");
        },
        actions = {
            RemoveUnitAt(1, "Super Mirror [N]", "전체필드", CurrentPlayer);
            DisplayText("\x04슈퍼미러사용횟수를 넘어 사용이 불가능합니다.", 4);
            PlayWAV("staredit\\wav\\Notice.wav");
            SetResources(CurrentPlayer, Add, SMirrorOre, Ore);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (E8887C2E)
        players = {i},
        conditions = {
            Void(628,AtLeast,1);
            Command(CurrentPlayer, AtLeast, 1, "Super Mirror [N]");
            Command(CurrentPlayer, Exactly, 0, "Super Mirror");
        },
        actions = {
            SetVoid(628,Subtract,1);
            MoveLocation("p"..k.."m", "Super Mirror [N]", CurrentPlayer, "Anywhere");
            RemoveUnitAt(1, "Super Mirror [N]", "전체필드", CurrentPlayer);
            CreateUnit(1, "Super Mirror", "p"..k.."m", CurrentPlayer);
            SetVoid(153+i,SetTo,0);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (BA0F8CB4)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Super Mirror");
            Void(153+i,AtMost,159*2+1);
        },
        actions = {
            SetVoid(153+i,Add,1);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (BA0F8CB4)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Super Mirror");
            Void(153+i,AtMost,159*2+1);
            Void(169+i,Exactly,0);
        },
        actions = {
            SetVoid(169+i,SetTo,2);
            CreateUnit(1, "슈퍼미러커세어", "p"..k.."m", CurrentPlayer);
            KillUnitAt(All, "슈퍼미러커세어", "Anywhere", CurrentPlayer);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (CA51221F)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Super Mirror");
            Void(153+i,AtLeast,160*2);
        },
        actions = {
            KillUnitAt(All, "Super Mirror", "Anywhere", CurrentPlayer);
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (D4EF32A3)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Super Mirror");
        },
        actions = {
            Order("Super Mirror", CurrentPlayer, "Anywhere", Move, "p"..k.."m");
            PreserveTrigger();
        },
    }
    Trigger { -- No comment (370A65A4)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Super Mirror");
            Void(153+i,AtMost,159*2+1);
            Bring(Force1, AtLeast, 1, "Men", "2팀필드");
        },
        actions = {
            GiveUnits(All, "Mini Missile", Force1, "2팀필드", i);
            GiveUnits(All, "Fast Mini Missile", Force1, "2팀필드", i);
            GiveUnits(All, "Homing Missile", Force1, "2팀필드", i);
            ModifyUnitShields(All,"Homing Missile",i,"2팀필드",100);
            GiveUnits(All, "Penetrating Missile★", Force1, "2팀필드", i);
            GiveUnits(All, "Invisible Missile☆", Force1, "2팀필드", i);
            GiveUnits(All, "Slow Missile", Force1, "2팀필드", i);
            GiveUnits(All, "Missile", Force1, "2팀필드", i);
            GiveUnits(All, "Fast Missile", Force1, "2팀필드", i);
            GiveUnits(All, "Missile☆", Force1, "2팀필드", i);
            GiveUnits(All, "Fast Missile☆", Force1, "2팀필드", i);
            PreserveTrigger();
        },
    }
    for j = 1, 19 do
        Trigger { -- No comment (B2A7DEDB)
            players = {i},
            conditions = {
                Command(CurrentPlayer, AtLeast, 1, "Super Mirror");
                Void(153+i,AtLeast,j*16);
                Void(153+i,AtMost,j*16+15);
            },
            actions = {
                PreserveTrigger();
                ModifyUnitHitPoints(All, "Super Mirror", CurrentPlayer, "Anywhere",100-j*5);
            },
        }
    end
    end
    for i = 0, 3 do -- 스나이핑 디펜더 (아둔) ＃
    CTrigger(i,{Command(CurrentPlayer, AtLeast, 1, "Sniper Defender [N]");
        TTOR({Command(Force2, AtLeast, 1, "Sniping Missile"),Command(Force2, AtLeast, 1, "Light"),Command(Force2, AtLeast, 1, "Big Sniping Missile"),Command(Force2, AtLeast, 1, "Big Sniping Missile☆")})},
        {RemoveUnitAt(1, "Sniper Defender [N]", "Anywhere", CurrentPlayer);
            PlayWAV("staredit\\wav\\Notice.wav");
            KillUnitAt(All, "Sniping Missile", "Anywhere", Force2);
            KillUnitAt(All, "Light", "Anywhere", Force2);
            KillUnitAt(All, "Big Sniping Missile", "Anywhere", Force2);
            KillUnitAt(All, "Big Sniping Missile☆", "Anywhere", Force2);
            DisplayText("\x16스나이퍼 디팬더의 효과로 적팀 모든 스나이핑 미사일을 제거합니다.", 4);
            PreserveTrigger();
        },{Preserved})
    Trigger { -- No comment (D32E8042)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Sniper Defender [N]");
            Command(Force2, Exactly, 0, "Sniping Missile");
            Command(Force2, Exactly, 0, "Light");
            Command(Force2, Exactly, 0, "Big Sniping Missile");
            Command(Force2, Exactly, 0, "Big Sniping Missile☆");
        },
        actions = {
            RemoveUnitAt(1, "Sniper Defender [N]", "Anywhere", CurrentPlayer);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16적팀의 스나이핑 미사일이 없어 취소됩니다.", 4);
            PreserveTrigger();
            SetResources(CurrentPlayer, Add, AdunOre, Ore);
        },
    }
    end
    for i = 4, 7 do -- 스나이핑 디펜더 (아둔) ＃
    CTrigger(i,{Command(CurrentPlayer, AtLeast, 1, "Sniper Defender [N]");
        TTOR({Command(Force1, AtLeast, 1, "Sniping Missile"),Command(Force1, AtLeast, 1, "Light"),Command(Force1, AtLeast, 1, "Big Sniping Missile"),Command(Force1, AtLeast, 1, "Big Sniping Missile☆")})},
        {RemoveUnitAt(1, "Sniper Defender [N]", "Anywhere", CurrentPlayer);
            PlayWAV("staredit\\wav\\Notice.wav");
            KillUnitAt(All, "Sniping Missile", "Anywhere", Force1);
            KillUnitAt(All, "Light", "Anywhere", Force1);
            KillUnitAt(All, "Big Sniping Missile", "Anywhere", Force1);
            KillUnitAt(All, "Big Sniping Missile☆", "Anywhere", Force1);
            DisplayText("\x16스나이퍼 디팬더의 효과로 적팀 모든 스나이핑 미사일을 제거합니다.", 4);
            PreserveTrigger();
        },{Preserved})
    Trigger { -- No comment (D32E8042)
        players = {i},
        conditions = {
            Command(CurrentPlayer, AtLeast, 1, "Sniper Defender [N]");
            Command(Force1, Exactly, 0, "Sniping Missile");
            Command(Force1, Exactly, 0, "Light");
            Command(Force1, Exactly, 0, "Big Sniping Missile");
            Command(Force1, Exactly, 0, "Big Sniping Missile☆");
        },
        actions = {
            RemoveUnitAt(1, "Sniper Defender [N]", "Anywhere", CurrentPlayer);
            PlayWAV("staredit\\wav\\Notice.wav");
            DisplayText("\x16적팀의 스나이핑 미사일이 없어 취소됩니다.", 4);
            PreserveTrigger();
            SetResources(CurrentPlayer, Add, AdunOre, Ore);
        },
    }
    end
    
    
    for i = 0, 3 do -- 크레이지 (플릿비콘)
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+0,Exactly,0);
                Void(177+1,Exactly,0);
                Void(177+2,Exactly,0);
                Void(177+3,Exactly,0);
                Void(23+0,Exactly,0);
                Void(23+1,Exactly,0);
                Void(23+2,Exactly,0);
                Void(23+3,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Crazy Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Crazy Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일 포트가 변경되었습니다.", 4);
                SetVoid(7+0,SetTo,0);
                SetVoid(7+1,SetTo,0);
                SetVoid(7+2,SetTo,0);
                SetVoid(7+3,SetTo,0);
                SetVoid(7+i,SetTo,1);
                SetSwitch("Switch 85",Random);
                PreserveTrigger();
            },
        }
        
        for j = 0, 3 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(23+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Crazy Missile [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Crazy Missile [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16크레이지탄이 이미 사용되고 있습니다.", 4);
                    SetResources(CurrentPlayer, Add, CrazyOre, Ore);
                    PreserveTrigger();
                },
            }
        end
        for j = 0, 3 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Crazy Missile [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Crazy Missile [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, CrazyOre, Ore);
                    PreserveTrigger();
                },
            }
        end
    end
    for i = 4, 7 do -- 크레이지 (플릿비콘)
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+4,Exactly,0);
                Void(177+5,Exactly,0);
                Void(177+6,Exactly,0);
                Void(177+7,Exactly,0);
                Void(23+4,Exactly,0);
                Void(23+5,Exactly,0);
                Void(23+6,Exactly,0);
                Void(23+7,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Crazy Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Crazy Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일 포트가 변경되었습니다.", 4);
                SetVoid(7+4,SetTo,0);
                SetVoid(7+5,SetTo,0);
                SetVoid(7+6,SetTo,0);
                SetVoid(7+7,SetTo,0);
                SetVoid(7+i,SetTo,1);
                SetSwitch("Switch 86",Random);
                PreserveTrigger();
            },
        }
        
        for j = 4, 7 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(23+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Crazy Missile [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Crazy Missile [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16크레이지탄이 이미 사용되고 있습니다.", 4);
                    SetResources(CurrentPlayer, Add, CrazyOre, Ore);
                    PreserveTrigger();
                },
            }
        end
        for j = 0, 3 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Crazy Missile [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Crazy Missile [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, CrazyOre, Ore);
                    PreserveTrigger();
                },
            }
        end
    end
    
    for i = 0, 3 do -- 슈퍼 크레이지 (아카이브)
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+0,Exactly,0);
                Void(177+1,Exactly,0);
                Void(177+2,Exactly,0);
                Void(177+3,Exactly,0);
                Void(7+0,Exactly,0);
                Void(7+1,Exactly,0);
                Void(7+2,Exactly,0);
                Void(7+3,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Super Crazy Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Super Crazy Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일에 유도기능을 부여합니다", 4);
                SetVoid(23+0,SetTo,0);
                SetVoid(23+1,SetTo,0);
                SetVoid(23+2,SetTo,0);
                SetVoid(23+3,SetTo,0);
                SetVoid(185+0,SetTo,0);
                SetVoid(185+1,SetTo,0);
                SetVoid(185+2,SetTo,0);
                SetVoid(185+3,SetTo,0);
                SetVoid(23+i,SetTo,1);
                PreserveTrigger();
            },
        }
        
        for j = 0, 3 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(7+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Super Crazy Missile [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Super Crazy Missile [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16크레이지탄이 이미 사용되고 있습니다.", 4);
                    SetResources(CurrentPlayer, Add, SuperOre, Ore);
                    PreserveTrigger();
                },
            }
        end
        for j = 0, 3 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Super Crazy Missile [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Super Crazy Missile [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, SuperOre, Ore);
                    PreserveTrigger();
                },
            }
        end
    end
    for i = 4, 7 do -- 슈퍼 크레이지 (아카이브)
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+4,Exactly,0);
                Void(177+5,Exactly,0);
                Void(177+6,Exactly,0);
                Void(177+7,Exactly,0);
                Void(7+4,Exactly,0);
                Void(7+5,Exactly,0);
                Void(7+6,Exactly,0);
                Void(7+7,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Super Crazy Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Super Crazy Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일에 유도기능을 부여합니다", 4);
                SetVoid(23+4,SetTo,0);
                SetVoid(23+5,SetTo,0);
                SetVoid(23+6,SetTo,0);
                SetVoid(23+7,SetTo,0);
                SetVoid(185+4,SetTo,0);
                SetVoid(185+5,SetTo,0);
                SetVoid(185+6,SetTo,0);
                SetVoid(185+7,SetTo,0);
                SetVoid(23+i,SetTo,1);
                PreserveTrigger();
            },
        }
        
        for j = 4, 7 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(7+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Super Crazy Missile [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Super Crazy Missile [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16크레이지탄이 이미 사용되고 있습니다.", 4);
                    SetResources(CurrentPlayer, Add, SuperOre, Ore);
                    PreserveTrigger();
                },
            }
        end
        for j = 4, 7 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Super Crazy Missile [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Super Crazy Missile [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, SuperOre, Ore);
                    PreserveTrigger();
                },
            }
        end
    end
    for i = 0, 3 do -- 체인 (아비터)
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(193+0,Exactly,0);
                Void(193+1,Exactly,0);
                Void(193+2,Exactly,0);
                Void(193+3,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Chain Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Chain Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일 이(가) 연쇄 폭팔 합니다.", 4);
                SetVoid(15+0,SetTo,0);
                SetVoid(15+1,SetTo,0);
                SetVoid(15+2,SetTo,0);
                SetVoid(15+3,SetTo,0);
                SetVoid(15+i,SetTo,1);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(193+0,AtLeast,1);
                Bring(CurrentPlayer, AtLeast, 1, "Chain Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Chain Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일 이(가) 연쇄 폭팔 합니다.", 4);
                SetVoid(15+0,SetTo,0);
                SetVoid(15+1,SetTo,0);
                SetVoid(15+2,SetTo,0);
                SetVoid(15+3,SetTo,0);
                SetVoid(193+0,SetTo,0);
                SetVoid(193+1,SetTo,0);
                SetVoid(193+2,SetTo,0);
                SetVoid(193+3,SetTo,0);
                SetVoid(15+i,SetTo,1);
                SetVoid(193+i,SetTo,1);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(193+1,AtLeast,1);
                Bring(CurrentPlayer, AtLeast, 1, "Chain Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Chain Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일 이(가) 연쇄 폭팔 합니다.", 4);
                SetVoid(15+0,SetTo,0);
                SetVoid(15+1,SetTo,0);
                SetVoid(15+2,SetTo,0);
                SetVoid(15+3,SetTo,0);
                SetVoid(193+0,SetTo,0);
                SetVoid(193+1,SetTo,0);
                SetVoid(193+2,SetTo,0);
                SetVoid(193+3,SetTo,0);
                SetVoid(15+i,SetTo,1);
                SetVoid(193+i,SetTo,1);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(193+2,AtLeast,1);
                Bring(CurrentPlayer, AtLeast, 1, "Chain Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Chain Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일 이(가) 연쇄 폭팔 합니다.", 4);
                SetVoid(15+0,SetTo,0);
                SetVoid(15+1,SetTo,0);
                SetVoid(15+2,SetTo,0);
                SetVoid(15+3,SetTo,0);
                SetVoid(193+0,SetTo,0);
                SetVoid(193+1,SetTo,0);
                SetVoid(193+2,SetTo,0);
                SetVoid(193+3,SetTo,0);
                SetVoid(15+i,SetTo,1);
                SetVoid(193+i,SetTo,1);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(193+3,AtLeast,1);
                Bring(CurrentPlayer, AtLeast, 1, "Chain Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Chain Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일 이(가) 연쇄 폭팔 합니다.", 4);
                SetVoid(15+0,SetTo,0);
                SetVoid(15+1,SetTo,0);
                SetVoid(15+2,SetTo,0);
                SetVoid(15+3,SetTo,0);
                SetVoid(193+0,SetTo,0);
                SetVoid(193+1,SetTo,0);
                SetVoid(193+2,SetTo,0);
                SetVoid(193+3,SetTo,0);
                SetVoid(15+i,SetTo,1);
                SetVoid(193+i,SetTo,1);
                PreserveTrigger();
            },
        }
    end
    for i = 4, 7 do -- 체인 (아비터)
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(193+4,Exactly,0);
                Void(193+5,Exactly,0);
                Void(193+6,Exactly,0);
                Void(193+7,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Chain Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Chain Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일 이(가) 연쇄 폭팔 합니다.", 4);
                SetVoid(15+4,SetTo,0);
                SetVoid(15+5,SetTo,0);
                SetVoid(15+6,SetTo,0);
                SetVoid(15+7,SetTo,0);
                SetVoid(15+i,SetTo,1);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(193+4,AtLeast,1);
                Bring(CurrentPlayer, AtLeast, 1, "Chain Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Chain Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일 이(가) 연쇄 폭팔 합니다.", 4);
                SetVoid(15+4,SetTo,0);
                SetVoid(15+5,SetTo,0);
                SetVoid(15+6,SetTo,0);
                SetVoid(15+7,SetTo,0);
                SetVoid(193+4,SetTo,0);
                SetVoid(193+5,SetTo,0);
                SetVoid(193+6,SetTo,0);
                SetVoid(193+7,SetTo,0);
                SetVoid(15+i,SetTo,1);
                SetVoid(193+i,SetTo,1);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(193+5,AtLeast,1);
                Bring(CurrentPlayer, AtLeast, 1, "Chain Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Chain Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일 이(가) 연쇄 폭팔 합니다.", 4);
                SetVoid(15+4,SetTo,0);
                SetVoid(15+5,SetTo,0);
                SetVoid(15+6,SetTo,0);
                SetVoid(15+7,SetTo,0);
                SetVoid(193+4,SetTo,0);
                SetVoid(193+5,SetTo,0);
                SetVoid(193+6,SetTo,0);
                SetVoid(193+7,SetTo,0);
                SetVoid(15+i,SetTo,1);
                SetVoid(193+i,SetTo,1);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(193+6,AtLeast,1);
                Bring(CurrentPlayer, AtLeast, 1, "Chain Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Chain Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일 이(가) 연쇄 폭팔 합니다.", 4);
                SetVoid(15+4,SetTo,0);
                SetVoid(15+5,SetTo,0);
                SetVoid(15+6,SetTo,0);
                SetVoid(15+7,SetTo,0);
                SetVoid(193+4,SetTo,0);
                SetVoid(193+5,SetTo,0);
                SetVoid(193+6,SetTo,0);
                SetVoid(193+7,SetTo,0);
                SetVoid(15+i,SetTo,1);
                SetVoid(193+i,SetTo,1);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(193+7,AtLeast,1);
                Bring(CurrentPlayer, AtLeast, 1, "Chain Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Chain Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일 이(가) 연쇄 폭팔 합니다.", 4);
                SetVoid(15+4,SetTo,0);
                SetVoid(15+5,SetTo,0);
                SetVoid(15+6,SetTo,0);
                SetVoid(15+7,SetTo,0);
                SetVoid(193+4,SetTo,0);
                SetVoid(193+5,SetTo,0);
                SetVoid(193+6,SetTo,0);
                SetVoid(193+7,SetTo,0);
                SetVoid(15+i,SetTo,1);
                SetVoid(193+i,SetTo,1);
                PreserveTrigger();
            },
        }
    end

    --[[
    for i = 0, 3 do -- 시간왜곡
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(629,Exactly,0);
                Void(177+0,Exactly,0);
                Void(177+1,Exactly,0);
                Void(177+2,Exactly,0);
                Void(177+3,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Time Distortion [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Time Distortion [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일의 시간이 일정시간 동안 왜곡됩니다.", 4);
                SetVoid(629,SetTo,24*14);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(629,AtLeast,1);
                Void(177+0,Exactly,0);
                Void(177+1,Exactly,0);
                Void(177+2,Exactly,0);
                Void(177+3,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Time Distortion [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Time Distortion [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일의 시간왜곡 시간이 연장되었습니다.", 4);
                SetVoid(629,Add,24*14);
                PreserveTrigger();
            },
        }
        for j = 0, 3 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Time Distortion [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Time Distortion [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, TimeOre, Ore);
                    PreserveTrigger();
                },
            }
        end
    end
    for i = 4, 7 do -- 시간왜곡
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(630,Exactly,0);
                Void(177+4,Exactly,0);
                Void(177+5,Exactly,0);
                Void(177+6,Exactly,0);
                Void(177+7,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Time Distortion [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Time Distortion [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일의 시간이 일정시간 동안 왜곡됩니다.", 4);
                SetVoid(630,SetTo,24*14);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(630,AtLeast,1);
                Void(177+4,Exactly,0);
                Void(177+5,Exactly,0);
                Void(177+6,Exactly,0);
                Void(177+7,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Time Distortion [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\Notice.wav");
                RemoveUnitAt(1, "Time Distortion [N]", "전체필드", CurrentPlayer);
                DisplayText("\x16미사일의 시간왜곡 시간이 연장되었습니다.", 4);
                SetVoid(630,Add,24*14);
                PreserveTrigger();
            },
        }
        for j = 4, 7 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Time Distortion [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Time Distortion [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, TimeOre, Ore);
                    PreserveTrigger();
                },
            }
        end
    end
]]--
    for i = 0, 3 do -- 패턴체인지 (가스통)
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+0,Exactly,0);
                Void(177+1,Exactly,0);
                Void(177+2,Exactly,0);
                Void(177+3,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Pattern Change [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Pattern Change [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Pattern Change가 발동 되었습니다.\r\n\x16미사일의 도착지점이 반전 됩니다.\r\n\x16다만 자신의 팀에 있는 미사일은 반전 되지 않습니다.", 4);
                SetVoid(609+i,SetTo,1);
                PreserveTrigger();
            },
        }
        for j = 0, 3 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Pattern Change [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Pattern Change [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, PatternOre, Ore);
                    PreserveTrigger();
                },
            }
        end
    end

    for i = 4, 7 do -- 패턴체인지 (가스통)
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+4,Exactly,0);
                Void(177+5,Exactly,0);
                Void(177+6,Exactly,0);
                Void(177+7,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Pattern Change [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Pattern Change [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Pattern Change가 발동 되었습니다.\r\n\x16미사일의 도착지점이 반전 됩니다.\r\n\x16다만 자신의 팀에 있는 미사일은 반전 되지 않습니다.", 4);
                SetVoid(609+i,SetTo,1);
                PreserveTrigger();
            },
        }
        for j = 4, 7 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Pattern Change [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Pattern Change [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, PatternOre, Ore);
                    PreserveTrigger();
                },
            }
        end
    end

    for i = 0, 3 do -- 미사일 가속
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+0,Exactly,0);
                Void(177+1,Exactly,0);
                Void(177+2,Exactly,0);
                Void(177+3,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Missile Accelerator [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Missile Accelerator [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Missile Accelerator가 발동 되었습니다.\r\n\x16아군의 모든 미사일들의 최대속도를 증가시킵니다.\r\n\x16다만 가속된 미사일의 가속도는 감소합니다.", 4);
                SetVoid(671,SetTo,1);
                SetVoid(699,SetTo,i);
                SetCp(4);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Missile Accelerator \x16가 감지되었습니다.", 4);
                TalkingPortrait(82, 1500);
                SetCp(5);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Missile Accelerator \x16가 감지되었습니다.", 4);
                TalkingPortrait(82, 1500);
                SetCp(6);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Missile Accelerator \x16가 감지되었습니다.", 4);
                TalkingPortrait(82, 1500);
                SetCp(7);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Missile Accelerator \x16가 감지되었습니다.", 4);
                TalkingPortrait(82, 1500);
                SetCp(i);
                PreserveTrigger();
            },
        }
        for j = 0, 3 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Missile Accelerator [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Missile Accelerator [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, AccelOre, Ore);
                    PreserveTrigger();
                },
            }
        end
    end

    for i = 4, 7 do -- 미사일 가속
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+4,Exactly,0);
                Void(177+5,Exactly,0);
                Void(177+6,Exactly,0);
                Void(177+7,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Missile Accelerator [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Missile Accelerator [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Missile Accelerator가 발동 되었습니다.\r\n\x16아군의 모든 미사일들의 최대속도를 증가시킵니다.\r\n\x16다만 가속된 미사일의 가속도는 감소합니다.", 4);
                SetVoid(672,SetTo,1);
                SetVoid(700,SetTo,i);
                SetCp(0);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Missile Accelerator \x16가 감지되었습니다.", 4);
                TalkingPortrait(82, 1500);
                SetCp(1);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Missile Accelerator \x16가 감지되었습니다.", 4);
                TalkingPortrait(82, 1500);
                SetCp(2);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Missile Accelerator \x16가 감지되었습니다.", 4);
                TalkingPortrait(82, 1500);
                SetCp(3);
                PlayWAV("staredit\\wav\\Notice.wav");
                DisplayText(ColorCode[i+1].."Missile Accelerator \x16가 감지되었습니다.", 4);
                TalkingPortrait(82, 1500);
                SetCp(i);
                PreserveTrigger();
            },
        }
        for j = 4, 7 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Missile Accelerator [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Missile Accelerator [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, AccelOre, Ore);
                    PreserveTrigger();
                },
            }
        end
    end
    
    for i = 0, 3 do -- 커브 미사일
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+0,Exactly,0);
                Void(177+1,Exactly,0);
                Void(177+2,Exactly,0);
                Void(177+3,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Curve Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Curve Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Curve Missile이 발동 되었습니다.\r\n\x16정방향 미사일의 방향을 사이드로 변경합니다.\r\n\x16다만 상대필드 위에 있는 미사일만 적용됩니다.", 4);
                SetVoid(647+i,SetTo,1);
                PreserveTrigger();
            },
        }
        for j = 0, 3 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Curve Missile [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Curve Missile [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, CurveOre, Ore);
                    PreserveTrigger();
                },
            }
        end
    end
    for i = 4, 7 do -- 커브 미사일
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+4,Exactly,0);
                Void(177+5,Exactly,0);
                Void(177+6,Exactly,0);
                Void(177+7,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Curve Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Curve Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Curve Missile이 발동 되었습니다.\r\n\x16정방향 미사일의 방향을 사이드로 변경합니다.\r\n\x16다만 상대필드 위에 있는 미사일만 적용됩니다.", 4);
                SetVoid(647+i,SetTo,1);
                PreserveTrigger();
            },
        }
        for j = 4, 7 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Curve Missile [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Curve Missile [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, CurveOre, Ore);
                    PreserveTrigger();
                },
            }
        end
    end
    --[[
    for i = 0, 3 do -- 트위스트 (가스통)
        DoActions(i,SetSwitch("Switch 72",Clear))
        for j = 0, 3 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(15+j,AtLeast,500);
                },
                actions = {
                    SetSwitch("Switch 72",Set);
                    PreserveTrigger();
                },
            }
        end
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+0,Exactly,0);
                Void(177+1,Exactly,0);
                Void(177+2,Exactly,0);
                Void(177+3,Exactly,0);
                Void(15+0,Exactly,0);
                Void(15+1,Exactly,0);
                Void(15+2,Exactly,0);
                Void(15+3,Exactly,0);
                Void(31+0,Exactly,0);
                Void(31+1,Exactly,0);
                Void(31+2,Exactly,0);
                Void(31+3,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Twist Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Twist Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Twist Missile가 발동 되었습니다.\r\n\x16아군의 미사일이 잠시 정지후 랜덤적으로 날라갑니다.\r\n\x16정지 되어있을때 사용시 정지 시간이 증가합니다.", 4);
                SetVoid(31+i,SetTo,200);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+0,Exactly,0);
                Void(177+1,Exactly,0);
                Void(177+2,Exactly,0);
                Void(177+3,Exactly,0);
                Switch("Switch 72",Set);
                Void(31+0,Exactly,0);
                Void(31+1,Exactly,0);
                Void(31+2,Exactly,0);
                Void(31+3,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Twist Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Twist Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Twist Missile가 발동 되었습니다.\r\n\x16아군의 미사일이 잠시 정지후 랜덤적으로 날라갑니다.\r\n\x16정지 되어있을때 사용시 정지 시간이 증가합니다.", 4);
                SetVoid(31+i,SetTo,200);
                PreserveTrigger();
            },
        }
        
        for j = 0, 3 do 
        CIf(i,{Void(177+0,Exactly,0);
                Void(177+1,Exactly,0);
                Void(177+2,Exactly,0);
                Void(177+3,Exactly,0);
                Void(15+0,Exactly,0);
                Void(15+1,Exactly,0);
                Void(15+2,Exactly,0);
                Void(15+3,Exactly,0);
                Void(31+j,AtLeast,141);
                Bring(CurrentPlayer, AtLeast, 1, "Twist Missile [N]","전체필드")},
                {PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Twist Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Twist Missile 연속기가 발동 되었습니다.\r\n\x16미사일이 멈추는 시간이 늘어납니다.", 4)})
            CIfX(i,Void(31+0,AtLeast,1))
                f_Read(i,VO(31+0),V(CTemp))
            CElseIfX(Void(31+1,AtLeast,1))
                f_Read(i,VO(31+1),V(CTemp))
            CElseIfX(Void(31+2,AtLeast,1))
                f_Read(i,VO(31+2),V(CTemp))
            CElseIfX(Void(31+3,AtLeast,1))
                f_Read(i,VO(31+3),V(CTemp))
            CIfXEnd()
            
            CMov(i,VO(31+i),_Add(V(CTemp),160))
        CIfEnd()
    
        CIf(i,{Void(177+0,Exactly,0);
                Void(177+1,Exactly,0);
                Void(177+2,Exactly,0);
                Void(177+3,Exactly,0);
                Switch("Switch 72",Set);
                Void(31+j,AtLeast,141);
                Bring(CurrentPlayer, AtLeast, 1, "Twist Missile [N]","전체필드")},
                {PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Twist Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Twist Missile 연속기가 발동 되었습니다.\r\n\x16미사일이 멈추는 시간이 늘어납니다.", 4)})
            CIfX(i,Void(31+0,AtLeast,1))
                f_Read(i,VO(31+0),V(CTemp))
            CElseIfX(Void(31+1,AtLeast,1))
                f_Read(i,VO(31+1),V(CTemp))
            CElseIfX(Void(31+2,AtLeast,1))
                f_Read(i,VO(31+2),V(CTemp))
            CElseIfX(Void(31+3,AtLeast,1))
                f_Read(i,VO(31+3),V(CTemp))
            CIfXEnd()
            
            CMov(i,VO(31+i),_Add(V(CTemp),160))
        CIfEnd()
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+0,Exactly,0);
                Void(177+1,Exactly,0);
                Void(177+2,Exactly,0);
                Void(177+3,Exactly,0);
                Void(15+0,Exactly,0);
                Void(15+1,Exactly,0);
                Void(15+2,Exactly,0);
                Void(15+3,Exactly,0);
                Void(31+j,AtLeast,1); Void(31+j,AtMost,140);
                Bring(CurrentPlayer, AtLeast, 1, "Twist Missile [N]","전체필드");
            },
            actions = {
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Twist Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Twist Missile 연속기가 발동 되었습니다.\r\n\x16미사일이 멈추지 않고 꺽게 됩니다.", 4);
                SetResources(i,Add,TwistOre,Ore);
                SetVoid(31+0,SetTo,0);
                SetVoid(31+1,SetTo,0);
                SetVoid(31+2,SetTo,0);
                SetVoid(31+3,SetTo,0);
                SetVoid(31+i,SetTo,141);
                PreserveTrigger();
            },
        }
    
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+0,Exactly,0);
                Void(177+1,Exactly,0);
                Void(177+2,Exactly,0);
                Void(177+3,Exactly,0);
                Switch("Switch 72",Set);
                Void(31+j,AtLeast,1); Void(31+j,AtMost,140);
                Bring(CurrentPlayer, AtLeast, 1, "Twist Missile [N]","전체필드");
            },
            actions = {
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Twist Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Twist Missile 연속기가 발동 되었습니다.\r\n\x16미사일이 멈추지 않고 꺽게 됩니다.", 4);
                SetResources(i,Add,TwistOre,Ore);
                SetVoid(31+0,SetTo,0);
                SetVoid(31+1,SetTo,0);
                SetVoid(31+2,SetTo,0);
                SetVoid(31+3,SetTo,0);
                SetVoid(31+i,SetTo,141);
                PreserveTrigger();
            },
        }
        end
    
        for j = 0, 3 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Twist Missile [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Twist Missile [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, TTwistOre, Ore);
                    PreserveTrigger();
                },
            }
        end
    end
    
    for i = 4, 7 do -- 트위스트 (가스통)
        DoActions(i,SetSwitch("Switch 72",Clear))
        for j = 4, 7 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(15+j,AtLeast,500);
                },
                actions = {
                    SetSwitch("Switch 72",Set);
                    PreserveTrigger();
                },
            }
        end
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+4,Exactly,0);
                Void(177+5,Exactly,0);
                Void(177+6,Exactly,0);
                Void(177+7,Exactly,0);
                Void(15+4,Exactly,0);
                Void(15+5,Exactly,0);
                Void(15+6,Exactly,0);
                Void(15+7,Exactly,0);
                Void(31+4,Exactly,0);
                Void(31+5,Exactly,0);
                Void(31+6,Exactly,0);
                Void(31+7,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Twist Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Twist Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Twist Missile가 발동 되었습니다.\r\n\x16아군의 미사일이 잠시 정지후 랜덤적으로 날라갑니다.\r\n\x16정지 되어있을때 사용시 정지 시간이 증가합니다.", 4);
                SetVoid(31+i,SetTo,200);
                PreserveTrigger();
            },
        }
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+4,Exactly,0);
                Void(177+5,Exactly,0);
                Void(177+6,Exactly,0);
                Void(177+7,Exactly,0);
                Switch("Switch 72",Set);
                Void(31+4,Exactly,0);
                Void(31+5,Exactly,0);
                Void(31+6,Exactly,0);
                Void(31+7,Exactly,0);
                Bring(CurrentPlayer, AtLeast, 1, "Twist Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Twist Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Twist Missile가 발동 되었습니다.\r\n\x16아군의 미사일이 잠시 정지후 랜덤적으로 날라갑니다.\r\n\x16정지 되어있을때 사용시 정지 시간이 증가합니다.", 4);
                SetVoid(31+i,SetTo,200);
                PreserveTrigger();
            },
        }
        
        for j = 4, 7 do 
        CIf(i,{Void(177+4,Exactly,0);
                Void(177+5,Exactly,0);
                Void(177+6,Exactly,0);
                Void(177+7,Exactly,0);
                Void(15+4,Exactly,0);
                Void(15+5,Exactly,0);
                Void(15+6,Exactly,0);
                Void(15+7,Exactly,0);
                Void(31+j,AtLeast,141);
                Bring(CurrentPlayer, AtLeast, 1, "Twist Missile [N]","Anywhere");},
                {PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Twist Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Twist Missile 연속기가 발동 되었습니다.\r\n\x16미사일이 멈추는 시간이 늘어납니다.", 4)})
            CIfX(i,Void(31+4,AtLeast,1))
                f_Read(i,VO(31+4),V(CTemp))
            CElseIfX(Void(31+5,AtLeast,1))
                f_Read(i,VO(31+5),V(CTemp))
            CElseIfX(Void(31+6,AtLeast,1))
                f_Read(i,VO(31+6),V(CTemp))
            CElseIfX(Void(31+7,AtLeast,1))
                f_Read(i,VO(31+7),V(CTemp))
            CIfXEnd()
            
            CMov(i,VO(31+i),_Add(V(CTemp),160))
        CIfEnd()
    
        CIf(i,{Void(177+4,Exactly,0);
                Void(177+5,Exactly,0);
                Void(177+6,Exactly,0);
                Void(177+7,Exactly,0);
                Switch("Switch 72",Set);
                Void(31+j,AtLeast,141);
                Bring(CurrentPlayer, AtLeast, 1, "Twist Missile [N]","Anywhere");},
                {PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Twist Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Twist Missile 연속기가 발동 되었습니다.\r\n\x16미사일이 멈추는 시간이 늘어납니다.", 4)})
            CIfX(i,Void(31+4,AtLeast,1))
                f_Read(i,VO(31+4),V(CTemp))
            CElseIfX(Void(31+5,AtLeast,1))
                f_Read(i,VO(31+5),V(CTemp))
            CElseIfX(Void(31+6,AtLeast,1))
                f_Read(i,VO(31+6),V(CTemp))
            CElseIfX(Void(31+7,AtLeast,1))
                f_Read(i,VO(31+7),V(CTemp))
            CIfXEnd()
            
            CMov(i,VO(31+i),_Add(V(CTemp),160))
        CIfEnd()
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+4,Exactly,0);
                Void(177+5,Exactly,0);
                Void(177+6,Exactly,0);
                Void(177+7,Exactly,0);
                Void(15+4,Exactly,0);
                Void(15+5,Exactly,0);
                Void(15+6,Exactly,0);
                Void(15+7,Exactly,0);
                Void(31+j,AtLeast,1); Void(31+j,AtMost,140);
                Bring(CurrentPlayer, AtLeast, 1, "Twist Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Twist Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Twist Missile 연속기가 발동 되었습니다.\r\n\x16미사일이 멈추지 않고 꺽게 됩니다.", 4);
                SetResources(i,Add,TwistOre,Ore);
                SetVoid(31+4,SetTo,0);
                SetVoid(31+5,SetTo,0);
                SetVoid(31+6,SetTo,0);
                SetVoid(31+7,SetTo,0);
                SetVoid(31+i,SetTo,141);
                PreserveTrigger();
            },
        }
    
        Trigger { -- No comment (D4077FD6)
            players = {i},
            conditions = {
                Void(177+4,Exactly,0);
                Void(177+5,Exactly,0);
                Void(177+6,Exactly,0);
                Void(177+7,Exactly,0);
                Switch("Switch 72",Set);
                Void(31+j,AtLeast,1); Void(31+j,AtMost,140);
                Bring(CurrentPlayer, AtLeast, 1, "Twist Missile [N]","Anywhere");
            },
            actions = {
                PlayWAV("staredit\\wav\\SpeedMessage.wav");
                RemoveUnitAt(1, "Twist Missile [N]", "전체필드", CurrentPlayer);
                DisplayText("\x1F<System>  \x16Twist Missile 연속기가 발동 되었습니다.\r\n\x16미사일이 멈추지 않고 꺽게 됩니다.", 4);
                SetResources(i,Add,TwistOre,Ore);
                SetVoid(31+4,SetTo,0);
                SetVoid(31+5,SetTo,0);
                SetVoid(31+6,SetTo,0);
                SetVoid(31+7,SetTo,0);
                SetVoid(31+i,SetTo,141);
                PreserveTrigger();
            },
        }
        end
    
        for j = 4, 7 do
            Trigger { -- No comment (D4077FD6)
                players = {i},
                conditions = {
                    Void(177+j,AtLeast,1);
                    Bring(CurrentPlayer, AtLeast, 1, "Twist Missile [N]","Anywhere");
                },
                actions = {
                    PlayWAV("staredit\\wav\\Notice.wav");
                    RemoveUnitAt(1, "Twist Missile [N]", "전체필드", CurrentPlayer);
                    DisplayText("\x16Hyper Nova가 시전중이므로 사용할 수 없습니다.", 4);
                    SetResources(CurrentPlayer, Add, TTwistOre, Ore);
                    PreserveTrigger();
                },
            }
        end
    end
    ]]--
end