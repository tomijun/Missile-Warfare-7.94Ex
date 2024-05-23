function SUB_HB()
    -- 수소폭탄 ---------------------------------
for i = 0, 3 do
    k = i+46
    Trigger { -- No comment (1F71B3CA)
        players = {i},
        conditions = {
            Bring(i, AtLeast, 1, "Hydrogen Bomb", "2팀필드");
        },
        actions = {
            SetVoid(97+i,SetTo,1);
            KillUnitAt(All, "Hydrogen Bomb", "Anywhere", i);
            SetLoc("Hydro1",0,SetTo,1024-32-64*2);
            SetLoc("Hydro1",8,SetTo,1024+32+64*2);
            SetLoc("Hydro1",4,SetTo,1280);
            SetLoc("Hydro1",12,SetTo,1664);
            CreateUnit(25, "만든이", "Hydro1", i);
            KillUnit("만든이", i);
            SetSwitch("Switch "..k,Set);
            SetVoid(105+i,SetTo,12);
        },
    }
    Trigger { -- No comment (1F71B3CA)
        players = {i},
        conditions = {
            Void(97+i,Exactly,1);
            Void(105+i,Exactly,0);
        },
        actions = {
            SetVoid(97+i,SetTo,2);
            SetLoc("Hydro1",0,SetTo,1024-32-64*3);
            SetLoc("Hydro1",8,SetTo,1024+32-64*3);
            SetLoc("Hydro1",4,SetTo,1472-32-64*2);
            SetLoc("Hydro1",12,SetTo,1472+32-64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32-64*1);
            SetLoc("Hydro1",12,SetTo,1472+32-64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32-64*0);
            SetLoc("Hydro1",12,SetTo,1472+32-64*0);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32+64*1);
            SetLoc("Hydro1",12,SetTo,1472+32+64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32+64*2);
            SetLoc("Hydro1",12,SetTo,1472+32+64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            
            SetLoc("Hydro1",0,SetTo,1024-32+64*3);
            SetLoc("Hydro1",8,SetTo,1024+32+64*3);
            SetLoc("Hydro1",4,SetTo,1472-32-64*2);
            SetLoc("Hydro1",12,SetTo,1472+32-64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32-64*1);
            SetLoc("Hydro1",12,SetTo,1472+32-64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32-64*0);
            SetLoc("Hydro1",12,SetTo,1472+32-64*0);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32+64*1);
            SetLoc("Hydro1",12,SetTo,1472+32+64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32+64*2);
            SetLoc("Hydro1",12,SetTo,1472+32+64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            KillUnit("만든이", i);
            SetSwitch("Switch "..k,Set);
            SetVoid(105+i,SetTo,12);
        },
    }
    Trigger { -- No comment (1F71B3CA)
        players = {i},
        conditions = {
            Void(97+i,Exactly,2);
            Void(105+i,Exactly,0);
        },
        actions = {
            SetVoid(97+i,SetTo,3);
            SetLoc("Hydro1",0,SetTo,1024-32-64*4);
            SetLoc("Hydro1",8,SetTo,1024+32-64*4);
            SetLoc("Hydro1",4,SetTo,1472-32-64*2);
            SetLoc("Hydro1",12,SetTo,1472+32-64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32-64*1);
            SetLoc("Hydro1",12,SetTo,1472+32-64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32-64*0);
            SetLoc("Hydro1",12,SetTo,1472+32-64*0);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32+64*1);
            SetLoc("Hydro1",12,SetTo,1472+32+64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32+64*2);
            SetLoc("Hydro1",12,SetTo,1472+32+64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            
            SetLoc("Hydro1",0,SetTo,1024-32+64*4);
            SetLoc("Hydro1",8,SetTo,1024+32+64*4);
            SetLoc("Hydro1",4,SetTo,1472-32-64*2);
            SetLoc("Hydro1",12,SetTo,1472+32-64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32-64*1);
            SetLoc("Hydro1",12,SetTo,1472+32-64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32-64*0);
            SetLoc("Hydro1",12,SetTo,1472+32-64*0);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32+64*1);
            SetLoc("Hydro1",12,SetTo,1472+32+64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32+64*2);
            SetLoc("Hydro1",12,SetTo,1472+32+64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            KillUnit("만든이", i);
            SetSwitch("Switch "..k,Set);
            SetVoid(105+i,SetTo,12);
            
        },
    }
    Trigger { -- No comment (1F71B3CA)
        players = {i},
        conditions = {
            Void(97+i,Exactly,3);
            Void(105+i,Exactly,0);
        },
        actions = {
            SetVoid(97+i,SetTo,4);
            SetLoc("Hydro1",0,SetTo,1024-32-64*5);
            SetLoc("Hydro1",8,SetTo,1024+32-64*5);
            SetLoc("Hydro1",4,SetTo,1472-32-64*2);
            SetLoc("Hydro1",12,SetTo,1472+32-64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32-64*1);
            SetLoc("Hydro1",12,SetTo,1472+32-64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32-64*0);
            SetLoc("Hydro1",12,SetTo,1472+32-64*0);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32+64*1);
            SetLoc("Hydro1",12,SetTo,1472+32+64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32+64*2);
            SetLoc("Hydro1",12,SetTo,1472+32+64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            
            SetLoc("Hydro1",0,SetTo,1024-32+64*5);
            SetLoc("Hydro1",8,SetTo,1024+32+64*5);
            SetLoc("Hydro1",4,SetTo,1472-32-64*2);
            SetLoc("Hydro1",12,SetTo,1472+32-64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32-64*1);
            SetLoc("Hydro1",12,SetTo,1472+32-64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32-64*0);
            SetLoc("Hydro1",12,SetTo,1472+32-64*0);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32+64*1);
            SetLoc("Hydro1",12,SetTo,1472+32+64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32+64*2);
            SetLoc("Hydro1",12,SetTo,1472+32+64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            KillUnit("만든이", i);
            SetSwitch("Switch "..k,Set);
            SetVoid(105+i,SetTo,12);
            
        },
    }
    Trigger { -- No comment (1F71B3CA)
        players = {i},
        conditions = {
            Void(97+i,Exactly,4);
            Void(105+i,Exactly,0);
        },
        actions = {
            SetVoid(97+i,SetTo,5);
            SetLoc("Hydro1",0,SetTo,1024-32-64*6);
            SetLoc("Hydro1",8,SetTo,1024+32-64*6);
            SetLoc("Hydro1",4,SetTo,1472-32-64*2);
            SetLoc("Hydro1",12,SetTo,1472+32-64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32-64*1);
            SetLoc("Hydro1",12,SetTo,1472+32-64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32-64*0);
            SetLoc("Hydro1",12,SetTo,1472+32-64*0);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32+64*1);
            SetLoc("Hydro1",12,SetTo,1472+32+64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32+64*2);
            SetLoc("Hydro1",12,SetTo,1472+32+64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            
            SetLoc("Hydro1",0,SetTo,1024-32+64*6);
            SetLoc("Hydro1",8,SetTo,1024+32+64*6);
            SetLoc("Hydro1",4,SetTo,1472-32-64*2);
            SetLoc("Hydro1",12,SetTo,1472+32-64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32-64*1);
            SetLoc("Hydro1",12,SetTo,1472+32-64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32-64*0);
            SetLoc("Hydro1",12,SetTo,1472+32-64*0);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32+64*1);
            SetLoc("Hydro1",12,SetTo,1472+32+64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,1472-32+64*2);
            SetLoc("Hydro1",12,SetTo,1472+32+64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            KillUnit("만든이", i);
            SetSwitch("Switch "..k,Set);
            SetVoid(105+i,SetTo,12);
        },
    }
    Trigger { -- No comment (1F71B3CA)
        players = {i},
        conditions = {
            Void(97+i,Exactly,5);
            Void(105+i,Exactly,0);
        },
        actions = {
            SetVoid(97+i,SetTo,0);
        },
    }
    DoActions(i,SetVoid(105+i,Subtract,1))
    end
    for i = 4, 7 do
    k = i+46
    Trigger { -- No comment (1F71B3CA)
        players = {i},
        conditions = {
            Bring(i, AtLeast, 1, "Hydrogen Bomb", "1팀필드");
        },
        actions = {
            SetVoid(97+i,SetTo,1);
            KillUnitAt(All, "Hydrogen Bomb", "Anywhere", i);
            SetLoc("Hydro1",0,SetTo,1024-32-64*2);
            SetLoc("Hydro1",8,SetTo,1024+32+64*2);
            SetLoc("Hydro1",4,SetTo,384);
            SetLoc("Hydro1",12,SetTo,768);
            CreateUnit(25, "만든이", "Hydro1", i);
            KillUnit("만든이", i);
            SetSwitch("Switch "..k,Set);
            SetVoid(105+i,SetTo,12);
        },
    }
    Trigger { -- No comment (1F71B3CA)
        players = {i},
        conditions = {
            Void(97+i,Exactly,1);
            Void(105+i,Exactly,0);
        },
        actions = {
            SetVoid(97+i,SetTo,2);
            SetLoc("Hydro1",0,SetTo,1024-32-64*3);
            SetLoc("Hydro1",8,SetTo,1024+32-64*3);
            SetLoc("Hydro1",4,SetTo,576-32-64*2);
            SetLoc("Hydro1",12,SetTo,576+32-64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32-64*1);
            SetLoc("Hydro1",12,SetTo,576+32-64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32-64*0);
            SetLoc("Hydro1",12,SetTo,576+32-64*0);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32+64*1);
            SetLoc("Hydro1",12,SetTo,576+32+64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32+64*2);
            SetLoc("Hydro1",12,SetTo,576+32+64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            
            SetLoc("Hydro1",0,SetTo,1024-32+64*3);
            SetLoc("Hydro1",8,SetTo,1024+32+64*3);
            SetLoc("Hydro1",4,SetTo,576-32-64*2);
            SetLoc("Hydro1",12,SetTo,576+32-64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32-64*1);
            SetLoc("Hydro1",12,SetTo,576+32-64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32-64*0);
            SetLoc("Hydro1",12,SetTo,576+32-64*0);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32+64*1);
            SetLoc("Hydro1",12,SetTo,576+32+64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32+64*2);
            SetLoc("Hydro1",12,SetTo,576+32+64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            KillUnit("만든이", i);
            SetSwitch("Switch "..k,Set);
            SetVoid(105+i,SetTo,12);
        },
    }
    Trigger { -- No comment (1F71B3CA)
        players = {i},
        conditions = {
            Void(97+i,Exactly,2);
            Void(105+i,Exactly,0);
        },
        actions = {
            SetVoid(97+i,SetTo,3);
            SetLoc("Hydro1",0,SetTo,1024-32-64*4);
            SetLoc("Hydro1",8,SetTo,1024+32-64*4);
            SetLoc("Hydro1",4,SetTo,576-32-64*2);
            SetLoc("Hydro1",12,SetTo,576+32-64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32-64*1);
            SetLoc("Hydro1",12,SetTo,576+32-64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32-64*0);
            SetLoc("Hydro1",12,SetTo,576+32-64*0);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32+64*1);
            SetLoc("Hydro1",12,SetTo,576+32+64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32+64*2);
            SetLoc("Hydro1",12,SetTo,576+32+64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            
            SetLoc("Hydro1",0,SetTo,1024-32+64*4);
            SetLoc("Hydro1",8,SetTo,1024+32+64*4);
            SetLoc("Hydro1",4,SetTo,576-32-64*2);
            SetLoc("Hydro1",12,SetTo,576+32-64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32-64*1);
            SetLoc("Hydro1",12,SetTo,576+32-64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32-64*0);
            SetLoc("Hydro1",12,SetTo,576+32-64*0);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32+64*1);
            SetLoc("Hydro1",12,SetTo,576+32+64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32+64*2);
            SetLoc("Hydro1",12,SetTo,576+32+64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            KillUnit("만든이", i);
            SetSwitch("Switch "..k,Set);
            SetVoid(105+i,SetTo,12);
            
        },
    }
    Trigger { -- No comment (1F71B3CA)
        players = {i},
        conditions = {
            Void(97+i,Exactly,3);
            Void(105+i,Exactly,0);
        },
        actions = {
            SetVoid(97+i,SetTo,4);
            SetLoc("Hydro1",0,SetTo,1024-32-64*5);
            SetLoc("Hydro1",8,SetTo,1024+32-64*5);
            SetLoc("Hydro1",4,SetTo,576-32-64*2);
            SetLoc("Hydro1",12,SetTo,576+32-64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32-64*1);
            SetLoc("Hydro1",12,SetTo,576+32-64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32-64*0);
            SetLoc("Hydro1",12,SetTo,576+32-64*0);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32+64*1);
            SetLoc("Hydro1",12,SetTo,576+32+64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32+64*2);
            SetLoc("Hydro1",12,SetTo,576+32+64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            
            SetLoc("Hydro1",0,SetTo,1024-32+64*5);
            SetLoc("Hydro1",8,SetTo,1024+32+64*5);
            SetLoc("Hydro1",4,SetTo,576-32-64*2);
            SetLoc("Hydro1",12,SetTo,576+32-64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32-64*1);
            SetLoc("Hydro1",12,SetTo,576+32-64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32-64*0);
            SetLoc("Hydro1",12,SetTo,576+32-64*0);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32+64*1);
            SetLoc("Hydro1",12,SetTo,576+32+64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32+64*2);
            SetLoc("Hydro1",12,SetTo,576+32+64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            KillUnit("만든이", i);
            SetSwitch("Switch "..k,Set);
            SetVoid(105+i,SetTo,12);
            
        },
    }
    Trigger { -- No comment (1F71B3CA)
        players = {i},
        conditions = {
            Void(97+i,Exactly,4);
            Void(105+i,Exactly,0);
        },
        actions = {
            SetVoid(97+i,SetTo,5);
            SetLoc("Hydro1",0,SetTo,1024-32-64*6);
            SetLoc("Hydro1",8,SetTo,1024+32-64*6);
            SetLoc("Hydro1",4,SetTo,576-32-64*2);
            SetLoc("Hydro1",12,SetTo,576+32-64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32-64*1);
            SetLoc("Hydro1",12,SetTo,576+32-64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32-64*0);
            SetLoc("Hydro1",12,SetTo,576+32-64*0);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32+64*1);
            SetLoc("Hydro1",12,SetTo,576+32+64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32+64*2);
            SetLoc("Hydro1",12,SetTo,576+32+64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            
            SetLoc("Hydro1",0,SetTo,1024-32+64*6);
            SetLoc("Hydro1",8,SetTo,1024+32+64*6);
            SetLoc("Hydro1",4,SetTo,576-32-64*2);
            SetLoc("Hydro1",12,SetTo,576+32-64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32-64*1);
            SetLoc("Hydro1",12,SetTo,576+32-64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32-64*0);
            SetLoc("Hydro1",12,SetTo,576+32-64*0);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32+64*1);
            SetLoc("Hydro1",12,SetTo,576+32+64*1);
            CreateUnit(1, "만든이", "Hydro1", i);
            SetLoc("Hydro1",4,SetTo,576-32+64*2);
            SetLoc("Hydro1",12,SetTo,576+32+64*2);
            CreateUnit(1, "만든이", "Hydro1", i);
            KillUnit("만든이", i);
            SetSwitch("Switch "..k,Set);
            SetVoid(105+i,SetTo,12);
        },
    }
    Trigger { -- No comment (1F71B3CA)
        players = {i},
        conditions = {
            Void(97+i,Exactly,5);
            Void(105+i,Exactly,0);
        },
        actions = {
            SetVoid(97+i,SetTo,0);
        },
    }
    DoActions(i,SetVoid(105+i,Subtract,1))
    end
end