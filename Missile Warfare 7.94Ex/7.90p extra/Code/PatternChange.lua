function SUB_PatternChange()
-- #패턴 체인지----------------------------------------
PatternEPD, TempVar, TempEPD, TempFlingy, TempFlingy2 = CreateVars(5,AllPlayers)

for i = 0, 3 do -- 패턴체인지 1팀
    Trigger {
        players = {i},
        conditions = {
            Void(609+i,AtLeast,1);
            Deaths(i,Exactly,0,"!Exist");
        },
        actions = {
            SetVoid(609+i,SetTo,0);
            PreserveTrigger();
        }
    }
    
    CIf(i,{Void(609+i,AtLeast,1),Deaths(i,Exactly,1,"!Exist")},SetVoid(609+i,Subtract,1))
        if i == 0 then
            DoActions(i,{
                SetLoc("ProbeS",4,SetTo,768);
                SetLoc("ProbeS",12,SetTo,1792);
                SetLoc("ProbeS",0,SetTo,576);
                SetLoc("ProbeS",8,SetTo,1472);
                GiveUnits(All,"Men",P2,"ProbeS",i);
                GiveUnits(All,"Men",P3,"ProbeS",i);
                GiveUnits(All,"Men",P4,"ProbeS",i);
            })
        elseif i == 1 then
            DoActions(i,{
                SetLoc("ProbeS",4,SetTo,768);
                SetLoc("ProbeS",12,SetTo,1792);
                SetLoc("ProbeS",0,SetTo,576);
                SetLoc("ProbeS",8,SetTo,1472);
                GiveUnits(All,"Men",P1,"ProbeS",i);
                GiveUnits(All,"Men",P3,"ProbeS",i);
                GiveUnits(All,"Men",P4,"ProbeS",i);
            })
        elseif i == 2 then
            DoActions(i,{
                SetLoc("ProbeS",4,SetTo,768);
                SetLoc("ProbeS",12,SetTo,1792);
                SetLoc("ProbeS",0,SetTo,576);
                SetLoc("ProbeS",8,SetTo,1472);
                GiveUnits(All,"Men",P1,"ProbeS",i);
                GiveUnits(All,"Men",P2,"ProbeS",i);
                GiveUnits(All,"Men",P4,"ProbeS",i);
            })
        elseif i == 3 then
            DoActions(i,{
                SetLoc("ProbeS",4,SetTo,768);
                SetLoc("ProbeS",12,SetTo,1792);
                SetLoc("ProbeS",0,SetTo,576);
                SetLoc("ProbeS",8,SetTo,1472);
                GiveUnits(All,"Men",P1,"ProbeS",i);
                GiveUnits(All,"Men",P2,"ProbeS",i);
                GiveUnits(All,"Men",P3,"ProbeS",i);
            })
        end

        CMov(i,PatternEPD,161741+19)
        CWhile(i,NVar(PatternEPD,AtLeast,19025+19))
            CIf(i,{TDeathsX(PatternEPD,Exactly,i,0,0xFF),TDeathsX(PatternEPD,AtLeast,1*256,0,0xFF00)})
                CIf(i,{TDeathsX(Vi(PatternEPD[2],36),Exactly,0x4,0,0x4),TDeathsX(Vi(PatternEPD[2],-9),AtLeast,576,0,0xFFFF),TDeathsX(Vi(PatternEPD[2],-9),AtMost,1472,0,0xFFFF)
                ,TDeathsX(Vi(PatternEPD[2],-9),AtLeast,768*65536,0,0xFFFF0000),TDeathsX(Vi(PatternEPD[2],-9),AtMost,1792*65536,0,0xFFFF0000)})
                    CIfX(i,{TTOR({_TDeaths(Vi(PatternEPD[2],6),Exactly,80,0),_TDeaths(Vi(PatternEPD[2],6),Exactly,88,0)})})
                        CWrite(i,_Add(PatternEPD,-6),2133)
                        CWrite(i,_Add(PatternEPD,-1),120,0,0xFFFF)
                    CElseX()
                        CRead(i,TempEPD,_Add(PatternEPD,6),0,0xFF,nil,1)
                        CIfX(i,NVar(TempEPD,Exactly,0,0x3),{SetNVar(TempEPD,SetTo,0),SetNVar(TempFlingy,SetTo,0),SetNVar(TempFlingy2,SetTo,0)})
                            CReadX(i,TempEPD,_Add(PatternEPD,6),0,0xFF,1/4)
                            CRead(i,TempFlingy,_Add(TempEPD,EPD(0x6644F8)),0,0xFF)     
                            CReadX(i,TempFlingy2,_Add(TempEPD,EPD(0x6644F8)),0,0xFF,1/2)   
                        CElseIfX(NVar(TempEPD,Exactly,1,0x3),{SetNVar(TempEPD,SetTo,0),SetNVar(TempFlingy,SetTo,0),SetNVar(TempFlingy2,SetTo,0)})
                            CReadX(i,TempEPD,_Add(PatternEPD,6),0,0xFF,1/4)
                            CReadX(i,TempFlingy,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF00,0xFF},1/256)     
                            CReadX(i,TempFlingy2,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF00,0xFF},1/512)  
                        CElseIfX(NVar(TempEPD,Exactly,2,0x3),{SetNVar(TempEPD,SetTo,0),SetNVar(TempFlingy,SetTo,0),SetNVar(TempFlingy2,SetTo,0)})
                            CReadX(i,TempEPD,_Add(PatternEPD,6),0,0xFF,1/4)
                            CReadX(i,TempFlingy,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF0000,0xFF},1/65536)     
                            CReadX(i,TempFlingy2,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF0000,0xFF},1/131072)     
                        CElseX({SetNVar(TempEPD,SetTo,0),SetNVar(TempFlingy,SetTo,0),SetNVar(TempFlingy2,SetTo,0)})
                            CReadX(i,TempEPD,_Add(PatternEPD,6),0,0xFF,1/4)
                            CReadX(i,TempFlingy,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF000000,0xFF},1/16777216)     
                            CReadX(i,TempFlingy2,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF000000,0xFF},1/33554432)     
                        CIfXEnd()
                        
                        CReadX(i,TempVar,_Add(TempFlingy,EPD(0x6C9EF8)),0,0xFFFFFFFF,5)
                        CiDiv(i,TempVar,4) CWrite(i,_Add(PatternEPD,-6),TempVar)
                        CIfX(i,NVar(TempFlingy,Exactly,0,0x1),SetNVar(TempVar,SetTo,0))    
                            CReadX(i,TempVar,_Add(TempFlingy2,EPD(0x6C9C78)),0,0xFFFF,5)
                            CDiv(i,TempVar,4) CWrite(i,_Add(PatternEPD,-1),TempVar,0,0xFFFF)
                        CElseX(SetNVar(TempVar,SetTo,0))
                            CReadX(i,TempVar,_Add(TempFlingy2,EPD(0x6C9C78)),0,0xFFFF0000,5)
                            CDiv(i,TempVar,4*65536) CWrite(i,_Add(PatternEPD,-1),TempVar,0,0xFFFF)
                        CIfXEnd()
                    CIfXEnd()
                CIfEnd()
            CIfEnd()
        CWhileEnd(SetNVar(PatternEPD,Subtract,84))

        DoActions2(i,{
            SetLoc("ProbeE",4,SetTo,1760);
            SetLoc("ProbeE",12,SetTo,1824);
            
            SetLoc("ProbeS",0,SetTo,544+64*0);
            SetLoc("ProbeS",8,SetTo,608+64*0);
            SetLoc("ProbeE",0,SetTo,1440-64*0);
            SetLoc("ProbeE",8,SetTo,1504-64*0);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*1);
            SetLoc("ProbeS",8,SetTo,608+64*1);
            SetLoc("ProbeE",0,SetTo,1440-64*1);
            SetLoc("ProbeE",8,SetTo,1504-64*1);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*2);
            SetLoc("ProbeS",8,SetTo,608+64*2);
            SetLoc("ProbeE",0,SetTo,1440-64*2);
            SetLoc("ProbeE",8,SetTo,1504-64*2);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*3);
            SetLoc("ProbeS",8,SetTo,608+64*3);
            SetLoc("ProbeE",0,SetTo,1440-64*3);
            SetLoc("ProbeE",8,SetTo,1504-64*3);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*4);
            SetLoc("ProbeS",8,SetTo,608+64*4);
            SetLoc("ProbeE",0,SetTo,1440-64*4);
            SetLoc("ProbeE",8,SetTo,1504-64*4);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*5);
            SetLoc("ProbeS",8,SetTo,608+64*5);
            SetLoc("ProbeE",0,SetTo,1440-64*5);
            SetLoc("ProbeE",8,SetTo,1504-64*5);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*6);
            SetLoc("ProbeS",8,SetTo,608+64*6);
            SetLoc("ProbeE",0,SetTo,1440-64*6);
            SetLoc("ProbeE",8,SetTo,1504-64*6);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*7);
            SetLoc("ProbeS",8,SetTo,608+64*7);
            SetLoc("ProbeE",0,SetTo,1440-64*7);
            SetLoc("ProbeE",8,SetTo,1504-64*7);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*8);
            SetLoc("ProbeS",8,SetTo,608+64*8);
            SetLoc("ProbeE",0,SetTo,1440-64*8);
            SetLoc("ProbeE",8,SetTo,1504-64*8);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*9);
            SetLoc("ProbeS",8,SetTo,608+64*9);
            SetLoc("ProbeE",0,SetTo,1440-64*9);
            SetLoc("ProbeE",8,SetTo,1504-64*9);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*10);
            SetLoc("ProbeS",8,SetTo,608+64*10);
            SetLoc("ProbeE",0,SetTo,1440-64*10);
            SetLoc("ProbeE",8,SetTo,1504-64*10);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*11);
            SetLoc("ProbeS",8,SetTo,608+64*11);
            SetLoc("ProbeE",0,SetTo,1440-64*11);
            SetLoc("ProbeE",8,SetTo,1504-64*11);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*12);
            SetLoc("ProbeS",8,SetTo,608+64*12);
            SetLoc("ProbeE",0,SetTo,1440-64*12);
            SetLoc("ProbeE",8,SetTo,1504-64*12);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*13);
            SetLoc("ProbeS",8,SetTo,608+64*13);
            SetLoc("ProbeE",0,SetTo,1440-64*13);
            SetLoc("ProbeE",8,SetTo,1504-64*13);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*14);
            SetLoc("ProbeS",8,SetTo,608+64*14);
            SetLoc("ProbeE",0,SetTo,1440-64*14);
            SetLoc("ProbeE",8,SetTo,1504-64*14);
            Order("Men", i, "ProbeS", Move, "ProbeE");

            SetLoc("ProbeS",0,SetTo,576+64*0);
            SetLoc("ProbeS",8,SetTo,640+64*0);
            SetLoc("ProbeE",0,SetTo,1408-64*0);
            SetLoc("ProbeE",8,SetTo,1472-64*0);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*1);
            SetLoc("ProbeS",8,SetTo,640+64*1);
            SetLoc("ProbeE",0,SetTo,1408-64*1);
            SetLoc("ProbeE",8,SetTo,1472-64*1);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*2);
            SetLoc("ProbeS",8,SetTo,640+64*2);
            SetLoc("ProbeE",0,SetTo,1408-64*2);
            SetLoc("ProbeE",8,SetTo,1472-64*2);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*3);
            SetLoc("ProbeS",8,SetTo,640+64*3);
            SetLoc("ProbeE",0,SetTo,1408-64*3);
            SetLoc("ProbeE",8,SetTo,1472-64*3);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*4);
            SetLoc("ProbeS",8,SetTo,640+64*4);
            SetLoc("ProbeE",0,SetTo,1408-64*4);
            SetLoc("ProbeE",8,SetTo,1472-64*4);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*5);
            SetLoc("ProbeS",8,SetTo,640+64*5);
            SetLoc("ProbeE",0,SetTo,1408-64*5);
            SetLoc("ProbeE",8,SetTo,1472-64*5);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*6);
            SetLoc("ProbeS",8,SetTo,640+64*6);
            SetLoc("ProbeE",0,SetTo,1408-64*6);
            SetLoc("ProbeE",8,SetTo,1472-64*6);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*7);
            SetLoc("ProbeS",8,SetTo,640+64*7);
            SetLoc("ProbeE",0,SetTo,1408-64*7);
            SetLoc("ProbeE",8,SetTo,1472-64*7);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*8);
            SetLoc("ProbeS",8,SetTo,640+64*8);
            SetLoc("ProbeE",0,SetTo,1408-64*8);
            SetLoc("ProbeE",8,SetTo,1472-64*8);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*9);
            SetLoc("ProbeS",8,SetTo,640+64*9);
            SetLoc("ProbeE",0,SetTo,1408-64*9);
            SetLoc("ProbeE",8,SetTo,1472-64*9);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*10);
            SetLoc("ProbeS",8,SetTo,640+64*10);
            SetLoc("ProbeE",0,SetTo,1408-64*10);
            SetLoc("ProbeE",8,SetTo,1472-64*10);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*11);
            SetLoc("ProbeS",8,SetTo,640+64*11);
            SetLoc("ProbeE",0,SetTo,1408-64*11);
            SetLoc("ProbeE",8,SetTo,1472-64*11);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*12);
            SetLoc("ProbeS",8,SetTo,640+64*12);
            SetLoc("ProbeE",0,SetTo,1408-64*12);
            SetLoc("ProbeE",8,SetTo,1472-64*12);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*13);
            SetLoc("ProbeS",8,SetTo,640+64*13);
            SetLoc("ProbeE",0,SetTo,1408-64*13);
            SetLoc("ProbeE",8,SetTo,1472-64*13);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
        })
    CIfEnd()
end

for i = 4, 7 do -- 패턴체인지 2팀
    Trigger {
        players = {i},
        conditions = {
            Void(609+i,AtLeast,1);
            Deaths(i,Exactly,0,"!Exist");
        },
        actions = {
            SetVoid(609+i,SetTo,0);
            PreserveTrigger();
        }
    }
    
    CIf(i,{Void(609+i,AtLeast,1),Deaths(i,Exactly,1,"!Exist")},SetVoid(609+i,Subtract,1))
        if i == 4 then
            DoActions(i,{
                SetLoc("ProbeS",4,SetTo,256);
                SetLoc("ProbeS",12,SetTo,1280);
                SetLoc("ProbeS",0,SetTo,576);
                SetLoc("ProbeS",8,SetTo,1472);
                GiveUnits(All,"Men",P6,"ProbeS",i);
                GiveUnits(All,"Men",P7,"ProbeS",i);
                GiveUnits(All,"Men",P8,"ProbeS",i);
            })
        elseif i == 5 then
            DoActions(i,{
                SetLoc("ProbeS",4,SetTo,256);
                SetLoc("ProbeS",12,SetTo,1280);
                SetLoc("ProbeS",0,SetTo,576);
                SetLoc("ProbeS",8,SetTo,1472);
                GiveUnits(All,"Men",P5,"ProbeS",i);
                GiveUnits(All,"Men",P7,"ProbeS",i);
                GiveUnits(All,"Men",P8,"ProbeS",i);
            })
        elseif i == 6 then
            DoActions(i,{
                SetLoc("ProbeS",4,SetTo,256);
                SetLoc("ProbeS",12,SetTo,1280);
                SetLoc("ProbeS",0,SetTo,576);
                SetLoc("ProbeS",8,SetTo,1472);
                GiveUnits(All,"Men",P5,"ProbeS",i);
                GiveUnits(All,"Men",P6,"ProbeS",i);
                GiveUnits(All,"Men",P8,"ProbeS",i);
            })
        elseif i == 7 then
            DoActions(i,{
                SetLoc("ProbeS",4,SetTo,256);
                SetLoc("ProbeS",12,SetTo,1280);
                SetLoc("ProbeS",0,SetTo,576);
                SetLoc("ProbeS",8,SetTo,1472);
                GiveUnits(All,"Men",P5,"ProbeS",i);
                GiveUnits(All,"Men",P6,"ProbeS",i);
                GiveUnits(All,"Men",P7,"ProbeS",i);
            })
        end

        CMov(i,PatternEPD,161741+19)
        CWhile(i,NVar(PatternEPD,AtLeast,19025+19))
            CIf(i,{TDeathsX(PatternEPD,Exactly,i,0,0xFF),TDeathsX(PatternEPD,AtLeast,1*256,0,0xFF00)})
                CIf(i,{TDeathsX(Vi(PatternEPD[2],36),Exactly,0x4,0,0x4),TDeathsX(Vi(PatternEPD[2],-9),AtLeast,576,0,0xFFFF),TDeathsX(Vi(PatternEPD[2],-9),AtMost,1472,0,0xFFFF)
                ,TDeathsX(Vi(PatternEPD[2],-9),AtLeast,256*65536,0,0xFFFF0000),TDeathsX(Vi(PatternEPD[2],-9),AtMost,1280*65536,0,0xFFFF0000)})
                    CIfX(i,{TTOR({_TDeaths(Vi(PatternEPD[2],6),Exactly,80,0),_TDeaths(Vi(PatternEPD[2],6),Exactly,88,0)})})
                        CWrite(i,_Add(PatternEPD,-6),2133)
                        CWrite(i,_Add(PatternEPD,-1),120,0,0xFFFF)
                    CElseX()
                        CRead(i,TempEPD,_Add(PatternEPD,6),0,0xFF,nil,1)
                        CIfX(i,NVar(TempEPD,Exactly,0,0x3),{SetNVar(TempEPD,SetTo,0),SetNVar(TempFlingy,SetTo,0),SetNVar(TempFlingy2,SetTo,0)})
                            CReadX(i,TempEPD,_Add(PatternEPD,6),0,0xFF,1/4)
                            CRead(i,TempFlingy,_Add(TempEPD,EPD(0x6644F8)),0,0xFF)     
                            CReadX(i,TempFlingy2,_Add(TempEPD,EPD(0x6644F8)),0,0xFF,1/2)   
                        CElseIfX(NVar(TempEPD,Exactly,1,0x3),{SetNVar(TempEPD,SetTo,0),SetNVar(TempFlingy,SetTo,0),SetNVar(TempFlingy2,SetTo,0)})
                            CReadX(i,TempEPD,_Add(PatternEPD,6),0,0xFF,1/4)
                            CReadX(i,TempFlingy,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF00,0xFF},1/256)     
                            CReadX(i,TempFlingy2,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF00,0xFF},1/512)  
                        CElseIfX(NVar(TempEPD,Exactly,2,0x3),{SetNVar(TempEPD,SetTo,0),SetNVar(TempFlingy,SetTo,0),SetNVar(TempFlingy2,SetTo,0)})
                            CReadX(i,TempEPD,_Add(PatternEPD,6),0,0xFF,1/4)
                            CReadX(i,TempFlingy,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF0000,0xFF},1/65536)     
                            CReadX(i,TempFlingy2,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF0000,0xFF},1/131072)     
                        CElseX({SetNVar(TempEPD,SetTo,0),SetNVar(TempFlingy,SetTo,0),SetNVar(TempFlingy2,SetTo,0)})
                            CReadX(i,TempEPD,_Add(PatternEPD,6),0,0xFF,1/4)
                            CReadX(i,TempFlingy,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF000000,0xFF},1/16777216)     
                            CReadX(i,TempFlingy2,_Add(TempEPD,EPD(0x6644F8)),0,{0xFF000000,0xFF},1/33554432)     
                        CIfXEnd()
                        
                        CReadX(i,TempVar,_Add(TempFlingy,EPD(0x6C9EF8)),0,0xFFFFFFFF,5)
                        CiDiv(i,TempVar,4) CWrite(i,_Add(PatternEPD,-6),TempVar)
                        CIfX(i,NVar(TempFlingy,Exactly,0,0x1),SetNVar(TempVar,SetTo,0))    
                            CReadX(i,TempVar,_Add(TempFlingy2,EPD(0x6C9C78)),0,0xFFFF,5)
                            CDiv(i,TempVar,4) CWrite(i,_Add(PatternEPD,-1),TempVar,0,0xFFFF)
                        CElseX(SetNVar(TempVar,SetTo,0))
                            CReadX(i,TempVar,_Add(TempFlingy2,EPD(0x6C9C78)),0,0xFFFF0000,5)
                            CDiv(i,TempVar,4*65536) CWrite(i,_Add(PatternEPD,-1),TempVar,0,0xFFFF)
                        CIfXEnd()
                    CIfXEnd()
                CIfEnd()
            CIfEnd()
        CWhileEnd(SetNVar(PatternEPD,Subtract,84))

        DoActions2(i,{
            SetLoc("ProbeE",4,SetTo,224);
            SetLoc("ProbeE",12,SetTo,288);
            
            SetLoc("ProbeS",0,SetTo,544+64*0);
            SetLoc("ProbeS",8,SetTo,608+64*0);
            SetLoc("ProbeE",0,SetTo,1440-64*0);
            SetLoc("ProbeE",8,SetTo,1504-64*0);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*1);
            SetLoc("ProbeS",8,SetTo,608+64*1);
            SetLoc("ProbeE",0,SetTo,1440-64*1);
            SetLoc("ProbeE",8,SetTo,1504-64*1);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*2);
            SetLoc("ProbeS",8,SetTo,608+64*2);
            SetLoc("ProbeE",0,SetTo,1440-64*2);
            SetLoc("ProbeE",8,SetTo,1504-64*2);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*3);
            SetLoc("ProbeS",8,SetTo,608+64*3);
            SetLoc("ProbeE",0,SetTo,1440-64*3);
            SetLoc("ProbeE",8,SetTo,1504-64*3);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*4);
            SetLoc("ProbeS",8,SetTo,608+64*4);
            SetLoc("ProbeE",0,SetTo,1440-64*4);
            SetLoc("ProbeE",8,SetTo,1504-64*4);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*5);
            SetLoc("ProbeS",8,SetTo,608+64*5);
            SetLoc("ProbeE",0,SetTo,1440-64*5);
            SetLoc("ProbeE",8,SetTo,1504-64*5);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*6);
            SetLoc("ProbeS",8,SetTo,608+64*6);
            SetLoc("ProbeE",0,SetTo,1440-64*6);
            SetLoc("ProbeE",8,SetTo,1504-64*6);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*7);
            SetLoc("ProbeS",8,SetTo,608+64*7);
            SetLoc("ProbeE",0,SetTo,1440-64*7);
            SetLoc("ProbeE",8,SetTo,1504-64*7);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*8);
            SetLoc("ProbeS",8,SetTo,608+64*8);
            SetLoc("ProbeE",0,SetTo,1440-64*8);
            SetLoc("ProbeE",8,SetTo,1504-64*8);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*9);
            SetLoc("ProbeS",8,SetTo,608+64*9);
            SetLoc("ProbeE",0,SetTo,1440-64*9);
            SetLoc("ProbeE",8,SetTo,1504-64*9);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*10);
            SetLoc("ProbeS",8,SetTo,608+64*10);
            SetLoc("ProbeE",0,SetTo,1440-64*10);
            SetLoc("ProbeE",8,SetTo,1504-64*10);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*11);
            SetLoc("ProbeS",8,SetTo,608+64*11);
            SetLoc("ProbeE",0,SetTo,1440-64*11);
            SetLoc("ProbeE",8,SetTo,1504-64*11);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*12);
            SetLoc("ProbeS",8,SetTo,608+64*12);
            SetLoc("ProbeE",0,SetTo,1440-64*12);
            SetLoc("ProbeE",8,SetTo,1504-64*12);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*13);
            SetLoc("ProbeS",8,SetTo,608+64*13);
            SetLoc("ProbeE",0,SetTo,1440-64*13);
            SetLoc("ProbeE",8,SetTo,1504-64*13);
            Order("Men", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,544+64*14);
            SetLoc("ProbeS",8,SetTo,608+64*14);
            SetLoc("ProbeE",0,SetTo,1440-64*14);
            SetLoc("ProbeE",8,SetTo,1504-64*14);
            Order("Men", i, "ProbeS", Move, "ProbeE");

            SetLoc("ProbeS",0,SetTo,576+64*0);
            SetLoc("ProbeS",8,SetTo,640+64*0);
            SetLoc("ProbeE",0,SetTo,1408-64*0);
            SetLoc("ProbeE",8,SetTo,1472-64*0);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*1);
            SetLoc("ProbeS",8,SetTo,640+64*1);
            SetLoc("ProbeE",0,SetTo,1408-64*1);
            SetLoc("ProbeE",8,SetTo,1472-64*1);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*2);
            SetLoc("ProbeS",8,SetTo,640+64*2);
            SetLoc("ProbeE",0,SetTo,1408-64*2);
            SetLoc("ProbeE",8,SetTo,1472-64*2);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*3);
            SetLoc("ProbeS",8,SetTo,640+64*3);
            SetLoc("ProbeE",0,SetTo,1408-64*3);
            SetLoc("ProbeE",8,SetTo,1472-64*3);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*4);
            SetLoc("ProbeS",8,SetTo,640+64*4);
            SetLoc("ProbeE",0,SetTo,1408-64*4);
            SetLoc("ProbeE",8,SetTo,1472-64*4);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*5);
            SetLoc("ProbeS",8,SetTo,640+64*5);
            SetLoc("ProbeE",0,SetTo,1408-64*5);
            SetLoc("ProbeE",8,SetTo,1472-64*5);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*6);
            SetLoc("ProbeS",8,SetTo,640+64*6);
            SetLoc("ProbeE",0,SetTo,1408-64*6);
            SetLoc("ProbeE",8,SetTo,1472-64*6);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*7);
            SetLoc("ProbeS",8,SetTo,640+64*7);
            SetLoc("ProbeE",0,SetTo,1408-64*7);
            SetLoc("ProbeE",8,SetTo,1472-64*7);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*8);
            SetLoc("ProbeS",8,SetTo,640+64*8);
            SetLoc("ProbeE",0,SetTo,1408-64*8);
            SetLoc("ProbeE",8,SetTo,1472-64*8);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*9);
            SetLoc("ProbeS",8,SetTo,640+64*9);
            SetLoc("ProbeE",0,SetTo,1408-64*9);
            SetLoc("ProbeE",8,SetTo,1472-64*9);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*10);
            SetLoc("ProbeS",8,SetTo,640+64*10);
            SetLoc("ProbeE",0,SetTo,1408-64*10);
            SetLoc("ProbeE",8,SetTo,1472-64*10);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*11);
            SetLoc("ProbeS",8,SetTo,640+64*11);
            SetLoc("ProbeE",0,SetTo,1408-64*11);
            SetLoc("ProbeE",8,SetTo,1472-64*11);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*12);
            SetLoc("ProbeS",8,SetTo,640+64*12);
            SetLoc("ProbeE",0,SetTo,1408-64*12);
            SetLoc("ProbeE",8,SetTo,1472-64*12);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
            SetLoc("ProbeS",0,SetTo,576+64*13);
            SetLoc("ProbeS",8,SetTo,640+64*13);
            SetLoc("ProbeE",0,SetTo,1408-64*13);
            SetLoc("ProbeE",8,SetTo,1472-64*13);
            Order("Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Fast Missile☆", i, "ProbeS", Move, "ProbeE");
            Order("Big Sniping Missile☆", i, "ProbeS", Move, "ProbeE");
        })
    CIfEnd()
end


end