function SUB_Distortion()
-- #시간 왜곡----------------------------------------
TimeEPD = CreateVars(1,P0)

-- 1팀 ------------------------------------
Trigger {
    players = {P0},
    conditions = {
        Void(629,AtLeast,1);
    },
    actions = {
        SetSwitch("Switch 87",Random);
        PreserveTrigger();
    }
}
-- 2팀 ------------------------------------
Trigger {
    players = {P0},
    conditions = {
        Void(630,AtLeast,1);
    },
    actions = {
        SetSwitch("Switch 88",Random);
        PreserveTrigger();
    }
}

CIf(P0,{_TP(_TOR(_TC(Void(629,AtLeast,1)),_TC(Void(630,AtLeast,1))))})
CMov(P0,TimeEPD,161741+19)
CWhile(P0,NVar(TimeEPD,AtLeast,19025+19))
    CIf(P0,{TDeathsX(TimeEPD,AtLeast,1*256,0,0xFF00),TDeathsX(TimeEPD,AtMost,7,0,0xFF),TDeathsX(Vi(TimeEPD[2],36),Exactly,0x4,0,0x4)})

        CIf(P0,{Void(629,AtLeast,1),TDeathsX(TimeEPD,AtMost,3,0,0xFF)})
            CIfX(P0,{Switch("Switch 87",Set)})
                CWrite(P0,_Add(TimeEPD,-4),50000)
            CElseX()
                CWrite(P0,_Add(TimeEPD,-4),0)
            CIfXEnd()
        CIfEnd()

        CIf(P0,{Void(630,AtLeast,1),TDeathsX(TimeEPD,AtLeast,4,0,0xFF)})
            CIfX(P0,{Switch("Switch 88",Set)})
                CWrite(P0,_Add(TimeEPD,-4),50000)
            CElseX()
                CWrite(P0,_Add(TimeEPD,-4),0)
            CIfXEnd()
        CIfEnd()

    CIfEnd()
CWhileEnd(SetNVar(TimeEPD,Subtract,84))
CIfEnd()
end