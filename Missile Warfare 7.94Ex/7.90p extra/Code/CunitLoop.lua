function SUB_CunitLoop()
    -- Cunit Loop
CMov(P0,V(CunitEPD),161741+25)
CWhile(P0,CVar("X",CunitEPD,AtLeast,19025+25))
	CIf(P0,{TDeathsX(Vi(CunitEPD,-6),AtLeast,1*256,0,0xFF00)})
		CDoActions(P0,{TSetDeathsX(Vi(CunitEPD,30),SetTo,0x04000000,0,0x04000000)})
		
		CIf(P0,{TDeathsX(V(CunitEPD),Exactly,156,0,0xFF)}) -- Pylon 처리
			CIf(P0,{TDeathsX(Vi(CunitEPD,30),Exactly,0,0,0x1)}) -- 1st Create
				CDoActions(P0,{TSetDeathsX(Vi(CunitEPD,43),SetTo,1,0,0xFFFF),
				TSetDeathsX(Vi(CunitEPD,30),SetTo,1,0,1)})
				CReadX(P0,V(CLocX),_Add(V(CunitEPD),-15),0,0xFFFF,1,1)
				CReadX(P0,V(CLocY),_Add(V(CunitEPD),-15),0,{0xFFFF0000,0xFFFFFFFF},1/65536,1)
				CRead(P0,V(Nextptr),0x628438,0,0xFFFFFFFF,1)
				CTrigger(P0,{CVar("X",Nextptr,AtLeast,19025),CVar("X",Nextptr,AtMost,161741)},
				{SetMemory(0x662AD0, SetTo, 64+1*65536),
				TSetLoc("CLoc79",0,SetTo,V(CLocX)),TSetLoc("CLoc79",8,SetTo,V(CLocX)),
				TSetLoc("CLoc79",4,SetTo,V(CLocY)),TSetLoc("CLoc79",12,SetTo,V(CLocY)),
				TCreateUnit(1,"Power [N]","CLoc79",_Read(_Add(V(CunitEPD),-6),0xFF)),--Nextptr
				SetMemory(0x662AD0, SetTo, 64+64*65536),
				TSetDeathsX(Vi(Nextptr,55),SetTo,0x200000,0,0x300000)},{Preserved})
			CIfEnd()
			
			CTrigger(P0,{TDeathsX(Vi(CunitEPD,13),Exactly,69,0,0xFFFF)},
			{TSetDeaths(Vi(CunitEPD,13),SetTo,0x00E400E4,0),TSetDeaths(Vi(CunitEPD,14),SetTo,0x00E400E4,0),TSetDeathsX(Vi(CunitEPD,15),SetTo,0x00E400E4,0,0xFFFF),TSetDeathsX(Vi(CunitEPD,16),SetTo,23*65536,0,0xFF0000),TSetDeathsX(Vi(CunitEPD,43),SetTo,1,0,0xFFFF)},{Preserved})
		CIfEnd()
		
		CIf(P0,{TDeathsX(V(CunitEPD),Exactly,161,0,0xFF)}) -- Marker 처리
			CIf(P0,{TDeathsX(Vi(CunitEPD,30),Exactly,0,0,0x1)}) -- 1st Create
				CDoActions(P0,{TSetDeathsX(Vi(CunitEPD,43),SetTo,1,0,0xFFFF),
				TSetDeathsX(Vi(CunitEPD,30),SetTo,1,0,1)})
				CReadX(P0,V(CLocX),_Add(V(CunitEPD),-15),0,0xFFFF,1,1)
				CReadX(P0,V(CLocY),_Add(V(CunitEPD),-15),0,{0xFFFF0000,0xFFFFFFFF},1/65536,1)
				CRead(P0,V(Nextptr),0x628438,0,0xFFFFFFFF,1)
				CTrigger(P0,{CVar("X",Nextptr,AtLeast,19025),CVar("X",Nextptr,AtMost,161741)},
				{SetMemory(0x662AE4, SetTo, 96+1*65536),SetMemory(0x66EFA8, SetTo, 131),
				TSetLoc("CLoc79",0,SetTo,V(CLocX)),TSetLoc("CLoc79",8,SetTo,V(CLocX)),
				TSetLoc("CLoc79",4,SetTo,V(CLocY)),TSetLoc("CLoc79",12,SetTo,V(CLocY)),
				TCreateUnit(1,"Builder Marker [N]","CLoc79",_Read(_Add(V(CunitEPD),-6),0xFF)),--Nextptr
				SetMemory(0x662AE4, SetTo, 96+64*65536),SetMemory(0x66EFA8, SetTo, 145),
				TSetDeathsX(Vi(Nextptr,55),SetTo,0x200100,0,0x300100)},{Preserved})
				CTrigger(P0,{TDeathsX(Vi(CunitEPD,-6),AtMost,3,0,0xFF)},{TSetDeaths(Vi(Nextptr,57),SetTo,0,2^(0+1+2+3))},{Preserved})
				CTrigger(P0,{TDeathsX(Vi(CunitEPD,-6),AtLeast,4,0,0xFF)},{TSetDeaths(Vi(Nextptr,57),SetTo,0,2^(4+5+6+7))},{Preserved})
			CIfEnd()
		
			CTrigger(P0,{TDeathsX(Vi(CunitEPD,13),Exactly,66,0,0xFFFF)},
			{TSetDeaths(Vi(CunitEPD,13),SetTo,0x00E400E4,0),TSetDeaths(Vi(CunitEPD,14),SetTo,0x00E400E4,0),TSetDeathsX(Vi(CunitEPD,15),SetTo,0x00E400E4,0,0xFFFF),TSetDeathsX(Vi(CunitEPD,16),SetTo,23*65536,0,0xFF0000),TSetDeathsX(Vi(CunitEPD,43),SetTo,1,0,0xFFFF)},{Preserved})
		CIfEnd()
		
		CIf(P0,{TDeathsX(V(CunitEPD),Exactly,119,0,0xFF)}) -- 관통 미사일 (에시비)
			CIf(P0,{TDeathsX(Vi(CunitEPD,30),Exactly,1,0,0x1)}) -- 1st Create
				CDoActions(P0,{TSetDeathsX(Vi(CunitEPD,30),SetTo,0,0,0x1)})
				CReadX(P0,V(CLocX),_Add(V(CunitEPD),-15),0,0xFFFF,1,1)
				CReadX(P0,V(CLocY),_Add(V(CunitEPD),-15),0,{0xFFFF0000,0xFFFFFFFF},1/65536,1)
				CRead(P0,V(CPlayerID),_Add(V(CunitEPD),-6),0,0xFF)
				CDoActions(P0,{
				TSetLoc("CLoc79",0,SetTo,Vi(CLocX,-16)),TSetLoc("CLoc79",8,SetTo,Vi(CLocX,16)),
				TSetLoc("CLoc79",4,SetTo,Vi(CLocY,-16)),TSetLoc("CLoc79",12,SetTo,Vi(CLocY,16)),
				TSetMemory(0x6509B0,SetTo,V(CPlayerID)),
				PlayWAV("staredit\\wav\\Fire.wav");
				DisplayText("\x16미사일 발사!", 4);
				RemoveUnitAt(1, "Penetrating Missile [B]", "CLoc79", CurrentPlayer);
				CreateUnit(1, "Penetrating Missile★", "CLoc79", CurrentPlayer);
				SetCp(0);
				})
			CIfEnd()
		CIfEnd()
		
		CIf(P0,{TTOR({_TDeathsX(V(CunitEPD),Exactly,172,0,0xFF),_TDeathsX(V(CunitEPD),Exactly,164,0,0xFF)})}) -- 배터리 & 코어
			CIf(P0,{TDeathsX(Vi(CunitEPD,30),Exactly,0,0,0x200000)}) -- 1st Create
				CDoActions(P0,{TSetDeathsX(Vi(CunitEPD,30),SetTo,0x200000,0,0x300000)})
			CIfEnd()
		CIfEnd()

		CIf(P0,{Void(673,AtLeast,1)}) -- 1팀 타임락
			CIf(P0,{TDeathsX(Vi(CunitEPD,30),Exactly,4,0,4),TDeathsX(Vi(CunitEPD,-6),AtMost,3,0,0xFF)},{SetSwitch("Switch 63",Clear)})
				CTrigger(P0,{TDeathsX(Vi(CunitEPD,-17),AtLeast,32*256,0,0xFF00),TDeathsX(Vi(CunitEPD,-17),AtMost,96*256,0,0xFF00)},{SetSwitch("Switch 63",Set)},{Preserved})
				CTrigger(P0,{TDeathsX(Vi(CunitEPD,-17),AtLeast,160*256,0,0xFF00),TDeathsX(Vi(CunitEPD,-17),AtMost,224*256,0,0xFF00)},{SetSwitch("Switch 63",Set)},{Preserved})
				CTrigger(P0,{TDeathsX(V(CunitEPD),Exactly,72,0,0xFF)},{SetSwitch("Switch 63",Clear)},{Preserved})
				CTrigger(P0,{TDeathsX(V(CunitEPD),Exactly,44,0,0xFF)},{SetSwitch("Switch 63",Clear)},{Preserved})
				CTrigger(P0,{TDeathsX(V(CunitEPD),Exactly,47,0,0xFF)},{SetSwitch("Switch 63",Clear)},{Preserved})
				CTrigger(P0,{TDeathsX(V(CunitEPD),Exactly,43,0,0xFF)},{SetSwitch("Switch 63",Clear)},{Preserved})

				CIfX(P0,{Switch("Switch 63",Cleared),VoidX(677,Exactly,1,1)}) -- 정방향 Lock
					CDoActions(P0,{
						TSetDeaths(Vi(CunitEPD,-11),SetTo,0,0),
						TSetDeaths(Vi(CunitEPD,-10),SetTo,0,0),
						TSetDeaths(Vi(CunitEPD,-9),SetTo,0,0),
					})
				CElseIfX({Switch("Switch 63",Set),VoidX(677,Exactly,2,2)}) -- 사이드 Lock
					CDoActions(P0,{
						TSetDeaths(Vi(CunitEPD,-11),SetTo,0,0),
						TSetDeaths(Vi(CunitEPD,-10),SetTo,0,0),
						TSetDeaths(Vi(CunitEPD,-9),SetTo,0,0),
					})
				CIfXEnd()
			CIfEnd()
		CIfEnd()

		CIf(P0,{Void(674,AtLeast,1)}) -- 2팀 타임락
			CIf(P0,{TDeathsX(Vi(CunitEPD,30),Exactly,4,0,4),TDeathsX(Vi(CunitEPD,-6),AtLeast,4,0,0xFF),TDeathsX(Vi(CunitEPD,-6),AtMost,7,0,0xFF)},{SetSwitch("Switch 63",Clear)})
				CTrigger(P0,{TDeathsX(Vi(CunitEPD,-17),AtLeast,32*256,0,0xFF00),TDeathsX(Vi(CunitEPD,-17),AtMost,96*256,0,0xFF00)},{SetSwitch("Switch 63",Set)},{Preserved})
				CTrigger(P0,{TDeathsX(Vi(CunitEPD,-17),AtLeast,160*256,0,0xFF00),TDeathsX(Vi(CunitEPD,-17),AtMost,224*256,0,0xFF00)},{SetSwitch("Switch 63",Set)},{Preserved})
				CTrigger(P0,{TDeathsX(V(CunitEPD),Exactly,72,0,0xFF)},{SetSwitch("Switch 63",Clear)},{Preserved})
				CTrigger(P0,{TDeathsX(V(CunitEPD),Exactly,44,0,0xFF)},{SetSwitch("Switch 63",Clear)},{Preserved})
				CTrigger(P0,{TDeathsX(V(CunitEPD),Exactly,47,0,0xFF)},{SetSwitch("Switch 63",Clear)},{Preserved})
				CTrigger(P0,{TDeathsX(V(CunitEPD),Exactly,43,0,0xFF)},{SetSwitch("Switch 63",Clear)},{Preserved})

				CIfX(P0,{Switch("Switch 63",Cleared),VoidX(678,Exactly,1,1)}) -- 정방향 Lock
					CDoActions(P0,{
						TSetDeaths(Vi(CunitEPD,-11),SetTo,0,0),
						TSetDeaths(Vi(CunitEPD,-10),SetTo,0,0),
						TSetDeaths(Vi(CunitEPD,-9),SetTo,0,0),
					})
				CElseIfX({Switch("Switch 63",Set),VoidX(678,Exactly,2,2)}) -- 사이드 Lock
					CDoActions(P0,{
						TSetDeaths(Vi(CunitEPD,-11),SetTo,0,0),
						TSetDeaths(Vi(CunitEPD,-10),SetTo,0,0),
						TSetDeaths(Vi(CunitEPD,-9),SetTo,0,0),
					})
				CIfXEnd()
			CIfEnd()
		CIfEnd()


		-------


		X1, Y1, X2, Y2, dX, dY, X3, Y3, TarTotal, Target, Pid = CreateVars(11,P0) -- Y3 = 0 / 2048
		TarArr = CreateVArr(4,P0)
		CIf(P0,{TDeathsX(V(CunitEPD),Exactly,44,0,0xFF)}) -- 호밍 미사일
			CIf(P0,{TDeaths(Vi(CunitEPD,-1),AtLeast,9000*256,0)})
				CIfX(P0,{TDeathsX(Vi(CunitEPD,-6),AtMost,3,0,0xFF),TDeathsX(Vi(CunitEPD,-15),AtLeast,1232*65536,0,0xFFFF0000)})
					CDoActions(P0,{TSetDeaths(Vi(CunitEPD,-1),SetTo,0,0),SetNVar(TarTotal,SetTo,0),TSetDeaths(Vi(CunitEPD,-12),SetTo,1893,0)})

					for i = 0, 3 do
					CIf(P0,{Deaths(i+4,Exactly,1, "!Exist"),TTOR({Command(i+4, AtLeast, 1, "Factories"),Command(i+4, AtLeast, 1, "사은품")})})
						CMov(P0,VArr(TarArr,TarTotal),i)
						DoActionsX(P0,{SetNVar(TarTotal,Add,1)})
					CIfEnd()	
					end

					CIf(P0,{NVar(TarTotal,AtLeast,1)})
						CRead(P0,Pid,_Add(V(CunitEPD),-6),0,0xFF)
						CMov(P0,Target,VArr(TarArr,_Mod(_Rand(),TarTotal)))
						f_Read(P0,_Add(V(CunitEPD),-15),X1,nil,0xFFFF,1)
						f_ReadX(P0,_Add(V(CunitEPD),-15),Y1,"-2",0xFFFFFFFF,1) 	

						CIfX(P0,{NVar(Target,Exactly,3)})
							f_Read(P0,_Loc("8P",0),X2,nil,0xFFFF,1)
							f_Read(P0,_Loc("8P",4),Y2,nil,0xFFFF,1)
						CElseIfX({NVar(Target,Exactly,2)})
							f_Read(P0,_Loc("7P",0),X2,nil,0xFFFF,1)
							f_Read(P0,_Loc("7P",4),Y2,nil,0xFFFF,1)
						CElseIfX({NVar(Target,Exactly,1)})
							f_Read(P0,_Loc("6P",0),X2,nil,0xFFFF,1)
							f_Read(P0,_Loc("6P",4),Y2,nil,0xFFFF,1)
						CElseX()
							f_Read(P0,_Loc("5P",0),X2,nil,0xFFFF,1)
							f_Read(P0,_Loc("5P",4),Y2,nil,0xFFFF,1)
						CIfXEnd()
						DoActionsX(P0,{SetNVar(X2,Add,16),SetNVar(Y2,Add,16),SetNVar(Y3,SetTo,1952)})

						CiSub(P0,dX,X2,X1)
						CiSub(P0,dY,Y2,Y1)

						CIfX(P0,{NVar(dX,Exactly,0)})
							CMov(P0,X3,X1)
						CElseX()
							CAdd(P0,X3,X1,_iDiv(_Mul(_iSub(_Mov(1952),Y1),dX),dY))
							CIfX(P0,{NVar(X3,AtLeast,1952),NVar(dX,AtMost,0x7FFFFFFF)},{SetNVar(X3,SetTo,1952)}) -- dX > 0
								CAdd(P0,Y3,Y1,_iDiv(_Mul(_iSub(_Mov(1952),X1),dY),dX))
							CElseIfX({TTOR({NVar(X3,AtMost,96),NVar(X3,AtLeast,0x80000000)}),NVar(dX,AtLeast,0x80000000)},{SetNVar(X3,SetTo,96)}) -- dX < 0
								CAdd(P0,Y3,Y1,_iDiv(_Mul(_iSub(_Mov(96),X1),dY),dX))
							CIfXEnd()
						CIfXEnd()

						CDoActions(P0,{
							TSetLoc("ProbeS",0,SetTo,_Add(X1,16)),
							TSetLoc("ProbeS",4,SetTo,_Add(Y1,16)),
							TSetLoc("ProbeS",8,SetTo,_Add(X1,-16)),
							TSetLoc("ProbeS",12,SetTo,_Add(Y1,-16)),
							TSetLoc("ProbeE",0,SetTo,X3),
							TSetLoc("ProbeE",4,SetTo,Y3),
							TSetLoc("ProbeE",8,SetTo,X3),
							TSetLoc("ProbeE",12,SetTo,Y3),
							TOrder("Homing Missile",Pid,"ProbeS",Move,"ProbeE");
						})
					CIfEnd()
				CElseIfX({TDeathsX(Vi(CunitEPD,-6),AtLeast,4,0,0xFF),TDeathsX(Vi(CunitEPD,-15),AtMost,816*65536,0,0xFFFF0000)})
					CDoActions(P0,{TSetDeaths(Vi(CunitEPD,-1),SetTo,0,0),SetNVar(TarTotal,SetTo,0),TSetDeaths(Vi(CunitEPD,-12),SetTo,1893,0)})

					for i = 0, 3 do
					CIf(P0,{Deaths(i,Exactly,1, "!Exist"),TTOR({Command(i, AtLeast, 1, "Factories"),Command(i, AtLeast, 1, "사은품")})})
						CMov(P0,VArr(TarArr,TarTotal),i)
						DoActionsX(P0,{SetNVar(TarTotal,Add,1)})
					CIfEnd()	
					end

					CIf(P0,{NVar(TarTotal,AtLeast,1)})
						CRead(P0,Pid,_Add(V(CunitEPD),-6),0,0xFF)
						CMov(P0,Target,VArr(TarArr,_Mod(_Rand(),TarTotal)))
						f_Read(P0,_Add(V(CunitEPD),-15),X1,nil,0xFFFF,1)
						f_ReadX(P0,_Add(V(CunitEPD),-15),Y1,"-2",0xFFFFFFFF,1) 	

						CIfX(P0,{NVar(Target,Exactly,3)})
							f_Read(P0,_Loc("4P",0),X2,nil,0xFFFF,1)
							f_Read(P0,_Loc("4P",4),Y2,nil,0xFFFF,1)
						CElseIfX({NVar(Target,Exactly,2)})
							f_Read(P0,_Loc("3P",0),X2,nil,0xFFFF,1)
							f_Read(P0,_Loc("3P",4),Y2,nil,0xFFFF,1)
						CElseIfX({NVar(Target,Exactly,1)})
							f_Read(P0,_Loc("2P",0),X2,nil,0xFFFF,1)
							f_Read(P0,_Loc("2P",4),Y2,nil,0xFFFF,1)
						CElseX()
							f_Read(P0,_Loc("1P",0),X2,nil,0xFFFF,1)
							f_Read(P0,_Loc("1P",4),Y2,nil,0xFFFF,1)
						CIfXEnd()
						DoActionsX(P0,{SetNVar(X2,Add,16),SetNVar(Y2,Add,16),SetNVar(Y3,SetTo,96)})

						CiSub(P0,dX,X2,X1)
						CiSub(P0,dY,Y2,Y1)

						CIfX(P0,{NVar(dX,Exactly,0)})
							CMov(P0,X3,X1)
						CElseX()
							CAdd(P0,X3,X1,_iDiv(_Mul(_iSub(_Mov(96),Y1),dX),dY))
							CIfX(P0,{NVar(X3,AtLeast,1952),NVar(dX,AtMost,0x7FFFFFFF)},{SetNVar(X3,SetTo,1952)}) -- dX > 0
								CAdd(P0,Y3,Y1,_iDiv(_Mul(_iSub(_Mov(1952),X1),dY),dX))
							CElseIfX({TTOR({NVar(X3,AtMost,96),NVar(X3,AtLeast,0x80000000)}),NVar(dX,AtLeast,0x80000000)},{SetNVar(X3,SetTo,96)}) -- dX < 0
								CAdd(P0,Y3,Y1,_iDiv(_Mul(_iSub(_Mov(96),X1),dY),dX))
							CIfXEnd()
						CIfXEnd()

						CDoActions(P0,{
							TSetLoc("ProbeS",0,SetTo,_Add(X1,16)),
							TSetLoc("ProbeS",4,SetTo,_Add(Y1,16)),
							TSetLoc("ProbeS",8,SetTo,_Add(X1,-16)),
							TSetLoc("ProbeS",12,SetTo,_Add(Y1,-16)),
							TSetLoc("ProbeE",0,SetTo,X3),
							TSetLoc("ProbeE",4,SetTo,Y3),
							TSetLoc("ProbeE",8,SetTo,X3),
							TSetLoc("ProbeE",12,SetTo,Y3),
							TOrder("Homing Missile",Pid,"ProbeS",Move,"ProbeE");
						})
					CIfEnd()
				CIfXEnd()
			CIfEnd()
		CIfEnd()

		CIf(P0,{TDeathsX(V(CunitEPD),Exactly,86,0,0xFF)}) -- 아비터
			CIf(P0,{TDeathsX(Vi(CunitEPD,-6),AtLeast,1*256,0,0xFF00)})
				CReadX(P0,V(CLocX),_Add(V(CunitEPD),-15),0,0xFFFF,1,1)
				CReadX(P0,V(CLocY),_Add(V(CunitEPD),-15),0,{0xFFFF0000,0xFFFFFFFF},1/65536,1)
				CDoActions(P0,{TSetLoc("CLoc79",0,SetTo,Vi(CLocX,-16)),TSetLoc("CLoc79",8,SetTo,Vi(CLocX,16)),TSetLoc("CLoc79",4,SetTo,Vi(CLocY,-16)),TSetLoc("CLoc79",12,SetTo,Vi(CLocY,16))})
				CIfX(P0,{TDeathsX(Vi(CunitEPD,-6),Exactly,0,0,0xFF)})
					Trigger {players = {P0},conditions = {Deaths(P2,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P2)},flag = {Preserved}}
					Trigger {players = {P0},conditions = {Deaths(P3,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P3)},flag = {Preserved}}
					Trigger {players = {P0},conditions = {Deaths(P4,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P4)},flag = {Preserved}}
				CElseIfX({TDeathsX(Vi(CunitEPD,-6),Exactly,1,0,0xFF)})
					Trigger {players = {P0},conditions = {Deaths(P1,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P1)},flag = {Preserved}}
					Trigger {players = {P0},conditions = {Deaths(P3,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P3)},flag = {Preserved}}
					Trigger {players = {P0},conditions = {Deaths(P4,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P4)},flag = {Preserved}}
				CElseIfX({TDeathsX(Vi(CunitEPD,-6),Exactly,2,0,0xFF)})
					Trigger {players = {P0},conditions = {Deaths(P1,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P1)},flag = {Preserved}}
					Trigger {players = {P0},conditions = {Deaths(P2,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P2)},flag = {Preserved}}
					Trigger {players = {P0},conditions = {Deaths(P4,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P4)},flag = {Preserved}}
				CElseIfX({TDeathsX(Vi(CunitEPD,-6),Exactly,3,0,0xFF)})
					Trigger {players = {P0},conditions = {Deaths(P1,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P1)},flag = {Preserved}}
					Trigger {players = {P0},conditions = {Deaths(P2,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P2)},flag = {Preserved}}
					Trigger {players = {P0},conditions = {Deaths(P3,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P3)},flag = {Preserved}}
				CElseIfX({TDeathsX(Vi(CunitEPD,-6),Exactly,4,0,0xFF)})
					Trigger {players = {P0},conditions = {Deaths(P6,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P6)},flag = {Preserved}}
					Trigger {players = {P0},conditions = {Deaths(P7,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P7)},flag = {Preserved}}
					Trigger {players = {P0},conditions = {Deaths(P8,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P8)},flag = {Preserved}}
				CElseIfX({TDeathsX(Vi(CunitEPD,-6),Exactly,5,0,0xFF)})
					Trigger {players = {P0},conditions = {Deaths(P5,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P5)},flag = {Preserved}}
					Trigger {players = {P0},conditions = {Deaths(P7,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P7)},flag = {Preserved}}
					Trigger {players = {P0},conditions = {Deaths(P8,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P8)},flag = {Preserved}}
				CElseIfX({TDeathsX(Vi(CunitEPD,-6),Exactly,6,0,0xFF)})
					Trigger {players = {P0},conditions = {Deaths(P5,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P5)},flag = {Preserved}}
					Trigger {players = {P0},conditions = {Deaths(P6,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P6)},flag = {Preserved}}
					Trigger {players = {P0},conditions = {Deaths(P8,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P8)},flag = {Preserved}}
				CElseIfX({TDeathsX(Vi(CunitEPD,-6),Exactly,7,0,0xFF)})
					Trigger {players = {P0},conditions = {Deaths(P5,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P5)},flag = {Preserved}}
					Trigger {players = {P0},conditions = {Deaths(P6,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P6)},flag = {Preserved}}
					Trigger {players = {P0},conditions = {Deaths(P7,Exactly,1, "!Exist"),Memory(0x628438,AtLeast,1)},actions = {CreateUnit(1, "Cloak", "CLoc79", P7)},flag = {Preserved}}
				CIfXEnd()
			CIfEnd()
		CIfEnd()
		
		
		CIf(P0,{TDeathsX(V(CunitEPD),Exactly,64,0,0xFF)}) -- 프로브
			CDoActions(P0,{TSetDeathsX(Vi(CunitEPD,47),SetTo,0xFF00,0,0xFF00)})
			CTrigger(P0,{TDeathsX(Vi(CunitEPD,-6),Exactly,187*256,0,0xFF00)},
			{TSetDeathsX(Vi(CunitEPD,-6),SetTo,1*256,0,0xFF00)},{Preserved})

			--CTrigger(P0,{Void(43,Exactly,0),TDeathsX(Vi(CunitEPD,-6),AtMost,3,0,0xFF)},{TSetDeathsX(Vi(CunitEPD,30),SetTo,0,0,0x40000)},{Preserved})
			--CTrigger(P0,{Void(44,Exactly,0),TDeathsX(Vi(CunitEPD,-6),AtLeast,4,0,0xFF)},{TSetDeathsX(Vi(CunitEPD,30),SetTo,0,0,0x40000)},{Preserved})
			for i = 0, 7 do
				local k = i+73
				CIf(P0,{TDeathsX(Vi(CunitEPD,-6),Exactly,i,0,0xFF)})
					CTrigger(P0,{TDeathsX(Vi(CunitEPD,-6),Exactly,107*256,0,0xFF00)},
					{TSetDeathsX(Vi(CunitEPD,-6),SetTo,1*256,0,0xFF00),SetVoidX(631+i,SetTo,0x100,0x100)},{Preserved})
					CTrigger(P0,{TDeathsX(Vi(CunitEPD,-6),Exactly,119*256,0,0xFF00)},
					{TSetDeathsX(Vi(CunitEPD,-6),SetTo,1*256,0,0xFF00),SetVoidX(42,SetTo,16^i,15*16^i)},{Preserved})
					CTrigger(P0,{TDeathsX(Vi(CunitEPD,-6),Exactly,122*256,0,0xFF00)},
					{TSetDeathsX(Vi(CunitEPD,-6),SetTo,1*256,0,0xFF00),SetVoidX(61,SetTo,16^i,15*16^i)},{Preserved})
					CTrigger(P0,{TDeathsX(Vi(CunitEPD,-6),Exactly,144*256,0,0xFF00)},
					{TSetDeathsX(Vi(CunitEPD,-6),SetTo,1*256,0,0xFF00),SetSwitch("Switch "..k,Toggle),SetVoidX(380,SetTo,16^i,15*16^i)},{Preserved})
					--[[충돌판정 제거
					CIf(P0,{TDeathsX(Vi(CunitEPD,-6),AtLeast,1*256,0,0xFF00)},{SetCVar("X",CTemp,SetTo,EPD(VO(399+i))),SetCVAar(VArr(Wptr,i),Add,8)})
						CAdd(P0,V(CTemp),VArr(Wptr,i))
						CDoActions(P0,{TSetMemory(V(CTemp),SetTo,Vi(CunitEPD,30))})
					CIfEnd()
					]]--
				CIfEnd()
			end
			
			--[[
			for i = 0, 7 do
				CIf(P0,{TDeathsX(Vi(CunitEPD,-6),Exactly,i,0,0xFF)})
					CTrigger(P0,{TDeathsX(Vi(CunitEPD,13),Exactly,65,0,0xFFFF)},
					{TSetDeaths(Vi(CunitEPD,13),SetTo,0x00E400E4,0),TSetDeaths(Vi(CunitEPD,14),SetTo,0x00E400E4,0),TSetDeathsX(Vi(CunitEPD,15),SetTo,0x00E400E4,0,0xFFFF),TSetDeathsX(Vi(CunitEPD,16),SetTo,23*65536,0,0xFF0000),SetVoidX(42,SetTo,16^i,15*16^i)},{Preserved})	
					CTrigger(P0,{TDeathsX(Vi(CunitEPD,13),Exactly,65,0,0xFFFF)},
					{TSetDeaths(Vi(CunitEPD,13),SetTo,0x00E400E4,0),TSetDeaths(Vi(CunitEPD,14),SetTo,0x00E400E4,0),TSetDeathsX(Vi(CunitEPD,15),SetTo,0x00E400E4,0,0xFFFF),TSetDeathsX(Vi(CunitEPD,16),SetTo,23*65536,0,0xFF0000),SetVoidX(61,SetTo,16^i,15*16^i)},{Preserved})
					CTrigger(P0,{TDeathsX(Vi(CunitEPD,13),Exactly,64*65536,0,0xFFFF0000)},
					{TSetDeathsX(Vi(CunitEPD,13),SetTo,0x00E400E4,0,0xFFFF0000),TSetDeaths(Vi(CunitEPD,14),SetTo,0x00E400E4,0),TSetDeathsX(Vi(CunitEPD,15),SetTo,0x00E400E4,0,0xFFFF),TSetDeathsX(Vi(CunitEPD,16),SetTo,23*65536,0,0xFF0000),SetVoidX(42,SetTo,16^i,15*16^i)},{Preserved})
					CTrigger(P0,{TDeathsX(Vi(CunitEPD,13),Exactly,65*65536,0,0xFFFF0000)},
					{TSetDeaths(Vi(CunitEPD,13),SetTo,0x00E400E4,0),TSetDeaths(Vi(CunitEPD,14),SetTo,0x00E400E4,0),TSetDeathsX(Vi(CunitEPD,15),SetTo,0x00E400E4,0,0xFFFF),TSetDeathsX(Vi(CunitEPD,16),SetTo,23*65536,0,0xFF0000),SetVoidX(61,SetTo,16^i,15*16^i)},{Preserved})
					
				CIfEnd()
			end
			CDoActions(P0,{TSetDeathsX(Vi(CunitEPD,47),SetTo,0xFF00,0,0xFF00),TSetDeathsX(Vi(CunitEPD,13),SetTo,0x00E400E4,0,0xFFFF0000),TSetDeaths(Vi(CunitEPD,14),SetTo,0x00E400E4,0),TSetDeathsX(Vi(CunitEPD,15),SetTo,0x00E400E4,0,0xFFFF),TSetDeathsX(Vi(CunitEPD,16),SetTo,23*65536,0,0xFF0000),})
			]]--
		CIfEnd()
		CIf(P0,{TDeathsX(V(CunitEPD),Exactly,7,0,0xFF)}) -- SCV
			CDoActions(P0,{TSetDeathsX(Vi(CunitEPD,47),SetTo,0xFF00,0,0xFF00)})
			CTrigger(P0,{TDeathsX(Vi(CunitEPD,-6),Exactly,187*256,0,0xFF00)},
			{TSetDeathsX(Vi(CunitEPD,-6),SetTo,1*256,0,0xFF00)},{Preserved})
			for i = 0, 7 do
				local k = i+73
				CIf(P0,{TDeathsX(Vi(CunitEPD,-6),Exactly,i,0,0xFF)})
					CTrigger(P0,{TDeathsX(Vi(CunitEPD,-6),Exactly,144*256,0,0xFF00)},
					{TSetDeathsX(Vi(CunitEPD,-6),SetTo,1*256,0,0xFF00),SetSwitch("Switch "..k,Toggle),SetVoidX(380,SetTo,16^i,15*16^i)},{Preserved})
					--[[충돌판정 제거
					CIf(P0,{TDeathsX(Vi(CunitEPD,-6),AtLeast,1*256,0,0xFF00)},{SetCVar("X",CTemp,SetTo,EPD(VO(399+i))),SetCVAar(VArr(Wptr,i),Add,8)})
						CAdd(P0,V(CTemp),VArr(Wptr,i))
						CDoActions(P0,{TSetMemory(V(CTemp),SetTo,Vi(CunitEPD,30))})
					CIfEnd()
					]]--
				CIfEnd()
			end
			--CTrigger(P0,{Void(43,Exactly,0),TDeathsX(Vi(CunitEPD,-6),AtMost,3,0,0xFF)},{TSetDeathsX(Vi(CunitEPD,30),SetTo,0,0,0x40000)},{Preserved})
			--CTrigger(P0,{Void(44,Exactly,0),TDeathsX(Vi(CunitEPD,-6),AtLeast,4,0,0xFF)},{TSetDeathsX(Vi(CunitEPD,30),SetTo,0,0,0x40000)},{Preserved})
		CIfEnd()
		CIf(P0,{TDeathsX(V(CunitEPD),Exactly,41,0,0xFF)}) -- 드론
			CDoActions(P0,{TSetDeathsX(Vi(CunitEPD,47),SetTo,0xFF00,0,0xFF00)})
			CTrigger(P0,{TDeathsX(Vi(CunitEPD,-6),Exactly,187*256,0,0xFF00)},
			{TSetDeathsX(Vi(CunitEPD,-6),SetTo,1*256,0,0xFF00)},{Preserved})
			for i = 0, 7 do
				local k = i+73
				CIf(P0,{TDeathsX(Vi(CunitEPD,-6),Exactly,i,0,0xFF)})
					CTrigger(P0,{TDeathsX(Vi(CunitEPD,-6),Exactly,144*256,0,0xFF00)},
					{TSetDeathsX(Vi(CunitEPD,-6),SetTo,1*256,0,0xFF00),SetSwitch("Switch "..k,Toggle),SetVoidX(380,SetTo,16^i,15*16^i)},{Preserved})
					--[[충돌판정 제거
					CIf(P0,{TDeathsX(Vi(CunitEPD,-6),AtLeast,1*256,0,0xFF00)},{SetCVar("X",CTemp,SetTo,EPD(VO(399+i))),SetCVAar(VArr(Wptr,i),Add,8)})
						CAdd(P0,V(CTemp),VArr(Wptr,i))
						CDoActions(P0,{TSetMemory(V(CTemp),SetTo,Vi(CunitEPD,30))})
					CIfEnd()
					]]--
				CIfEnd()
			end
			--CTrigger(P0,{Void(43,Exactly,0),TDeathsX(Vi(CunitEPD,-6),AtMost,3,0,0xFF)},{TSetDeathsX(Vi(CunitEPD,30),SetTo,0,0,0x40000)},{Preserved})
			--CTrigger(P0,{Void(44,Exactly,0),TDeathsX(Vi(CunitEPD,-6),AtLeast,4,0,0xFF)},{TSetDeathsX(Vi(CunitEPD,30),SetTo,0,0,0x40000)},{Preserved})
		CIfEnd()
		
		CIf(P0,{TDeathsX(V(CunitEPD),AtLeast,131,0,0xFF),TDeathsX(V(CunitEPD),AtMost,153,0,0xFF)}) -- 드론 건물
			CTrigger(P0,{TDeathsX(Vi(CunitEPD,-6),Exactly,187*256,0,0xFF00)},
			{TSetDeathsX(Vi(CunitEPD,-6),SetTo,45*256,0,0xFF00)},{Preserved})
		CIfEnd()
	CIfEnd()
CWhileEnd(SetCVar("X",CunitEPD,Subtract,84))


--[[충돌판정 제거
for i = 0, 7 do -- 멈춤 제거 
	CWhile(P0,{CVAar(VArr(Wptr,i),AtLeast,1)},{SetCVar("X",CTemp,SetTo,EPD(VO(399+i)))})
		CAdd(P0,V(CTemp),VArr(Wptr,i))
		f_Read(P0,V(CTemp),V(CTemp2))
		CDoActions(P0,{TSetMemoryX(V(CTemp2),SetTo,0,0x40000)})
	CWhileEnd(SetCVAar(VArr(Wptr,i),Subtract,8))
end
]]--
--[[
for i = 0, 7 do -- 프로브 업글/테크
	Trigger { -- 업그레이드 처리 : 파런교체
		players = {P0},
		conditions = {
			MemoryB(0x58D2B1+46*i,AtLeast,1);
		},
		actions = {
			SetMemoryB(0x58D2B1+46*i,SetTo,0);
			SetVoidX(61,SetTo,16^i,15*16^i);
			PreserveTrigger();
		}
	}
	Trigger { -- 테크 처리 : 좌우반전
		players = {P0},
		conditions = {
			MemoryB(0x58CF45+24*i,AtLeast,1);
		},
		actions = {
			SetMemoryB(0x58CF45+24*i,SetTo,0);
			SetVoidX(42,SetTo,16^i,15*16^i);
			PreserveTrigger();
		}
	}
end
]]--

end