function SUB_TimeLock()
    local MissileTypeArr = { -- 1 : 정방향, 2 : 사이드
        {20,2},{1,1},{2,1},{3,1},
        {4,1},{5,1},{6,1},{7,1},{8,2},{9,2},{10,2},
        {21,1},{11,1},{22,1},{12,1},{13,1},{24,2},{14,1},{15,1},{16,2},{25,2},{26,1},{17,2},{18,1},{23,2},{19,1}
    }

    -- 1팀 타임락
    Trigger {
        players = {P0},
        conditions = {
            Void(673,AtLeast,1);
        },
        actions = {
            SetVoid(677,SetTo,3);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {P0},
        conditions = {
            Void(673,AtLeast,1);
            Void(675,Exactly,0);
            Void(679,Exactly,0);
        },
        actions = {
            SetVoid(675,SetTo,8*24);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {P0},
        conditions = {
            Void(673,AtLeast,1);
            Void(675,AtLeast,5*24);
            Void(675,AtMost,8*24);
        },
        actions = {
            SetVoid(677,SetTo,1);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {P0},
        conditions = {
            Void(673,AtLeast,1);
            Void(675,AtLeast,1*24);
            Void(675,AtMost,4*24);
        },
        actions = {
            SetVoid(677,SetTo,2);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {P0},
        conditions = {
            Void(675,Exactly,5*24-7);
        },
        actions = {
            SetVoid(675,SetTo,4*24+1);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {P0},
        conditions = {
            Void(675,Exactly,1*24-7);
        },
        actions = {
            SetVoid(675,SetTo,0*24+1);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {P0},
        conditions = {
            Void(679,AtLeast,1);
        },
        actions = {
            SetVoid(677,SetTo,0);
            PreserveTrigger();
        }
    }

    CIf(P0,{Void(673,AtLeast,1)},{
        SetVoid(683+0,SetTo,0);
        SetVoid(683+1,SetTo,0);
        SetVoid(683+2,SetTo,0);
        SetVoid(683+3,SetTo,0);
        SetVoid(691+0,SetTo,0);
        SetVoid(691+1,SetTo,0);
        SetVoid(691+2,SetTo,0);
        SetVoid(691+3,SetTo,0);
    })
    for i = 0, 3 do
        for j = #MissileTypeArr, 1, -1 do
            local v = MissileTypeArr[j]
            Trigger {
                players = {P0},
                conditions = {
                    Void(1008+i+16*v[1],AtLeast,2);
                    Void(1008+i+16*v[1],AtMost,999);
                },
                actions = {
                    SetVoid(683+i,SetTo,v[2]);
                    SetVoid(691+i,SetTo,v[1]);
                    PreserveTrigger();
                }
            }
        end
    end
    CIfEnd()


    -- 2팀 타임락
    Trigger {
        players = {P0},
        conditions = {
            Void(674,AtLeast,1);
        },
        actions = {
            SetVoid(678,SetTo,3);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {P0},
        conditions = {
            Void(674,AtLeast,1);
            Void(676,Exactly,0);
            Void(680,Exactly,0);
        },
        actions = {
            SetVoid(676,SetTo,8*24);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {P0},
        conditions = {
            Void(674,AtLeast,1);
            Void(676,AtLeast,5*24);
            Void(676,AtMost,8*24);
        },
        actions = {
            SetVoid(678,SetTo,1);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {P0},
        conditions = {
            Void(674,AtLeast,1);
            Void(676,AtLeast,1*24);
            Void(676,AtMost,4*24);
        },
        actions = {
            SetVoid(678,SetTo,2);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {P0},
        conditions = {
            Void(676,Exactly,5*24-7);
        },
        actions = {
            SetVoid(676,SetTo,4*24+1);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {P0},
        conditions = {
            Void(676,Exactly,1*24-7);
        },
        actions = {
            SetVoid(676,SetTo,0*24+1);
            PreserveTrigger();
        }
    }
    Trigger {
        players = {P0},
        conditions = {
            Void(680,AtLeast,1);
        },
        actions = {
            SetVoid(678,SetTo,0);
            PreserveTrigger();
        }
    }

    CIf(P0,{Void(674,AtLeast,1)},{
        SetVoid(683+4,SetTo,0);
        SetVoid(683+5,SetTo,0);
        SetVoid(683+6,SetTo,0);
        SetVoid(683+7,SetTo,0);
        SetVoid(691+4,SetTo,0);
        SetVoid(691+5,SetTo,0);
        SetVoid(691+6,SetTo,0);
        SetVoid(691+7,SetTo,0);
    })
    for i = 4, 7 do
        for j = #MissileTypeArr, 1, -1 do
            local v = MissileTypeArr[j]
            Trigger {
                players = {P0},
                conditions = {
                    Void(1008+i+16*v[1],AtLeast,2);
                    Void(1008+i+16*v[1],AtMost,999);
                },
                actions = {
                    SetVoid(683+i,SetTo,v[2]);
                    SetVoid(691+i,SetTo,v[1]);
                    PreserveTrigger();
                }
            }
        end
    end
    CIfEnd()
end