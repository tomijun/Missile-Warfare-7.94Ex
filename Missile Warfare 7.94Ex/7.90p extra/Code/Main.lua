function VO(Number)
	return 0x58F500+Number*4
end
--------------------------------------------------------------------
SetForces({P1,P2,P3,P4},{P5,P6,P7,P8},{},{},{P1,P2,P3,P4,P5,P6,P7,P8}) 
SetFixedPlayer(P1)
StartCtrig(1,P1,0,1)

CJump(AllPlayers,0)
Include_CtrigPlib(360,"Switch 2")
Include_Wireframe()
ColorCode = {"\x08","\x0E","\x0F","\x16","\x10","\x11","\x1D","\x17"}
ColorCode2 = {0x08,0x0E,0x0F,0x16,0x10,0x11,0x1D,0x17}
STRxStart()
CVariable(AllPlayers,0x1000) CUnitEPD = 0x1000
CVariable(AllPlayers,0x1001) CLocX = 0x1001
CVariable(AllPlayers,0x1002) CLocY = 0x1002
CVariable(AllPlayers,0x1003) Nextptr = 0x1003
CVariable(AllPlayers,0x1004) CPlayerID = 0x1004
CVariable(AllPlayers,0x1005) CTemp = 0x1005
CVariable(AllPlayers,0x1006) CTemp1 = 0x1006
CVariable(AllPlayers,0x1007) CTemp2 = 0x1007
CVariable(AllPlayers,0x1008) CTemp3 = 0x1008
CVariable(AllPlayers,0x1009) CTemp4 = 0x1009
STRxEnd()
P0 = P1
-- Wptr = CVArray(P0,8) : 건설중 충돌 해제로 인해 삭제
PylonOre = 125
AdunOre = 2700
CrazyOre = 1400
SuperOre = 1800
TwistOre = 300
TTwistOre = 700
NovaOre = 3000
PatternOre = 1200
Timeore = 1400
SMirrorOre = 3000
RDefenderOre = 3000
RChainOre = 2800
CurveOre = 2200
PortalOre = 2800
AccelOre = 2500
TimeLockOre = 2000
RemoverOre = 2500
CJumpEnd(AllPlayers,0)

P0 = AllPlayers
SUB_MEM()
DoActions(P0,{ -- 일꾼크기
	SetMemory(0x661800, SetTo, 8*65537);
	SetMemory(0x661804, SetTo, 8*65537);
	SetMemory(0x661910, SetTo, 8*65537);
	SetMemory(0x661914, SetTo, 8*65537);
	SetMemory(0x6619C8, SetTo, 8*65537);
	SetMemory(0x6619CC, SetTo, 8*65537);
},{})
-- Switch Line 
-- 1~5 : System
-- 6~13 : 좌우반전 6 7 8 9 / 10 11 12 13
-- 14~21 : 사망 Switch 14 15 16 17 / 18 19 20 21
-- 22~29 : 흔적 남기기 22 23 24 25 / 26 27 28 29
-- 30~37 : 피탄 Check
-- 38~45 : 해처리 소유 여부 38 39 40 41 / 42 43 44 45
-- 46~53 : 수폭 피탄 46 47 48 49 / 50 51 52 53
-- 54~61 : 수폭 해처리 54 55 56 57 / 58 59 60 61
-- 62 : 배터리 & 코어 Check
-- 63 : Wait Multi 조건 Check
-- 64~71 : 증발 Check 64 65 66 67 / 68 69 70 71
-- 72 : Check Chain
-- 73~80 : Camera
-- 81~82 : P1 Init
-- 83~84 : 이탈 Check
-- 85~86 : 클지 Delay
-- 87~88 : 시간왜곡 Toggle

-- Number Line 
-- 0 : Leader Timer
-- 1~2 : Life Point
-- 3~4 : Cobalt Check
-- 5 : 사은품 Bring Check
-- 6 : 투플 Check
-- 7~14 : Crazy Timer 7 8 9 10 11 12 13 14
-- 15~22 : Chain Timer 15 16 17 18 19 20 21 22
-- 23~30 : Super Crazy Timer 23 24 25 26 27 28 29 30
-- 31~38 : Twist Timer 31 32 33 34 35 36 37 38
-- 39 : 투플 메세지 Check
-- 40~41 : 정야독 PlayerID
-- 42 : 좌우반전 Change
-- 43~44 : 방사능 Timer
-- 45~52 : 무적 Timer 45 46 47 48 / 49 50 51 52
-- 53~60 : 킬 보너스 53 54 55 56 / 57 58 59 60
-- 61~62 : 흔적남기기 Change
-- 63~70 : 미러 Timer 63 64 65 66 / 67 68 69 70
-- 71~72 : 리체 Timer
-- 73~74 : 리체 리콜 Timer
-- 75~82 : 아비터 Nextptr 75 76 77 78 / 79 80 81 82
-- 83~84 : 자기장 남은횟수
-- 85~86 : 자기장 Timer
-- 87~88 : 자기장 Delay
-- 89~96 : 수폭 Stack 89 90 91 92 / 93 94 95 96
-- 97~104 : 수폭 Stage 97 98 99 100 / 101 102 103 104
-- 105~112 : 수폭 Timer 105 106 107 108 / 109 110 111 112
-- 113~120 : 방사능 Delay 113 114 115 116 / 117 118 119 120  
-- 121~128 : Graze Point
-- 129~136 : Ore Delay
-- 137~144 : Gas Delay
-- 145~152 : 수폭 Delay
-- 153~160 : 슈퍼 미러 Timer 153 154 155 156 / 157 158 159 160
-- 161~168 : 미러 유닛 Delay
-- 169~176 : 슈퍼 미러 유닛 Delay
-- 177~184 : Nova Timer -> 발동시 모든 Men 삭제 + 버프&적디버프류 초기화
-- 185~192 : 슈클 Delay 
-- 193~200 : 체인 Twist 연계기
-- 201~299 : 저그 건물 Stack : 200+8*i 
-- 300~307 : 감지 Timer
-- 308~315 : 반사불가 감지 Timer
-- 316~323 : 특수 감지 Timer
-- 324~331 : Nova Stack
-- 332~339 : Combo Timer
-- 340~347 : Combo Stack
-- 348~355 : 드론 킬 보너스
-- 356~363 : Nova Block
-- 364~365 : 포세이돈 Timer
-- 366~367 : 포세이돈 Delay
-- 368~369 : 포세이돈 Color
-- 370~371 : 코발트 Check
-- 372~373 : 코발트 Delay
-- 374~375 : 코발트 Color
-- 376~377 : 코발트 Nuke Timer
-- 378~379 : 코발트 Nuke Color
-- 380 : 카메라 메세지
-- 381~388 : 데스 카운트
-- 389~390 : SN 생성 Delay
-- 391~398 : TBL Color
-- 399~599 : WArr
-- 600~607 : 이탈 Timer
-- 608 : TBL Temp
-- 609~617 : Pattern Change
-- 618~625 : 인비저블 감지 Timer
-- 626 : Obs Temp
-- 627~628 : 슈퍼 미러 남은 횟수
-- 629~630 : Time Distortion Timer
-- 631~638 : 라이터 Count
-- 639~646 : 라이터 Timer
-- 647~654 : Curve Missile
-- 655~656 : Portal Timer
-- 657~658 : Portal Recall Timer
-- 659~660 : Portal Count
-- 661~662 : Portal Owner
-- 663~670 : 호밍 감지 Timer
-- 671~672 : Accel Count
-- 673~674 : TimeLock Timer
-- 675~676 : TimeLock Cycle
-- 677~678 : TimeLock Mode
-- 679~680 : TimeLock Init Delay
-- 681~682 : TimeLock Owner
-- 683~690 : TimeLock Wait Type
-- 691~698 : TimeLock Wait Length
-- 699~700 : Accel owner
-- 701 : Game Mode
-- 702 : Host Pid
-- 703 : Game Mode Timer
-- 704 : PVP / Tag Stage
-- 705 : PVP / Tag Msg
-- 706 : Msg 중복방지
-- 707~708 : Tag Timer
-- 709~715 : Lockdown
-- 716~717 : Missile 봉인
-- 1000~1007 : Wait 공유 Timer
-- 1008~1015 : Wait 증가 Check
-- 1000+16*i : Check / 1008+16*i : Stage (i = 1부터 시작) 
-- 1600+8*i : 저그 건물 Stack 2
-- Men : 미사일 / Factories : 일꾼 / Buildings : 건물

SUB_Intro()

STRxIn()
-- 공유 TRIG 영역 -----------------------------------------------------------------
P0 = P1

-- Cur -> Cur_NextTrig -> P1_0x5000 -> 1회실행 P0(=P1) -> P1_0x5001

Trigger {
	players = {P2,P3,P4,P5,P6,P7,P8},
	conditions = {
		Label(0);
		Switch("Switch 1",Cleared);
	},
	actions = {
		SetCtrigX("X","X",0x4,0,SetTo,P1,0x5000,0x0,0,0); -- Cur Next -> P1_0x5000
		SetCtrigX(P1,0x5001,0x4,0,SetTo,"X","X",0x0,0,1); -- P1_0x5001 Next -> Cur_NextTrig
		SetCtrigX(P1,0x5000,0x158,0,SetTo,"X","X",0x4,1,0); -- P1_0x5000 1st EPD -> Cur Next 
		SetCtrigX(P1,0x5000,0x15C,0,SetTo,"X","X",0x0,0,1); -- P1_0x5000 1st Value -> Cur_NextTrig
		SetCtrigX("X","X",0x158,1,SetTo,P1,0x5001,0x4,1,0); -- Cur_NextTrig 1st EPD -> P1_0x5001 Next 
		SetCtrigX("X","X",0x15C,1,SetTo,P1,0x5001,0x0,0,1); -- Cur_NextTrig 1st Value -> P1_0x5001_NextTrig
		SetSwitch("Switch 3",Set);
		PreserveTrigger();
	},
}

for i = 1, 7 do
Trigger {
	players = {i},
	conditions = {
		Label(0);
		Switch("Switch 3",Set);
	},
	actions = {
		SetDeaths(0,SetTo,0,0); -- Recover P1_0x5001 Next
		SetSwitch("Switch 3",Clear);
		SetMemory(0x6509B0,SetTo,i);
		PreserveTrigger();
	},
}
end

Trigger {
	players = {P1},
	conditions = {
		Label(0x5000);
		Switch("Switch 3",Set);
	},
	actions = {
		SetDeaths(0,SetTo,0,0); -- Recover Cur Next
		PreserveTrigger();
	}
}

CIf(P0,Switch("Switch 1",Cleared),{SetSwitch("Switch 1",Set),SetMemory(0x6509B0,SetTo,0)})

SUB_Junk()

CIfOnce(P0)
wireset = {{60,70},{98,80},{69,88},{27,14},{102,14},{44,58},{62,73},{45,73}}
for k, v in pairs(wireset) do
	ChangeWireframe(P0,v[1],v[2])
	ChangeGrpwire(P0,v[1],v[2])
end
ScanInitSetting(P0,0)
CIfEnd()

Trigger { -- Init Once
	players = {P0},
	conditions = {
		Always();
	},
	actions = {
		SetResources(AllPlayers, Add, 400, Ore);
		LeaderBoardComputerPlayers(Disable);
		SetMemory(0x582234+4*0,SetTo,20000);
		SetMemory(0x582234+4*1,SetTo,20000);
		SetMemory(0x582234+4*2,SetTo,20000);
		SetMemory(0x582234+4*3,SetTo,20000);
		SetMemory(0x582234+4*4,SetTo,20000);
		SetMemory(0x582234+4*5,SetTo,20000);
		SetMemory(0x582234+4*6,SetTo,20000);
		SetMemory(0x582234+4*7,SetTo,20000);

		SetMemory(0x5822C4+4*0,SetTo,20000);
		SetMemory(0x5822C4+4*1,SetTo,20000);
		SetMemory(0x5822C4+4*2,SetTo,20000);
		SetMemory(0x5822C4+4*3,SetTo,20000);
		SetMemory(0x5822C4+4*4,SetTo,20000);
		SetMemory(0x5822C4+4*5,SetTo,20000);
		SetMemory(0x5822C4+4*6,SetTo,20000);
		SetMemory(0x5822C4+4*7,SetTo,20000);

		SetMemory(0x5821A4+4*0,SetTo,20000);
		SetMemory(0x5821A4+4*1,SetTo,20000);
		SetMemory(0x5821A4+4*2,SetTo,20000);
		SetMemory(0x5821A4+4*3,SetTo,20000);
		SetMemory(0x5821A4+4*4,SetTo,20000);
		SetMemory(0x5821A4+4*5,SetTo,20000);
		SetMemory(0x5821A4+4*6,SetTo,20000);
		SetMemory(0x5821A4+4*7,SetTo,20000);
		
		SetPlayerColor(P7,SetTo,0x4D);
		SetMinimapColor(P7,SetTo,0x4D);
	},
}


Trigger { -- 리벌러 제거 
	players = {P0},
	conditions = {
		ElapsedTime(AtLeast,3);
	},
	actions = {
		RemoveUnit(101,AllPlayers);
	},
}

Trigger { -- Init Preserve
	players = {P0},
	conditions = {
		Always();
	},
	actions = {
		SetCp(0);
		SetAllianceStatus(P9, AlliedVictory);
		SetAllianceStatus(P10, Enemy);
		SetAllianceStatus(Force1, AlliedVictory);
		SetAllianceStatus(Force2, Enemy);
		RunAIScript("Turn ON Shared Vision for Player 1");
		RunAIScript("Turn ON Shared Vision for Player 2");
		RunAIScript("Turn ON Shared Vision for Player 3");
		RunAIScript("Turn ON Shared Vision for Player 4");
		RunAIScript("Turn OFF Shared Vision for Player 5");
		RunAIScript("Turn OFF Shared Vision for Player 6");
		RunAIScript("Turn OFF Shared Vision for Player 7");
		RunAIScript("Turn OFF Shared Vision for Player 8");
		SetCp(1);
		SetAllianceStatus(P9, AlliedVictory);
		SetAllianceStatus(P10, Enemy);
		SetAllianceStatus(Force1, AlliedVictory);
		SetAllianceStatus(Force2, Enemy);
		RunAIScript("Turn ON Shared Vision for Player 1");
		RunAIScript("Turn ON Shared Vision for Player 2");
		RunAIScript("Turn ON Shared Vision for Player 3");
		RunAIScript("Turn ON Shared Vision for Player 4");
		RunAIScript("Turn OFF Shared Vision for Player 5");
		RunAIScript("Turn OFF Shared Vision for Player 6");
		RunAIScript("Turn OFF Shared Vision for Player 7");
		RunAIScript("Turn OFF Shared Vision for Player 8");
		SetCp(2);
		SetAllianceStatus(P9, AlliedVictory);
		SetAllianceStatus(P10, Enemy);
		SetAllianceStatus(Force1, AlliedVictory);
		SetAllianceStatus(Force2, Enemy);
		RunAIScript("Turn ON Shared Vision for Player 1");
		RunAIScript("Turn ON Shared Vision for Player 2");
		RunAIScript("Turn ON Shared Vision for Player 3");
		RunAIScript("Turn ON Shared Vision for Player 4");
		RunAIScript("Turn OFF Shared Vision for Player 5");
		RunAIScript("Turn OFF Shared Vision for Player 6");
		RunAIScript("Turn OFF Shared Vision for Player 7");
		RunAIScript("Turn OFF Shared Vision for Player 8");
		SetCp(3);
		SetAllianceStatus(P9, AlliedVictory);
		SetAllianceStatus(P10, Enemy);
		SetAllianceStatus(Force1, AlliedVictory);
		SetAllianceStatus(Force2, Enemy);
		RunAIScript("Turn ON Shared Vision for Player 1");
		RunAIScript("Turn ON Shared Vision for Player 2");
		RunAIScript("Turn ON Shared Vision for Player 3");
		RunAIScript("Turn ON Shared Vision for Player 4");
		RunAIScript("Turn OFF Shared Vision for Player 5");
		RunAIScript("Turn OFF Shared Vision for Player 6");
		RunAIScript("Turn OFF Shared Vision for Player 7");
		RunAIScript("Turn OFF Shared Vision for Player 8");
		PreserveTrigger();
	},
}

Trigger { -- Init Preserve
	players = {P0},
	conditions = {
		Always();
	},
	actions = {
		SetCp(4);
		SetAllianceStatus(P9, Enemy);
		SetAllianceStatus(P10, AlliedVictory);
		SetAllianceStatus(Force1, Enemy);
		SetAllianceStatus(Force2, AlliedVictory);
		RunAIScript("Turn OFF Shared Vision for Player 1");
		RunAIScript("Turn OFF Shared Vision for Player 2");
		RunAIScript("Turn OFF Shared Vision for Player 3");
		RunAIScript("Turn OFF Shared Vision for Player 4");
		RunAIScript("Turn ON Shared Vision for Player 5");
		RunAIScript("Turn ON Shared Vision for Player 6");
		RunAIScript("Turn ON Shared Vision for Player 7");
		RunAIScript("Turn ON Shared Vision for Player 8");
		SetCp(5);
		SetAllianceStatus(P9, Enemy);
		SetAllianceStatus(P10, AlliedVictory);
		SetAllianceStatus(Force1, Enemy);
		SetAllianceStatus(Force2, AlliedVictory);
		RunAIScript("Turn OFF Shared Vision for Player 1");
		RunAIScript("Turn OFF Shared Vision for Player 2");
		RunAIScript("Turn OFF Shared Vision for Player 3");
		RunAIScript("Turn OFF Shared Vision for Player 4");
		RunAIScript("Turn ON Shared Vision for Player 5");
		RunAIScript("Turn ON Shared Vision for Player 6");
		RunAIScript("Turn ON Shared Vision for Player 7");
		RunAIScript("Turn ON Shared Vision for Player 8");
		SetCp(6);
		SetAllianceStatus(P9, Enemy);
		SetAllianceStatus(P10, AlliedVictory);
		SetAllianceStatus(Force1, Enemy);
		SetAllianceStatus(Force2, AlliedVictory);
		RunAIScript("Turn OFF Shared Vision for Player 1");
		RunAIScript("Turn OFF Shared Vision for Player 2");
		RunAIScript("Turn OFF Shared Vision for Player 3");
		RunAIScript("Turn OFF Shared Vision for Player 4");
		RunAIScript("Turn ON Shared Vision for Player 5");
		RunAIScript("Turn ON Shared Vision for Player 6");
		RunAIScript("Turn ON Shared Vision for Player 7");
		RunAIScript("Turn ON Shared Vision for Player 8");
		SetCp(7);
		SetAllianceStatus(P9, Enemy);
		SetAllianceStatus(P10, AlliedVictory);
		SetAllianceStatus(Force1, Enemy);
		SetAllianceStatus(Force2, AlliedVictory);
		RunAIScript("Turn OFF Shared Vision for Player 1");
		RunAIScript("Turn OFF Shared Vision for Player 2");
		RunAIScript("Turn OFF Shared Vision for Player 3");
		RunAIScript("Turn OFF Shared Vision for Player 4");
		RunAIScript("Turn ON Shared Vision for Player 5");
		RunAIScript("Turn ON Shared Vision for Player 6");
		RunAIScript("Turn ON Shared Vision for Player 7");
		RunAIScript("Turn ON Shared Vision for Player 8");
		SetCp(0);
		PreserveTrigger();
	},
}

DoActions(P0,SetMemory(0x51CE98,SetTo,0)) -- 역 터보 시야

Trigger { -- 리더보드
	players = {P0},
	conditions = {
		Void(0,Exactly,0);
	},
	actions = {
		LeaderBoardScore(Custom, "\x04생존 점수");
		PreserveTrigger();
	},
}
Trigger { -- 리더보드
	players = {P0},
	conditions = {
		Void(0,Exactly,12*8);
	},
	actions = {
		LeaderBoardScore(Kills, "\x1F누적 킬수");
		PreserveTrigger();
	},
}

DoActions(P0,SetVoid(0,Add,1))
Trigger { -- 리더보드
	players = {P0},
	conditions = {
		Void(0,AtLeast,12*16);
	},
	actions = {
		SetVoid(0,SetTo,0);
		PreserveTrigger();
	},
}


-------------------------------------------------------------------------------------------------
-- 드론 클릭 해제 (정방향 미사일) --------------------------------------------------------------------------------
for i = 0, 3 do
	local MissileArr = {"Fast Missile", "Missile", "Super Missile", "Big Sniping Missile"}
		for j = 1, 4 do
			Trigger { -- 미사일 이동
				players = {P0},
				conditions = {Deaths(i,Exactly,1,"!Exist");
					VoidX(6,Exactly,0,15*16^i);
					Command(i,Exactly,1,"사은품");
				},
				actions = {
					GiveUnits(All, MissileArr[j],i, "1팀필드",P11);
					GiveUnits(All, MissileArr[j],P11, "1팀필드",i);
					PreserveTrigger();
				},
			}
		end
	end
	for i = 4, 7 do
	local MissileArr = {"Fast Missile", "Missile", "Super Missile", "Big Sniping Missile"}
		for j = 1, 4 do
			Trigger { -- 미사일 이동
				players = {P0},
				conditions = {Deaths(i,Exactly,1,"!Exist");
					VoidX(6,Exactly,0,15*16^i);
					Command(i,Exactly,1,"사은품");
				},
				actions = {
					GiveUnits(All, MissileArr[j],i, "2팀필드",P11);
					GiveUnits(All, MissileArr[j],P11, "2팀필드",i);
					PreserveTrigger();
				},
			}
		end
	end
	
	SUB_Missile_Move()

SUB_Accel()

SUB_TimeLock()
--SUB_Distortion()

SUB_ReverseChain()

SUB_Defender()

SUB_Portal()

SUB_PS()

SUB_CB()

SUB_System()

SUB_CunitLoop()

CIfEnd()
------------------------------------------------------------------------------

Trigger {
	players = {P1},
	conditions = {
		Label(0x5001);
	},
	actions = {
		PreserveTrigger();
	}
}
STRxOut()
----------------------------------------------------------------------------------
-- 공유 TRIG 영역 해제 ------------------------------------------------------------

SUB_SuperCrazy()

SUB_Chain()

SUB_Crazy()

--SUB_Twist()

SUB_Curve()

SUB_PatternChange()

SUB_SN()

for i = 0, 7 do -- 카메라 메세지
local k = i+73
Trigger {
	players = {i},
	conditions = {
		VoidX(380,Exactly,16^i,15*16^i);
		Switch("Switch "..k,Set);
	},
	actions = {
		SetVoidX(380,SetTo,0,15*16^i);
		DisplayText("\x1F<System>  \x04카메라를 \x1F빌더에 장착\x04했습니다.", 4);
		PlayWAV("staredit\\wav\\Camera1.wav");
		PreserveTrigger();
	}
}

Trigger {
	players = {i},
	conditions = {
		VoidX(380,Exactly,16^i,15*16^i);
		Switch("Switch "..k,Cleared);
	},
	actions = {
		SetVoidX(380,SetTo,0,15*16^i);
		DisplayText("\x1C<System>  \x04카메라를 \x1C빌더에 해제\x04했습니다.", 4);
		PlayWAV("staredit\\wav\\Camera2.wav");
		PreserveTrigger();
	}
}

Trigger {
	players = {i},
	conditions = {
		Command(i,Exactly,0,"사은품");
		Command(i,Exactly,0,"Factories");
		Switch("Switch "..k,Set);
	},
	actions = {
		SetSwitch("Switch "..k,Clear);
		DisplayText("\x0E<System>  \x04카메라 \x0E고정이 해제\x04됐습니다.", 4);
		PlayWAV("staredit\\wav\\Camera2.wav");
		PreserveTrigger();
	}
}

end

-- Init scv 생성
Trigger { -- Init Once
	players = {P1},
	actions = {
		SetLoc("CLoc79",0,SetTo,736);
		SetLoc("CLoc79",8,SetTo,736);
		SetLoc("CLoc79",4,SetTo,576);
		SetLoc("CLoc79",12,SetTo,576);
		CreateUnit(1,"Basic Builder","CLoc79",P1);
	},
}
Trigger { -- Init Once
	players = {P2},
	actions = {
		SetLoc("CLoc79",0,SetTo,928);
		SetLoc("CLoc79",8,SetTo,928);
		SetLoc("CLoc79",4,SetTo,576);
		SetLoc("CLoc79",12,SetTo,576);
		CreateUnit(1,"Basic Builder","CLoc79",P2);
	},
}
Trigger { -- Init Once
	players = {P3},
	actions = {
		SetLoc("CLoc79",0,SetTo,1124);
		SetLoc("CLoc79",8,SetTo,1124);
		SetLoc("CLoc79",4,SetTo,576);
		SetLoc("CLoc79",12,SetTo,576);
		CreateUnit(1,"Basic Builder","CLoc79",P3);
	},
}
Trigger { -- Init Once
	players = {P4},

	actions = {
		SetLoc("CLoc79",0,SetTo,1312);
		SetLoc("CLoc79",8,SetTo,1312);
		SetLoc("CLoc79",4,SetTo,576);
		SetLoc("CLoc79",12,SetTo,576);
		CreateUnit(1,"Basic Builder","CLoc79",P4);
	},
}
Trigger { -- Init Once
	players = {P5},
	actions = {
		SetLoc("CLoc79",0,SetTo,736);
		SetLoc("CLoc79",8,SetTo,736);
		SetLoc("CLoc79",4,SetTo,1472);
		SetLoc("CLoc79",12,SetTo,1472);
		CreateUnit(1,"Basic Builder","CLoc79",P5);
	},
}
Trigger { -- Init Once
	players = {P6},
	actions = {
		SetLoc("CLoc79",0,SetTo,928);
		SetLoc("CLoc79",8,SetTo,928);
		SetLoc("CLoc79",4,SetTo,1472);
		SetLoc("CLoc79",12,SetTo,1472);
		CreateUnit(1,"Basic Builder","CLoc79",P6);
	},
}
Trigger { -- Init Once
	players = {P7},
	actions = {
		SetLoc("CLoc79",0,SetTo,1124);
		SetLoc("CLoc79",8,SetTo,1124);
		SetLoc("CLoc79",4,SetTo,1472);
		SetLoc("CLoc79",12,SetTo,1472);
		CreateUnit(1,"Basic Builder","CLoc79",P7);
	},
}
Trigger { -- Init Once
	players = {P8},
	actions = {
		SetLoc("CLoc79",0,SetTo,1312);
		SetLoc("CLoc79",8,SetTo,1312);
		SetLoc("CLoc79",4,SetTo,1472);
		SetLoc("CLoc79",12,SetTo,1472);
		CreateUnit(1,"Basic Builder","CLoc79",P8);
	},
}
----------------------------------------------------------------------------------
SUB_HB()
----------------------------------------------------------------------------------

for i = 0, 7 do -- 라이터
	Trigger {
		players = {i},
		conditions = {
			Void(639+i,Exactly,0);
		},
		actions = {
			SetMemory(0x584DE4+  (0*12 + i)*4 ,SetTo, 1);
			PreserveTrigger();
		}
	}
	Trigger {
		players = {i},
		conditions = {
			Void(639+i,AtLeast,1);
		},
		actions = {
			SetMemory(0x584DE4+  (0*12 + i)*4 ,SetTo, 0);
			PreserveTrigger();
		}
	}
	CIf(i,{VoidX(631+i,Exactly,0x100,0x100)},
		{SetLoc("ProbeS",0,SetTo,1024),
		SetLoc("ProbeS",4,SetTo,1024),
		SetLoc("ProbeS",8,SetTo,1024),
		SetLoc("ProbeS",12,SetTo,1024),
		MoveLocation("ProbeS","Missile [N]",i,"전체필드")})
	
	local cond1 = {Loc("ProbeS",12,AtMost,768)}
	if i >= 4 then
		cond1 = {Loc("ProbeS",4,AtLeast,1280)}
	end

	Trigger {
		players = {i},
		conditions = {
			Void(639+i,Exactly,0);
			cond1;
		},
		actions = {
			SetVoidX(631+i,SetTo,1,0x1FF);
			SetVoid(639+i,SetTo,24*4.5);
			SetMemory(0x584DE4+  (0*12 + i)*4 ,SetTo, 0);
			DisplayText("\x1C<System>  \x04건설 중인 \x1C모든 단발미사일을 \x04발사하였습니다.", 4);
			PlayWAV("staredit\\wav\\SpeedMessage.wav");
			PreserveTrigger();
		}
	}
	Trigger {
		players = {i},
		conditions = {
			Void(639+i,Exactly,0);
		},
		actions = {
			SetLoc("ProbeS",0,SetTo,1024),
			SetLoc("ProbeS",4,SetTo,1024),
			SetLoc("ProbeS",8,SetTo,1024),
			SetLoc("ProbeS",12,SetTo,1024),
			MoveLocation("ProbeS","Fast Missile [N]",i,"전체필드");
			PreserveTrigger();
		}
	}
	Trigger {
		players = {i},
		conditions = {
			Void(639+i,Exactly,0);
			cond1;
		},
		actions = {
			SetVoidX(631+i,SetTo,1,0x1FF);
			SetVoid(639+i,SetTo,24*4.5);
			SetMemory(0x584DE4+  (0*12 + i)*4 ,SetTo, 0);
			DisplayText("\x1C<System>  \x04건설 중인 \x1C모든 단발미사일을 \x04발사하였습니다.", 4);
			PlayWAV("staredit\\wav\\SpeedMessage.wav");
			PreserveTrigger();
		}
	}
	Trigger {
		players = {i},
		conditions = {
			Void(639+i,Exactly,0);
		},
		actions = {
			SetVoidX(631+i,SetTo,0,0x1FF);
			DisplayText("\x1F<System>  \x04건설 중인 \x1F단발미사일이 \x04없습니다.", 4);
			PlayWAV("staredit\\wav\\Notice.wav");
			PreserveTrigger();
		}
	}
	
	CIfEnd()
	
end

for i = 0, 7 do -- 좌우반전 Set
local k = i+6
	Trigger {
		players = {i},
		conditions = {
			Switch("Switch "..k,Cleared);
			VoidX(42,Exactly,16^i,15*16^i);
		},
		actions = {
			SetVoidX(42,SetTo,0,15*16^i);
			DisplayText("\x1C<System>  \x04미사일 발사 우선순위를 \x1C오른쪽으로 \x04전환하였습니다.", 4);
			PlayWAV("staredit\\wav\\SpeedMessage.wav");
			SetSwitch("Switch "..k,Set);
			PreserveTrigger();
		}
	}
	Trigger {
		players = {i},
		conditions = {
			Switch("Switch "..k,Set);
			VoidX(42,Exactly,16^i,15*16^i);
		},
		actions = {
			SetVoidX(42,SetTo,0,15*16^i);
			DisplayText("\x1F<System>  \x04미사일 발사 우선순위를 \x1F왼쪽으로 \x04전환하였습니다.", 4);
			PlayWAV("staredit\\wav\\SpeedMessage.wav");
			SetSwitch("Switch "..k,Clear);
			PreserveTrigger();
		}
	}
end
for i = 0, 7 do -- 흔적남기기 Set
local k = i+22
	Trigger {
		players = {i},
		conditions = {
			Switch("Switch "..k,Cleared);
			VoidX(61,Exactly,16^i,15*16^i);
		},
		actions = {
			SetVoidX(61,SetTo,0,15*16^i);
			SetVoidX(62,SetTo,16^i,15*16^i);
			DisplayText("\x1C<System>  \x04Power를 \x1CBuilder Marker로 \x04교체하였습니다.", 4);
			PlayWAV("staredit\\wav\\SpeedMessage.wav");
			SetSwitch("Switch "..k,Set);
			PreserveTrigger();
			
		}
	}
	Trigger {
		players = {i},
		conditions = {
			Switch("Switch "..k,Set);
			VoidX(61,Exactly,16^i,15*16^i);
		},
		actions = {
			SetVoidX(61,SetTo,0,15*16^i);
			SetVoidX(62,SetTo,2*16^i,15*16^i);
			DisplayText("\x1F<System>  \x04Builder Marker를 \x1FPower로 \x04교체하였습니다.", 4);
			PlayWAV("staredit\\wav\\SpeedMessage.wav");
			SetSwitch("Switch "..k,Clear);
			PreserveTrigger();
		}
	}
end
for i = 0, 7 do -- 흔적남기기 Set
	Trigger {
		players = {i},
		conditions = {
			VoidX(62,Exactly,16^i,15*16^i);
			Memory(0x512684,Exactly,i);
		},
		actions = {
			SetVoidX(62,SetTo,0,15*16^i);
			SetMemory(0x51932C, SetTo, 0x5164E8); -- On
			PreserveTrigger();
			
		}
	}
	Trigger {
		players = {i},
		conditions = {
			VoidX(62,Exactly,2*16^i,15*16^i);
			Memory(0x512684,Exactly,i);
		},
		actions = {
			SetVoidX(62,SetTo,0,15*16^i);
			SetMemory(0x51932C, SetTo, 0x516D08); -- Off
			PreserveTrigger();
			
		}
	}
end

SUB_Pitan()

for i = 0, 7 do -- 버튼셋 초기화
DoActions(i,{CreateUnit(1,"Kakaru (Twilight)","Reset",i),RemoveUnitAt(All, "Kakaru (Twilight)", "Anywhere", i)})
end

for i = 0, 3 do -- 방사능
local k = i+1
Trigger { -- 방사능
	players = {i},
	conditions = {
		Void(43,AtLeast,1);
		Void(113+i,Exactly,0);
	},
	actions = {
		SetVoid(113+i,SetTo,2);
		CreateUnit(1, "Kakaru (Twilight)", k.."P", i);
		RemoveUnitAt(All, "Kakaru (Twilight)", "Anywhere", i);
		PreserveTrigger();
	},
}
end
for i = 4, 7 do -- 방사능
local k = i+1
Trigger { -- 방사능
	players = {i},
	conditions = {
		Void(44,AtLeast,1);
		Void(113+i,Exactly,0);
	},
	actions = {
		SetVoid(113+i,SetTo,2);
		CreateUnit(1, "Kakaru (Twilight)", k.."P", i);
		RemoveUnitAt(All, "Kakaru (Twilight)", "Anywhere", i);
		PreserveTrigger();
	},
}
end









-- Missile TRIG --------------------------------------------------------------------------------------
for i = 0, 7 do -- Wait Timer Input
	Trigger {
		players = {i},
		conditions = {
			Void(1000+i,Exactly,0);
		},
		actions = {
			SetVoid(1000+i+16*1,SetTo,0);
			SetVoid(1000+i+16*2,SetTo,0);
			SetVoid(1000+i+16*3,SetTo,0);
			SetVoid(1000+i+16*4,SetTo,0);
			SetVoid(1000+i+16*5,SetTo,0);
			SetVoid(1000+i+16*6,SetTo,0);
			SetVoid(1000+i+16*7,SetTo,0);
			SetVoid(1000+i+16*8,SetTo,0);
			SetVoid(1000+i+16*9,SetTo,0);
			SetVoid(1000+i+16*10,SetTo,0);
			
			SetVoid(1000+i+16*11,SetTo,0);
			SetVoid(1000+i+16*12,SetTo,0);
			SetVoid(1000+i+16*13,SetTo,0);
			SetVoid(1000+i+16*14,SetTo,0);
			SetVoid(1000+i+16*15,SetTo,0);
			SetVoid(1000+i+16*16,SetTo,0);
			SetVoid(1000+i+16*17,SetTo,0);
			SetVoid(1000+i+16*18,SetTo,0);
			SetVoid(1000+i+16*19,SetTo,0);
			
			SetVoid(1000+i+16*20,SetTo,0);
			SetVoid(1000+i+16*21,SetTo,0);
			SetVoid(1000+i+16*22,SetTo,0);
			SetVoid(1000+i+16*23,SetTo,0);
			SetVoid(1000+i+16*24,SetTo,0);
			SetVoid(1000+i+16*25,SetTo,0);
			SetVoid(1000+i+16*26,SetTo,0);
			PreserveTrigger();
		}
	}
	
	for j = 1, 26 do
		Trigger {
			players = {i},
			conditions = {
				Void(1000+i,AtLeast,1);
				Void(1008+i+16*j,AtLeast,1);
			},
			actions = {
				SetVoid(1000+i+16*j,SetTo,1);
				PreserveTrigger();
			}
		}
	end
end
SUB_SCVMissile()
--------------------------------------------------------------------------------------------------------
SUB_ProbeMissile()


--------------------------------------------------------------------------------------------------------
SUB_DroneMissile()
--------------------------------------------------------------------------------------------------------



-- Wait 증감 처리 (1008+i) -----
-- 673~674 : TimeLock Timer
-- 675~676 : TimeLock Cycle
-- 677~678 : TimeLock Mode
-- 679~680 : TimeLock Init Delay
-- 681~682 : TimeLock Owner
-- 683~690 : TimeLock Wait Type
-- 691~698 : TimeLock Wait Length
CIf(P0,{Void(673,AtLeast,1)})
for i = 0, 3 do
	Trigger {
		players = {i},
		conditions = {
			VoidX(677,Exactly,1,1);
			Void(683+i,Exactly,1); 
		},
		actions = {
			SetVoid(1000+i,Add,1);
			PreserveTrigger();
		},
	}
	Trigger {
		players = {i},
		conditions = {
			VoidX(677,Exactly,2,2);
			Void(683+i,Exactly,2); 
		},
		actions = {
			SetVoid(1000+i,Add,1);
			PreserveTrigger();
		},
	}
	local fLock = 24*1
	local sLock = 24*5
	--local AccelTime = 24*1
	local SuperW = 24*1
	local NormalW = 24*1
	local SNormalW = 24*1
	local SDefW = 24*1
	local FastW = 24*0.5
	local SFastW = 24*0.5
	local DefW = 24*0.5

	local DFast = 24*0.75
	local DNormal = 24*0.5
	local DSuper = 24*0.25
	local WaitArr = { -- 1 : 정방향, 2 : 사이드
        {20,FastW,DFast},{1,SNormalW,DNormal},{2,NormalW,DNormal},{3,FastW,DFast},
        {4,FastW,DFast},{5,FastW,DFast},{6,FastW,DFast},{7,FastW,DFast},{8,SNormalW,DNormal},{9,SNormalW,DNormal},{10,SNormalW,DNormal},
        {21,DefW,DFast},{11,FastW,DFast},{22,SuperW,DSuper},{12,SuperW,DSuper},{13,FastW,DFast},{24,SNormalW,DNormal},{14,FastW,DFast},{15,DefW,DFast}
		,{16,SNormalW,DNormal},{25,SDefW,DNormal},{26,NormalW,DNormal},{17,SFastW,DFast},{18,FastW,DFast},{23,SFastW,DFast},{19,FastW,DFast}
    }
	local MissileTypeArr = { -- 1 : 정방향, 2 : 사이드
		{20,2},{1,1},{2,1},{3,1},
		{4,1},{5,1},{6,1},{7,1},{8,2},{9,2},{10,2},
		{21,1},{11,1},{22,1},{12,1},{13,1},{24,2},{14,1},{15,1},{16,2},{25,2},{26,1},{17,2},{18,1},{23,2},{19,1}
	}

	for k, v in pairs(MissileTypeArr) do
		local AccelTime = WaitArr[k][2]
		local DelTime = WaitArr[k][3]
		if v[2] == 1 then
			Trigger {
				players = {i},
				conditions = {
					Void(691+i,Exactly,v[1]);
					Void(675,Exactly,fLock+AccelTime);
					Void(683+i,Exactly,1); 
				},
				actions = {
					SetVoid(1000+i,Add,AccelTime+1);
					PreserveTrigger();
				},
			}
			Trigger {
				players = {i},
				conditions = {
					Void(691+i,Exactly,v[1]);
					Void(675,Exactly,fLock-3);
					Void(683+i,Exactly,1); 
				},
				actions = {
					SetVoid(1000+i,Subtract,AccelTime+DelTime);
					PreserveTrigger();
				},
			}
		else 
			Trigger {
				players = {i},
				conditions = {
					Void(691+i,Exactly,v[1]);
					Void(675,Exactly,sLock+AccelTime);
					Void(683+i,Exactly,2); 
				},
				actions = {
					SetVoid(1000+i,Add,AccelTime+1);
					PreserveTrigger();
				},
			}
			Trigger {
				players = {i},
				conditions = {
					Void(691+i,Exactly,v[1]);
					Void(675,Exactly,sLock-3);
					Void(683+i,Exactly,2); 
				},
				actions = {
					SetVoid(1000+i,Subtract,AccelTime+DelTime);
					PreserveTrigger();
				},
			}
		end
	end
	Trigger {
		players = {i},
		conditions = {
			Void(675,Exactly,fLock-3);
			Void(683+i,Exactly,1);
			Void(1000+i,Exactly,0); 
		},
		actions = {
			SetVoid(1000+i,SetTo,2);
			PreserveTrigger();
		},
	}
	Trigger {
		players = {i},
		conditions = {
			Void(675,Exactly,sLock-3);
			Void(683+i,Exactly,2); 
			Void(1000+i,Exactly,0); 
		},
		actions = {
			SetVoid(1000+i,SetTo,2);
			PreserveTrigger();
		},
	}
end
CIfEnd()

CIf(P0,{Void(674,AtLeast,1)})
for i = 4, 7 do
	Trigger {
		players = {i},
		conditions = {
			VoidX(678,Exactly,1,1);
			Void(683+i,Exactly,1); 
		},
		actions = {
			SetVoid(1000+i,Add,1);
			PreserveTrigger();
		},
	}
	Trigger {
		players = {i},
		conditions = {
			VoidX(678,Exactly,2,2);
			Void(683+i,Exactly,2); 
		},
		actions = {
			SetVoid(1000+i,Add,1);
			PreserveTrigger();
		},
	}
	local fLock = 24*1
	local sLock = 24*5
	--local AccelTime = 24*1
	local SuperW = 24*1
	local NormalW = 24*1
	local SNormalW = 24*1
	local SDefW = 24*1
	local FastW = 24*0.5
	local SFastW = 24*0.5
	local DefW = 24*0.5

	local DFast = 24*0.75
	local DNormal = 24*0.5
	local DSuper = 24*0.25
	local WaitArr = { -- 1 : 정방향, 2 : 사이드
        {20,FastW,DFast},{1,SNormalW,DNormal},{2,NormalW,DNormal},{3,FastW,DFast},
        {4,FastW,DFast},{5,FastW,DFast},{6,FastW,DFast},{7,FastW,DFast},{8,SNormalW,DNormal},{9,SNormalW,DNormal},{10,SNormalW,DNormal},
        {21,DefW,DFast},{11,FastW,DFast},{22,SuperW,DSuper},{12,SuperW,DSuper},{13,FastW,DFast},{24,SNormalW,DNormal},{14,FastW,DFast},{15,DefW,DFast}
		,{16,SNormalW,DNormal},{25,SDefW,DNormal},{26,NormalW,DNormal},{17,SFastW,DFast},{18,FastW,DFast},{23,SFastW,DFast},{19,FastW,DFast}
    }
	local MissileTypeArr = { -- 1 : 정방향, 2 : 사이드
		{20,2},{1,1},{2,1},{3,1},
		{4,1},{5,1},{6,1},{7,1},{8,2},{9,2},{10,2},
		{21,1},{11,1},{22,1},{12,1},{13,1},{24,2},{14,1},{15,1},{16,2},{25,2},{26,1},{17,2},{18,1},{23,2},{19,1}
	}

	for k, v in pairs(MissileTypeArr) do
		local AccelTime = WaitArr[k][2]
		local DelTime = WaitArr[k][3]
		if v[2] == 1 then
			Trigger {
				players = {i},
				conditions = {
					Void(691+i,Exactly,v[1]);
					Void(676,Exactly,fLock+AccelTime);
					Void(683+i,Exactly,1); 
				},
				actions = {
					SetVoid(1000+i,Add,AccelTime+1);
					PreserveTrigger();
				},
			}
			Trigger {
				players = {i},
				conditions = {
					Void(691+i,Exactly,v[1]);
					Void(676,Exactly,fLock-3);
					Void(683+i,Exactly,1); 
				},
				actions = {
					SetVoid(1000+i,Subtract,AccelTime+DelTime);
					PreserveTrigger();
				},
			}
		else 
			Trigger {
				players = {i},
				conditions = {
					Void(691+i,Exactly,v[1]);
					Void(676,Exactly,sLock+AccelTime);
					Void(683+i,Exactly,2); 
				},
				actions = {
					SetVoid(1000+i,Add,AccelTime+1);
					PreserveTrigger();
				},
			}
			Trigger {
				players = {i},
				conditions = {
					Void(691+i,Exactly,v[1]);
					Void(676,Exactly,sLock-3);
					Void(683+i,Exactly,2); 
				},
				actions = {
					SetVoid(1000+i,Subtract,AccelTime+DelTime);
					PreserveTrigger();
				},
			}
		end
	end
	Trigger {
		players = {i},
		conditions = {
			Void(676,Exactly,fLock-3);
			Void(683+i,Exactly,1);
			Void(1000+i,Exactly,0); 
		},
		actions = {
			SetVoid(1000+i,SetTo,2);
			PreserveTrigger();
		},
	}
	Trigger {
		players = {i},
		conditions = {
			Void(676,Exactly,sLock-3);
			Void(683+i,Exactly,2); 
			Void(1000+i,Exactly,0); 
		},
		actions = {
			SetVoid(1000+i,SetTo,2);
			PreserveTrigger();
		},
	}
end
CIfEnd()

--------------------------------

for i = 0, 7 do -- Wait Timer Output
	DoActions(i,{SetVoid(1000+i,Subtract,1),SetVoid(1008+i,SetTo,0)})
end
-- Missile TRIG END --------------------------------------------------------------------------------------
for i = 0, 3 do -- 미사일 감지 ＃
local MissileArrH = {"Homing Missile"}
local MissileArrI = {"Invisible Missile☆"}
local MissileArrX = {"Slow Missile","Missile","Fast Missile","Missile☆","Fast Missile☆","Penetrating Missile★","Fast Mini Missile","Mini Missile"}
local MissileArrY = {"Sniping Missile","Big Sniping Missile","Big Sniping Missile☆","Super Missile","Refractor"}
local MissileArrZ = {"Hydrogen Bomb","Team Sniping Missile","Nova","Nova "}
	for j = 1, 1 do
		Trigger { -- 호밍
			players = {i},
			conditions = {
				Void(656,Exactly,0);
				Void(663+i,Exactly,0);
				Bring(Force2,AtLeast,1,MissileArrH[j],"감지1I");
			},
			actions = {
				SetVoid(663+i,SetTo,100);
				PlayWAV("staredit\\wav\\Notice.wav");
				DisplayText("\x19적진으로부터 호밍 미사일이 감지되었습니다.", 4);
				PreserveTrigger();
			},
		}
		Trigger { -- 호밍
			players = {i},
			conditions = {
				Void(656,AtLeast,1);
				Void(663+i,Exactly,0);
				Bring(Force2,AtLeast,1,MissileArrH[j],"감지1");
			},
			actions = {
				SetVoid(663+i,SetTo,100);
				PlayWAV("staredit\\wav\\Notice.wav");
				DisplayText("\x19적진으로부터 호밍 미사일이 감지되었습니다.", 4);
				PreserveTrigger();
			},
		}
	end
	for j = 1, 1 do
		Trigger { -- 인비저블
			players = {i},
			conditions = {
				Void(656,Exactly,0);
				Void(618+i,Exactly,0);
				Bring(Force2,AtLeast,1,MissileArrI[j],"감지1I");
			},
			actions = {
				SetVoid(618+i,SetTo,100);
				PlayWAV("staredit\\wav\\Notice.wav");
				DisplayText("\x05적진으로부터 인비저블 미사일이 감지되었습니다.", 4);
				PreserveTrigger();
			},
		}
		Trigger { -- 인비저블
			players = {i},
			conditions = {
				Void(656,AtLeast,1);
				Void(618+i,Exactly,0);
				Bring(Force2,AtLeast,1,MissileArrI[j],"감지1");
			},
			actions = {
				SetVoid(618+i,SetTo,100);
				PlayWAV("staredit\\wav\\Notice.wav");
				DisplayText("\x05적진으로부터 인비저블 미사일이 감지되었습니다.", 4);
				PreserveTrigger();
			},
		}
		Trigger { -- 인비저블 
			players = {i},
			conditions = {
				Bring(i,AtLeast,1,MissileArrI[j],"Invisible");
			},
			actions = {
				ModifyUnitEnergy(All,MissileArrI[j],i,"Invisible",0);
				PreserveTrigger();
			},
		}
	end
	for j = 1, 6 do
		Trigger { -- 일반 
			players = {i},
			conditions = {
				Void(300+i,Exactly,0);
				Bring(Force2,AtLeast,1,MissileArrX[j],"감지1");
			},
			actions = {
				SetVoid(300+i,SetTo,200);
				PlayWAV("staredit\\wav\\Notice.wav");
				DisplayText("\x16적군의 미사일이 감지되었습니다.", 4);
				PreserveTrigger();
			},
		}
	end
	for j = 1, 5 do
		Trigger { -- 반사불가
			players = {i},
			conditions = {
				Void(308+i,Exactly,0);
				Bring(Force2,AtLeast,1,MissileArrY[j],"감지1");
			},
			actions = {
				SetVoid(308+i,SetTo,200);
				PlayWAV("staredit\\wav\\Notice.wav");
				DisplayText("\x1F적진으로부터 반사불가 미사일이 감지되었습니다.", 4);
				PreserveTrigger();
			},
		}
	end
	for j = 1, 4 do
		Trigger { -- 특수
			players = {i},
			conditions = {
				Void(316+i,Exactly,0);
				Bring(Force2,AtLeast,1,MissileArrZ[j],"감지1");
			},
			actions = {
				SetVoid(316+i,SetTo,200);
				PlayWAV("staredit\\wav\\Notice.wav");
				DisplayText("\x0E적진으로부터 궁극기 미사일이 감지되었습니다.", 4);
				PreserveTrigger();
			},
		}
	end
end
for i = 4, 7 do -- 미사일 감지 ＃
local MissileArrH = {"Homing Missile"}
local MissileArrI = {"Invisible Missile☆"}
local MissileArrX = {"Slow Missile","Missile","Fast Missile","Missile☆","Fast Missile☆","Penetrating Missile★","Fast Mini Missile","Mini Missile"}
local MissileArrY = {"Sniping Missile","Big Sniping Missile","Big Sniping Missile☆","Super Missile","Refractor"}
local MissileArrZ = {"Hydrogen Bomb","Team Sniping Missile","Nova","Nova "}
	for j = 1, 1 do
		Trigger { -- 호밍
			players = {i},
			conditions = {
				Void(655,Exactly,0);
				Void(663+i,Exactly,0);
				Bring(Force1,AtLeast,1,MissileArrH[j],"감지2I");
			},
			actions = {
				SetVoid(663+i,SetTo,100);
				PlayWAV("staredit\\wav\\Notice.wav");
				DisplayText("\x19적진으로부터 호밍 미사일이 감지되었습니다.", 4);
				PreserveTrigger();
			},
		}
		Trigger { -- 호밍
			players = {i},
			conditions = {
				Void(655,AtLeast,1);
				Void(663+i,Exactly,0);
				Bring(Force1,AtLeast,1,MissileArrH[j],"감지2");
			},
			actions = {
				SetVoid(663+i,SetTo,100);
				PlayWAV("staredit\\wav\\Notice.wav");
				DisplayText("\x19적진으로부터 호밍 미사일이 감지되었습니다.", 4);
				PreserveTrigger();
			},
		}
	end
	for j = 1, 1 do
		Trigger { -- 인비저블 
			players = {i},
			conditions = {
				Void(655,Exactly,0);
				Void(618+i,Exactly,0);
				Bring(Force1,AtLeast,1,MissileArrI[j],"감지2I");
			},
			actions = {
				SetVoid(618+i,SetTo,100);
				PlayWAV("staredit\\wav\\Notice.wav");
				DisplayText("\x05적진으로부터 인비저블 미사일이 감지되었습니다.", 4);
				PreserveTrigger();
			},
		}
		Trigger { -- 인비저블 
			players = {i},
			conditions = {
				Void(655,AtLeast,1);
				Void(618+i,Exactly,0);
				Bring(Force1,AtLeast,1,MissileArrI[j],"감지2");
			},
			actions = {
				SetVoid(618+i,SetTo,100);
				PlayWAV("staredit\\wav\\Notice.wav");
				DisplayText("\x05적진으로부터 인비저블 미사일이 감지되었습니다.", 4);
				PreserveTrigger();
			},
		}
		Trigger { -- 인비저블 
			players = {i},
			conditions = {
				Bring(i,AtLeast,1,MissileArrI[j],"Invisible");
			},
			actions = {
				ModifyUnitEnergy(All,MissileArrI[j],i,"Invisible",0);
				PreserveTrigger();
			},
		}
	end
	for j = 1, 6 do
		Trigger { -- 일반 
			players = {i},
			conditions = {
				Void(300+i,Exactly,0);
				Bring(Force1,AtLeast,1,MissileArrX[j],"감지2");
			},
			actions = {
				SetVoid(300+i,SetTo,200);
				PlayWAV("staredit\\wav\\Notice.wav");
				DisplayText("\x16적군의 미사일이 감지되었습니다.", 4);
				PreserveTrigger();
			},
		}
	end
	for j = 1, 5 do
		Trigger { -- 반사불가
			players = {i},
			conditions = {
				Void(308+i,Exactly,0);
				Bring(Force1,AtLeast,1,MissileArrY[j],"감지2");
			},
			actions = {
				SetVoid(308+i,SetTo,200);
				PlayWAV("staredit\\wav\\Notice.wav");
				DisplayText("\x1F적진으로부터 반사불가 미사일이 감지되었습니다.", 4);
				PreserveTrigger();
			},
		}
	end
	for j = 1, 4 do
		Trigger { -- 특수
			players = {i},
			conditions = {
				Void(316+i,Exactly,0);
				Bring(Force1,AtLeast,1,MissileArrZ[j],"감지2");
			},
			actions = {
				SetVoid(316+i,SetTo,200);
				PlayWAV("staredit\\wav\\Notice.wav");
				DisplayText("\x0E적진으로부터 궁극기 미사일이 감지되었습니다.", 4);
				PreserveTrigger();
			},
		}
	end
end
for i = 0, 7 do -- 사은품 & 투플 검사
Trigger { -- 투플 검사
	players = {i},
	conditions = {
		VoidX(39,Exactly,0,15*16^i);
		Bring(i, AtLeast, 2, "Builder","Anywhere");
	},
	actions = {
		PlayWAV("staredit\\wav\\SpeedMessage.wav");
		DisplayText("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\x13\x04Builder가 2마리 이상인 동안 미네랄 패널티가 적용됩니다.\r\n\r\n\x13\x03Center Missile(리버)\x04와 \x03Stage Missile(옵저버)\x04에 반사불가 패시브가 추가됩니다.\r\n\x13\x03Chain Missile \x04과 \x03Crazy Missile \x04을 시전할경우\r\n\x13\x04각각 33%, 66%의 추가 패널티를 받습니다.\r\n\r\n\r\n\r\n", 4);
		SetVoidX(39,SetTo,16^i,15*16^i);
		PreserveTrigger();
	},
}

DoActions(i,{
	SetVoidX(5,SetTo,0,15*16^i);
	SetVoidX(6,SetTo,0,15*16^i);
})
Trigger { -- 사은품 검사
	players = {i},
	conditions = {
		VoidX(5,Exactly,0,15*16^i);
		Bring(i, Exactly, 1, "사은품","Anywhere");
	},
	actions = {
		SetVoidX(5,SetTo,16^i,15*16^i);
		PreserveTrigger();
	},
}
Trigger { -- 투플 검사
	players = {i},
	conditions = {
		VoidX(6,Exactly,0,15*16^i);
		Bring(i, AtLeast, 2, "Builder","Anywhere");
	},
	actions = {
		SetVoidX(6,SetTo,16^i,15*16^i);
		PreserveTrigger();
	},
}
Trigger { -- 투플 검사
	players = {i},
	conditions = {
		VoidX(5,Exactly,16^i,15*16^i);
		Bring(i, AtLeast, 1, "Builder","Anywhere");
		VoidX(6,Exactly,0,15*16^i);
	},
	actions = {
		SetVoidX(6,SetTo,16^i,15*16^i);
		PreserveTrigger();
	},
}
end




for i = 0, 7 do -- 돈 증가 & 감소
Trigger { -- 킬 보너스
	players = {i},
	conditions = {
		Void(332+i,Exactly,0);
	},
	actions = {
		SetVoid(340+i,SetTo,0);
		PreserveTrigger();
	},
}
Trigger { -- 킬 보너스
	players = {i},
	conditions = {
		Void(348+i,AtLeast,1);
		Void(340+i,Exactly,0);
	},
	actions = {
		SetVoid(348+i,Subtract,1);
		SetResources(i, Add, 200, Ore);
		DisplayText("\x04드론 킬 보너스 \x19+200", 4);
		PreserveTrigger();
	},
}
Trigger { -- 킬 보너스
	players = {i},
	conditions = {
		Void(53+i,AtLeast,1);
		Void(332+i,Exactly,0);
	},
	actions = {
		SetVoid(332+i,SetTo,24*18);
		SetVoid(340+i,SetTo,1);
		SetVoid(53+i,Subtract,1);
		SetResources(i, Add, 300, Ore);
		DisplayText("\x04킬 보너스 \x02+300", 4);
		PlayWAV("staredit\\wav\\Notice.wav");
		PreserveTrigger();
	},
}
Trigger { -- 킬 보너스
	players = {i},
	conditions = {
		Void(348+i,AtLeast,1);
		Void(340+i,Exactly,1);
	},
	actions = {
		SetVoid(348+i,Subtract,1);
		SetResources(i, Add, 200, Ore);
		DisplayText("\x04드론 킬 보너스 \x19+200", 4);
		PreserveTrigger();
	},
}
Trigger { -- 킬 보너스
	players = {i},
	conditions = {
		Void(53+i,AtLeast,1);
		Void(332+i,AtLeast,1);
		Void(340+i,Exactly,1);
	},
	actions = {
		SetVoid(332+i,SetTo,24*18);
		SetVoid(340+i,SetTo,2);
		SetVoid(53+i,Subtract,1);
		SetResources(i, Add, 400, Ore);
		DisplayText("\x04더블 킬 보너스 \x1F+400", 4);
		PlayWAV("staredit\\wav\\Notice.wav");
		PreserveTrigger();
	},
}
Trigger { -- 킬 보너스
	players = {i},
	conditions = {
		Void(348+i,AtLeast,1);
		Void(340+i,Exactly,2);
	},
	actions = {
		SetVoid(348+i,Subtract,1);
		SetResources(i, Add, 200, Ore);
		DisplayText("\x04드론 킬 보너스 \x19+200", 4);
		PreserveTrigger();
	},
}
Trigger { -- 킬 보너스
	players = {i},
	conditions = {
		Void(53+i,AtLeast,1);
		Void(332+i,AtLeast,1);
		Void(340+i,Exactly,2);
	},
	actions = {
		SetVoid(332+i,SetTo,24*18);
		SetVoid(340+i,SetTo,3);
		SetVoid(53+i,Subtract,1);
		SetResources(i, Add, 500, Ore);
		DisplayText("\x04트리플 킬 보너스 \x1C+500", 4);
		PlayWAV("staredit\\wav\\Notice.wav");
		PreserveTrigger();
	},
}
Trigger { -- 킬 보너스
	players = {i},
	conditions = {
		Void(348+i,AtLeast,1);
		Void(340+i,Exactly,3);
	},
	actions = {
		SetVoid(348+i,Subtract,1);
		SetResources(i, Add, 200, Ore);
		DisplayText("\x04드론 킬 보너스 \x19+200", 4);
		PreserveTrigger();
	},
}
Trigger { -- 킬 보너스
	players = {i},
	conditions = {
		Void(53+i,AtLeast,1);
		Void(332+i,AtLeast,1);
		Void(340+i,Exactly,3);
	},
	actions = {
		SetVoid(332+i,SetTo,24*18);
		SetVoid(340+i,SetTo,4);
		SetVoid(53+i,Subtract,1);
		SetResources(i, Add, 600, Ore);
		DisplayText("\x04쿼드러플 킬 보너스 \x0E+600", 4);
		PlayWAV("staredit\\wav\\Notice.wav");
		PreserveTrigger();
	},
}
Trigger { -- 킬 보너스
	players = {i},
	conditions = {
		Void(348+i,AtLeast,1);
		Void(340+i,Exactly,4);
	},
	actions = {
		SetVoid(348+i,Subtract,1);
		SetResources(i, Add, 200, Ore);
		DisplayText("\x04드론 킬 보너스 \x19+200", 4);
		PreserveTrigger();
	},
}
Trigger { -- 킬 보너스
	players = {i},
	conditions = {
		Void(53+i,AtLeast,1);
		Void(332+i,AtLeast,1);
		Void(340+i,Exactly,4);
	},
	actions = {
		SetVoid(332+i,SetTo,0);
		SetVoid(340+i,SetTo,0);
		SetVoid(53+i,Subtract,1);
		SetResources(i, Add, 700, Ore);
		DisplayText("\x04퀸터플 킬 보너스 \x05+700", 4);
		PlayWAV("staredit\\wav\\Notice.wav");
		PreserveTrigger();
	},
}

Trigger { -- 돈 증가
	players = {i},
	conditions = {
		VoidX(6,Exactly,0,15*16^i);
		Score(i, Custom, AtLeast, 1);
		Void(129+i,Exactly,0);
	},
	actions = {
		SetVoid(129+i,SetTo,2);
		SetResources(i, Add, 3, Ore);
		PreserveTrigger();
	},
}

Trigger { -- 돈 증가
	players = {i},
	conditions = {
		VoidX(6,Exactly,0,15*16^i);
		Score(i, Custom, Exactly, 0);
		Void(129+i,Exactly,0);
	},
	actions = {
		SetVoid(129+i,SetTo,2);
		SetResources(i, Add, 6, Ore);
		PreserveTrigger();
	},
}

Trigger { -- 투플 돈 증가
	players = {i},
	conditions = {
		VoidX(6,Exactly,16^i,15*16^i);
		Void(7+i,Exactly,0); 
		Void(15+i,Exactly,0); 
		Score(i, Custom, AtLeast, 1);
		Void(129+i,Exactly,0);
	},
	actions = {
		SetVoid(129+i,SetTo,2);
		SetResources(i, Add, 3, Ore);
		PreserveTrigger();
	},
}

Trigger { -- 투플 돈 증가
	players = {i},
	conditions = {
		VoidX(6,Exactly,16^i,15*16^i);
		Void(7+i,Exactly,0); 
		Void(15+i,Exactly,0); 
		Score(i, Custom, Exactly, 0);
		Void(129+i,Exactly,0);
	},
	actions = {
		SetVoid(129+i,SetTo,2);
		SetResources(i, Add, 6, Ore);
		PreserveTrigger();
	},
}

Trigger { -- 투플 돈 증가 75%
	players = {i},
	conditions = {
		VoidX(6,Exactly,16^i,15*16^i);
		Void(7+i,AtLeast,1); 
		Void(15+i,Exactly,0); 
		Score(i, Custom, AtLeast, 1);
		Void(129+i,Exactly,0);
	},
	actions = {
		SetVoid(129+i,SetTo,2);
		SetResources(i, Add, 2, Ore);
		PreserveTrigger();
	},
}

Trigger { -- 투플 돈 증가 75%
	players = {i},
	conditions = {
		VoidX(6,Exactly,16^i,15*16^i);
		Void(7+i,AtLeast,1); 
		Void(15+i,Exactly,0); 
		Score(i, Custom, Exactly, 0);
		Void(129+i,Exactly,0);
	},
	actions = {
		SetVoid(129+i,SetTo,2);
		SetResources(i, Add, 4, Ore);
		PreserveTrigger();
	},
}

Trigger { -- 투플 돈 증가 50%
	players = {i},
	conditions = {
		VoidX(6,Exactly,16^i,15*16^i);
		Void(7+i,Exactly,0); 
		Void(15+i,AtLeast,1); 
		Score(i, Custom, AtLeast, 1);
		Void(129+i,Exactly,0);
	},
	actions = {
		SetVoid(129+i,SetTo,2);
		SetResources(i, Add, 1, Ore);
		PreserveTrigger();
	},
}

Trigger { -- 투플 돈 증가 50%
	players = {i},
	conditions = {
		VoidX(6,Exactly,16^i,15*16^i);
		Void(7+i,Exactly,0); 
		Void(15+i,AtLeast,1); 
		Score(i, Custom, Exactly, 0);
		Void(129+i,Exactly,0);
	},
	actions = {
		SetVoid(129+i,SetTo,2);
		SetResources(i, Add, 2, Ore);
		PreserveTrigger();
	},
}

Trigger { -- 투플 돈 증가 50%
	players = {i},
	conditions = {
		VoidX(6,Exactly,16^i,15*16^i);
		Void(7+i,AtLeast,1); 
		Void(15+i,AtLeast,1); 
		Score(i, Custom, AtLeast, 1);
		Void(129+i,Exactly,0);
	},
	actions = {
		SetVoid(129+i,SetTo,2);
		SetResources(i, Add, 1, Ore);
		PreserveTrigger();
	},
}

Trigger { -- 투플 돈 증가 50%
	players = {i},
	conditions = {
		VoidX(6,Exactly,16^i,15*16^i);
		Void(7+i,AtLeast,1); 
		Void(15+i,AtLeast,1); 
		Score(i, Custom, Exactly, 0);
		Void(129+i,Exactly,0);
	},
	actions = {
		SetVoid(129+i,SetTo,2);
		SetResources(i, Add, 2, Ore);
		PreserveTrigger();
	},
}

Trigger { -- 최대 돈 제한
	players = {i},
	conditions = {
		Accumulate(i, AtLeast, 6001, Ore);
		VoidX(5,Exactly,0,15*16^i);
	},
	actions = {
		SetResources(i, SetTo, 6000, Ore);
		PreserveTrigger();
	},
}

Trigger { --최대 돈 제한
	players = {i},
	conditions = {
		Accumulate(i, AtLeast, 7501, Ore);
		VoidX(5,Exactly,16^i,15*16^i);
	},
	actions = {
		SetResources(i, SetTo, 7500, Ore);
		PreserveTrigger();
	},
}
end

--[[ 투플 너프 : 돈 최대값 제한
for i = 0, 7 do
Trigger { -- 최대 돈 제한
	players = {i},
	conditions = {
		VoidX(6,Exactly,16^i,15*16^i);
		Accumulate(i, AtLeast, 4001, Ore);
	},
	actions = {
		SetResources(i, SetTo, 4000, Ore);
		PreserveTrigger();
	},
}

Trigger { -- 최대 돈 제한
	players = {i},
	conditions = {
		VoidX(5,Exactly,16^i,15*16^i);
		Command(i, AtLeast, 1, "Builder");
		Accumulate(i, AtLeast, 4001, Ore);
	},
	actions = {
		SetResources(i, SetTo, 4000, Ore);
		PreserveTrigger();
	},
}
end
]]--
for i = 0, 7 do -- 돈 감소
Trigger { -- 돈 감소
	players = {i},
	conditions = {
		Void(137+i,Exactly,0);
		Accumulate(CurrentPlayer, AtLeast, 1, Gas);
	},
	actions = {
		SetVoid(137+i,SetTo,2);
		SetResources(CurrentPlayer, Subtract, 10, Ore);
		SetResources(CurrentPlayer, Subtract, 3, Gas);
		PreserveTrigger();
	},
}
end









































for i = 0, 7 do
Trigger { -- No comment (9274CD74)
	players = {i},
	conditions = {
		Command(CurrentPlayer, AtLeast, 2, "사은품");
	},
	actions = {
		KillUnitAt(1, "사은품", "Anywhere", CurrentPlayer);
		PreserveTrigger();
	},
}
Trigger { -- 사은품 고정
	players = {i},
	conditions = {
		Command(i, AtLeast, 1, "사은품");
	},
	actions = {
		MoveUnit(All, "사은품", i, "Anywhere", "사은품");
		PreserveTrigger();
	},
}
end
Trigger { -- 드론 에시비 동시 금지
	players = {AllPlayers},
	conditions = {
		Void(701,AtMost,2);
		Command(CurrentPlayer, AtLeast, 1, "Basic Builder");
		Command(CurrentPlayer, AtLeast, 1, "Ultimate Builder");
	},
	actions = {
		DisplayText("\x16SCV와 드론을 같이 가질 수 없습니다.\r\n", 4);
		PlayWAV("staredit\\wav\\Boom.wav");
		KillUnitAt(All, "Basic Builder", "Anywhere", CurrentPlayer);
		PreserveTrigger();
	},
}
Trigger { -- 드론 에시비 동시 금지
	players = {AllPlayers},
	conditions = {
		Void(701,Exactly,3);
		Command(CurrentPlayer, AtLeast, 1, "Basic Builder");
		Command(CurrentPlayer, AtLeast, 1, "Ultimate Builder");
	},
	actions = {
		RemoveUnitAt(All, "Basic Builder", "Anywhere", CurrentPlayer);
		PreserveTrigger();
	},
}

for i = 0, 3 do -- 부활
local k = i+14
Trigger { -- No comment (4EECC6CB)
	players = {i},
	conditions = {
		Void(709+i,Exactly,0);
		Accumulate(CurrentPlayer, Exactly, 0, Gas);
		Command(CurrentPlayer, Exactly, 0, "Factories");
		Command(CurrentPlayer, Exactly, 0, "사은품");
		Switch("Switch "..k, Set);
		Void(1,AtLeast,200);
	},
	actions = {
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16부품 수리가 완료되었습니다. 부활후3초간 무적상태를 유지합니다.", 4);
		MinimapPing("1팀중앙");
		CreateUnit(1, "Basic Builder", "1팀중앙", CurrentPlayer);
		SetVoid(1,Subtract,200);
		SetScore(Force1,Subtract,200,Custom);
		SetSwitch("Switch "..k, Clear);
		PreserveTrigger();
		SetVoid(45+i,SetTo,72);
		SetDeaths(CurrentPlayer, SetTo, 1, " LastRevive");
	},
}
Trigger { -- No comment (0CEC38D7)
	players = {i},
	conditions = {
		Bring(CurrentPlayer, AtLeast, 1, "Factories", "전체필드");
		Deaths(CurrentPlayer, AtLeast, 1, " LastRevive");
	},
	actions = {
		SetDeaths(CurrentPlayer, SetTo, 0, " LastRevive");
		PreserveTrigger();
	},
}

end
for i = 4, 7 do -- 부활
local k = i+14
Trigger { -- No comment (4EECC6CB)
	players = {i},
	conditions = {
		Void(709+i,Exactly,0);
		Accumulate(CurrentPlayer, Exactly, 0, Gas);
		Command(CurrentPlayer, Exactly, 0, "Factories");
		Command(CurrentPlayer, Exactly, 0, "사은품");
		Switch("Switch "..k, Set);
		Void(2,AtLeast,200);
	},
	actions = {
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16부품 수리가 완료되었습니다. 부활후3초간 무적상태를 유지합니다.", 4);
		MinimapPing("2팀중앙");
		CreateUnit(1, "Basic Builder", "2팀중앙", CurrentPlayer);
		SetVoid(2,Subtract,200);
		SetScore(Force2,Subtract,200,Custom);
		SetSwitch("Switch "..k, Clear);
		PreserveTrigger();
		SetVoid(45+i,SetTo,72);
		SetDeaths(CurrentPlayer, SetTo, 1, " LastRevive");
	},
}
Trigger { -- No comment (0CEC38D7)
	players = {i},
	conditions = {
		Bring(CurrentPlayer, AtLeast, 1, "Factories", "전체필드");
		Deaths(CurrentPlayer, AtLeast, 1, " LastRevive");
	},
	actions = {
		SetDeaths(CurrentPlayer, SetTo, 0, " LastRevive");
		PreserveTrigger();
	},
}
end

for i = 0, 3 do -- 부활 불가
Trigger { -- No comment (BED44EE7)
	players = {i},
	conditions = {
		Void(709+i,Exactly,0);
		Accumulate(CurrentPlayer, Exactly, 0, Gas);
		Bring(CurrentPlayer, Exactly, 0, "Any unit", "전체필드");
		Bring(CurrentPlayer, Exactly, 0, "사은품", "사은품");
		Void(1,Exactly,0);
	},
	actions = {
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16생존 점수가 부족하여 수리를 할 수 없습니다.", 4);
	},
}
end
for i = 4, 7 do -- 부활 불가
Trigger { -- No comment (BED44EE7)
	players = {i},
	conditions = {
		Void(709+i,Exactly,0);
		Accumulate(CurrentPlayer, Exactly, 0, Gas);
		Bring(CurrentPlayer, Exactly, 0, "Any unit", "전체필드");
		Bring(CurrentPlayer, Exactly, 0, "사은품", "사은품");
		Void(2,Exactly,0);
	},
	actions = {
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16생존 점수가 부족하여 수리를 할 수 없습니다.", 4);
	},
}
end
for i = 0, 7 do -- 무적 해제
Trigger { -- No comment (04231D40)
	players = {i},
	conditions = {
		Void(45+i,Exactly,1);
	},
	actions = {
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16무적모드가 해제되었습니다.", 4);
		PreserveTrigger();
		SetVoid(45+i,SetTo,0);
	},
}
end


for i = 0, 7 do -- 증발 방지
Trigger { -- No comment (E25707FE)
	players = {i},
	conditions = {
		Command(CurrentPlayer, Exactly, 0, "Factories");
		Command(CurrentPlayer, Exactly, 0, "사은품");
		Accumulate(CurrentPlayer, Exactly, 0, Gas);
		Deaths(CurrentPlayer, AtMost, 199, " Boil");
	},
	actions = {
		PreserveTrigger();
		SetDeaths(CurrentPlayer, Add, 1, " Boil");
	},
}
Trigger { -- No comment (CF80FC93)
	players = {i},
	conditions = {
		Command(CurrentPlayer, AtLeast, 1, "Factories");
		Accumulate(CurrentPlayer, Exactly, 0, Gas);
	},
	actions = {
		PreserveTrigger();
		SetDeaths(CurrentPlayer, SetTo, 0, " Boil");
	},
}
Trigger { -- No comment (CF80FC93)
	players = {i},
	conditions = {
		Command(CurrentPlayer, AtLeast, 1, "사은품");
		Accumulate(CurrentPlayer, Exactly, 0, Gas);
	},
	actions = {
		PreserveTrigger();
		SetDeaths(CurrentPlayer, SetTo, 0, " Boil");
	},
}
end



for i = 0, 3 do -- 증발 부활
local k = 64+i
Trigger { -- No comment (6ACDEED9)
	players = {i},
	conditions = {
		Void(709+i,Exactly,0);
		Switch("Switch "..k,Set);
	},
	actions = {
		PreserveTrigger();
		SetSwitch("Switch "..k,Clear);
		CreateUnit(1, "Basic Builder", "1팀중앙", CurrentPlayer);
	},
}

Trigger { -- No comment (6ACDEED9)
	players = {i},
	conditions = {
		Command(CurrentPlayer, Exactly, 0, "Factories");
		Command(CurrentPlayer, Exactly, 0, "사은품");
		Accumulate(CurrentPlayer, Exactly, 0, Gas);
		Deaths(CurrentPlayer, AtLeast, 200, " Boil");
		Void(1,AtLeast,200);
	},
	actions = {
		PreserveTrigger();
		SetDeaths(CurrentPlayer, SetTo, 0, " Boil");
		KillUnitAt(All, "Serial Ball Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Side Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Slow Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Refraction Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Refraction Defender [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Reverse Chain Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Builder [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Clock Missile Set [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Mirror [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Fast Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Invisible Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Side Edge Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Sniping Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Homing Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Portal [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Missile Remover [B]", "1팀중앙", Force1);
		SetSwitch("Switch "..k,Set);
	},
}
Trigger { -- No comment (6ACDEED9)
	players = {i},
	conditions = {
		Command(CurrentPlayer, Exactly, 0, "Factories");
		Command(CurrentPlayer, Exactly, 0, "사은품");
		Accumulate(CurrentPlayer, Exactly, 0, Gas);
		Deaths(CurrentPlayer, AtLeast, 200, " Boil");
		Void(1,Exactly,0);
		Deaths(CurrentPlayer, AtLeast, 1, " LastRevive");
	},
	actions = {
		PreserveTrigger();
		SetDeaths(CurrentPlayer, SetTo, 0, " Boil");
		KillUnitAt(All, "Serial Ball Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Side Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Slow Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Refraction Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Refraction Defender [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Reverse Chain Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Builder [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Clock Missile Set [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Mirror [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Fast Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Invisible Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Side Edge Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Sniping Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Homing Missile [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Portal [B]", "1팀중앙", Force1);
		KillUnitAt(All, "Missile Remover [B]", "1팀중앙", Force1);
		SetDeaths(CurrentPlayer, SetTo, 0, " LastRevive");
		SetSwitch("Switch "..k,Set);
	},
}
end
for i = 4, 7 do -- 증발 부활 
local k = 64+i
Trigger { -- No comment (6ACDEED9)
	players = {i},
	conditions = {
		Void(709+i,Exactly,0);
		Switch("Switch "..k,Set);
	},
	actions = {
		PreserveTrigger();
		SetSwitch("Switch "..k,Clear);
		CreateUnit(1, "Basic Builder", "2팀중앙", CurrentPlayer);
	},
}

Trigger { -- No comment (6ACDEED9)
	players = {i},
	conditions = {
		Command(CurrentPlayer, Exactly, 0, "Factories");
		Command(CurrentPlayer, Exactly, 0, "사은품");
		Accumulate(CurrentPlayer, Exactly, 0, Gas);
		Deaths(CurrentPlayer, AtLeast, 200, " Boil");
		Void(2,AtLeast,200);
	},
	actions = {
		PreserveTrigger();
		SetDeaths(CurrentPlayer, SetTo, 0, " Boil");
		KillUnitAt(All, "Serial Ball Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Side Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Slow Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Refraction Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Refraction Defender [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Reverse Chain Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Builder [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Clock Missile Set [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Mirror [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Fast Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Invisible Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Side Edge Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Sniping Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Homing Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Portal [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Missile Remover [B]", "2팀중앙", Force2);
		SetSwitch("Switch "..k,Set);
	},
}
Trigger { -- No comment (6ACDEED9)
	players = {i},
	conditions = {
		Command(CurrentPlayer, Exactly, 0, "Factories");
		Command(CurrentPlayer, Exactly, 0, "사은품");
		Accumulate(CurrentPlayer, Exactly, 0, Gas);
		Deaths(CurrentPlayer, AtLeast, 200, " Boil");
		Void(2,Exactly,0);
		Deaths(CurrentPlayer, AtLeast, 1, " LastRevive");
	},
	actions = {
		PreserveTrigger();
		SetDeaths(CurrentPlayer, SetTo, 0, " Boil");
		KillUnitAt(All, "Serial Ball Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Side Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Slow Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Refraction Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Refraction Defender [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Reverse Chain Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Builder [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Clock Missile Set [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Mirror [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Fast Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Invisible Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Side Edge Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Sniping Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Homing Missile [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Portal [B]", "2팀중앙", Force2);
		KillUnitAt(All, "Missile Remover [B]", "2팀중앙", Force2);
		SetDeaths(CurrentPlayer, SetTo, 0, " LastRevive");
		SetSwitch("Switch "..k,Set);
	},
}
end
Trigger { -- 필드 침범 방지
	players = {Force1},
	conditions = {
		Bring(CurrentPlayer, AtLeast, 1, "Ultimate Builder", "2팀필드");
	},
	actions = {
		MoveUnit(All, "Ultimate Builder", CurrentPlayer, "2팀필드", "1팀필드");
		RemoveUnitAt(1, "Ultimate Builder", "2팀필드", CurrentPlayer);
		DisplayText("\x16드론을 이동시킬수 없습니다.", 4);
		PreserveTrigger();
	},
}

Trigger { -- 필드 침범 방지
	players = {Force2},
	conditions = {
		Bring(CurrentPlayer, AtLeast, 1, "Ultimate Builder", "1팀필드");
	},
	actions = {
		MoveUnit(All, "Ultimate Builder", CurrentPlayer, "1팀필드", "2팀필드");
		RemoveUnitAt(1, "Ultimate Builder", "1팀필드", CurrentPlayer);
		DisplayText("\x16드론을 이동시킬수 없습니다.", 4);
		PreserveTrigger();
	},
}







-- 미사일 파괴 Men -------------------------------------------------------------------------------
for i = 0, 3 do -- 미사일 파괴 1팀 ＃
Trigger { -- No comment (E3E7DBEA)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Men", "CVKill");
	},
	actions = {
		KillUnitAt(All, "Mini Missile", "CVKill", i);
		KillUnitAt(All, "Fast Mini Missile", "CVKill", i);
		KillUnitAt(All, "Homing Missile", "CVKill", i);
		KillUnitAt(All, "Penetrating Missile★", "CVKill", i);
		KillUnitAt(All, "Fast Missile", "CVKill", i);
		KillUnitAt(All, "Big Sniping Missile", "CVKill", i);
		KillUnitAt(All, "Missile", "CVKill", i);
		KillUnitAt(All, "Fast Missile☆", "CVKill", i);
		KillUnitAt(All, "Big Sniping Missile☆", "CVKill", i);
		KillUnitAt(All, "Missile☆", "CVKill", i);
		KillUnitAt(All, "Invisible Missile☆", "CVKill", i);
		KillUnitAt(All, "Slow Missile", "CVKill", i);
		KillUnitAt(All, "Mini Slow Missile", "CVKill", i);
		KillUnitAt(All, "Light", "CVKill", i);
		KillUnitAt(All, "Refractor", "CVKill", i);
		KillUnitAt(All, "Super Missile", "CVKill", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (E3E7DBEA)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Men", "2팀 뒤쪽");
	},
	actions = {
		KillUnitAt(All, "Mini Missile", "2팀 뒤쪽", i);
		KillUnitAt(All, "Fast Mini Missile", "2팀 뒤쪽", i);
		KillUnitAt(All, "Homing Missile", "2팀 뒤쪽", i);
		KillUnitAt(All, "Penetrating Missile★", "2팀 뒤쪽", i);
		KillUnitAt(All, "Fast Missile", "2팀 뒤쪽", i);
		KillUnitAt(All, "Big Sniping Missile", "2팀 뒤쪽", i);
		KillUnitAt(All, "Missile", "2팀 뒤쪽", i);
		KillUnitAt(All, "Fast Missile☆", "2팀 뒤쪽", i);
		KillUnitAt(All, "Big Sniping Missile☆", "2팀 뒤쪽", i);
		KillUnitAt(All, "Missile☆", "2팀 뒤쪽", i);
		KillUnitAt(All, "Invisible Missile☆", "2팀 뒤쪽", i);
		KillUnitAt(All, "Slow Missile", "2팀 뒤쪽", i);
		KillUnitAt(All, "Mini Slow Missile", "2팀 뒤쪽", i);
		KillUnitAt(All, "Light", "2팀 뒤쪽", i);
		KillUnitAt(All, "Refractor", "2팀 뒤쪽", i);
		KillUnitAt(All, "Super Missile", "2팀 뒤쪽", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Void(15,Exactly,0);
		Void(16,Exactly,0);
		Void(17,Exactly,0);
		Void(18,Exactly,0);
		Bring(i, AtLeast, 1, "Sniping Missile", "2팀 뒤쪽");
	},
	actions = {
		KillUnitAt(All, "Sniping Missile", "2팀 뒤쪽", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Void(15,Exactly,0);
		Void(16,Exactly,0);
		Void(17,Exactly,0);
		Void(18,Exactly,0);
		Bring(i, AtLeast, 1, "Sniping Missile", "CVKill");
	},
	actions = {
		KillUnitAt(All, "Sniping Missile", "CVKill", i);
		PreserveTrigger();
	},
}


Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Missile", "S2팀 뒤쪽");
	},
	actions = {
		KillUnitAt(All, "Missile", "S2팀 뒤쪽", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Fast Missile", "S2팀 뒤쪽");
	},
	actions = {
		KillUnitAt(All, "Fast Missile", "S2팀 뒤쪽", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Fast Mini Missile", "S2팀 뒤쪽");
	},
	actions = {
		KillUnitAt(All, "Fast Mini Missile", "S2팀 뒤쪽", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Mini Missile", "S2팀 뒤쪽");
	},
	actions = {
		KillUnitAt(All, "Mini Missile", "S2팀 뒤쪽", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Homing Missile", "HomingL");
	},
	actions = {
		KillUnitAt(All, "Homing Missile", "HomingL", i);
		PreserveTrigger();
	},
}
Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Homing Missile", "HomingR");
	},
	actions = {
		KillUnitAt(All, "Homing Missile", "HomingR", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Missile☆", "S2팀 뒤쪽");
	},
	actions = {
		KillUnitAt(All, "Missile☆", "S2팀 뒤쪽", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Fast Missile☆", "S2팀 뒤쪽");
	},
	actions = {
		KillUnitAt(All, "Fast Missile☆", "S2팀 뒤쪽", i);
		PreserveTrigger();
	},
}
end

for i = 4, 7 do -- 미사일 파괴 2팀 ＃

Trigger { -- No comment (67F333A1)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Men", "CVKill");
	},
	actions = {
		KillUnitAt(All, "Mini Missile", "CVKill", i);
		KillUnitAt(All, "Fast Mini Missile", "CVKill", i);
		KillUnitAt(All, "Homing Missile", "CVKill", i);
		KillUnitAt(All, "Penetrating Missile★", "CVKill", i);
		KillUnitAt(All, "Fast Missile", "CVKill", i);
		KillUnitAt(All, "Big Sniping Missile", "CVKill", i);
		KillUnitAt(All, "Missile", "CVKill", i);
		KillUnitAt(All, "Fast Missile☆", "CVKill", i);
		KillUnitAt(All, "Big Sniping Missile☆", "CVKill", i);
		KillUnitAt(All, "Missile☆", "CVKill", i);
		KillUnitAt(All, "Invisible Missile☆", "CVKill", i);
		KillUnitAt(All, "Slow Missile", "CVKill", i);
		KillUnitAt(All, "Mini Slow Missile", "CVKill", i);
		KillUnitAt(All, "Light", "CVKill", i);
		KillUnitAt(All, "Refractor", "CVKill", i);
		KillUnitAt(All, "Super Missile", "CVKill", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (67F333A1)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Men", "1팀 뒤쪽");
	},
	actions = {
		KillUnitAt(All, "Mini Missile", "1팀 뒤쪽", i);
		KillUnitAt(All, "Fast Mini Missile", "1팀 뒤쪽", i);
		KillUnitAt(All, "Homing Missile", "1팀 뒤쪽", i);
		KillUnitAt(All, "Penetrating Missile★", "1팀 뒤쪽", i);
		KillUnitAt(All, "Fast Missile", "1팀 뒤쪽", i);
		KillUnitAt(All, "Big Sniping Missile", "1팀 뒤쪽", i);
		KillUnitAt(All, "Missile", "1팀 뒤쪽", i);
		KillUnitAt(All, "Fast Missile☆", "1팀 뒤쪽", i);
		KillUnitAt(All, "Big Sniping Missile☆", "1팀 뒤쪽", i);
		KillUnitAt(All, "Missile☆", "1팀 뒤쪽", i);
		KillUnitAt(All, "Invisible Missile☆", "1팀 뒤쪽", i);
		KillUnitAt(All, "Slow Missile", "1팀 뒤쪽", i);
		KillUnitAt(All, "Mini Slow Missile", "1팀 뒤쪽", i);
		KillUnitAt(All, "Light", "1팀 뒤쪽", i);
		KillUnitAt(All, "Refractor", "1팀 뒤쪽", i);
		KillUnitAt(All, "Super Missile", "1팀 뒤쪽", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Void(19,Exactly,0);
		Void(20,Exactly,0);
		Void(21,Exactly,0);
		Void(22,Exactly,0);
		Bring(i, AtLeast, 1, "Sniping Missile", "CVKill");
	},
	actions = {
		KillUnitAt(All, "Sniping Missile", "CVKill", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Void(19,Exactly,0);
		Void(20,Exactly,0);
		Void(21,Exactly,0);
		Void(22,Exactly,0);
		Bring(i, AtLeast, 1, "Sniping Missile", "1팀 뒤쪽");
	},
	actions = {
		KillUnitAt(All, "Sniping Missile", "1팀 뒤쪽", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Missile", "S1팀 뒤쪽");
	},
	actions = {
		KillUnitAt(All, "Missile", "S1팀 뒤쪽", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Fast Missile", "S1팀 뒤쪽");
	},
	actions = {
		KillUnitAt(All, "Fast Missile", "S1팀 뒤쪽", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Fast Mini Missile", "S1팀 뒤쪽");
	},
	actions = {
		KillUnitAt(All, "Fast Mini Missile", "S1팀 뒤쪽", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Mini Missile", "S1팀 뒤쪽");
	},
	actions = {
		KillUnitAt(All, "Mini Missile", "S1팀 뒤쪽", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Homing Missile", "HomingL");
	},
	actions = {
		KillUnitAt(All, "Homing Missile", "HomingL", i);
		PreserveTrigger();
	},
}
Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Homing Missile", "HomingR");
	},
	actions = {
		KillUnitAt(All, "Homing Missile", "HomingR", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Missile☆", "S1팀 뒤쪽");
	},
	actions = {
		KillUnitAt(All, "Missile☆", "S1팀 뒤쪽", i);
		PreserveTrigger();
	},
}

Trigger { -- No comment (EAEB830A)
	players = {i},
	conditions = {
		Bring(i, AtLeast, 1, "Fast Missile☆", "S1팀 뒤쪽");
	},
	actions = {
		KillUnitAt(All, "Fast Missile☆", "S1팀 뒤쪽", i);
		PreserveTrigger();
	},
}
end





-- 인구수 표시 -----------------------------------------------------------------------------------
for i = 0, 7 do
	CMov(i,0x582174+4*i,_Read(VO(381+i)))
end
----------------------------------------------------------------------------------

--for i = 0, 7 do DoActions(i,{SetResources(i,SetTo,50000,Ore),SetMemory(0x58F44C,SetTo,0xFF)}) end -- Test
--[[Test
Trigger {
	players = {P1},
	conditions = {
		Void(2000,Exactly,0);
	},
	actions = {
		CreateUnit(1,"Slow Missile","1-5",P1),CreateUnit(1,"Missile☆","1-7",P2),CreateUnit(1, "Penetrating Missile★","1-9",P3),CreateUnit(1,"Big Sniping Missile☆","1-11",P4);
		PreserveTrigger();
		SetVoid(2000,SetTo,12);
	}
}
DoActions(P1,SetVoid(2000,Subtract,1))
Trigger {
	players = {P1},
	conditions = {
		ElapsedTime(AtLeast,2);
	},
	actions = {
		CreateUnit(3,"Ultimate Builder","1팀필드",P1);
		CreateUnit(1,"Builder","1팀필드",P1);
	}
}

--DoActions(P1,{CreateUnit(1,"Sniping Missile","2-5",P5),CreateUnit(1,"Sniping Missile","2-7",P6),CreateUnit(1,"Sniping Missile","2-9",P7),CreateUnit(1,"Sniping Missile","2-11",P8)}) -- Test


]]--
EndCtrig()
