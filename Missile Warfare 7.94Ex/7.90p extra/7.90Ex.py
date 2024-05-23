from eudplib import *
import math
from os.path import getsize
file1 = '7.90p extra/stat_txt.tbl'
global file_size1 
file_size1 = getsize(file1)

def onPluginStart():
	TBLchk = Db(open("7.90p extra/stat_txt.tbl", 'rb').read())
	f_memcpy(f_dwread(0x6D5A30),TBLchk,file_size1)

	Check = EUDVariable()
	Check << EPD(0x58F450)
	if EUDWhile()(Check <= 10023): #EPD(0x594000)
		DoActions(SetDeaths(Check,SetTo,0,0))
		DoActions(Check.AddNumber(1))
	EUDEndWhile()

	Check2 = EUDVariable()
	Check2 << EPD(0x663CE8)
	if EUDWhile()(Check2 <= 56): #EPD(0x663DC8)
		DoActions(SetDeaths(Check2,SetTo,0,0))
		DoActions(Check2.AddNumber(1))
	EUDEndWhile()

	Check3 = EUDVariable()
	Check3 << EPD(0x6646C8)
	if EUDWhile()(Check3 <= 56): #EPD(0x6647A8)
		DoActions(SetDeaths(Check3,SetTo,0,0))
		DoActions(Check3.AddNumber(1))
	EUDEndWhile()

	DoActions([SetDeaths(P11,SetTo,0,"!Exist"),SetDeaths(P12,SetTo,0,"!Exist")])
	if EUDIf()((f_playerexist(0) == 1)):
		DoActions([SetDeaths(P11,Add,1,"!Exist")])
	EUDEndIf()
	if EUDIf()((f_playerexist(1) == 1)):
		DoActions([SetDeaths(P11,Add,1,"!Exist")])
	EUDEndIf()
	if EUDIf()((f_playerexist(2) == 1)):
		DoActions([SetDeaths(P11,Add,1,"!Exist")])
	EUDEndIf()
	if EUDIf()((f_playerexist(3) == 1)):
		DoActions([SetDeaths(P11,Add,1,"!Exist")])
	EUDEndIf()
	if EUDIf()((f_playerexist(4) == 1)):
		DoActions([SetDeaths(P12,Add,1,"!Exist")])
	EUDEndIf()
	if EUDIf()((f_playerexist(5) == 1)):
		DoActions([SetDeaths(P12,Add,1,"!Exist")])
	EUDEndIf()
	if EUDIf()((f_playerexist(6) == 1)):
		DoActions([SetDeaths(P12,Add,1,"!Exist")])
	EUDEndIf()
	if EUDIf()((f_playerexist(7) == 1)):
		DoActions([SetDeaths(P12,Add,1,"!Exist")])
	EUDEndIf()

	if EUDIf()((f_playerexist(0) == 0)):
		DoActions([SetSwitch("Switch 82",Set)])
	EUDEndIf()

	PrevCp = EUDVariable()
	PrevCp << f_getcurpl()
	DoActions([
		SetMemory(0x58DC60+0x14*138,SetTo,672),
		SetMemory(0x58DC64+0x14*138,SetTo,464),
		SetMemory(0x58DC68+0x14*138,SetTo,800),
		SetMemory(0x58DC6C+0x14*138,SetTo,544),
		SetCurrentPlayer(0),
		CenterView("ProbeS"),

		SetMemory(0x58DC60+0x14*138,SetTo,864),
		SetMemory(0x58DC64+0x14*138,SetTo,464),
		SetMemory(0x58DC68+0x14*138,SetTo,992),
		SetMemory(0x58DC6C+0x14*138,SetTo,544),
		SetCurrentPlayer(1),
		CenterView("ProbeS"),

		SetMemory(0x58DC60+0x14*138,SetTo,1056),
		SetMemory(0x58DC64+0x14*138,SetTo,464),
		SetMemory(0x58DC68+0x14*138,SetTo,1184),
		SetMemory(0x58DC6C+0x14*138,SetTo,544),
		SetCurrentPlayer(2),
		CenterView("ProbeS"),

		SetMemory(0x58DC60+0x14*138,SetTo,1248),
		SetMemory(0x58DC64+0x14*138,SetTo,464),
		SetMemory(0x58DC68+0x14*138,SetTo,1376),
		SetMemory(0x58DC6C+0x14*138,SetTo,544),
		SetCurrentPlayer(3),
		CenterView("ProbeS"),

		SetMemory(0x58DC60+0x14*138,SetTo,672),
		SetMemory(0x58DC64+0x14*138,SetTo,1440),
		SetMemory(0x58DC68+0x14*138,SetTo,800),
		SetMemory(0x58DC6C+0x14*138,SetTo,1520),
		SetCurrentPlayer(4),
		CenterView("ProbeS"),

		SetMemory(0x58DC60+0x14*138,SetTo,864),
		SetMemory(0x58DC64+0x14*138,SetTo,1440),
		SetMemory(0x58DC68+0x14*138,SetTo,992),
		SetMemory(0x58DC6C+0x14*138,SetTo,1520),
		SetCurrentPlayer(5),
		CenterView("ProbeS"),

		SetMemory(0x58DC60+0x14*138,SetTo,1056),
		SetMemory(0x58DC64+0x14*138,SetTo,1440),
		SetMemory(0x58DC68+0x14*138,SetTo,1184),
		SetMemory(0x58DC6C+0x14*138,SetTo,1520),
		SetCurrentPlayer(6),
		CenterView("ProbeS"),

		SetMemory(0x58DC60+0x14*138,SetTo,1248),
		SetMemory(0x58DC64+0x14*138,SetTo,1440),
		SetMemory(0x58DC68+0x14*138,SetTo,1376),
		SetMemory(0x58DC6C+0x14*138,SetTo,1520),
		SetCurrentPlayer(7),
		CenterView("ProbeS"),
	])
	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
		],
		actions = [
			SetMemory(0x58FEC8, SetTo, 0),
			SetMemory(0x6509B0, SetTo, 128),
			DisplayText("\n\n\x13\x1F<Obs Mode> \x04: 관전자 채팅 조작법\n\n\x13\x02[I] \x04: 채팅 \x02→ 관전자에게 \x04메세지를 보냅니다.\n\n\x13\x19[O] \x04: 채팅 \x19→ 모두에게 \x04메세지를 보냅니다.\n\n\x13\x1B[P] \x04: 채팅 \x1B→ 플레이어에게 \x04메세지를 보냅니다.\n\n", 4),
			PlayWAV("staredit\\wav\\SpeedMessage.wav"),
			SetMemory(0x6509B0, SetTo, 129),
			DisplayText("\n\n\x13\x1F<Obs Mode> \x04: 관전자 채팅 조작법\n\n\x13\x02[I] \x04: 채팅 \x02→ 관전자에게 \x04메세지를 보냅니다.\n\n\x13\x19[O] \x04: 채팅 \x19→ 모두에게 \x04메세지를 보냅니다.\n\n\x13\x1B[P] \x04: 채팅 \x1B→ 플레이어에게 \x04메세지를 보냅니다.\n\n", 4),
			PlayWAV("staredit\\wav\\SpeedMessage.wav"),
			SetMemory(0x6509B0, SetTo, 130),
			DisplayText("\n\n\x13\x1F<Obs Mode> \x04: 관전자 채팅 조작법\n\n\x13\x02[I] \x04: 채팅 \x02→ 관전자에게 \x04메세지를 보냅니다.\n\n\x13\x19[O] \x04: 채팅 \x19→ 모두에게 \x04메세지를 보냅니다.\n\n\x13\x1B[P] \x04: 채팅 \x1B→ 플레이어에게 \x04메세지를 보냅니다.\n\n", 4),
			PlayWAV("staredit\\wav\\SpeedMessage.wav"),
			SetMemory(0x6509B0, SetTo, 131),
			DisplayText("\n\n\x13\x1F<Obs Mode> \x04: 관전자 채팅 조작법\n\n\x13\x02[I] \x04: 채팅 \x02→ 관전자에게 \x04메세지를 보냅니다.\n\n\x13\x19[O] \x04: 채팅 \x19→ 모두에게 \x04메세지를 보냅니다.\n\n\x13\x1B[P] \x04: 채팅 \x1B→ 플레이어에게 \x04메세지를 보냅니다.\n\n", 4),
			PlayWAV("staredit\\wav\\SpeedMessage.wav"),
			SetMemory(0x6509B0, SetTo, 7),
		],
	)
	f_setcurpl(PrevCp)

	# 요구사항 만족 SetMemory(0x584DE4+(UnitID*12*PlayerID)*4,SetTo,1);
	"""
	for i in range(8):
		DoActions([
			SetMemory(0x584DE4+(106*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(111*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(112*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(113*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(114*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(116*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(122*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(123*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(133*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(135*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(136*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(137*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(138*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(139*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(140*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(142*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(154*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(155*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(159*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(160*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(163*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(164*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(165*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(166*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(167*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(169*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(170*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(171*12*i)*4,SetTo,1),
			SetMemory(0x584DE4+(172*12*i)*4,SetTo,1),

		])
	"""
	




def beforeTriggerExec():
	if EUDExecuteOnce()((Memory(0x58F500+702*4,AtLeast,1))):
		Host = EUDVariable()
		PrevCp2 = EUDVariable()
		Host << f_maskread_epd(EPD(0x58F500+702*4), 0xFF)
		PrevCp2 << f_getcurpl()
		DoActions([SetCurrentPlayer(Host-1),CenterView("Cntr")])
		f_setcurpl(PrevCp2)
	EUDEndExecuteOnce()

	DoActions([SetSwitch("Switch 1",Clear),SetDeaths(P1,SetTo,0,"!Exist"),SetDeaths(P2,SetTo,0,"!Exist"),SetDeaths(P3,SetTo,0,"!Exist"),SetDeaths(P4,SetTo,0,"!Exist"),SetDeaths(P9,SetTo,0,"!Exist"),SetDeaths(P5,SetTo,0,"!Exist"),SetDeaths(P6,SetTo,0,"!Exist"),SetDeaths(P7,SetTo,0,"!Exist"),SetDeaths(P8,SetTo,0,"!Exist"),SetDeaths(P10,SetTo,0,"!Exist")])
	if EUDIf()((f_playerexist(0) == 1)):
		DoActions([SetDeaths(P1,SetTo,1,"!Exist"),SetDeaths(P9,Add,1,"!Exist")])
	EUDEndIf()
	if EUDIf()((f_playerexist(1) == 1)):
		DoActions([SetDeaths(P2,SetTo,1,"!Exist"),SetDeaths(P9,Add,1,"!Exist")])
	EUDEndIf()
	if EUDIf()((f_playerexist(2) == 1)):
		DoActions([SetDeaths(P3,SetTo,1,"!Exist"),SetDeaths(P9,Add,1,"!Exist")])
	EUDEndIf()
	if EUDIf()((f_playerexist(3) == 1)):
		DoActions([SetDeaths(P4,SetTo,1,"!Exist"),SetDeaths(P9,Add,1,"!Exist")])
	EUDEndIf()
	if EUDIf()((f_playerexist(4) == 1)):
		DoActions([SetDeaths(P5,SetTo,1,"!Exist"),SetDeaths(P10,Add,1,"!Exist")])
	EUDEndIf()
	if EUDIf()((f_playerexist(5) == 1)):
		DoActions([SetDeaths(P6,SetTo,1,"!Exist"),SetDeaths(P10,Add,1,"!Exist")])
	EUDEndIf()
	if EUDIf()((f_playerexist(6) == 1)):
		DoActions([SetDeaths(P7,SetTo,1,"!Exist"),SetDeaths(P10,Add,1,"!Exist")])
	EUDEndIf()
	if EUDIf()((f_playerexist(7) == 1)):
		DoActions([SetDeaths(P8,SetTo,1,"!Exist"),SetDeaths(P10,Add,1,"!Exist")])
	EUDEndIf()	

	DoActions([
		SetMemoryX(0x662098, SetTo, 0x00000001, 255),
		SetMemoryX(0x662098, SetTo, 0x00000100, 65280),
		SetMemoryX(0x662098, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x662098, SetTo, 0x01000000, -16777216),
		SetMemoryX(0x66209C, SetTo, 0x00000001, 255),
		SetMemoryX(0x66209C, SetTo, 0x00000100, 65280),
		SetMemoryX(0x66209C, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620A0, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620A0, SetTo, 0x00000100, 65280),
		SetMemoryX(0x6620A0, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620A0, SetTo, 0x01000000, -16777216),
		SetMemoryX(0x6620A4, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620A4, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620A4, SetTo, 0x00010000, 16711680),
		#SetMemoryX(0x6620A4, SetTo, 0x02000000, -16777216), -- Mode Select
		SetMemoryX(0x6620A8, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620A8, SetTo, 0x00000100, 65280),
		SetMemoryX(0x6620A8, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620A8, SetTo, 0x01000000, -16777216),
		SetMemoryX(0x6620AC, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620AC, SetTo, 0x00000100, 65280),
		SetMemoryX(0x6620AC, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620AC, SetTo, 0x01000000, -16777216),
		SetMemoryX(0x6620B0, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620B0, SetTo, 0x00000300, 65280),
		SetMemoryX(0x6620B0, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620B0, SetTo, 0x01000000, -16777216),
		SetMemoryX(0x6620B4, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620B4, SetTo, 0x00000100, 65280),
		SetMemoryX(0x6620B4, SetTo, 0x00030000, 16711680),
		SetMemoryX(0x6620B4, SetTo, 0x01000000, -16777216),
		SetMemoryX(0x6620B8, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620B8, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620B8, SetTo, 0x00020000, 16711680),
		SetMemoryX(0x6620B8, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620BC, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620BC, SetTo, 0x00000100, 65280),
		SetMemoryX(0x6620BC, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620BC, SetTo, 0x01000000, -16777216),
		SetMemoryX(0x6620C0, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620C0, SetTo, 0x00020000, 16711680),
		SetMemoryX(0x6620C0, SetTo, 0x01000000, -16777216),
		SetMemoryX(0x6620C4, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620C4, SetTo, 0x00000200, 65280),
		SetMemoryX(0x6620C4, SetTo, 0x00020000, 16711680),
		SetMemoryX(0x6620C4, SetTo, 0x01000000, -16777216),
		SetMemoryX(0x6620C8, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620C8, SetTo, 0x00000200, 65280),
		SetMemoryX(0x6620C8, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620C8, SetTo, 0x01000000, -16777216),
		SetMemoryX(0x6620CC, SetTo, 0x00000002, 255),
		SetMemoryX(0x6620CC, SetTo, 0x00000100, 65280),
		SetMemoryX(0x6620CC, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620CC, SetTo, 0x01000000, -16777216),
		SetMemoryX(0x6620D0, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620D0, SetTo, 0x00000200, 65280),
		SetMemoryX(0x6620D0, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620D0, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620D4, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620D4, SetTo, 0x00000100, 65280),
		SetMemoryX(0x6620D4, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620D4, SetTo, 0x02000000, -16777216),
		SetMemoryX(0x6620D8, SetTo, 0x00000100, 65280),
		SetMemoryX(0x6620D8, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620D8, SetTo, 0x02000000, -16777216),
		SetMemoryX(0x6620DC, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620DC, SetTo, 0x00000200, 65280),
		SetMemoryX(0x6620DC, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620DC, SetTo, 0x01000000, -16777216),
		SetMemoryX(0x6620E0, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620E0, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620E0, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620E0, SetTo, 0x01000000, -16777216),
		SetMemoryX(0x6620E4, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620E4, SetTo, 0x00000100, 65280),
		SetMemoryX(0x6620E4, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620E4, SetTo, 0x01000000, -16777216),
		SetMemoryX(0x6620E8, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620E8, SetTo, 0x00000100, 65280),
		SetMemoryX(0x6620E8, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620E8, SetTo, 0x01000000, -16777216),
		SetMemoryX(0x6620EC, SetTo, 0x00000002, 255),
		SetMemoryX(0x6620EC, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620EC, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620EC, SetTo, 0x01000000, -16777216),
		SetMemoryX(0x6620F0, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620F0, SetTo, 0x00000200, 65280),
		SetMemoryX(0x6620F0, SetTo, 0x00020000, 16711680),
		SetMemoryX(0x6620F0, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620F4, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620F4, SetTo, 0x00000200, 65280),
		SetMemoryX(0x6620F4, SetTo, 0x00020000, 16711680),
		SetMemoryX(0x6620F4, SetTo, 0x02000000, -16777216),
		SetMemoryX(0x6620F8, SetTo, 0x00000002, 255),
		SetMemoryX(0x6620F8, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620F8, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620F8, SetTo, 0x01000000, -16777216),
		SetMemoryX(0x6620FC, SetTo, 0x00000001, 255),
		SetMemoryX(0x6620FC, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620FC, SetTo, 0x00010000, 16711680),
		SetMemoryX(0x6620FC, SetTo, 0x02000000, -16777216),
		SetMemoryX(0x662100, SetTo, 0x00000001, 255),


	])
	
	# Player Structure
	DoActions([
		SetMemoryX(0x57EEE8+36*0,SetTo,1,0xFF),
		SetMemoryX(0x57EEE8+36*1,SetTo,1,0xFF),
		SetMemoryX(0x57EEE8+36*2,SetTo,1,0xFF),
		SetMemoryX(0x57EEE8+36*3,SetTo,1,0xFF),
		SetMemoryX(0x57EEE8+36*4,SetTo,1,0xFF),
		SetMemoryX(0x57EEE8+36*5,SetTo,1,0xFF),
		SetMemoryX(0x57EEE8+36*6,SetTo,1,0xFF),
		SetMemoryX(0x57EEE8+36*7,SetTo,1,0xFF),
	])

def afterTriggerExec():
	DoActions([SetMemory(0x6509A0,SetTo,0),SetMemory(0x51CE98,SetTo,0)])
	Once = EUDVariable()
	if EUDIf()((Once == 0)):
		Once << 1
		Check2 = EUDVariable()
		Check2 << EPD(0x663CE8)
		if EUDWhile()(Check2 <= 56): #EPD(0x663DC8)
			DoActions(SetDeaths(Check2,SetTo,0,0))
			DoActions(Check2.AddNumber(1))
		EUDEndWhile()

		Check3 = EUDVariable()
		Check3 << EPD(0x6646C8)
		if EUDWhile()(Check3 <= 56): #EPD(0x6647A8)
			DoActions(SetDeaths(Check3,SetTo,0,0))
			DoActions(Check3.AddNumber(1))
		EUDEndWhile()
	
		DoActions([ # 버튼셋 초기화
		SetMemory(0x5187E8, SetTo, 0x00000000),
		#SetMemory(0x5187F4, SetTo, 0x00000000), -- Z adv button
		SetMemory(0x518800, SetTo, 0x00000000),
		SetMemory(0x51880C, SetTo, 0x00000000),
		SetMemory(0x518818, SetTo, 0x00000000),
		SetMemory(0x518824, SetTo, 0x00000000),
		SetMemory(0x518830, SetTo, 0x00000000),

		SetMemory(0x518848, SetTo, 0x00000000),
		SetMemory(0x518854, SetTo, 0x00000000),
		SetMemory(0x518860, SetTo, 0x00000000),
		SetMemory(0x51886C, SetTo, 0x00000000),
		SetMemory(0x518878, SetTo, 0x00000000),
		SetMemory(0x518884, SetTo, 0x00000000),
		SetMemory(0x518890, SetTo, 0x00000000),
		SetMemory(0x51889C, SetTo, 0x00000000),
		SetMemory(0x5188A8, SetTo, 0x00000000),
		SetMemory(0x5188B4, SetTo, 0x00000000),
		SetMemory(0x5188C0, SetTo, 0x00000000),
		SetMemory(0x5188CC, SetTo, 0x00000000),
		SetMemory(0x5188D8, SetTo, 0x00000000),
		SetMemory(0x5188E4, SetTo, 0x00000000),
		SetMemory(0x5188F0, SetTo, 0x00000000),
		SetMemory(0x5188FC, SetTo, 0x00000000),
		SetMemory(0x518908, SetTo, 0x00000000),
		SetMemory(0x518914, SetTo, 0x00000000),
		SetMemory(0x518920, SetTo, 0x00000000),
		SetMemory(0x51892C, SetTo, 0x00000000),
		SetMemory(0x518938, SetTo, 0x00000000),
		SetMemory(0x518944, SetTo, 0x00000000),
		SetMemory(0x518950, SetTo, 0x00000000),
		SetMemory(0x51895C, SetTo, 0x00000000),
		SetMemory(0x518968, SetTo, 0x00000000),
		SetMemory(0x518974, SetTo, 0x00000000),
		SetMemory(0x518980, SetTo, 0x00000000),
		SetMemory(0x51898C, SetTo, 0x00000000),
		SetMemory(0x518998, SetTo, 0x00000000),
		SetMemory(0x5189A4, SetTo, 0x00000000),
		SetMemory(0x5189B0, SetTo, 0x00000000),
		SetMemory(0x5189BC, SetTo, 0x00000000),
		SetMemory(0x5189C8, SetTo, 0x00000000),

		SetMemory(0x5189E0, SetTo, 0x00000000),
		SetMemory(0x5189EC, SetTo, 0x00000000),
		SetMemory(0x5189F8, SetTo, 0x00000000),
		SetMemory(0x518A04, SetTo, 0x00000000),
		SetMemory(0x518A10, SetTo, 0x00000000),
		SetMemory(0x518A1C, SetTo, 0x00000000),
		SetMemory(0x518A28, SetTo, 0x00000000),
		#SetMemory(0x518A34, SetTo, 0x00000000), -- T adv button
		SetMemory(0x518A40, SetTo, 0x00000000),
		SetMemory(0x518A4C, SetTo, 0x00000000),
		SetMemory(0x518A58, SetTo, 0x00000000),
		SetMemory(0x518A64, SetTo, 0x00000000),
		SetMemory(0x518A70, SetTo, 0x00000000),
		SetMemory(0x518A7C, SetTo, 0x00000000),
		SetMemory(0x518A88, SetTo, 0x00000000),
		SetMemory(0x518A94, SetTo, 0x00000000),
		SetMemory(0x518AA0, SetTo, 0x00000000),
		SetMemory(0x518AAC, SetTo, 0x00000000),
		SetMemory(0x518AB8, SetTo, 0x00000000),
		SetMemory(0x518AC4, SetTo, 0x00000000),
		SetMemory(0x518AD0, SetTo, 0x00000000),
		SetMemory(0x518ADC, SetTo, 0x00000000),

		SetMemory(0x518AF4, SetTo, 0x00000000),
		SetMemory(0x518B00, SetTo, 0x00000000),
		SetMemory(0x518B0C, SetTo, 0x00000000),
		SetMemory(0x518B18, SetTo, 0x00000000),
		SetMemory(0x518B24, SetTo, 0x00000000),
		SetMemory(0x518B30, SetTo, 0x00000000),
		SetMemory(0x518B3C, SetTo, 0x00000000),
		SetMemory(0x518B48, SetTo, 0x00000000),
		SetMemory(0x518B54, SetTo, 0x00000000),
		SetMemory(0x518B60, SetTo, 0x00000000),
		SetMemory(0x518B6C, SetTo, 0x00000000),
		SetMemory(0x518B78, SetTo, 0x00000000),
		SetMemory(0x518B84, SetTo, 0x00000000),
		SetMemory(0x518B90, SetTo, 0x00000000),
		SetMemory(0x518B9C, SetTo, 0x00000000),
		SetMemory(0x518BA8, SetTo, 0x00000000),
		SetMemory(0x518BB4, SetTo, 0x00000000),
		SetMemory(0x518BC0, SetTo, 0x00000000),
		SetMemory(0x518BCC, SetTo, 0x00000000),
		SetMemory(0x518BD8, SetTo, 0x00000000),
		SetMemory(0x518BE4, SetTo, 0x00000000),
		SetMemory(0x518BF0, SetTo, 0x00000000),
		SetMemory(0x518BFC, SetTo, 0x00000000),
		SetMemory(0x518C08, SetTo, 0x00000000),
		SetMemory(0x518C14, SetTo, 0x00000000),
		SetMemory(0x518C20, SetTo, 0x00000000),
		SetMemory(0x518C2C, SetTo, 0x00000000),
		SetMemory(0x518C38, SetTo, 0x00000000),
		SetMemory(0x518C44, SetTo, 0x00000000),
		SetMemory(0x518C50, SetTo, 0x00000000),
		SetMemory(0x518C5C, SetTo, 0x00000000),
		SetMemory(0x518C68, SetTo, 0x00000000),
		SetMemory(0x518C74, SetTo, 0x00000000),
		SetMemory(0x518C80, SetTo, 0x00000000),
		SetMemory(0x518C8C, SetTo, 0x00000000),
		SetMemory(0x518C98, SetTo, 0x00000000),
		SetMemory(0x518CA4, SetTo, 0x00000000),
		SetMemory(0x518CB0, SetTo, 0x00000000),
		SetMemory(0x518CBC, SetTo, 0x00000000),
		#SetMemory(0x518CC8, SetTo, 0x00000000), -- Z base button
		])
	EUDEndIf()

	DoActions([
		SetMemoryX(0x662098, SetTo, 0x00000000, 255),
		SetMemoryX(0x662098, SetTo, 0x00000000, 65280),
		SetMemoryX(0x662098, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x662098, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x66209C, SetTo, 0x00000000, 255),
		SetMemoryX(0x66209C, SetTo, 0x00000000, 65280),
		SetMemoryX(0x66209C, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620A0, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620A0, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620A0, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620A0, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620A4, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620A4, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620A4, SetTo, 0x00000000, 16711680),
		#SetMemoryX(0x6620A4, SetTo, 0x00000000, -16777216), -- Mode Select
		SetMemoryX(0x6620A8, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620A8, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620A8, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620A8, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620AC, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620AC, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620AC, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620AC, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620B0, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620B0, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620B0, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620B0, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620B4, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620B4, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620B4, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620B4, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620B8, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620B8, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620B8, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620B8, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620BC, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620BC, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620BC, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620BC, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620C0, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620C0, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620C0, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620C4, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620C4, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620C4, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620C4, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620C8, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620C8, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620C8, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620C8, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620CC, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620CC, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620CC, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620CC, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620D0, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620D0, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620D0, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620D0, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620D4, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620D4, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620D4, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620D4, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620D8, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620D8, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620D8, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620DC, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620DC, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620DC, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620DC, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620E0, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620E0, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620E0, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620E0, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620E4, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620E4, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620E4, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620E4, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620E8, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620E8, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620E8, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620E8, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620EC, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620EC, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620EC, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620EC, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620F0, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620F0, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620F0, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620F0, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620F4, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620F4, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620F4, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620F4, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620F8, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620F8, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620F8, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620F8, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x6620FC, SetTo, 0x00000000, 255),
		SetMemoryX(0x6620FC, SetTo, 0x00000000, 65280),
		SetMemoryX(0x6620FC, SetTo, 0x00000000, 16711680),
		SetMemoryX(0x6620FC, SetTo, 0x00000000, -16777216),
		SetMemoryX(0x662100, SetTo, 0x00000000, 255),
		

	])
	
	# Player Structure
	Trigger(conditions=[Deaths(P1,Exactly,1,"!Exist")],actions=[SetMemoryX(0x57EEE8+36*0,SetTo,2,0xFF)])
	Trigger(conditions=[Deaths(P1,Exactly,0,"!Exist")],actions=[SetMemoryX(0x57EEE8+36*0,SetTo,0,0xFF)])
	Trigger(conditions=[Deaths(P2,Exactly,1,"!Exist")],actions=[SetMemoryX(0x57EEE8+36*1,SetTo,2,0xFF)])
	Trigger(conditions=[Deaths(P2,Exactly,0,"!Exist")],actions=[SetMemoryX(0x57EEE8+36*1,SetTo,0,0xFF)])
	Trigger(conditions=[Deaths(P3,Exactly,1,"!Exist")],actions=[SetMemoryX(0x57EEE8+36*2,SetTo,2,0xFF)])
	Trigger(conditions=[Deaths(P3,Exactly,0,"!Exist")],actions=[SetMemoryX(0x57EEE8+36*2,SetTo,0,0xFF)])
	Trigger(conditions=[Deaths(P4,Exactly,1,"!Exist")],actions=[SetMemoryX(0x57EEE8+36*3,SetTo,2,0xFF)])
	Trigger(conditions=[Deaths(P4,Exactly,0,"!Exist")],actions=[SetMemoryX(0x57EEE8+36*3,SetTo,0,0xFF)])
	Trigger(conditions=[Deaths(P5,Exactly,1,"!Exist")],actions=[SetMemoryX(0x57EEE8+36*4,SetTo,2,0xFF)])
	Trigger(conditions=[Deaths(P5,Exactly,0,"!Exist")],actions=[SetMemoryX(0x57EEE8+36*4,SetTo,0,0xFF)])
	Trigger(conditions=[Deaths(P6,Exactly,1,"!Exist")],actions=[SetMemoryX(0x57EEE8+36*5,SetTo,2,0xFF)])
	Trigger(conditions=[Deaths(P6,Exactly,0,"!Exist")],actions=[SetMemoryX(0x57EEE8+36*5,SetTo,0,0xFF)])
	Trigger(conditions=[Deaths(P7,Exactly,1,"!Exist")],actions=[SetMemoryX(0x57EEE8+36*6,SetTo,2,0xFF)])
	Trigger(conditions=[Deaths(P7,Exactly,0,"!Exist")],actions=[SetMemoryX(0x57EEE8+36*6,SetTo,0,0xFF)])
	Trigger(conditions=[Deaths(P8,Exactly,1,"!Exist")],actions=[SetMemoryX(0x57EEE8+36*7,SetTo,2,0xFF)])
	Trigger(conditions=[Deaths(P8,Exactly,0,"!Exist")],actions=[SetMemoryX(0x57EEE8+36*7,SetTo,0,0xFF)])

	# Camera
	Trigger(conditions=[Deaths(P1,Exactly,1,"!Exist"),Switch("Switch 73",Set)],actions=[SetCurrentPlayer(0),CenterView("1P")])
	Trigger(conditions=[Deaths(P2,Exactly,1,"!Exist"),Switch("Switch 74",Set)],actions=[SetCurrentPlayer(1),CenterView("2P")])
	Trigger(conditions=[Deaths(P3,Exactly,1,"!Exist"),Switch("Switch 75",Set)],actions=[SetCurrentPlayer(2),CenterView("3P")])
	Trigger(conditions=[Deaths(P4,Exactly,1,"!Exist"),Switch("Switch 76",Set)],actions=[SetCurrentPlayer(3),CenterView("4P")])
	Trigger(conditions=[Deaths(P5,Exactly,1,"!Exist"),Switch("Switch 77",Set)],actions=[SetCurrentPlayer(4),CenterView("5P")])
	Trigger(conditions=[Deaths(P6,Exactly,1,"!Exist"),Switch("Switch 78",Set)],actions=[SetCurrentPlayer(5),CenterView("6P")])
	Trigger(conditions=[Deaths(P7,Exactly,1,"!Exist"),Switch("Switch 79",Set)],actions=[SetCurrentPlayer(6),CenterView("7P")])
	Trigger(conditions=[Deaths(P8,Exactly,1,"!Exist"),Switch("Switch 80",Set)],actions=[SetCurrentPlayer(7),CenterView("8P")])

	# ObsMode

	PrevCp = EUDVariable()
	PrevCp << f_getcurpl()
	


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x596A60, Exactly, 256, 0x0000FF00),
			Memory(0x68C144, Exactly, 0),
			MemoryX(0x58FEC8, Exactly, 0, 0x00FF0000),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 1342373888, 0x70FF0000),
			SetMemory(0x6509B0, SetTo, 128),
			DisplayText("\x04<Obs Mode> : \x1E채팅→관전자에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 129),
			DisplayText("\x04<Obs Mode> : \x1E채팅→관전자에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 130),
			DisplayText("\x04<Obs Mode> : \x1E채팅→관전자에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 131),
			DisplayText("\x04<Obs Mode> : \x1E채팅→관전자에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 7),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1342177280, 0x70000000),
			Memory(0x68C144, AtLeast, 1),
		],
		actions = [
			SetMemory(0x68C144, SetTo, 5),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, AtLeast, 65536, 0x00FF0000),
		],
		actions = [
			SetMemoryX(0x58FEC8, Subtract, 65536, 0x00FF0000),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x596A64, Exactly, 16777216, 0xFF000000),
			Memory(0x68C144, Exactly, 0),
			MemoryX(0x58FEC8, Exactly, 0, 0x00FF0000),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 537067520, 0x70FF0000),
			SetMemory(0x6509B0, SetTo, 128),
			DisplayText("\x04<Obs Mode> : \x1D채팅→전체에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 129),
			DisplayText("\x04<Obs Mode> : \x1D채팅→전체에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 130),
			DisplayText("\x04<Obs Mode> : \x1D채팅→전체에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 131),
			DisplayText("\x04<Obs Mode> : \x1D채팅→전체에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 7),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 536870912, 0x70000000),
			Memory(0x68C144, AtLeast, 1),
		],
		actions = [
			SetMemory(0x68C144, SetTo, 2),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x596A68, Exactly, 1, 0x000000FF),
			Memory(0x68C144, Exactly, 0),
			MemoryX(0x58FEC8, Exactly, 117440512, 0x0FFF000F),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, -1073545216, 0xF0FF0000),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EEE4, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 1, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF08, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 16777218, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF2C, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 33554435, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF50, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 50331652, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF74, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 67108869, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF98, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 83886086, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EFBC, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 100663303, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EFE0, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 117440520, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x596A68, Exactly, 1, 0x000000FF),
			Memory(0x68C144, Exactly, 0),
			MemoryX(0x58FEC8, Exactly, 0, 0x0FFF000F),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, -1073545216, 0xF0FF0000),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF08, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 16777218, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF2C, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 33554435, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF50, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 50331652, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF74, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 67108869, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF98, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 83886086, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EFBC, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 100663303, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EFE0, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 117440520, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EEE4, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 1, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x596A68, Exactly, 1, 0x000000FF),
			Memory(0x68C144, Exactly, 0),
			MemoryX(0x58FEC8, Exactly, 16777216, 0x0FFF000F),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, -1073545216, 0xF0FF0000),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF2C, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 33554435, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF50, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 50331652, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF74, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 67108869, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF98, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 83886086, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EFBC, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 100663303, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EFE0, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 117440520, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EEE4, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 1, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF08, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 16777218, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x596A68, Exactly, 1, 0x000000FF),
			Memory(0x68C144, Exactly, 0),
			MemoryX(0x58FEC8, Exactly, 33554432, 0x0FFF000F),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, -1073545216, 0xF0FF0000),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF50, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 50331652, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF74, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 67108869, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF98, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 83886086, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EFBC, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 100663303, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EFE0, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 117440520, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EEE4, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 1, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF08, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 16777218, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF2C, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 33554435, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x596A68, Exactly, 1, 0x000000FF),
			Memory(0x68C144, Exactly, 0),
			MemoryX(0x58FEC8, Exactly, 50331648, 0x0FFF000F),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, -1073545216, 0xF0FF0000),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF74, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 67108869, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF98, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 83886086, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EFBC, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 100663303, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EFE0, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 117440520, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EEE4, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 1, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF08, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 16777218, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF2C, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 33554435, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF50, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 50331652, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x596A68, Exactly, 1, 0x000000FF),
			Memory(0x68C144, Exactly, 0),
			MemoryX(0x58FEC8, Exactly, 67108864, 0x0FFF000F),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, -1073545216, 0xF0FF0000),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF98, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 83886086, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EFBC, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 100663303, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EFE0, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 117440520, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EEE4, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 1, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF08, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 16777218, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF2C, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 33554435, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF50, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 50331652, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF74, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 67108869, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x596A68, Exactly, 1, 0x000000FF),
			Memory(0x68C144, Exactly, 0),
			MemoryX(0x58FEC8, Exactly, 83886080, 0x0FFF000F),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, -1073545216, 0xF0FF0000),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EFBC, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 100663303, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EFE0, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 117440520, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EEE4, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 1, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF08, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 16777218, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF2C, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 33554435, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF50, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 50331652, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF74, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 67108869, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF98, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 83886086, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x596A68, Exactly, 1, 0x000000FF),
			Memory(0x68C144, Exactly, 0),
			MemoryX(0x58FEC8, Exactly, 100663296, 0x0FFF000F),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, -1073545216, 0xF0FF0000),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EFE0, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 117440520, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EEE4, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 1, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF08, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 16777218, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF2C, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 33554435, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF50, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 50331652, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF74, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 67108869, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EF98, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 83886086, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, -2147483648, 0x80000000),
			Memory(0x57EFBC, AtMost, 15),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 100663303, 0x8F00000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741825, 0x4000000F),
		],
		actions = [
			SetMemory(0x6509B0, SetTo, 128),
			DisplayText("\x04<Obs Mode> : \x08채팅→빨강에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 129),
			DisplayText("\x04<Obs Mode> : \x08채팅→빨강에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 130),
			DisplayText("\x04<Obs Mode> : \x08채팅→빨강에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 131),
			DisplayText("\x04<Obs Mode> : \x08채팅→빨강에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 7),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741826, 0x4000000F),
		],
		actions = [
			SetMemory(0x6509B0, SetTo, 128),
			DisplayText("\x04<Obs Mode> : \x0E채팅→파랑에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 129),
			DisplayText("\x04<Obs Mode> : \x0E채팅→파랑에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 130),
			DisplayText("\x04<Obs Mode> : \x0E채팅→파랑에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 131),
			DisplayText("\x04<Obs Mode> : \x0E채팅→파랑에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 7),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741827, 0x4000000F),
		],
		actions = [
			SetMemory(0x6509B0, SetTo, 128),
			DisplayText("\x04<Obs Mode> : \x0F채팅→연두에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 129),
			DisplayText("\x04<Obs Mode> : \x0F채팅→연두에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 130),
			DisplayText("\x04<Obs Mode> : \x0F채팅→연두에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 131),
			DisplayText("\x04<Obs Mode> : \x0F채팅→연두에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 7),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741828, 0x4000000F),
		],
		actions = [
			SetMemory(0x6509B0, SetTo, 128),
			DisplayText("\x04<Obs Mode> : \x16채팅→흰색에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 129),
			DisplayText("\x04<Obs Mode> : \x16채팅→흰색에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 130),
			DisplayText("\x04<Obs Mode> : \x16채팅→흰색에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 131),
			DisplayText("\x04<Obs Mode> : \x16채팅→흰색에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 7),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741829, 0x4000000F),
		],
		actions = [
			SetMemory(0x6509B0, SetTo, 128),
			DisplayText("\x04<Obs Mode> : \x10채팅→보리에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 129),
			DisplayText("\x04<Obs Mode> : \x10채팅→보리에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 130),
			DisplayText("\x04<Obs Mode> : \x10채팅→보리에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 131),
			DisplayText("\x04<Obs Mode> : \x10채팅→보리에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 7),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741830, 0x4000000F),
		],
		actions = [
			SetMemory(0x6509B0, SetTo, 128),
			DisplayText("\x04<Obs Mode> : \x11채팅→주황에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 129),
			DisplayText("\x04<Obs Mode> : \x11채팅→주황에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 130),
			DisplayText("\x04<Obs Mode> : \x11채팅→주황에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 131),
			DisplayText("\x04<Obs Mode> : \x11채팅→주황에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 7),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741831, 0x4000000F),
		],
		actions = [
			SetMemory(0x6509B0, SetTo, 128),
			DisplayText("\x04<Obs Mode> : \x1D채팅→초록에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 129),
			DisplayText("\x04<Obs Mode> : \x1D채팅→초록에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 130),
			DisplayText("\x04<Obs Mode> : \x1D채팅→초록에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 131),
			DisplayText("\x04<Obs Mode> : \x1D채팅→초록에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 7),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741832, 0x4000000F),
		],
		actions = [
			SetMemory(0x6509B0, SetTo, 128),
			DisplayText("\x04<Obs Mode> : \x17채팅→노랑에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 129),
			DisplayText("\x04<Obs Mode> : \x17채팅→노랑에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 130),
			DisplayText("\x04<Obs Mode> : \x17채팅→노랑에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 131),
			DisplayText("\x04<Obs Mode> : \x17채팅→노랑에게 메세지를 보냅니다.", 4),
			PlayWAV("staredit\\wav\\Notice.wav"),
			SetMemory(0x6509B0, SetTo, 7),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741824, 0x7F000000),
			MemoryX(0x57EEE4, Exactly, 8, 0x00000008),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 8, 0x00000008),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741824, 0x7F000000),
			MemoryX(0x57EEE4, Exactly, 4, 0x00000004),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 4, 0x00000004),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741824, 0x7F000000),
			MemoryX(0x57EEE4, Exactly, 2, 0x00000002),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 2, 0x00000002),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741824, 0x7F000000),
			MemoryX(0x57EEE4, Exactly, 1, 0x00000001),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 1, 0x00000001),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1090519040, 0x7F000000),
			MemoryX(0x57EF08, Exactly, 8, 0x00000008),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 8, 0x00000008),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1090519040, 0x7F000000),
			MemoryX(0x57EF08, Exactly, 4, 0x00000004),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 4, 0x00000004),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1090519040, 0x7F000000),
			MemoryX(0x57EF08, Exactly, 2, 0x00000002),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 2, 0x00000002),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1090519040, 0x7F000000),
			MemoryX(0x57EF08, Exactly, 1, 0x00000001),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 1, 0x00000001),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1107296256, 0x7F000000),
			MemoryX(0x57EF2C, Exactly, 8, 0x00000008),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 8, 0x00000008),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1107296256, 0x7F000000),
			MemoryX(0x57EF2C, Exactly, 4, 0x00000004),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 4, 0x00000004),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1107296256, 0x7F000000),
			MemoryX(0x57EF2C, Exactly, 2, 0x00000002),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 2, 0x00000002),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1107296256, 0x7F000000),
			MemoryX(0x57EF2C, Exactly, 1, 0x00000001),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 1, 0x00000001),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1124073472, 0x7F000000),
			MemoryX(0x57EF50, Exactly, 8, 0x00000008),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 8, 0x00000008),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1124073472, 0x7F000000),
			MemoryX(0x57EF50, Exactly, 4, 0x00000004),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 4, 0x00000004),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1124073472, 0x7F000000),
			MemoryX(0x57EF50, Exactly, 2, 0x00000002),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 2, 0x00000002),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1124073472, 0x7F000000),
			MemoryX(0x57EF50, Exactly, 1, 0x00000001),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 1, 0x00000001),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1140850688, 0x7F000000),
			MemoryX(0x57EF74, Exactly, 8, 0x00000008),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 8, 0x00000008),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1140850688, 0x7F000000),
			MemoryX(0x57EF74, Exactly, 4, 0x00000004),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 4, 0x00000004),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1140850688, 0x7F000000),
			MemoryX(0x57EF74, Exactly, 2, 0x00000002),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 2, 0x00000002),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1140850688, 0x7F000000),
			MemoryX(0x57EF74, Exactly, 1, 0x00000001),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 1, 0x00000001),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1157627904, 0x7F000000),
			MemoryX(0x57EF98, Exactly, 8, 0x00000008),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 8, 0x00000008),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1157627904, 0x7F000000),
			MemoryX(0x57EF98, Exactly, 4, 0x00000004),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 4, 0x00000004),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1157627904, 0x7F000000),
			MemoryX(0x57EF98, Exactly, 2, 0x00000002),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 2, 0x00000002),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1157627904, 0x7F000000),
			MemoryX(0x57EF98, Exactly, 1, 0x00000001),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 1, 0x00000001),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1174405120, 0x7F000000),
			MemoryX(0x57EFBC, Exactly, 8, 0x00000008),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 8, 0x00000008),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1174405120, 0x7F000000),
			MemoryX(0x57EFBC, Exactly, 4, 0x00000004),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 4, 0x00000004),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1174405120, 0x7F000000),
			MemoryX(0x57EFBC, Exactly, 2, 0x00000002),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 2, 0x00000002),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1174405120, 0x7F000000),
			MemoryX(0x57EFBC, Exactly, 1, 0x00000001),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 1, 0x00000001),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1191182336, 0x7F000000),
			MemoryX(0x57EFE0, Exactly, 8, 0x00000008),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 8, 0x00000008),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1191182336, 0x7F000000),
			MemoryX(0x57EFE0, Exactly, 4, 0x00000004),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 4, 0x00000004),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1191182336, 0x7F000000),
			MemoryX(0x57EFE0, Exactly, 2, 0x00000002),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 2, 0x00000002),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1191182336, 0x7F000000),
			MemoryX(0x57EFE0, Exactly, 1, 0x00000001),
		],
		actions = [
			SetMemoryX(0x58FEC8, SetTo, 1, 0x00000001),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741824, 0x7000000F),
		],
		actions = [
			SetMemoryX(0x57F1D8, SetTo, 65536, 0xFFFF0000),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741825, 0x7000000F),
		],
		actions = [
			SetMemoryX(0x57F1D8, SetTo, 131072, 0xFFFF0000),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741826, 0x7000000F),
		],
		actions = [
			SetMemoryX(0x57F1D8, SetTo, 262144, 0xFFFF0000),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741827, 0x7000000F),
		],
		actions = [
			SetMemoryX(0x57F1D8, SetTo, 524288, 0xFFFF0000),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741828, 0x7000000F),
		],
		actions = [
			SetMemoryX(0x57F1D8, SetTo, 1048576, 0xFFFF0000),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741829, 0x7000000F),
		],
		actions = [
			SetMemoryX(0x57F1D8, SetTo, 2097152, 0xFFFF0000),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741830, 0x7000000F),
		],
		actions = [
			SetMemoryX(0x57F1D8, SetTo, 4194304, 0xFFFF0000),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741831, 0x7000000F),
		],
		actions = [
			SetMemoryX(0x57F1D8, SetTo, 8388608, 0xFFFF0000),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741832, 0x7000000F),
		],
		actions = [
			SetMemoryX(0x57F1D8, SetTo, 16777216, 0xFFFF0000),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741833, 0x7000000F),
		],
		actions = [
			SetMemoryX(0x57F1D8, SetTo, 33554432, 0xFFFF0000),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741834, 0x7000000F),
		],
		actions = [
			SetMemoryX(0x57F1D8, SetTo, 67108864, 0xFFFF0000),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741835, 0x7000000F),
		],
		actions = [
			SetMemoryX(0x57F1D8, SetTo, 134217728, 0xFFFF0000),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741836, 0x7000000F),
		],
		actions = [
			SetMemoryX(0x57F1D8, SetTo, 268435456, 0xFFFF0000),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741837, 0x7000000F),
		],
		actions = [
			SetMemoryX(0x57F1D8, SetTo, 536870912, 0xFFFF0000),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741838, 0x7000000F),
		],
		actions = [
			SetMemoryX(0x57F1D8, SetTo, 1073741824, 0xFFFF0000),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741839, 0x7000000F),
		],
		actions = [
			SetMemoryX(0x57F1D8, SetTo, -2147483648, 0xFFFF0000),
			SetMemoryX(0x58FEC8, SetTo, 0, 0x0000000F),
			PreserveTrigger(),
		],
	)


	RawTrigger(
		
		conditions = [
			Memory(0x512684, AtLeast, 128),
			Memory(0x512684, AtMost, 131),
			MemoryX(0x58FEC8, Exactly, 1073741824, 0x70000000),
			Memory(0x68C144, AtLeast, 1),
		],
		actions = [
			SetMemory(0x68C144, SetTo, 4),
			PreserveTrigger(),
		],
	)
	f_setcurpl(PrevCp)
