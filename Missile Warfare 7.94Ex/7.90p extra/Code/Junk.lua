function SUB_Junk()
    
CJump(P0,0x110) -- 1팀 전체 정야독
Trigger {
    players = {P0},
    conditions = {
        Label(0x5110);
    },
    actions = {
        PreserveTrigger();
    }
}
CRead(P0,V(CPlayerID),VO(40))
CDoActions(P0,{
    TSetMemory(0x6509B0,SetTo,V(CPlayerID));
    SetLoc("CLoc79",0,SetTo,0);
    SetLoc("CLoc79",4,SetTo,0);
    SetLoc("CLoc79",8,SetTo,608);
    SetLoc("CLoc79",12,SetTo,2048);
    RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "CLoc79");
    SetLoc("CLoc79",0,SetTo,0);
    SetLoc("CLoc79",4,SetTo,0);
    SetLoc("CLoc79",8,SetTo,2048);
    SetLoc("CLoc79",12,SetTo,416);
    RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "CLoc79");
    SetLoc("CLoc79",0,SetTo,1440);
    SetLoc("CLoc79",4,SetTo,0);
    SetLoc("CLoc79",8,SetTo,2048);
    SetLoc("CLoc79",12,SetTo,2048);
    RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "CLoc79");
    SetLoc("CLoc79",0,SetTo,0);
    SetLoc("CLoc79",4,SetTo,768);
    SetLoc("CLoc79",8,SetTo,2048);
    SetLoc("CLoc79",12,SetTo,2048);
    RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "CLoc79");
    TGiveUnits(All,"Men",V(CPlayerID),"1팀필드",P11);
    KillUnitAt(1,191,"1팀필드",P11); -- 해당 로케이션의 Bring 활성화 / Bring(P1) 으로도 대체 가능
})
CWhile(P0,Bring(P11,AtLeast,1,"Men","1팀필드"))
    CDoActions(P0,{
        MoveLocation("Junk230","Men",P11,"1팀필드");
        TGiveUnits(1,"Men",P11,"Junk230",V(CPlayerID));
        SetCVar("X",CTemp,SetTo,0);
    })
    for i = 0, 10 do
        DoActions(P0,{SetSwitch("Switch 4",Random)})
        Trigger { 
            players = {P0},
            conditions = {
                Label(0);
                Switch("Switch 4",Set);
            },
            actions = {
                SetCVar("X",CTemp,Add,2^i);
                PreserveTrigger();
            },
        }
    end
    DoActions(P0,{SetSwitch("Switch 4",Random),SetSwitch("Switch 5",Random)})
    CIfX(P0,{Switch("Switch 4",Set),Switch("Switch 5",Set)})
        CDoActions(P0,{TSetLoc("CLoc79",0,SetTo,V(CTemp)),TSetLoc("CLoc79",8,SetTo,V(CTemp)),
                        TSetLoc("CLoc79",4,SetTo,0),TSetLoc("CLoc79",12,SetTo,0)})
    CElseIfX({Switch("Switch 4",Cleared),Switch("Switch 5",Set)})
        CDoActions(P0,{TSetLoc("CLoc79",0,SetTo,V(CTemp)),TSetLoc("CLoc79",8,SetTo,V(CTemp)),
                        TSetLoc("CLoc79",4,SetTo,2048),TSetLoc("CLoc79",12,SetTo,2048)})
    CElseIfX({Switch("Switch 4",Set),Switch("Switch 5",Cleared)})
        CDoActions(P0,{TSetLoc("CLoc79",4,SetTo,V(CTemp)),TSetLoc("CLoc79",12,SetTo,V(CTemp)),
                        TSetLoc("CLoc79",0,SetTo,0),TSetLoc("CLoc79",8,SetTo,0)})
    CElseIfX({Switch("Switch 4",Cleared),Switch("Switch 5",Cleared)})
        CDoActions(P0,{TSetLoc("CLoc79",4,SetTo,V(CTemp)),TSetLoc("CLoc79",12,SetTo,V(CTemp)),
                        TSetLoc("CLoc79",0,SetTo,2048),TSetLoc("CLoc79",8,SetTo,2048)})
    CIfXEnd()
    CDoActions(P0,{TOrder("Men",V(CPlayerID),"Junk230",Move,"CLoc79")})
CWhileEnd()
DoActions(P0,SetCp(0))
Trigger {
    players = {P0},
    conditions = {
        Label(0x5120);
    },
    actions = {
        PreserveTrigger();
    }
}
CJumpEnd(P0,0x110)


CJump(P0,0x111) -- 2팀 전체 정야독
Trigger {
    players = {P0},
    conditions = {
        Label(0x5111);
    },
    actions = {
        PreserveTrigger();
    }
}
CRead(P0,V(CPlayerID),VO(41))
CDoActions(P0,{
    TSetMemory(0x6509B0,SetTo,V(CPlayerID));
    SetLoc("CLoc79",0,SetTo,0);
    SetLoc("CLoc79",4,SetTo,0);
    SetLoc("CLoc79",8,SetTo,608);
    SetLoc("CLoc79",12,SetTo,2048);
    RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "CLoc79");
    SetLoc("CLoc79",0,SetTo,0);
    SetLoc("CLoc79",4,SetTo,0);
    SetLoc("CLoc79",8,SetTo,2048);
    SetLoc("CLoc79",12,SetTo,1280);
    RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "CLoc79");
    SetLoc("CLoc79",0,SetTo,1440);
    SetLoc("CLoc79",4,SetTo,0);
    SetLoc("CLoc79",8,SetTo,2048);
    SetLoc("CLoc79",12,SetTo,2048);
    RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "CLoc79");
    SetLoc("CLoc79",0,SetTo,0);
    SetLoc("CLoc79",4,SetTo,1632);
    SetLoc("CLoc79",8,SetTo,2048);
    SetLoc("CLoc79",12,SetTo,2048);
    RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "CLoc79");
    TGiveUnits(All,"Men",V(CPlayerID),"2팀필드",P11);
    KillUnitAt(1,191,"2팀필드",P11); -- 해당 로케이션의 Bring 활성화 / Bring(P1) 으로도 대체 가능
})
CWhile(P0,{Bring(P11,AtLeast,1,"Men","2팀필드")})
    CDoActions(P0,{
        MoveLocation("Junk230","Men",P11,"2팀필드");
        TGiveUnits(1,"Men",P11,"Junk230",V(CPlayerID));
        SetCVar("X",CTemp,SetTo,0);
    })
    for i = 0, 10 do
        DoActions(P0,{SetSwitch("Switch 4",Random)})
        Trigger { 
            players = {P0},
            conditions = {
                Label(0);
                Switch("Switch 4",Set);
            },
            actions = {
                SetCVar("X",CTemp,Add,2^i);
                PreserveTrigger();
            },
        }
    end
    DoActions(P0,{SetSwitch("Switch 4",Random),SetSwitch("Switch 5",Random)})
    CIfX(P0,{Switch("Switch 4",Set),Switch("Switch 5",Set)})
        CDoActions(P0,{TSetLoc("CLoc79",0,SetTo,V(CTemp)),TSetLoc("CLoc79",8,SetTo,V(CTemp)),
                        TSetLoc("CLoc79",4,SetTo,0),TSetLoc("CLoc79",12,SetTo,0)})
    CElseIfX({Switch("Switch 4",Cleared),Switch("Switch 5",Set)})
        CDoActions(P0,{TSetLoc("CLoc79",0,SetTo,V(CTemp)),TSetLoc("CLoc79",8,SetTo,V(CTemp)),
                        TSetLoc("CLoc79",4,SetTo,2048),TSetLoc("CLoc79",12,SetTo,2048)})
    CElseIfX({Switch("Switch 4",Set),Switch("Switch 5",Cleared)})
        CDoActions(P0,{TSetLoc("CLoc79",4,SetTo,V(CTemp)),TSetLoc("CLoc79",12,SetTo,V(CTemp)),
                        TSetLoc("CLoc79",0,SetTo,0),TSetLoc("CLoc79",8,SetTo,0)})
    CElseIfX({Switch("Switch 4",Cleared),Switch("Switch 5",Cleared)})
        CDoActions(P0,{TSetLoc("CLoc79",4,SetTo,V(CTemp)),TSetLoc("CLoc79",12,SetTo,V(CTemp)),
                        TSetLoc("CLoc79",0,SetTo,2048),TSetLoc("CLoc79",8,SetTo,2048)})
    CIfXEnd()
    CDoActions(P0,{TOrder("Men",V(CPlayerID),"Junk230",Move,"CLoc79")})
CWhileEnd()
DoActions(P0,SetCp(0))
Trigger {
    players = {P0},
    conditions = {
        Label(0x5121);
    },
    actions = {
        PreserveTrigger();
    }
}
CJumpEnd(P0,0x111)

CJump(P0,0x113) -- 1팀 리체 정야독
Trigger {
    players = {P0},
    conditions = {
        Label(0x5112);
    },
    actions = {
        PreserveTrigger();
    }
}
CRead(P0,V(CPlayerID),VO(40))
CDoActions(P0,{
    TSetMemory(0x6509B0,SetTo,V(CPlayerID));
    TGiveUnits(All,"Men",V(CPlayerID),"1팀필드",P11);
    KillUnitAt(1,191,"1팀필드",P11); -- 해당 로케이션의 Bring 활성화 / Bring(P1) 으로도 대체 가능
})
CWhile(P0,Bring(P11,AtLeast,1,"Men","1팀필드"))
    CDoActions(P0,{
        MoveLocation("Junk230","Men",P11,"1팀필드");
        TGiveUnits(1,"Men",P11,"Junk230",V(CPlayerID));
        SetCVar("X",CTemp,SetTo,0);
    })
    for i = 0, 10 do
        DoActions(P0,{SetSwitch("Switch 4",Random)})
        Trigger { 
            players = {P0},
            conditions = {
                Label(0);
                Switch("Switch 4",Set);
            },
            actions = {
                SetCVar("X",CTemp,Add,2^i);
                PreserveTrigger();
            },
        }
    end
    DoActions(P0,{SetSwitch("Switch 4",Random),SetSwitch("Switch 5",Random)})
    CIfX(P0,{Switch("Switch 4",Set),Switch("Switch 5",Set)})
        CDoActions(P0,{TSetLoc("CLoc79",0,SetTo,V(CTemp)),TSetLoc("CLoc79",8,SetTo,V(CTemp)),
                        TSetLoc("CLoc79",4,SetTo,0),TSetLoc("CLoc79",12,SetTo,0)})
    CElseIfX({Switch("Switch 4",Cleared),Switch("Switch 5",Set)})
        CDoActions(P0,{TSetLoc("CLoc79",0,SetTo,V(CTemp)),TSetLoc("CLoc79",8,SetTo,V(CTemp)),
                        TSetLoc("CLoc79",4,SetTo,2048),TSetLoc("CLoc79",12,SetTo,2048)})
    CElseIfX({Switch("Switch 4",Set),Switch("Switch 5",Cleared)})
        CDoActions(P0,{TSetLoc("CLoc79",4,SetTo,V(CTemp)),TSetLoc("CLoc79",12,SetTo,V(CTemp)),
                        TSetLoc("CLoc79",0,SetTo,0),TSetLoc("CLoc79",8,SetTo,0)})
    CElseIfX({Switch("Switch 4",Cleared),Switch("Switch 5",Cleared)})
        CDoActions(P0,{TSetLoc("CLoc79",4,SetTo,V(CTemp)),TSetLoc("CLoc79",12,SetTo,V(CTemp)),
                        TSetLoc("CLoc79",0,SetTo,2048),TSetLoc("CLoc79",8,SetTo,2048)})
    CIfXEnd()
    CDoActions(P0,{TOrder("Men",V(CPlayerID),"Junk230",Move,"CLoc79")})
CWhileEnd()
DoActions(P0,{RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "리체1"),SetCp(0)})
Trigger {
    players = {P0},
    conditions = {
        Label(0x5122);
    },
    actions = {
        PreserveTrigger();
    }
}
CJumpEnd(P0,0x113)


CJump(P0,0x114) -- 2팀 전체 정야독
Trigger {
    players = {P0},
    conditions = {
        Label(0x5113);
    },
    actions = {
        PreserveTrigger();
    }
}
CRead(P0,V(CPlayerID),VO(41))
CDoActions(P0,{
    TSetMemory(0x6509B0,SetTo,V(CPlayerID));
    TGiveUnits(All,"Men",V(CPlayerID),"2팀필드",P11);
    KillUnitAt(1,191,"2팀필드",P11); -- 해당 로케이션의 Bring 활성화 / Bring(P1) 으로도 대체 가능
})
CWhile(P0,{Bring(P11,AtLeast,1,"Men","2팀필드")})
    CDoActions(P0,{
        MoveLocation("Junk230","Men",P11,"2팀필드");
        TGiveUnits(1,"Men",P11,"Junk230",V(CPlayerID));
        SetCVar("X",CTemp,SetTo,0);
    })
    for i = 0, 10 do
        DoActions(P0,{SetSwitch("Switch 4",Random)})
        Trigger { 
            players = {P0},
            conditions = {
                Label(0);
                Switch("Switch 4",Set);
            },
            actions = {
                SetCVar("X",CTemp,Add,2^i);
                PreserveTrigger();
            },
        }
    end
    DoActions(P0,{SetSwitch("Switch 4",Random),SetSwitch("Switch 5",Random)})
    CIfX(P0,{Switch("Switch 4",Set),Switch("Switch 5",Set)})
        CDoActions(P0,{TSetLoc("CLoc79",0,SetTo,V(CTemp)),TSetLoc("CLoc79",8,SetTo,V(CTemp)),
                        TSetLoc("CLoc79",4,SetTo,0),TSetLoc("CLoc79",12,SetTo,0)})
    CElseIfX({Switch("Switch 4",Cleared),Switch("Switch 5",Set)})
        CDoActions(P0,{TSetLoc("CLoc79",0,SetTo,V(CTemp)),TSetLoc("CLoc79",8,SetTo,V(CTemp)),
                        TSetLoc("CLoc79",4,SetTo,2048),TSetLoc("CLoc79",12,SetTo,2048)})
    CElseIfX({Switch("Switch 4",Set),Switch("Switch 5",Cleared)})
        CDoActions(P0,{TSetLoc("CLoc79",4,SetTo,V(CTemp)),TSetLoc("CLoc79",12,SetTo,V(CTemp)),
                        TSetLoc("CLoc79",0,SetTo,0),TSetLoc("CLoc79",8,SetTo,0)})
    CElseIfX({Switch("Switch 4",Cleared),Switch("Switch 5",Cleared)})
        CDoActions(P0,{TSetLoc("CLoc79",4,SetTo,V(CTemp)),TSetLoc("CLoc79",12,SetTo,V(CTemp)),
                        TSetLoc("CLoc79",0,SetTo,2048),TSetLoc("CLoc79",8,SetTo,2048)})
    CIfXEnd()
    CDoActions(P0,{TOrder("Men",V(CPlayerID),"Junk230",Move,"CLoc79")})
CWhileEnd()
DoActions(P0,{RunAIScriptAt("Set Unit Order To: Junk Yard Dog", "리체2"),SetCp(0)})
Trigger {
    players = {P0},
    conditions = {
        Label(0x5123);
    },
    actions = {
        PreserveTrigger();
    }
}
CJumpEnd(P0,0x114)


--[[ DragArr = CVArray(P1,12*8)
CJump(P0,0x112) -- 정야독 드래그 저장
	Trigger {
		players = {P0},
		conditions = {
			Label(0x5112);
		},
		actions = {
			PreserveTrigger();
		}
	}
	for i = 0, 7 do
		for j = 0, 11 do
			f_Read(P0,0x6284E8+j*4+i*48,VArr(DragArr,i*12+j))
		end
	end
	Trigger {
		players = {P0},
		conditions = {
			Label(0x5122);
		},
		actions = {
			PreserveTrigger();
		}
	}
CJumpEnd(P0,0x112)

CJump(P0,0x113) -- 정야독 드래그 복구
	Trigger {
		players = {P0},
		conditions = {
			Label(0x5113);
		},
		actions = {
			PreserveTrigger();
		}
	}
	for i = 0, 7 do
		for j = 0, 11 do
			CIf(P0,{TTMemory(0x6284E8+j*4+i*48,NotSame,VArr(DragArr,i*12+j) )})
				CMov(P0,0x6284E8+j*4+i*48,VArr(DragArr,i*12+j))
			CIfEnd()
		end
	end
	Trigger {
		players = {P0},
		conditions = {
			Label(0x5123);
		},
		actions = {
			PreserveTrigger();
		}
	}
CJumpEnd(P0,0x113)
]]--
end
