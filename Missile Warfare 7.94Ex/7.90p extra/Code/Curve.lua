function SUB_Curve()

    for i = 0, 3 do -- 커브미사일 1팀
        Trigger {
            players = {i},
            conditions = {
                Void(647+i,AtLeast,1);
                Deaths(i,Exactly,0,"!Exist");
            },
            actions = {
                SetVoid(647+i,SetTo,0);
                PreserveTrigger();
            }
        }
        
    CIf(i,{Void(647+i,AtLeast,1),Deaths(i,Exactly,1,"!Exist")},{SetVoid(647+i,Subtract,1),
        SetLoc("ProbeS",4,SetTo,1232);
        SetLoc("ProbeS",12,SetTo,1680);
        SetLoc("ProbeS",0,SetTo,0);
        SetLoc("ProbeS",8,SetTo,1664);
        GiveUnits(All,"Men",Force1,"ProbeS",P11);
    })
        CWhile(i,{Bring(P11,AtLeast,1,"Men","Anywhere")})
            DoActions(i,{
                SetLoc("ProbeS",0,SetTo,12);
                SetLoc("ProbeS",4,SetTo,12);
                SetLoc("ProbeS",8,SetTo,0);
                SetLoc("ProbeS",12,SetTo,0);
                SetLoc("ProbeE",0,SetTo,0);
                SetLoc("ProbeE",4,SetTo,0);
                SetLoc("ProbeE",8,SetTo,0);
                SetLoc("ProbeE",12,SetTo,0);
                MoveLocation("ProbeS","Men",P11,"Anywhere");
                MoveLocation("ProbeE","Men",P11,"Anywhere");
                SetLoc("ProbeE",0,SetTo,2048);
                SetLoc("ProbeE",8,SetTo,2048);
                GiveUnits(1,"Men",P11,"Anywhere",i);
                Order("Men",i,"ProbeS",Move,"ProbeE");
            })
        CWhileEnd()
        DoActions(i,{GiveUnits(All,"Men",P11,"Anywhere",i)})
    CIfEnd()
    end

    for i = 4, 7 do -- 커브미사일 2팀
        Trigger {
            players = {i},
            conditions = {
                Void(647+i,AtLeast,1);
                Deaths(i,Exactly,0,"!Exist");
            },
            actions = {
                SetVoid(647+i,SetTo,0);
                PreserveTrigger();
            }
        }
        
    CIf(i,{Void(647+i,AtLeast,1),Deaths(i,Exactly,1,"!Exist")},{SetVoid(647+i,Subtract,1),
        SetLoc("ProbeS",4,SetTo,368);
        SetLoc("ProbeS",12,SetTo,816);
        SetLoc("ProbeS",0,SetTo,0);
        SetLoc("ProbeS",8,SetTo,1664);
        GiveUnits(All,"Men",Force2,"ProbeS",P11);
    })
        CWhile(i,{Bring(P11,AtLeast,1,"Men","Anywhere")})
            DoActions(i,{
                SetLoc("ProbeS",0,SetTo,12);
                SetLoc("ProbeS",4,SetTo,12);
                SetLoc("ProbeS",8,SetTo,0);
                SetLoc("ProbeS",12,SetTo,0);
                SetLoc("ProbeE",0,SetTo,0);
                SetLoc("ProbeE",4,SetTo,0);
                SetLoc("ProbeE",8,SetTo,0);
                SetLoc("ProbeE",12,SetTo,0);
                MoveLocation("ProbeS","Men",P11,"Anywhere");
                MoveLocation("ProbeE","Men",P11,"Anywhere");
                SetLoc("ProbeE",0,SetTo,2048);
                SetLoc("ProbeE",8,SetTo,2048);
                GiveUnits(1,"Men",P11,"Anywhere",i);
                Order("Men",i,"ProbeS",Move,"ProbeE");
            })
        CWhileEnd()
        DoActions(i,{GiveUnits(All,"Men",P11,"Anywhere",i)})
    CIfEnd()
    end
end