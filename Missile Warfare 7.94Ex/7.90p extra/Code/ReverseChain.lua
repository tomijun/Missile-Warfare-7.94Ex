function SUB_ReverseChain()
    -- 리버스 체인 ＃-----------------
local RCTiming = 168*2
for i = 0, 3 do
Trigger { -- 리버스 체인 1팀
	players = {P0},
	conditions = {
		Void(71,AtLeast,2);
		Void(71,AtMost,RCTiming-1);
		Bring(i, AtLeast, 1, "Sniping Missile", "1팀필드");
	},
	actions = {
		MoveLocation("Loc0", "Sniping Missile", i, "1팀필드");
		KillUnitAt(1, "Sniping Missile", "Loc0", i);
		CreateUnit(1, "Big Sniping Missile", "Loc0", i);
		PreserveTrigger();
	},
}
Trigger { -- 리버스 체인 1팀
	players = {P0},
	conditions = {
		Void(71,AtLeast,2);
		Void(71,AtMost,RCTiming-1);
	},
	actions = {
		Order("Mini Missile", i, "1팀필드", Move, "1팀필드");
		Order("Fast Mini Missile", i, "1팀필드", Move, "1팀필드");
		Order("Homing Missile", i, "1팀필드", Move, "1팀필드");
		Order("Penetrating Missile★", i, "1팀필드", Move, "1팀필드");
		Order("Invisible Missile☆", i, "1팀필드", Move, "1팀필드");
		Order("Big Sniping Missile☆", i, "1팀필드", Move, "1팀필드");
		Order("Missile☆", i, "1팀필드", Move, "1팀필드");
		Order("Fast Missile☆", i, "1팀필드", Move, "1팀필드");
		Order("Slow Missile", i, "1팀필드", Move, "1팀필드");
		Order("Missile", i, "1팀필드", Move, "1팀필드");
		Order("Fast Missile", i, "1팀필드", Move, "1팀필드");
		Order("Sniping Missile", i, "1팀필드", Move, "1팀필드");
		Order("Big Sniping Missile", i, "1팀필드", Move, "1팀필드");
		Order("Light", i, "1팀필드", Move, "1팀필드");
		PreserveTrigger();
	},
}
end
Trigger { -- 리버스 체인 1팀
	players = {P0},
	conditions = {
		Void(71,AtLeast,1);
		Void(71,AtMost,RCTiming-1);
	},
	actions = {
		SetVoid(71,Add,1);
		PreserveTrigger();
	},
}
for i = 0, 3 do
	CIf(P0,{Void(71,AtLeast,2),Void(71,AtMost,RCTiming-1),
	Deaths(i,Exactly,1,"!Exist"),Void(75+i,AtLeast,19025),Void(75+i,AtMost,161741)})
		f_Read(P0,VO(75+i),V(CTemp))
		CTrigger(P0,{TDeathsX(Vi(CTemp,19),AtLeast,1*256,0,0xFF00)},
		{TSetDeaths(Vi(CTemp,22),SetTo,1024+576*65536,0),TSetDeathsX(Vi(CTemp,19),SetTo,137*256,0,0xFF00)},{Preserved})
	CIfEnd()
end

for i = 0, 3 do
NIf(P0,{Void(71,Exactly,RCTiming),Deaths(i,Exactly,1,"!Exist")})
	DoActionsX(P0,{
		SetVoid(40,SetTo,i);
		SetNext("X",0x5112);
		SetNext(0x5122,"X",1);
	})
NIfEnd()
end
Trigger { -- 리버스 체인 1팀
	players = {P0},
	conditions = {
		Void(71,Exactly,RCTiming);
	},
	actions = {
		PreserveTrigger();
		SetVoid(71,Add,1);
	},
}
Trigger { -- 리버스 체인 1팀
	players = {P0},
	conditions = {
		Void(71,AtLeast,RCTiming+1);
		Void(71,AtMost,279*2+1);
	},
	actions = {
		PreserveTrigger();
		SetVoid(71,Add,1);
	},
}
Trigger { -- 리버스 체인 1팀
	players = {P0},
	conditions = {
		Void(71,AtLeast,280*2);
	},
	actions = {
		PreserveTrigger();
		SetVoid(71,SetTo,0);
		KillUnit("Mini Missile", Force1);
		KillUnit("Fast Mini Missile", Force1);
		KillUnit("Homing Missile", Force1);
		KillUnit("Penetrating Missile★", Force1);
		KillUnit("Invisible Missile☆", Force1);
		KillUnit("Slow Missile", Force1);
		KillUnit("Big Sniping Missile", Force1);
		KillUnit("Missile", Force1);
		KillUnit("Fast Missile", Force1);
		KillUnit("Big Sniping Missile☆", Force1);
		KillUnit("Missile☆", Force1);
		KillUnit("Fast Missile☆", Force1);
		KillUnit("Light", Force1);
		KillUnit("Sniping Missile", Force1);
	},
}
for i = 4, 7 do
Trigger { -- 리버스 체인 2팀
	players = {P0},
	conditions = {
		Void(72,AtLeast,2);
		Void(72,AtMost,RCTiming-1);
		Bring(i, AtLeast, 1, "Sniping Missile", "2팀필드");
	},
	actions = {
		MoveLocation("Loc0", "Sniping Missile", i, "2팀필드");
		KillUnitAt(1, "Sniping Missile", "Loc0", i);
		CreateUnit(1, "Big Sniping Missile", "Loc0", i);
		PreserveTrigger();
	},
}
Trigger { -- 리버스 체인 2팀
	players = {P0},
	conditions = {
		Void(72,AtLeast,2);
		Void(72,AtMost,RCTiming-1);
	},
	actions = {
		Order("Mini Missile", i, "2팀필드", Move, "2팀필드");
		Order("Fast Mini Missile", i, "2팀필드", Move, "2팀필드");
		Order("Homing Missile", i, "2팀필드", Move, "2팀필드");
		Order("Penetrating Missile★", i, "2팀필드", Move, "2팀필드");
		Order("Invisible Missile☆", i, "2팀필드", Move, "2팀필드");
		Order("Big Sniping Missile☆", i, "2팀필드", Move, "2팀필드");
		Order("Missile☆", i, "2팀필드", Move, "2팀필드");
		Order("Fast Missile☆", i, "2팀필드", Move, "2팀필드");
		Order("Slow Missile", i, "2팀필드", Move, "2팀필드");
		Order("Missile", i, "2팀필드", Move, "2팀필드");
		Order("Fast Missile", i, "2팀필드", Move, "2팀필드");
		Order("Sniping Missile", i, "2팀필드", Move, "2팀필드");
		Order("Big Sniping Missile", i, "2팀필드", Move, "2팀필드");
		Order("Light", i, "2팀필드", Move, "2팀필드");
		PreserveTrigger();
	},
}
end
Trigger { -- 리버스 체인 2팀
	players = {P0},
	conditions = {
		Void(72,AtLeast,1);
		Void(72,AtMost,RCTiming-1);
	},
	actions = {
		SetVoid(72,Add,1);
		PreserveTrigger();
	},
}

for i = 4, 7 do
	CIf(P0,{Void(72,AtLeast,2),Void(72,AtMost,RCTiming-1),
	Deaths(i,Exactly,1,"!Exist"),Void(75+i,AtLeast,19025),Void(75+i,AtMost,161741)})
		f_Read(P0,VO(75+i),V(CTemp))
		CTrigger(P0,{TDeathsX(Vi(CTemp,19),AtLeast,1*256,0,0xFF00)},
		{TSetDeaths(Vi(CTemp,22),SetTo,1024+1472*65536,0),TSetDeathsX(Vi(CTemp,19),SetTo,137*256,0,0xFF00)},{Preserved})
	CIfEnd()
end

for i = 4, 7 do
NIf(P0,{Void(72,Exactly,RCTiming),Deaths(i,Exactly,1,"!Exist")})
	DoActionsX(P0,{
		SetVoid(41,SetTo,i);
		SetNext("X",0x5113);
		SetNext(0x5123,"X",1);
	})
NIfEnd()
end
Trigger { -- 리버스 체인 2팀
	players = {P0},
	conditions = {
		Void(72,Exactly,RCTiming);
	},
	actions = {
		PreserveTrigger();
		SetVoid(72,Add,1);
	},
}
Trigger { -- 리버스 체인 2팀
	players = {P0},
	conditions = {
		Void(72,AtLeast,RCTiming+1);
		Void(72,AtMost,279*2+1);
	},
	actions = {
		PreserveTrigger();
		SetVoid(72,Add,1);
	},
}
Trigger { -- 리버스 체인 2팀
	players = {P0},
	conditions = {
		Void(72,AtLeast,280*2);
	},
	actions = {
		PreserveTrigger();
		SetVoid(72,SetTo,0);
		KillUnit("Mini Missile", Force2);
		KillUnit("Fast Mini Missile", Force2);
		KillUnit("Homing Missile", Force2);
		KillUnit("Penetrating Missile★", Force2);
		KillUnit("Invisible Missile☆", Force2);
		KillUnit("Slow Missile", Force2);
		KillUnit("Big Sniping Missile", Force2);
		KillUnit("Missile", Force2);
		KillUnit("Fast Missile", Force2);
		KillUnit("Big Sniping Missile☆", Force2);
		KillUnit("Missile☆", Force2);
		KillUnit("Fast Missile☆", Force2);
		KillUnit("Light", Force2);
		KillUnit("Sniping Missile", Force2);
	},
}












end