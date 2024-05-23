function SUB_System()

	for i = 0, 6 do -- TBL Change
	CIfOnce(P0,{Memory(0x512684,Exactly,i)},{SetVoid(391+i,SetTo,ColorCode2[i+1])})
		CMov(P0,V(CTemp2),VO(391+i))
		f_GetTblptr(P0,V(CTemp),1369)
		CAdd(P0,V(CTemp),2)
		f_Memcpy(P0,V(CTemp),V(CTemp2),1) 
		CAdd(P0,V(CTemp),0x1F-2)
		f_Memcpy(P0,V(CTemp),V(CTemp2),1) 
		f_GetTblptr(P0,V(CTemp),1375)
		CAdd(P0,V(CTemp),2)
		f_Memcpy(P0,V(CTemp),V(CTemp2),1) 
		CAdd(P0,V(CTemp),0x28-2)
		f_Memcpy(P0,V(CTemp),V(CTemp2),1) 
	CIfEnd()
	end
	for i = 7, 7 do -- TBL Change
	CIfOnce(P0,{Memory(0x512684,Exactly,i)},{SetVoid(391+i,SetTo,ColorCode2[i+1]),SetVoid(608,SetTo,0x2)})
		CMov(P0,V(CTemp2),VO(391+i))
		f_GetTblptr(P0,V(CTemp),1369)
		CAdd(P0,V(CTemp),2)
		f_Memcpy(P0,V(CTemp),V(CTemp2),1) 
		CMov(P0,V(CTemp2),VO(608))
		CAdd(P0,V(CTemp),0x1D-2)
		f_Memcpy(P0,V(CTemp),V(CTemp2),1) 
		CMov(P0,V(CTemp2),VO(391+i))
		CAdd(P0,V(CTemp),0x1F-0x1D)
		f_Memcpy(P0,V(CTemp),V(CTemp2),1) 
		f_GetTblptr(P0,V(CTemp),1375)
		CAdd(P0,V(CTemp),2)
		f_Memcpy(P0,V(CTemp),V(CTemp2),1) 
		CMov(P0,V(CTemp2),VO(608))
		CAdd(P0,V(CTemp),0x26-2)
		f_Memcpy(P0,V(CTemp),V(CTemp2),1) 
		CMov(P0,V(CTemp2),VO(391+i))
		CAdd(P0,V(CTemp),0x28-0x26)
		f_Memcpy(P0,V(CTemp),V(CTemp2),1) 
	CIfEnd()
	end

-- 인구수 표시 ------------------------------------------------------------------------------------
RLimit, SLimit = CreateVars(2,P0)
CIfOnce(P0)
f_GetTblptr(P0,RLimit,1368)
f_GetTblptr(P0,SLimit,1376)
CAdd(P0,RLimit,0xF7)
CAdd(P0,SLimit,0xFC)
CIfEnd()

CIfX(P0,{Memory(0x512684,AtMost,3)})
f_Bwrite(P0,RLimit,SetTo,_Add(_Read(VO(83)),0x30))
f_Bwrite(P0,SLimit,SetTo,_Add(_Read(VO(627)),0x30))
CElseX()
f_Bwrite(P0,RLimit,SetTo,_Add(_Read(VO(84)),0x30))
f_Bwrite(P0,SLimit,SetTo,_Add(_Read(VO(628)),0x30))
CIfXEnd()

--[[
for i = 0, 4 do
	Trigger {
		players = {P0},
		conditions = {
			Void(83,Exactly,i);
		},
		actions = {
			SetMemory(0x582204+4*0,SetTo,2*i);
			SetMemory(0x582204+4*1,SetTo,2*i);
			SetMemory(0x582204+4*2,SetTo,2*i);
			SetMemory(0x582204+4*3,SetTo,2*i);
			PreserveTrigger();
		}
	}
	Trigger {
		players = {P0},
		conditions = {
			Void(84,Exactly,i);
		},
		actions = {
			SetMemory(0x582204+4*4,SetTo,2*i);
			SetMemory(0x582204+4*5,SetTo,2*i);
			SetMemory(0x582204+4*6,SetTo,2*i);
			SetMemory(0x582204+4*7,SetTo,2*i);
			PreserveTrigger();
		}
	}
end
]]--
UnitReadX(P0,P9,"Men","Anywhere",V(CTemp))
UnitReadX(P0,P1,"Men","Anywhere",V(CTemp1))
UnitReadX(P0,P2,"Men","Anywhere",V(CTemp2))
UnitReadX(P0,P3,"Men","Anywhere",V(CTemp3))
UnitReadX(P0,P4,"Men","Anywhere",V(CTemp4))
CAdd(P0,V(CTemp),V(CTemp1))
CAdd(P0,V(CTemp),V(CTemp2))
CAdd(P0,V(CTemp),V(CTemp3))
CAdd(P0,V(CTemp),V(CTemp4))

CAdd(P0,V(CTemp1),V(CTemp1))
CAdd(P0,V(CTemp2),V(CTemp2))
CAdd(P0,V(CTemp3),V(CTemp3))
CAdd(P0,V(CTemp4),V(CTemp4))
CAdd(P0,V(CTemp),V(CTemp))

CDoActions(P0,{
	TSetMemory(0x582264+4*0,SetTo,V(CTemp)),
	TSetMemory(0x582264+4*1,SetTo,V(CTemp)),
	TSetMemory(0x582264+4*2,SetTo,V(CTemp)),
	TSetMemory(0x582264+4*3,SetTo,V(CTemp)),
	
	TSetMemory(0x582294+4*0,SetTo,V(CTemp1)),
	TSetMemory(0x582294+4*1,SetTo,V(CTemp2)),
	TSetMemory(0x582294+4*2,SetTo,V(CTemp3)),
	TSetMemory(0x582294+4*3,SetTo,V(CTemp4)),
})

UnitReadX(P0,P10,"Men","Anywhere",V(CTemp))
UnitReadX(P0,P5,"Men","Anywhere",V(CTemp1))
UnitReadX(P0,P6,"Men","Anywhere",V(CTemp2))
UnitReadX(P0,P7,"Men","Anywhere",V(CTemp3))
UnitReadX(P0,P8,"Men","Anywhere",V(CTemp4))
CAdd(P0,V(CTemp),V(CTemp1))
CAdd(P0,V(CTemp),V(CTemp2))
CAdd(P0,V(CTemp),V(CTemp3))
CAdd(P0,V(CTemp),V(CTemp4))

CAdd(P0,V(CTemp1),V(CTemp1))
CAdd(P0,V(CTemp2),V(CTemp2))
CAdd(P0,V(CTemp3),V(CTemp3))
CAdd(P0,V(CTemp4),V(CTemp4))
CAdd(P0,V(CTemp),V(CTemp))

CDoActions(P0,{
	TSetMemory(0x582264+4*5,SetTo,V(CTemp)),
	TSetMemory(0x582264+4*6,SetTo,V(CTemp)),
	TSetMemory(0x582264+4*7,SetTo,V(CTemp)),
	TSetMemory(0x582264+4*8,SetTo,V(CTemp)),
	
	TSetMemory(0x582294+4*5,SetTo,V(CTemp1)),
	TSetMemory(0x582294+4*6,SetTo,V(CTemp2)),
	TSetMemory(0x582294+4*7,SetTo,V(CTemp3)),
	TSetMemory(0x582294+4*8,SetTo,V(CTemp4)),
})

--------------------------------------------------------------------------------------------------
CIf(P0,{Void(701,Exactly,0)})
TriggerX(P0,{Void(707,Exactly,1),Void(701,Exactly,0)},{SetVoid(701,SetTo,1)})

CIfOnce(P0)
	HostPid = CreateVar(P0)
	GetHostPlayerID(P0,HostPid)
	CTrigger(P0,NVar(HostPid,AtMost,7),{TCreateUnit(1,15,"Cntr",HostPid),TSetMemory(VO(702),SetTo,_Add(HostPid,1))})
	TriggerX(P0,{NVar(HostPid,AtLeast,8)},{SetVoid(701,SetTo,1);RemoveUnit(15,AllPlayers);RemoveUnit(197,AllPlayers); RemoveUnit(198,AllPlayers); })
CIfEnd()

TriggerX(P0,{Bring(AllPlayers,AtLeast,1,15,"#Pvp")},{SetVoid(701,SetTo,2);RemoveUnit(15,AllPlayers);
	RemoveUnit(197,AllPlayers); RemoveUnit(198,AllPlayers); SetVoid(703,SetTo,24*5)})
TriggerX(P0,{Bring(AllPlayers,AtLeast,1,15,"#Tag")},{SetVoid(701,SetTo,3);RemoveUnit(15,AllPlayers);
	RemoveUnit(197,AllPlayers); RemoveUnit(198,AllPlayers); SetVoid(703,SetTo,24*5)})

TriggerX(P0,{Void(701,AtLeast,2)},
{	
	SetCp(0);
	PlayWAV("staredit\\wav\\SpeedMessage.wav");
	SetCp(1);
	PlayWAV("staredit\\wav\\SpeedMessage.wav");
	SetCp(2);
	PlayWAV("staredit\\wav\\SpeedMessage.wav");
	SetCp(3);
	PlayWAV("staredit\\wav\\SpeedMessage.wav");
	SetCp(4);
	PlayWAV("staredit\\wav\\SpeedMessage.wav");
	SetCp(5);
	PlayWAV("staredit\\wav\\SpeedMessage.wav");
	SetCp(6);
	PlayWAV("staredit\\wav\\SpeedMessage.wav");
	SetCp(7);
	PlayWAV("staredit\\wav\\SpeedMessage.wav");
	SetCp(0);
	SetVoid(45+0,SetTo,24*5);
	SetVoid(45+1,SetTo,24*5);
	SetVoid(45+2,SetTo,24*5);
	SetVoid(45+3,SetTo,24*5);
	SetVoid(45+4,SetTo,24*5);
	SetVoid(45+5,SetTo,24*5);
	SetVoid(45+6,SetTo,24*5);
	SetVoid(45+7,SetTo,24*5);
})
CIfEnd()

CIf(P0,{Void(701,AtLeast,2)})

TriggerX(P0,{Void(703,AtLeast,1),Void(701,Exactly,2)},{
	SetCp(0);
	DisplayText("\r\n\r\n\r\n\x13\x1F<System> : \x181:1 PvP 모드\x04를 선택하셨습니다.\r\n\r\n\x13\x18PvP 모드\x04는 \x081P(빨강)\x04과 \x104P(보라)\x04가 \x02실력전 규칙\x04으로 1:1 대결을 펼치는 모드입니다.\r\n\r\n\x13\x02실력전 규칙\x04은 처음 타이머(4분)이 지날때까지 SCV로 있으면 \x08패배\x04하며, 나머지는 사항은 모두 일반맵과 동일합니다.\r\n\r\n\x13\x02잠시 후 게임이 시작됩니다.\r\n\r\n\r\n", 4);
	SetCp(1);
	DisplayText("\r\n\r\n\r\n\x13\x1F<System> : \x181:1 PvP 모드\x04를 선택하셨습니다.\r\n\r\n\x13\x18PvP 모드\x04는 \x081P(빨강)\x04과 \x104P(보라)\x04가 \x02실력전 규칙\x04으로 1:1 대결을 펼치는 모드입니다.\r\n\r\n\x13\x02실력전 규칙\x04은 처음 타이머(4분)이 지날때까지 SCV로 있으면 \x08패배\x04하며, 나머지는 사항은 모두 일반맵과 동일합니다.\r\n\r\n\x13\x02잠시 후 게임이 시작됩니다.\r\n\r\n\r\n", 4);
	SetCp(2);
	DisplayText("\r\n\r\n\r\n\x13\x1F<System> : \x181:1 PvP 모드\x04를 선택하셨습니다.\r\n\r\n\x13\x18PvP 모드\x04는 \x081P(빨강)\x04과 \x104P(보라)\x04가 \x02실력전 규칙\x04으로 1:1 대결을 펼치는 모드입니다.\r\n\r\n\x13\x02실력전 규칙\x04은 처음 타이머(4분)이 지날때까지 SCV로 있으면 \x08패배\x04하며, 나머지는 사항은 모두 일반맵과 동일합니다.\r\n\r\n\x13\x02잠시 후 게임이 시작됩니다.\r\n\r\n\r\n", 4);
	SetCp(3);
	DisplayText("\r\n\r\n\r\n\x13\x1F<System> : \x181:1 PvP 모드\x04를 선택하셨습니다.\r\n\r\n\x13\x18PvP 모드\x04는 \x081P(빨강)\x04과 \x104P(보라)\x04가 \x02실력전 규칙\x04으로 1:1 대결을 펼치는 모드입니다.\r\n\r\n\x13\x02실력전 규칙\x04은 처음 타이머(4분)이 지날때까지 SCV로 있으면 \x08패배\x04하며, 나머지는 사항은 모두 일반맵과 동일합니다.\r\n\r\n\x13\x02잠시 후 게임이 시작됩니다.\r\n\r\n\r\n", 4);
	SetCp(4);
	DisplayText("\r\n\r\n\r\n\x13\x1F<System> : \x181:1 PvP 모드\x04를 선택하셨습니다.\r\n\r\n\x13\x18PvP 모드\x04는 \x081P(빨강)\x04과 \x104P(보라)\x04가 \x02실력전 규칙\x04으로 1:1 대결을 펼치는 모드입니다.\r\n\r\n\x13\x02실력전 규칙\x04은 처음 타이머(4분)이 지날때까지 SCV로 있으면 \x08패배\x04하며, 나머지는 사항은 모두 일반맵과 동일합니다.\r\n\r\n\x13\x02잠시 후 게임이 시작됩니다.\r\n\r\n\r\n", 4);
	SetCp(5);
	DisplayText("\r\n\r\n\r\n\x13\x1F<System> : \x181:1 PvP 모드\x04를 선택하셨습니다.\r\n\r\n\x13\x18PvP 모드\x04는 \x081P(빨강)\x04과 \x104P(보라)\x04가 \x02실력전 규칙\x04으로 1:1 대결을 펼치는 모드입니다.\r\n\r\n\x13\x02실력전 규칙\x04은 처음 타이머(4분)이 지날때까지 SCV로 있으면 \x08패배\x04하며, 나머지는 사항은 모두 일반맵과 동일합니다.\r\n\r\n\x13\x02잠시 후 게임이 시작됩니다.\r\n\r\n\r\n", 4);
	SetCp(6);
	DisplayText("\r\n\r\n\r\n\x13\x1F<System> : \x181:1 PvP 모드\x04를 선택하셨습니다.\r\n\r\n\x13\x18PvP 모드\x04는 \x081P(빨강)\x04과 \x104P(보라)\x04가 \x02실력전 규칙\x04으로 1:1 대결을 펼치는 모드입니다.\r\n\r\n\x13\x02실력전 규칙\x04은 처음 타이머(4분)이 지날때까지 SCV로 있으면 \x08패배\x04하며, 나머지는 사항은 모두 일반맵과 동일합니다.\r\n\r\n\x13\x02잠시 후 게임이 시작됩니다.\r\n\r\n\r\n", 4);
	SetCp(7);
	DisplayText("\r\n\r\n\r\n\x13\x1F<System> : \x181:1 PvP 모드\x04를 선택하셨습니다.\r\n\r\n\x13\x18PvP 모드\x04는 \x081P(빨강)\x04과 \x104P(보라)\x04가 \x02실력전 규칙\x04으로 1:1 대결을 펼치는 모드입니다.\r\n\r\n\x13\x02실력전 규칙\x04은 처음 타이머(4분)이 지날때까지 SCV로 있으면 \x08패배\x04하며, 나머지는 사항은 모두 일반맵과 동일합니다.\r\n\r\n\x13\x02잠시 후 게임이 시작됩니다.\r\n\r\n\r\n", 4);
	SetCp(0);
},{Preserved})

TriggerX(P0,{Void(703,AtLeast,1),Void(701,Exactly,3)},{
	SetCp(0);
	DisplayText("\r\n\r\n\r\n\x13\x1FSystem : \x19드론전 태그매치 모드\x04를 선택하셨습니다.\r\n\r\n\x13\x19드론전 태그매치 모드\x04는 \x18윗팀\x04과 \x19아랫팀\x04이 한명씩 1:1 \x19드론전 대결\x04을 펼치는 모드입니다.\r\n\r\n\x13\x04순서는 윗팀 : "..ColorCode[1].."1P(빨강)\x04→"..ColorCode[2].."2P(파랑)\x04→"..ColorCode[3].."3P(연두)\x04→"..ColorCode[4].."4P(흰색)\x04\r\n\x13\x04아랫팀 : "..ColorCode[5].."5P(보라)\x04→"..ColorCode[6].."6P(주황)\x04→"..ColorCode[7].."7P(초록)\x04→"..ColorCode[8].."8P(노랑)\x04이며, 죽으면 다음사람으로 넘어갑니다.\r\n\r\n\x13\x1B잠시 후 게임이 시작됩니다.\r\n\r\n\r\n", 4);
	SetCp(1);
	DisplayText("\r\n\r\n\r\n\x13\x1FSystem : \x19드론전 태그매치 모드\x04를 선택하셨습니다.\r\n\r\n\x13\x19드론전 태그매치 모드\x04는 \x18윗팀\x04과 \x19아랫팀\x04이 한명씩 1:1 \x19드론전 대결\x04을 펼치는 모드입니다.\r\n\r\n\x13\x04순서는 윗팀 : "..ColorCode[1].."1P(빨강)\x04→"..ColorCode[2].."2P(파랑)\x04→"..ColorCode[3].."3P(연두)\x04→"..ColorCode[4].."4P(흰색)\x04\r\n\x13\x04아랫팀 : "..ColorCode[5].."5P(보라)\x04→"..ColorCode[6].."6P(주황)\x04→"..ColorCode[7].."7P(초록)\x04→"..ColorCode[8].."8P(노랑)\x04이며, 죽으면 다음사람으로 넘어갑니다.\r\n\r\n\x13\x1B잠시 후 게임이 시작됩니다.\r\n\r\n\r\n", 4);
	SetCp(2);
	DisplayText("\r\n\r\n\r\n\x13\x1FSystem : \x19드론전 태그매치 모드\x04를 선택하셨습니다.\r\n\r\n\x13\x19드론전 태그매치 모드\x04는 \x18윗팀\x04과 \x19아랫팀\x04이 한명씩 1:1 \x19드론전 대결\x04을 펼치는 모드입니다.\r\n\r\n\x13\x04순서는 윗팀 : "..ColorCode[1].."1P(빨강)\x04→"..ColorCode[2].."2P(파랑)\x04→"..ColorCode[3].."3P(연두)\x04→"..ColorCode[4].."4P(흰색)\x04\r\n\x13\x04아랫팀 : "..ColorCode[5].."5P(보라)\x04→"..ColorCode[6].."6P(주황)\x04→"..ColorCode[7].."7P(초록)\x04→"..ColorCode[8].."8P(노랑)\x04이며, 죽으면 다음사람으로 넘어갑니다.\r\n\r\n\x13\x1B잠시 후 게임이 시작됩니다.\r\n\r\n\r\n", 4);
	SetCp(3);
	DisplayText("\r\n\r\n\r\n\x13\x1FSystem : \x19드론전 태그매치 모드\x04를 선택하셨습니다.\r\n\r\n\x13\x19드론전 태그매치 모드\x04는 \x18윗팀\x04과 \x19아랫팀\x04이 한명씩 1:1 \x19드론전 대결\x04을 펼치는 모드입니다.\r\n\r\n\x13\x04순서는 윗팀 : "..ColorCode[1].."1P(빨강)\x04→"..ColorCode[2].."2P(파랑)\x04→"..ColorCode[3].."3P(연두)\x04→"..ColorCode[4].."4P(흰색)\x04\r\n\x13\x04아랫팀 : "..ColorCode[5].."5P(보라)\x04→"..ColorCode[6].."6P(주황)\x04→"..ColorCode[7].."7P(초록)\x04→"..ColorCode[8].."8P(노랑)\x04이며, 죽으면 다음사람으로 넘어갑니다.\r\n\r\n\x13\x1B잠시 후 게임이 시작됩니다.\r\n\r\n\r\n", 4);
	SetCp(4);
	DisplayText("\r\n\r\n\r\n\x13\x1FSystem : \x19드론전 태그매치 모드\x04를 선택하셨습니다.\r\n\r\n\x13\x19드론전 태그매치 모드\x04는 \x18윗팀\x04과 \x19아랫팀\x04이 한명씩 1:1 \x19드론전 대결\x04을 펼치는 모드입니다.\r\n\r\n\x13\x04순서는 윗팀 : "..ColorCode[1].."1P(빨강)\x04→"..ColorCode[2].."2P(파랑)\x04→"..ColorCode[3].."3P(연두)\x04→"..ColorCode[4].."4P(흰색)\x04\r\n\x13\x04아랫팀 : "..ColorCode[5].."5P(보라)\x04→"..ColorCode[6].."6P(주황)\x04→"..ColorCode[7].."7P(초록)\x04→"..ColorCode[8].."8P(노랑)\x04이며, 죽으면 다음사람으로 넘어갑니다.\r\n\r\n\x13\x1B잠시 후 게임이 시작됩니다.\r\n\r\n\r\n", 4);
	SetCp(5);
	DisplayText("\r\n\r\n\r\n\x13\x1FSystem : \x19드론전 태그매치 모드\x04를 선택하셨습니다.\r\n\r\n\x13\x19드론전 태그매치 모드\x04는 \x18윗팀\x04과 \x19아랫팀\x04이 한명씩 1:1 \x19드론전 대결\x04을 펼치는 모드입니다.\r\n\r\n\x13\x04순서는 윗팀 : "..ColorCode[1].."1P(빨강)\x04→"..ColorCode[2].."2P(파랑)\x04→"..ColorCode[3].."3P(연두)\x04→"..ColorCode[4].."4P(흰색)\x04\r\n\x13\x04아랫팀 : "..ColorCode[5].."5P(보라)\x04→"..ColorCode[6].."6P(주황)\x04→"..ColorCode[7].."7P(초록)\x04→"..ColorCode[8].."8P(노랑)\x04이며, 죽으면 다음사람으로 넘어갑니다.\r\n\r\n\x13\x1B잠시 후 게임이 시작됩니다.\r\n\r\n\r\n", 4);
	SetCp(6);
	DisplayText("\r\n\r\n\r\n\x13\x1FSystem : \x19드론전 태그매치 모드\x04를 선택하셨습니다.\r\n\r\n\x13\x19드론전 태그매치 모드\x04는 \x18윗팀\x04과 \x19아랫팀\x04이 한명씩 1:1 \x19드론전 대결\x04을 펼치는 모드입니다.\r\n\r\n\x13\x04순서는 윗팀 : "..ColorCode[1].."1P(빨강)\x04→"..ColorCode[2].."2P(파랑)\x04→"..ColorCode[3].."3P(연두)\x04→"..ColorCode[4].."4P(흰색)\x04\r\n\x13\x04아랫팀 : "..ColorCode[5].."5P(보라)\x04→"..ColorCode[6].."6P(주황)\x04→"..ColorCode[7].."7P(초록)\x04→"..ColorCode[8].."8P(노랑)\x04이며, 죽으면 다음사람으로 넘어갑니다.\r\n\r\n\x13\x1B잠시 후 게임이 시작됩니다.\r\n\r\n\r\n", 4);
	SetCp(7);
	DisplayText("\r\n\r\n\r\n\x13\x1FSystem : \x19드론전 태그매치 모드\x04를 선택하셨습니다.\r\n\r\n\x13\x19드론전 태그매치 모드\x04는 \x18윗팀\x04과 \x19아랫팀\x04이 한명씩 1:1 \x19드론전 대결\x04을 펼치는 모드입니다.\r\n\r\n\x13\x04순서는 윗팀 : "..ColorCode[1].."1P(빨강)\x04→"..ColorCode[2].."2P(파랑)\x04→"..ColorCode[3].."3P(연두)\x04→"..ColorCode[4].."4P(흰색)\x04\r\n\x13\x04아랫팀 : "..ColorCode[5].."5P(보라)\x04→"..ColorCode[6].."6P(주황)\x04→"..ColorCode[7].."7P(초록)\x04→"..ColorCode[8].."8P(노랑)\x04이며, 죽으면 다음사람으로 넘어갑니다.\r\n\r\n\x13\x1B잠시 후 게임이 시작됩니다.\r\n\r\n\r\n", 4);
	SetCp(0);
},{Preserved})

CIfEnd()

pvpstr = CreateVarArr(3,P0)
tagstr = CreateVarArr(2,P0)

CIf(P0,{Void(701,Exactly,2)})

TriggerX(P0,{Void(703,Exactly,1),Void(701,Exactly,2)},{SetVoid(703,SetTo,0);
	RemoveUnit("Any unit",Force1);RemoveUnit("Any unit",Force2);RemoveUnit("Factories",Force1);RemoveUnit("Factories",Force2);
	CreateUnit(1,7,"1팀중앙",P1);CreateUnit(1,7,"2팀중앙",P5);SetResources(P1,SetTo,400,Ore);SetResources(P5,SetTo,400,Ore);
	SetCountdownTimer(SetTo, 243);SetVoid(704,SetTo,1);
	SetVoid(709+1,SetTo,1);SetVoid(709+2,SetTo,1);SetVoid(709+3,SetTo,1);
	SetVoid(709+5,SetTo,5);SetVoid(709+6,SetTo,1);SetVoid(709+7,SetTo,1);
	
	SetScore(Force1, SetTo, 1000, Custom);
	SetVoid(1,SetTo,1000);
	SetVoid(83,SetTo,1);
	SetVoid(627,SetTo,1);
	SetMemory(0x582144+4*0,SetTo,1);
	SetMemory(0x582144+4*1,SetTo,1);
	SetMemory(0x582144+4*2,SetTo,1);
	SetMemory(0x582144+4*3,SetTo,1);
	SetScore(Force2, SetTo, 1000, Custom);
	SetVoid(2,SetTo,1000);
	SetVoid(84,SetTo,1);
	SetVoid(628,SetTo,1);
	SetMemory(0x582144+4*4,SetTo,1);
	SetMemory(0x582144+4*5,SetTo,1);
	SetMemory(0x582144+4*6,SetTo,1);
	SetMemory(0x582144+4*7,SetTo,1);
},{Preserved})

TriggerX(P0,{Deaths(P1,Exactly,1,"!Exist"),Deaths(P5,Exactly,1,"!Exist"),Void(704,Exactly,1),CountdownTimer(AtMost, 243),Void(701,Exactly,2)},{
	SetVoid(705,SetTo,1);SetNVar(pvpstr[1],SetTo,1);
})

TriggerX(P0,{CountdownTimer(Exactly, 240),Void(701,Exactly,2)},{
	SetVoid(708,SetTo,1);
})

TriggerX(P0,{Void(708,Exactly,1),Void(704,Exactly,1),Void(706,Exactly,0),CountdownTimer(AtMost, 0),Void(701,Exactly,2),Bring(P1,AtLeast,1,7,"Anywhere"),Bring(P5,AtLeast,1,7,"Anywhere")},{
	SetVoid(705,SetTo,2);SetNVar(pvpstr[1],SetTo,2);SetVoid(709+0,SetTo,1);SetVoid(709+4,SetTo,1);
	SetVoid(706,SetTo,1),KillUnit("Any unit", P1);KillUnit("Any unit", P5);Wait(3000);
	SetCp(0); Draw();
	SetCp(1); Draw();
	SetCp(2); Draw();
	SetCp(3); Draw();
	SetCp(4); Draw();
	SetCp(5); Draw();
	SetCp(6); Draw();
	SetCp(7); Draw();
	SetCp(0); 
})
TriggerX(P0,{Void(708,Exactly,1),Void(704,Exactly,1),Void(706,Exactly,0),CountdownTimer(AtMost, 0),Void(701,Exactly,2),Bring(P1,AtLeast,1,7,"Anywhere")},{
	SetVoid(705,SetTo,3);SetNVar(pvpstr[1],SetTo,3);SetVoid(709+0,SetTo,1);
	SetVoid(706,SetTo,1),KillUnit("Any unit", P1);Wait(3000);
	SetCp(0); Defeat();
	SetCp(1); Victory();
	SetCp(2); Victory();
	SetCp(3); Victory();
	SetCp(4); Victory();
	SetCp(5); Victory();
	SetCp(6); Victory();
	SetCp(7); Victory();
	SetCp(0); 
})
TriggerX(P0,{Void(708,Exactly,1),Void(704,Exactly,1),Void(706,Exactly,0),CountdownTimer(AtMost, 0),Void(701,Exactly,2),Bring(P5,AtLeast,1,7,"Anywhere")},{
	SetVoid(705,SetTo,4);SetNVar(pvpstr[1],SetTo,3);SetVoid(709+4,SetTo,1);
	SetVoid(706,SetTo,1),KillUnit("Any unit", P5);Wait(3000);
	SetCp(0); Victory();
	SetCp(1); Victory();
	SetCp(2); Victory();
	SetCp(3); Victory();
	SetCp(4); Defeat();
	SetCp(5); Victory();
	SetCp(6); Victory();
	SetCp(7); Victory();
	SetCp(0); 
})

TriggerX(P0,{Void(704,Exactly,1),Void(706,Exactly,0),Void(701,Exactly,2),Bring(P1, Exactly, 0, "Factories", "전체필드");Bring(P1, Exactly, 0, "사은품", "사은품");Bring(P5, Exactly, 0, "Factories", "전체필드");Bring(P5, Exactly, 0, "사은품", "사은품");},{
	SetVoid(706,SetTo,1),KillUnit("Any unit", P1);KillUnit("Any unit", P5);SetVoid(705,SetTo,5);SetNVar(pvpstr[1],SetTo,4);
	SetVoid(709+0,SetTo,1);SetVoid(709+4,SetTo,1);Wait(3000);
	SetCp(0); Draw();
	SetCp(1); Draw();
	SetCp(2); Draw();
	SetCp(3); Draw();
	SetCp(4); Draw();
	SetCp(5); Draw();
	SetCp(6); Draw();
	SetCp(7); Draw();
	SetCp(0); 
})
TriggerX(P0,{Void(704,Exactly,1),Void(706,Exactly,0),Void(701,Exactly,2),Bring(P1, Exactly, 0, "Factories", "전체필드");Bring(P1, Exactly, 0, "사은품", "사은품");},{
	SetVoid(706,SetTo,1),KillUnit("Any unit", P1);SetVoid(705,SetTo,7);SetNVar(pvpstr[1],SetTo,5);
	SetVoid(709+0,SetTo,1);Wait(3000);
	SetCp(0); Defeat();
	SetCp(1); Victory();
	SetCp(2); Victory();
	SetCp(3); Victory();
	SetCp(4); Victory();
	SetCp(5); Victory();
	SetCp(6); Victory();
	SetCp(7); Victory();
	SetCp(0); 
})
TriggerX(P0,{Void(704,Exactly,1),Void(706,Exactly,0),Void(701,Exactly,2),Bring(P5, Exactly, 0, "Factories", "전체필드");Bring(P5, Exactly, 0, "사은품", "사은품");},{
	SetVoid(706,SetTo,1),KillUnit("Any unit", P5);SetVoid(705,SetTo,6);SetNVar(pvpstr[1],SetTo,5);
	SetVoid(709+4,SetTo,1);Wait(3000);
	SetCp(0); Victory();
	SetCp(1); Victory();
	SetCp(2); Victory();
	SetCp(3); Victory();
	SetCp(4); Defeat();
	SetCp(5); Victory();
	SetCp(6); Victory();
	SetCp(7); Victory();
	SetCp(0); 
})

CIfEnd()


CIf(P0,{Void(701,Exactly,3)})
TriggerX(P0,{Void(703,Exactly,1),Void(701,Exactly,3)},{SetVoid(703,SetTo,0);
	RemoveUnit("Any unit",Force1);RemoveUnit("Any unit",Force2);RemoveUnit("Factories",Force1);RemoveUnit("Factories",Force2);
	CreateUnit(1,41,"1팀중앙",P1);CreateUnit(1,41,"2팀중앙",P5);CreateUnit(1,"사은품","사은품",P1);CreateUnit(1,"사은품","사은품",P5);
	SetResources(P1,SetTo,400,Ore);SetResources(P5,SetTo,400,Ore);
	SetVoid(704,SetTo,1);SetVoid(705,SetTo,1);
	SetScore(Force1, SetTo, 0, Custom);SetVoid(1,SetTo,0);
	SetScore(Force2, SetTo, 0, Custom);SetVoid(2,SetTo,0);
},{Preserved})

TriggerX(P0,{NVar(tagstr[1],Exactly,3),Void(704,Exactly,1);Void(701,Exactly,3);Bring(P4, Exactly, 0, "Factories", "전체필드");Bring(P4, Exactly, 0, "사은품", "사은품");},{
	KillUnitAt(All,"Any unit","전체필드",P4);SetVoid(45+4,SetTo,24*5);SetVoid(45+5,SetTo,24*5);SetVoid(45+6,SetTo,24*5);SetVoid(45+7,SetTo,24*5); SetVoid(709+3,SetTo,1);
	SetCp(0); DisplayText("\x16아군이 전멸하였습니다.\r\n\r\n\x08패배.", 4);
	SetCp(1); DisplayText("\x16아군이 전멸하였습니다.\r\n\r\n\x08패배.", 4);
	SetCp(2); DisplayText("\x16아군이 전멸하였습니다.\r\n\r\n\x08패배.", 4);
	SetCp(3); DisplayText("\x16아군이 전멸하였습니다.\r\n\r\n\x08패배.", 4);
	SetCp(4); DisplayText("\x16적군이 전멸하였습니다.\r\n\r\n\x0F승리.", 4);
	SetCp(5); DisplayText("\x16적군이 전멸하였습니다.\r\n\r\n\x0F승리.", 4);
	SetCp(6); DisplayText("\x16적군이 전멸하였습니다.\r\n\r\n\x0F승리.", 4);
	SetCp(7); DisplayText("\x16적군이 전멸하였습니다.\r\n\r\n\x0F승리.", 4);
	SetCp(0); 
	Wait(3000);
	SetCp(0); Defeat();
	SetCp(1); Defeat();
	SetCp(2); Defeat();
	SetCp(3); Defeat();
	SetCp(4); Victory();
	SetCp(5); Victory();
	SetCp(6); Victory();
	SetCp(7); Victory();
	SetCp(0); 
})
TriggerX(P0,{NVar(tagstr[1],Exactly,2),Void(704,Exactly,1);Void(701,Exactly,3);Bring(P3, Exactly, 0, "Factories", "전체필드");Bring(P3, Exactly, 0, "사은품", "사은품");},{
	CreateUnit(1,41,"1팀중앙",P4);CreateUnit(1,"사은품","사은품",P4);SetVoid(45+3,SetTo,24*5);SetNVar(tagstr[1],SetTo,3); SetVoid(709+2,SetTo,1);SetVoid(705,SetTo,1);
	SetResources(Force1,SetTo,400,Ore);SetResources(Force2,SetTo,400,Ore);SetVoid(717,SetTo,1);
})
TriggerX(P0,{NVar(tagstr[1],Exactly,1),Void(704,Exactly,1);Void(701,Exactly,3);Bring(P2, Exactly, 0, "Factories", "전체필드");Bring(P2, Exactly, 0, "사은품", "사은품");},{
	CreateUnit(1,41,"1팀중앙",P3);CreateUnit(1,"사은품","사은품",P3);SetVoid(45+2,SetTo,24*5);SetNVar(tagstr[1],SetTo,2); SetVoid(709+1,SetTo,1);SetVoid(705,SetTo,1);
	SetResources(Force1,SetTo,400,Ore);SetResources(Force2,SetTo,400,Ore);SetVoid(717,SetTo,1);
})
TriggerX(P0,{NVar(tagstr[1],Exactly,0),Void(704,Exactly,1);Void(701,Exactly,3);Bring(P1, Exactly, 0, "Factories", "전체필드");Bring(P1, Exactly, 0, "사은품", "사은품");},{
	CreateUnit(1,41,"1팀중앙",P2);CreateUnit(1,"사은품","사은품",P2);SetVoid(45+1,SetTo,24*5);SetNVar(tagstr[1],SetTo,1); SetVoid(709+0,SetTo,1);SetVoid(705,SetTo,1);
	SetResources(Force1,SetTo,400,Ore);SetResources(Force2,SetTo,400,Ore);SetVoid(717,SetTo,1);
})
TriggerX(P0,{NVar(tagstr[1],Exactly,0),Void(704,Exactly,1);Void(701,Exactly,3);Deaths(P1,Exactly,0,"!Exist")},{
	SetVoid(705,SetTo,0);
})
TriggerX(P0,{NVar(tagstr[1],Exactly,1),Void(704,Exactly,1);Void(701,Exactly,3);Deaths(P2,Exactly,0,"!Exist")},{
	SetVoid(705,SetTo,0);
})
TriggerX(P0,{NVar(tagstr[1],Exactly,2),Void(704,Exactly,1);Void(701,Exactly,3);Deaths(P3,Exactly,0,"!Exist")},{
	SetVoid(705,SetTo,0);
})
TriggerX(P0,{NVar(tagstr[1],Exactly,3),Void(704,Exactly,1);Void(701,Exactly,3);Deaths(P4,Exactly,0,"!Exist")},{
	SetVoid(705,SetTo,0);
})

TriggerX(P0,{NVar(tagstr[2],Exactly,3),Void(704,Exactly,1);Void(701,Exactly,3);Bring(P8, Exactly, 0, "Factories", "전체필드");Bring(P8, Exactly, 0, "사은품", "사은품");},{
	KillUnitAt(All,"Any unit","전체필드",P8);SetVoid(45+0,SetTo,24*5);SetVoid(45+1,SetTo,24*5);SetVoid(45+2,SetTo,24*5);SetVoid(45+3,SetTo,24*5); SetVoid(709+7,SetTo,1);
	SetCp(0); DisplayText("\x16적군이 전멸하였습니다.\r\n\r\n\x0F승리.", 4);
	SetCp(1); DisplayText("\x16적군이 전멸하였습니다.\r\n\r\n\x0F승리.", 4);
	SetCp(2); DisplayText("\x16적군이 전멸하였습니다.\r\n\r\n\x0F승리.", 4);
	SetCp(3); DisplayText("\x16적군이 전멸하였습니다.\r\n\r\n\x0F승리.", 4);
	SetCp(4); DisplayText("\x16아군이 전멸하였습니다.\r\n\r\n\x08패배.", 4);
	SetCp(5); DisplayText("\x16아군이 전멸하였습니다.\r\n\r\n\x08패배.", 4);
	SetCp(6); DisplayText("\x16아군이 전멸하였습니다.\r\n\r\n\x08패배.", 4);
	SetCp(7); DisplayText("\x16아군이 전멸하였습니다.\r\n\r\n\x08패배.", 4);
	SetCp(0); 
	Wait(3000);
	SetCp(0); Victory();
	SetCp(1); Victory();
	SetCp(2); Victory();
	SetCp(3); Victory();
	SetCp(4); Defeat();
	SetCp(5); Defeat();
	SetCp(6); Defeat();
	SetCp(7); Defeat();
	SetCp(0); 
})
TriggerX(P0,{NVar(tagstr[2],Exactly,2),Void(704,Exactly,1);Void(701,Exactly,3);Bring(P7, Exactly, 0, "Factories", "전체필드");Bring(P7, Exactly, 0, "사은품", "사은품");},{
	CreateUnit(1,41,"2팀중앙",P8);CreateUnit(1,"사은품","사은품",P8);SetVoid(45+7,SetTo,24*5);SetNVar(tagstr[2],SetTo,3); SetVoid(709+6,SetTo,1);SetVoid(705,SetTo,1);
	SetResources(Force1,SetTo,400,Ore);SetResources(Force2,SetTo,400,Ore);SetVoid(716,SetTo,1);
})
TriggerX(P0,{NVar(tagstr[2],Exactly,1),Void(704,Exactly,1);Void(701,Exactly,3);Bring(P6, Exactly, 0, "Factories", "전체필드");Bring(P6, Exactly, 0, "사은품", "사은품");},{
	CreateUnit(1,41,"2팀중앙",P7);CreateUnit(1,"사은품","사은품",P7);SetVoid(45+6,SetTo,24*5);SetNVar(tagstr[2],SetTo,2); SetVoid(709+5,SetTo,1);SetVoid(705,SetTo,1);
	SetResources(Force1,SetTo,400,Ore);SetResources(Force2,SetTo,400,Ore);SetVoid(716,SetTo,1);
})
TriggerX(P0,{NVar(tagstr[2],Exactly,0),Void(704,Exactly,1);Void(701,Exactly,3);Bring(P5, Exactly, 0, "Factories", "전체필드");Bring(P5, Exactly, 0, "사은품", "사은품");},{
	CreateUnit(1,41,"2팀중앙",P6);CreateUnit(1,"사은품","사은품",P6);SetVoid(45+5,SetTo,24*5);SetNVar(tagstr[2],SetTo,1); SetVoid(709+4,SetTo,1);SetVoid(705,SetTo,1);
	SetResources(Force1,SetTo,400,Ore);SetResources(Force2,SetTo,400,Ore);SetVoid(716,SetTo,1);
})
TriggerX(P0,{NVar(tagstr[2],Exactly,0),Void(704,Exactly,1);Void(701,Exactly,3);Deaths(P5,Exactly,0,"!Exist")},{
	SetVoid(705,SetTo,0);
})
TriggerX(P0,{NVar(tagstr[2],Exactly,1),Void(704,Exactly,1);Void(701,Exactly,3);Deaths(P6,Exactly,0,"!Exist")},{
	SetVoid(705,SetTo,0);
})
TriggerX(P0,{NVar(tagstr[2],Exactly,2),Void(704,Exactly,1);Void(701,Exactly,3);Deaths(P7,Exactly,0,"!Exist")},{
	SetVoid(705,SetTo,0);
})
TriggerX(P0,{NVar(tagstr[2],Exactly,3),Void(704,Exactly,1);Void(701,Exactly,3);Deaths(P8,Exactly,0,"!Exist")},{
	SetVoid(705,SetTo,0);
})

CIf(P0,{Void(716,Exactly,1)},{SetVoid(716,SetTo,0),SetVoid(673,SetTo,0)})
	local ClearAct = {}
	for i = 0, 3 do
		table.insert(ClearAct,SetVoid(177+i,SetTo,0))
		table.insert(ClearAct,SetVoid(324+i,SetTo,0))
		table.insert(ClearAct,KillUnit("Men",i))
		table.insert(ClearAct,SetVoid(1000+i,SetTo,0))
		table.insert(ClearAct,SetVoid(1008+i,SetTo,0))
		for j = 1, 26 do
			table.insert(ClearAct,SetVoid(1000+i+16*j,SetTo,0))
			table.insert(ClearAct,SetVoid(1008+i+16*j,SetTo,0))
		end
		for j = 0, 9 do
			table.insert(ClearAct,SetVoid(201+i+8*j,SetTo,0))
		end
		for j = 20, 26 do
			table.insert(ClearAct,SetVoid(1600+i+8*j,SetTo,0))
		end
	end
	DoActions2(P0,ClearAct)
CIfEnd()

CIf(P0,{Void(717,Exactly,1)},{SetVoid(717,SetTo,0),SetVoid(674,SetTo,0)})
	local ClearAct = {}
	for i = 4, 7 do
		table.insert(ClearAct,SetVoid(177+i,SetTo,0))
		table.insert(ClearAct,SetVoid(324+i,SetTo,0))
		table.insert(ClearAct,KillUnit("Men",i))
		table.insert(ClearAct,SetVoid(1000+i,SetTo,0))
		table.insert(ClearAct,SetVoid(1008+i,SetTo,0))
		for j = 1, 26 do
			table.insert(ClearAct,SetVoid(1000+i+16*j,SetTo,0))
			table.insert(ClearAct,SetVoid(1008+i+16*j,SetTo,0))
		end
		for j = 0, 9 do
			table.insert(ClearAct,SetVoid(201+i+8*j,SetTo,0))
		end
		for j = 20, 26 do
			table.insert(ClearAct,SetVoid(1600+i+8*j,SetTo,0))
		end
	end
	DoActions2(P0,ClearAct)
CIfEnd()
CIfEnd()
for i = 0, 7 do
	TriggerX(P0,{Deaths(i,Exactly,0,"!Exist"),Void(701,AtLeast,2)},{RemoveUnit("Any unit",i)},{Preserved})
	TriggerX(P0,{Void(709+i,Exactly,1)},{
		RemoveUnit("Men",i);
		SetVoid(1000+i,SetTo,16777216);
		SetVoid(177+i,SetTo,0);
	},{Preserved})
end

CJump(P0,0x100)
iStr1 = GetiStrId(P0,"\x0A\x0A\x0A\x0A\x0A\x13\x1F<PVP Mode> \x04: AAAAAAAAAAAAAAAA \x04VS BBBBBBBBBBBBBBBB\x0A\x0A\x0A\x0A\x0A")
iStr2 = GetiStrId(P0,"\x0A\x0A\x0A\x0A\x0A\x13\x1F<PVP Mode> \x04: SCV 시간제한을 초과하여 모두 실격처리 되었습니다.\x0A\x0A\x0A\x0A\x0A\x0A")
iStr3 = GetiStrId(P0,"\x0A\x0A\x0A\x0A\x0A\x13     시간제한을 초과하여 AAAAAAAAAAAAAAAA\x04가 실격처리 되었습니다.\x0A\x0A\x0A\x0A\x0A\x0A")
iStr4 = GetiStrId(P0,"\x0A\x0A\x0A\x0A\x0A\x13\x1F<PVP Mode> \x04: 모두 격추되어 무승부 처리됩니다.\x0A\x0A\x0A\x0A\x0A\x0A")
iStr5 = GetiStrId(P0,"\x0A\x0A\x0A\x0A\x0A\x13\x1F<PVP Mode> \x04: AAAAAAAAAAAAAAAA\x04가 승리했습니다.\x0A\x0A\x0A\x0A\x0A\x0A")
iStr6 = GetiStrId(P0,"\x0A\x0A\x0A\x0A\x0A\x13\x1F<Tag Match> \x04: AAAAAAAAAAAAAAAA \x04VS BBBBBBBBBBBBBBBB\x0A\x0A\x0A\x0A\x0A\x0A")
SVAP1 = SaveiStrArr(P0,MakeiStrVoid(16)) SVAP5 = SaveiStrArr(P0,MakeiStrVoid(16)) 
SVAP2 = SaveiStrArr(P0,MakeiStrVoid(16)) SVAP6 = SaveiStrArr(P0,MakeiStrVoid(16)) 
SVAP3 = SaveiStrArr(P0,MakeiStrVoid(16)) SVAP7 = SaveiStrArr(P0,MakeiStrVoid(16)) 
SVAP4 = SaveiStrArr(P0,MakeiStrVoid(16)) SVAP8 = SaveiStrArr(P0,MakeiStrVoid(16)) 
CJumpEnd(P0,0x100)

CIfOnce(P0)
CS__ItoName(P0,SVAP1,P1,nil,nil,ColorCode2[1],1,1) CS__ItoName(P0,SVAP5,P5,nil,nil,ColorCode2[5],1,1)
CS__ItoName(P0,SVAP2,P2,nil,nil,ColorCode2[2],1,1) CS__ItoName(P0,SVAP6,P6,nil,nil,ColorCode2[6],1,1)
CS__ItoName(P0,SVAP3,P3,nil,nil,ColorCode2[3],1,1) CS__ItoName(P0,SVAP7,P7,nil,nil,ColorCode2[7],1,1)
CS__ItoName(P0,SVAP4,P4,nil,nil,ColorCode2[4],1,1) CS__ItoName(P0,SVAP8,P8,nil,nil,ColorCode2[8],1,1)
CIfEnd()


CIf(P0,{Void(701,Exactly,2),Void(705,AtLeast,1)})
	function pvpfunc()
		local PlayerID = CAPrintPlayerID
		local CA = CAPrintDataArr
		local CB = CAPrintCreateArr

		TriggerX(P0,Void(705,Exactly,1),{
			SetNVar(pvpstr[2],SetTo,19);SetNVar(pvpstr[3],SetTo,39)},{Preserved})
		TriggerX(P0,Void(705,Exactly,2),{
			SetNVar(pvpstr[2],SetTo,0);SetNVar(pvpstr[3],SetTo,0)},{Preserved})
		TriggerX(P0,Void(705,Exactly,3),{
			SetNVar(pvpstr[2],SetTo,22);SetNVar(pvpstr[3],SetTo,0)},{Preserved})
		TriggerX(P0,Void(705,Exactly,4),{
			SetNVar(pvpstr[2],SetTo,0);SetNVar(pvpstr[3],SetTo,22)},{Preserved})
		TriggerX(P0,Void(705,Exactly,5),{
			SetNVar(pvpstr[2],SetTo,0);SetNVar(pvpstr[3],SetTo,0)},{Preserved})
		TriggerX(P0,Void(705,Exactly,6),{
			SetNVar(pvpstr[2],SetTo,19);SetNVar(pvpstr[3],SetTo,0)},{Preserved})
		TriggerX(P0,Void(705,Exactly,7),{
			SetNVar(pvpstr[2],SetTo,0);SetNVar(pvpstr[3],SetTo,19)},{Preserved})

		CIf(P0,NVar(pvpstr[2],AtLeast,1))
			CA__InputVA(pvpstr[2],SVAP1,16,0xFFFFFFFF,pvpstr[2],Vi(pvpstr[2][2],16-1),nil)
		CIfEnd()
		CIf(P0,NVar(pvpstr[3],AtLeast,1))
			CA__InputVA(pvpstr[3],SVAP5,16,0xFFFFFFFF,pvpstr[3],Vi(pvpstr[3][2],16-1),nil)
		CIfEnd()
		CIf(P0,NVar(pvpstr[1],Exactly,3))
			-- \x1F<PVP Mode> \x04: SCV 
			CA__SetMemoryX(6,0x56503C1F,0xFFFFFFFF)
			CA__SetMemoryX(7,0x6F4D2050,0xFFFFFFFF)
			CA__SetMemoryX(8,0x203E6564,0xFFFFFFFF)
			CA__SetMemoryX(9,0x53203A04,0xFFFFFFFF)
			CA__SetMemoryX(10,0x2056430D,0xFFFFFFFF)
		CIfEnd()
	end
	CAPrint({iStr1,iStr2,iStr3,iStr4,iStr5},{P1,P2,P3,P4,P5,P6,P7,P8,Force5},{pvpstr[1],0,0,0,0,0},"pvpfunc",P0,nil,nil,{PlayWAVX("staredit\\wav\\Notice.wav")})
	DoActions(P0,SetVoid(705,SetTo,0))
CIfEnd()

CIf(P0,{Void(701,Exactly,3),Void(705,AtLeast,1)})
	function tagfunc()
		local PlayerID = CAPrintPlayerID
		local CA = CAPrintDataArr
		local CB = CAPrintCreateArr

		CIfX(P0,NVar(tagstr[1],Exactly,0))
			CA__InputVA(20,SVAP1,16,0xFFFFFFFF,20,20+16-1,nil)
		CElseIfX(NVar(tagstr[1],Exactly,1))
			CA__InputVA(20,SVAP2,16,0xFFFFFFFF,20,20+16-1,nil)	
		CElseIfX(NVar(tagstr[1],Exactly,2))
			CA__InputVA(20,SVAP3,16,0xFFFFFFFF,20,20+16-1,nil)	
		CElseIfX(NVar(tagstr[1],Exactly,3))
			CA__InputVA(20,SVAP4,16,0xFFFFFFFF,20,20+16-1,nil)	
		CIfXEnd()
		CIfX(P0,NVar(tagstr[2],Exactly,0))
			CA__InputVA(40,SVAP5,16,0xFFFFFFFF,40,40+16-1,nil)
		CElseIfX(NVar(tagstr[2],Exactly,1))
			CA__InputVA(40,SVAP6,16,0xFFFFFFFF,40,40+16-1,nil)
		CElseIfX(NVar(tagstr[2],Exactly,2))
			CA__InputVA(40,SVAP7,16,0xFFFFFFFF,40,40+16-1,nil)
		CElseIfX(NVar(tagstr[2],Exactly,3))
			CA__InputVA(40,SVAP8,16,0xFFFFFFFF,40,40+16-1,nil)
		CIfXEnd()
	end
	CAPrint({iStr6},{P1,P2,P3,P4,P5,P6,P7,P8,Force5},{1,0,0,0,0,0},"tagfunc",P0,nil,nil,{PlayWAVX("staredit\\wav\\SpeedMessage.wav")})
	DoActions(P0,SetVoid(705,SetTo,0))
CIfEnd()

---------------------------------------------------------------------------------------------------
for i = 1, 4 do
local LifeArr = {1000,1200,3000,4000}
local DeathCountArr = {0.5,6,15,20}
local LimitArr = {1,2,3,4}
Trigger { -- 생존 점수
	players = {P0},
	conditions = {
		Deaths(P11,Exactly,i,"!Exist");
	},
	actions = {
		SetScore(Force1, SetTo, LifeArr[i], Custom);
		SetVoid(1,SetTo,LifeArr[i]);
		SetVoid(83,SetTo,i);
		SetVoid(627,SetTo,i);
		SetMemory(0x582144+4*0,SetTo,DeathCountArr[i]*2);
		SetMemory(0x582144+4*1,SetTo,DeathCountArr[i]*2);
		SetMemory(0x582144+4*2,SetTo,DeathCountArr[i]*2);
		SetMemory(0x582144+4*3,SetTo,DeathCountArr[i]*2);
		
		--SetMemory(0x5821D4+4*0,SetTo,LimitArr[i]*2);
		--SetMemory(0x5821D4+4*1,SetTo,LimitArr[i]*2);
		--SetMemory(0x5821D4+4*2,SetTo,LimitArr[i]*2);
		--SetMemory(0x5821D4+4*3,SetTo,LimitArr[i]*2);
	},
}

Trigger { -- No comment (F89F5D89)
	players = {P0},
	conditions = {
		Deaths(P12,Exactly,i,"!Exist");
	},
	actions = {
		SetScore(Force2, SetTo, LifeArr[i], Custom);
		SetVoid(2,SetTo,LifeArr[i]);
		SetVoid(84,SetTo,i);
		SetVoid(628,SetTo,i);
		SetMemory(0x582144+4*4,SetTo,DeathCountArr[i]*2);
		SetMemory(0x582144+4*5,SetTo,DeathCountArr[i]*2);
		SetMemory(0x582144+4*6,SetTo,DeathCountArr[i]*2);
		SetMemory(0x582144+4*7,SetTo,DeathCountArr[i]*2);
		
		--SetMemory(0x5821D4+4*4,SetTo,LimitArr[i]*2);
		--SetMemory(0x5821D4+4*5,SetTo,LimitArr[i]*2);
		--SetMemory(0x5821D4+4*6,SetTo,LimitArr[i]*2);
		--SetMemory(0x5821D4+4*7,SetTo,LimitArr[i]*2);
	},
}
end

Trigger { -- 생점 0
	players = {P0},
	conditions = {
		Void(701,AtMost,2);
		Void(1,Exactly,0);
		ElapsedTime(AtLeast, 10);
	},
	actions = {
		SetCp(0);
		DisplayText("\x13\x03Team 1\x04이 생존점수가 0이되었습니다. \x03Team 1\x04은 미네랄 속도가 2배가 됩니다.\r\n\r\n\r\n\r\n\r\n\r\n", 4);
		SetCp(1);
		DisplayText("\x13\x03Team 1\x04이 생존점수가 0이되었습니다. \x03Team 1\x04은 미네랄 속도가 2배가 됩니다.\r\n\r\n\r\n\r\n\r\n\r\n", 4);
		SetCp(2);
		DisplayText("\x13\x03Team 1\x04이 생존점수가 0이되었습니다. \x03Team 1\x04은 미네랄 속도가 2배가 됩니다.\r\n\r\n\r\n\r\n\r\n\r\n", 4);
		SetCp(3);
		DisplayText("\x13\x03Team 1\x04이 생존점수가 0이되었습니다. \x03Team 1\x04은 미네랄 속도가 2배가 됩니다.\r\n\r\n\r\n\r\n\r\n\r\n", 4);
		SetCp(0);
	},
}

Trigger { -- 생점 0
	players = {P0},
	conditions = {
		Void(701,AtMost,2);
		Void(2,Exactly,0);
		ElapsedTime(AtLeast, 10);
	},
	actions = {
		SetCp(4);
		DisplayText("\x13\x03Team 2\x04이 생존점수가 0이되었습니다. \x03Team 2\x04은 미네랄 속도가 2배가 됩니다.\r\n\r\n\r\n\r\n\r\n\r\n", 4);
		SetCp(5);
		DisplayText("\x13\x03Team 2\x04이 생존점수가 0이되었습니다. \x03Team 2\x04은 미네랄 속도가 2배가 됩니다.\r\n\r\n\r\n\r\n\r\n\r\n", 4);
		SetCp(6);
		DisplayText("\x13\x03Team 2\x04이 생존점수가 0이되었습니다. \x03Team 2\x04은 미네랄 속도가 2배가 됩니다.\r\n\r\n\r\n\r\n\r\n\r\n", 4);
		SetCp(7);
		DisplayText("\x13\x03Team 2\x04이 생존점수가 0이되었습니다. \x03Team 2\x04은 미네랄 속도가 2배가 됩니다.\r\n\r\n\r\n\r\n\r\n\r\n", 4);
		SetCp(0);
	},
}
Trigger { -- 드론전 돈 2배
	players = {P0},
	conditions = {
		Void(701,AtMost,2);
		Deaths(P9,Exactly,1,"!Exist");
		Deaths(P10,Exactly,1,"!Exist");
		Command(Force1, Exactly, 1, "Factories");
		Command(Force2, Exactly, 1, "Factories");
		Command(Force1, Exactly, 1, "사은품");
		Command(Force2, Exactly, 1, "사은품");
	},
	actions = {
		SetCp(0);
		DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\x1FSystem : \x041:1 드론전 이므로 돈 오르는 속도가 2배가 됩니다.\r\n\r\n\r\n\r\n\r\n\r\n\x04", 4);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		SetCp(1);
		DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\x1FSystem : \x041:1 드론전 이므로 돈 오르는 속도가 2배가 됩니다.\r\n\r\n\r\n\r\n\r\n\r\n\x04", 4);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		SetCp(2);
		DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\x1FSystem : \x041:1 드론전 이므로 돈 오르는 속도가 2배가 됩니다.\r\n\r\n\r\n\r\n\r\n\r\n\x04", 4);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		SetCp(3);
		DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\x1FSystem : \x041:1 드론전 이므로 돈 오르는 속도가 2배가 됩니다.\r\n\r\n\r\n\r\n\r\n\r\n\x04", 4);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		SetCp(4);
		DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\x1FSystem : \x041:1 드론전 이므로 돈 오르는 속도가 2배가 됩니다.\r\n\r\n\r\n\r\n\r\n\r\n\x04", 4);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		SetCp(5);
		DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\x1FSystem : \x041:1 드론전 이므로 돈 오르는 속도가 2배가 됩니다.\r\n\r\n\r\n\r\n\r\n\r\n\x04", 4);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		SetCp(6);
		DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\x1FSystem : \x041:1 드론전 이므로 돈 오르는 속도가 2배가 됩니다.\r\n\r\n\r\n\r\n\r\n\r\n\x04", 4);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		SetCp(7);
		DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\x1FSystem : \x041:1 드론전 이므로 돈 오르는 속도가 2배가 됩니다.\r\n\r\n\r\n\r\n\r\n\r\n\x04", 4);
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		SetCp(0);
		SetScore(AllPlayers, SetTo, 0, Custom);
		SetVoid(1,SetTo,0);
		SetVoid(2,SetTo,0);
	},
}
Trigger { -- 드론전 돈 2배
	players = {P0},
	conditions = {
		Void(701,Exactly,3);
		Deaths(P9,Exactly,1,"!Exist");
		Deaths(P10,Exactly,1,"!Exist");
		Command(Force1, Exactly, 1, "Factories");
		Command(Force2, Exactly, 1, "Factories");
		Command(Force1, Exactly, 1, "사은품");
		Command(Force2, Exactly, 1, "사은품");
	},
	actions = {
		SetScore(AllPlayers, SetTo, 0, Custom);
		SetVoid(1,SetTo,0);
		SetVoid(2,SetTo,0);
	},
}














DoActions(P0,{ -- 건물 날리기 방지
	SetLoc("CLoc79",0,SetTo,0);
	SetLoc("CLoc79",4,SetTo,1024);
	SetLoc("CLoc79",8,SetTo,2048);
	SetLoc("CLoc79",12,SetTo,2048);
	KillUnitAt(All,191,"CLoc79",P12);
})
Trigger { -- 건물 날리기 방지
	players = {P0},
	conditions = {
		Bring(Force1, AtLeast, 1, "Buildings", "CLoc79");
	},
	actions = {
		KillUnitAt(All, "Buildings", "CLoc79", Force1);
		PreserveTrigger();
	},
}
DoActions(P0,{ -- 건물 날리기 방지
	SetLoc("CLoc79",0,SetTo,0);
	SetLoc("CLoc79",4,SetTo,0);
	SetLoc("CLoc79",8,SetTo,2048);
	SetLoc("CLoc79",12,SetTo,1024);
	KillUnitAt(All,191,"CLoc79",P12);
})
Trigger { -- 건물 날리기 방지
	players = {P0},
	conditions = {
		Bring(Force2, AtLeast, 1, "Buildings", "CLoc79");
	},
	actions = {
		KillUnitAt(All, "Buildings", "CLoc79", Force2);
		PreserveTrigger();
	},
}


--승패 TRIG
CIf(P0,{Void(701,AtMost,1)})
	SUBSUB_Victory() 
CIfEnd()

Trigger { -- 나간사람 제거 & 옵저버 킬 & 무적 처리
	players = {P0},
	conditions = {
		Always();
	},
	actions = {
		KillUnit("Any unit", P12);
		KillUnitAt(All, "Flash Missile", "전체필드", AllPlayers);
		KillUnit("만든이", AllPlayers);
		RemoveUnitAt(All, "Zerg Larva", "Anywhere", AllPlayers);
		PreserveTrigger();
	},
}


-- Timer 데스값 감소
DoActions2(P0,{RemoveUnit("Cloak",P1);RemoveUnit("Cloak",P2);RemoveUnit("Cloak",P3);RemoveUnit("Cloak",P4);RemoveUnit("Cloak",P5);RemoveUnit("Cloak",P6);RemoveUnit("Cloak",P7);RemoveUnit("Cloak",P8);RemoveUnit("Cloak",P12);
	SetVoid(43,Subtract,1); -- 방사능
	SetVoid(44,Subtract,1);
	SetVoid(45,Subtract,1); -- 무적
	SetVoid(46,Subtract,1);
	SetVoid(47,Subtract,1);
	SetVoid(48,Subtract,1);
	SetVoid(49,Subtract,1);
	SetVoid(50,Subtract,1);
	SetVoid(51,Subtract,1);
	SetVoid(52,Subtract,1);
	SetVoid(73,Subtract,1); -- 리체 리콜
	SetVoid(74,Subtract,1);
	SetVoid(85,Subtract,1); -- 자기장 
	SetVoid(86,Subtract,1);
	SetVoid(87,Add,1); -- 자기장 딜레이
	SetVoid(88,Add,1);
	SetSwitch("Switch 30",Clear); -- 피탄 Once
	SetSwitch("Switch 31",Clear);
	SetSwitch("Switch 32",Clear);
	SetSwitch("Switch 33",Clear);
	SetSwitch("Switch 34",Clear);
	SetSwitch("Switch 35",Clear);
	SetSwitch("Switch 36",Clear);
	SetSwitch("Switch 37",Clear);
	SetVoid(113,Subtract,1); -- 방사능 
	SetVoid(114,Subtract,1);
	SetVoid(115,Subtract,1);
	SetVoid(116,Subtract,1);
	SetVoid(117,Subtract,1);
	SetVoid(118,Subtract,1);
	SetVoid(119,Subtract,1);
	SetVoid(120,Subtract,1);
	SetVoid(129,Subtract,1); -- Ore
	SetVoid(130,Subtract,1);
	SetVoid(131,Subtract,1);
	SetVoid(132,Subtract,1);
	SetVoid(133,Subtract,1);
	SetVoid(134,Subtract,1);
	SetVoid(135,Subtract,1);
	SetVoid(136,Subtract,1);
	SetVoid(137,Subtract,1); -- Gas
	SetVoid(138,Subtract,1);
	SetVoid(139,Subtract,1);
	SetVoid(140,Subtract,1);
	SetVoid(141,Subtract,1);
	SetVoid(142,Subtract,1);
	SetVoid(143,Subtract,1);
	SetVoid(144,Subtract,1); 
	SetVoid(145,Subtract,1); -- 수폭
	SetVoid(146,Subtract,1);
	SetVoid(147,Subtract,1);
	SetVoid(148,Subtract,1);
	SetVoid(149,Subtract,1);
	SetVoid(150,Subtract,1);
	SetVoid(151,Subtract,1);
	SetVoid(152,Subtract,1);
	SetVoid(161,Subtract,1); -- 미러
	SetVoid(162,Subtract,1);
	SetVoid(163,Subtract,1);
	SetVoid(164,Subtract,1);
	SetVoid(165,Subtract,1);
	SetVoid(166,Subtract,1);
	SetVoid(167,Subtract,1);
	SetVoid(168,Subtract,1);
	SetVoid(169,Subtract,1); -- 슈퍼 미러
	SetVoid(170,Subtract,1);
	SetVoid(171,Subtract,1);
	SetVoid(172,Subtract,1);
	SetVoid(173,Subtract,1);
	SetVoid(174,Subtract,1);
	SetVoid(175,Subtract,1);
	SetVoid(176,Subtract,1);
	SetVoid(185,Subtract,1); -- 슈퍼 클지
	SetVoid(186,Subtract,1);
	SetVoid(187,Subtract,1);
	SetVoid(188,Subtract,1);
	SetVoid(189,Subtract,1);
	SetVoid(190,Subtract,1);
	SetVoid(191,Subtract,1);
	SetVoid(192,Subtract,1);
	SetVoid(300,Subtract,1); -- 감지 
	SetVoid(301,Subtract,1);
	SetVoid(302,Subtract,1);
	SetVoid(303,Subtract,1);
	SetVoid(304,Subtract,1);
	SetVoid(305,Subtract,1);
	SetVoid(306,Subtract,1);
	SetVoid(307,Subtract,1);
	SetVoid(308,Subtract,1); -- 반사 불가 감지
	SetVoid(309,Subtract,1);
	SetVoid(310,Subtract,1);
	SetVoid(311,Subtract,1);
	SetVoid(312,Subtract,1);
	SetVoid(313,Subtract,1);
	SetVoid(314,Subtract,1);
	SetVoid(315,Subtract,1);
	SetVoid(316,Subtract,1); -- 특수 감지
	SetVoid(317,Subtract,1);
	SetVoid(318,Subtract,1);
	SetVoid(319,Subtract,1);
	SetVoid(320,Subtract,1);
	SetVoid(321,Subtract,1);
	SetVoid(322,Subtract,1);
	SetVoid(323,Subtract,1);
	SetVoid(332,Subtract,1); -- 콤보
	SetVoid(333,Subtract,1);
	SetVoid(334,Subtract,1);
	SetVoid(335,Subtract,1);
	SetVoid(336,Subtract,1);
	SetVoid(337,Subtract,1);
	SetVoid(338,Subtract,1);
	SetVoid(339,Subtract,1);
	SetVoid(356,Subtract,1); -- Nova
	SetVoid(357,Subtract,1);
	SetVoid(358,Subtract,1);
	SetVoid(359,Subtract,1);
	SetVoid(360,Subtract,1);
	SetVoid(361,Subtract,1);
	SetVoid(362,Subtract,1);
	SetVoid(363,Subtract,1);
	SetVoid(389,Subtract,1); -- SN
	SetVoid(390,Subtract,1);
	SetVoid(618,Subtract,1); -- 인비저블 감지 
	SetVoid(619,Subtract,1);
	SetVoid(620,Subtract,1);
	SetVoid(621,Subtract,1);
	SetVoid(622,Subtract,1);
	SetVoid(623,Subtract,1);
	SetVoid(624,Subtract,1);
	SetVoid(625,Subtract,1);
	SetVoid(629,Subtract,1); -- 시간왜곡
	SetVoid(630,Subtract,1);
	SetVoid(639,Subtract,1); -- 라이터
	SetVoid(640,Subtract,1);
	SetVoid(641,Subtract,1);
	SetVoid(642,Subtract,1);
	SetVoid(643,Subtract,1);
	SetVoid(644,Subtract,1);
	SetVoid(645,Subtract,1);
	SetVoid(646,Subtract,1);
	SetVoid(655,Subtract,1); -- 포탈
	SetVoid(656,Subtract,1);
	SetVoid(657,Subtract,1);
	SetVoid(658,Subtract,1);
	SetVoid(663,Subtract,1); -- 호밍 감지
	SetVoid(664,Subtract,1); 
	SetVoid(665,Subtract,1); 
	SetVoid(666,Subtract,1); 
	SetVoid(667,Subtract,1); 
	SetVoid(668,Subtract,1); 
	SetVoid(669,Subtract,1); 
	SetVoid(670,Subtract,1); 
	SetVoid(673,Subtract,1); -- TimeLock
	SetVoid(674,Subtract,1); 
	SetVoid(675,Subtract,1); 
	SetVoid(676,Subtract,1); 
	SetVoid(679,Subtract,1);
	SetVoid(680,Subtract,1);
	SetVoid(703,Subtract,1); -- Game Mode
	SetSwitch("Switch 85",Toggle);
	SetSwitch("Switch 86",Toggle);
})
--[[ 충돌판정 제거
DoActionsX(P0,{
	SetCVAar(VArr(Wptr,0),SetTo,0);
	SetCVAar(VArr(Wptr,1),SetTo,0);
	SetCVAar(VArr(Wptr,2),SetTo,0);
	SetCVAar(VArr(Wptr,3),SetTo,0);
	SetCVAar(VArr(Wptr,4),SetTo,0);
	SetCVAar(VArr(Wptr,5),SetTo,0);
	SetCVAar(VArr(Wptr,6),SetTo,0);
	SetCVAar(VArr(Wptr,7),SetTo,0);
})
]]--


end