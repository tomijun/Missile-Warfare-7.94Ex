function SUB_Accel()
    AccelEPD, TempVar, TempEPD, TempFlingy, TempFlingy2 = CreateVars(5,P0)
    
    CIf(P0,{Void(671,AtLeast,1)},SetVoid(671,Subtract,1))
    Trigger {players = {P0},conditions = {Void(699,Exactly,0)},actions = {PreserveTrigger();
            GiveUnits(All,"Men",P2,"1팀필드",P1);
            GiveUnits(All,"Men",P3,"1팀필드",P1);
            GiveUnits(All,"Men",P4,"1팀필드",P1);
    }}
    Trigger {players = {P0},conditions = {Void(699,Exactly,1)},actions = {PreserveTrigger();
            GiveUnits(All,"Men",P1,"1팀필드",P2);
            GiveUnits(All,"Men",P3,"1팀필드",P2);
            GiveUnits(All,"Men",P4,"1팀필드",P2);
    }}
    Trigger {players = {P0},conditions = {Void(699,Exactly,2)},actions = {PreserveTrigger();
            GiveUnits(All,"Men",P1,"1팀필드",P3);
            GiveUnits(All,"Men",P2,"1팀필드",P3);
            GiveUnits(All,"Men",P4,"1팀필드",P3);
    }}
    Trigger {players = {P0},conditions = {Void(699,Exactly,3)},actions = {PreserveTrigger();
            GiveUnits(All,"Men",P1,"1팀필드",P4);
            GiveUnits(All,"Men",P2,"1팀필드",P4);
            GiveUnits(All,"Men",P3,"1팀필드",P4);
    }}
    
        CMov(P0,AccelEPD,161741+19)
        CWhile(P0,NVar(AccelEPD,AtLeast,19025+19))
            CIf(P0,{TDeathsX(AccelEPD,AtMost,3,0,0xFF),TDeathsX(AccelEPD,AtLeast,1*256,0,0xFF00)})
                CIf(P0,{TDeathsX(Vi(AccelEPD[2],36),Exactly,0x4,0,0x4)})
                    CIfX(P0,{TTOR({_TDeaths(Vi(AccelEPD[2],6),Exactly,80,0),_TDeaths(Vi(AccelEPD[2],6),Exactly,88,0)})})
                        CDoActions(P0,{
                            TSetMemory(_Add(AccelEPD,-6),Add,1707*1.5-1707);
                            TSetMemoryX(_Add(AccelEPD,-1),SetTo,107/9+18,0xFFFF);
                        })
                    CElseX()
                        CRead(P0,TempEPD,_Add(AccelEPD,6),0,0xFF,nil,1)
                        CIfX(P0,NVar(TempEPD,Exactly,0,0x3),{SetNVar(TempEPD,SetTo,0),SetNVar(TempFlingy,SetTo,0),SetNVar(TempFlingy2,SetTo,0)})
                            CReadX(P0,TempEPD,_Add(AccelEPD,6),0,0xFF,1/4)
                            CRead(P0,TempFlingy,_Add(TempEPD,EPD(0x6644F8)),0,0xFF)     
                            CReadX(P0,TempFlingy2,_Add(TempEPD,EPD(0x6644F8)),0,0xFF,1/2)   
                        CElseIfX(NVar(TempEPD,Exactly,1,0x3),{SetNVar(TempEPD,SetTo,0),SetNVar(TempFlingy,SetTo,0),SetNVar(TempFlingy2,SetTo,0)})
                            CReadX(P0,TempEPD,_Add(AccelEPD,6),0,0xFF,1/4)
                            CReadX(P0,TempFlingy,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF00,0xFF},1/256)     
                            CReadX(P0,TempFlingy2,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF00,0xFF},1/512)  
                        CElseIfX(NVar(TempEPD,Exactly,2,0x3),{SetNVar(TempEPD,SetTo,0),SetNVar(TempFlingy,SetTo,0),SetNVar(TempFlingy2,SetTo,0)})
                            CReadX(P0,TempEPD,_Add(AccelEPD,6),0,0xFF,1/4)
                            CReadX(P0,TempFlingy,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF0000,0xFF},1/65536)     
                            CReadX(P0,TempFlingy2,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF0000,0xFF},1/131072)     
                        CElseX({SetNVar(TempEPD,SetTo,0),SetNVar(TempFlingy,SetTo,0),SetNVar(TempFlingy2,SetTo,0)})
                            CReadX(P0,TempEPD,_Add(AccelEPD,6),0,0xFF,1/4)
                            CReadX(P0,TempFlingy,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF000000,0xFF},1/16777216)     
                            CReadX(P0,TempFlingy2,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF000000,0xFF},1/33554432)     
                        CIfXEnd()
                        
                        CReadX(P0,TempVar,_Add(TempFlingy,EPD(0x6C9EF8)),0,0xFFFFFFFF,1)
                        CDoActions(P0,{
                            TSetMemory(_Add(AccelEPD,-6),Add,_Div(TempVar,2));
                        })
                        CIfX(P0,NVar(TempFlingy,Exactly,0,0x1),SetNVar(TempVar,SetTo,0))    
                            CReadX(P0,TempVar,_Add(TempFlingy2,EPD(0x6C9C78)),0,0xFFFF,1)
                            CDiv(P0,TempVar,9) CWrite(P0,_Add(AccelEPD,-1),_Add(TempVar,18),0,0xFFFF)
                        CElseX(SetNVar(TempVar,SetTo,0))
                            CReadX(P0,TempVar,_Add(TempFlingy2,EPD(0x6C9C78)),0,0xFFFF0000,1)
                            CDiv(P0,TempVar,9*65536) CWrite(P0,_Add(AccelEPD,-1),_Add(TempVar,18),0,0xFFFF)
                        CIfXEnd()
                    CIfXEnd()
                CIfEnd()
            CIfEnd()
        CWhileEnd(SetNVar(AccelEPD,Subtract,84))
    CIfEnd()

    CIf(P0,{Void(672,AtLeast,1)},SetVoid(672,Subtract,1))
    Trigger {players = {P0},conditions = {Void(700,Exactly,4)},actions = {PreserveTrigger();
            GiveUnits(All,"Men",P6,"2팀필드",P5);
            GiveUnits(All,"Men",P7,"2팀필드",P5);
            GiveUnits(All,"Men",P8,"2팀필드",P5);
    }}
    Trigger {players = {P0},conditions = {Void(700,Exactly,5)},actions = {PreserveTrigger();
            GiveUnits(All,"Men",P5,"2팀필드",P6);
            GiveUnits(All,"Men",P7,"2팀필드",P6);
            GiveUnits(All,"Men",P8,"2팀필드",P6);
    }}
    Trigger {players = {P0},conditions = {Void(700,Exactly,6)},actions = {PreserveTrigger();
            GiveUnits(All,"Men",P5,"2팀필드",P7);
            GiveUnits(All,"Men",P6,"2팀필드",P7);
            GiveUnits(All,"Men",P8,"2팀필드",P7);
    }}
    Trigger {players = {P0},conditions = {Void(700,Exactly,7)},actions = {PreserveTrigger();
            GiveUnits(All,"Men",P5,"2팀필드",P8);
            GiveUnits(All,"Men",P6,"2팀필드",P8);
            GiveUnits(All,"Men",P7,"2팀필드",P8);
    }}
        CMov(P0,AccelEPD,161741+19)
        CWhile(P0,NVar(AccelEPD,AtLeast,19025+19))
            CIf(P0,{TDeathsX(AccelEPD,AtLeast,4,0,0xFF),TDeathsX(AccelEPD,AtMost,7,0,0xFF),TDeathsX(AccelEPD,AtLeast,1*256,0,0xFF00)})
                CIf(P0,{TDeathsX(Vi(AccelEPD[2],36),Exactly,0x4,0,0x4)})
                    CIfX(P0,{TTOR({_TDeaths(Vi(AccelEPD[2],6),Exactly,80,0),_TDeaths(Vi(AccelEPD[2],6),Exactly,88,0)})})
                        CDoActions(P0,{
                            TSetMemory(_Add(AccelEPD,-6),Add,1707*1.5-1707);
                            TSetMemoryX(_Add(AccelEPD,-1),SetTo,107/9+18,0xFFFF);
                        })
                    CElseX()
                        CRead(P0,TempEPD,_Add(AccelEPD,6),0,0xFF,nil,1)
                        CIfX(P0,NVar(TempEPD,Exactly,0,0x3),{SetNVar(TempEPD,SetTo,0),SetNVar(TempFlingy,SetTo,0),SetNVar(TempFlingy2,SetTo,0)})
                            CReadX(P0,TempEPD,_Add(AccelEPD,6),0,0xFF,1/4)
                            CRead(P0,TempFlingy,_Add(TempEPD,EPD(0x6644F8)),0,0xFF)     
                            CReadX(P0,TempFlingy2,_Add(TempEPD,EPD(0x6644F8)),0,0xFF,1/2)   
                        CElseIfX(NVar(TempEPD,Exactly,1,0x3),{SetNVar(TempEPD,SetTo,0),SetNVar(TempFlingy,SetTo,0),SetNVar(TempFlingy2,SetTo,0)})
                            CReadX(P0,TempEPD,_Add(AccelEPD,6),0,0xFF,1/4)
                            CReadX(P0,TempFlingy,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF00,0xFF},1/256)     
                            CReadX(P0,TempFlingy2,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF00,0xFF},1/512)  
                        CElseIfX(NVar(TempEPD,Exactly,2,0x3),{SetNVar(TempEPD,SetTo,0),SetNVar(TempFlingy,SetTo,0),SetNVar(TempFlingy2,SetTo,0)})
                            CReadX(P0,TempEPD,_Add(AccelEPD,6),0,0xFF,1/4)
                            CReadX(P0,TempFlingy,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF0000,0xFF},1/65536)     
                            CReadX(P0,TempFlingy2,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF0000,0xFF},1/131072)     
                        CElseX({SetNVar(TempEPD,SetTo,0),SetNVar(TempFlingy,SetTo,0),SetNVar(TempFlingy2,SetTo,0)})
                            CReadX(P0,TempEPD,_Add(AccelEPD,6),0,0xFF,1/4)
                            CReadX(P0,TempFlingy,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF000000,0xFF},1/16777216)     
                            CReadX(P0,TempFlingy2,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF000000,0xFF},1/33554432)     
                        CIfXEnd()
                        
                        CReadX(P0,TempVar,_Add(TempFlingy,EPD(0x6C9EF8)),0,0xFFFFFFFF,1)
                        CDoActions(P0,{
                            TSetMemory(_Add(AccelEPD,-6),Add,_Div(TempVar,2));
                        })
                        CIfX(P0,NVar(TempFlingy,Exactly,0,0x1),SetNVar(TempVar,SetTo,0))    
                            CReadX(P0,TempVar,_Add(TempFlingy2,EPD(0x6C9C78)),0,0xFFFF,1)
                            CDiv(P0,TempVar,9) CWrite(P0,_Add(AccelEPD,-1),_Add(TempVar,18),0,0xFFFF)
                        CElseX(SetNVar(TempVar,SetTo,0))
                            CReadX(P0,TempVar,_Add(TempFlingy2,EPD(0x6C9C78)),0,0xFFFF0000,1)
                            CDiv(P0,TempVar,9*65536) CWrite(P0,_Add(AccelEPD,-1),_Add(TempVar,18),0,0xFFFF)
                        CIfXEnd()
                    CIfXEnd()
                CIfEnd()
            CIfEnd()
        CWhileEnd(SetNVar(AccelEPD,Subtract,84))
    CIfEnd()

end