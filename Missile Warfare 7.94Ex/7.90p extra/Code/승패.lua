function SUBSUB_Victory()

    Trigger { -- 2팀 승리
	players = {P0},
	conditions = {
		ElapsedTime(AtLeast,3);
		Bring(Force1, Exactly, 0, "Factories", "전체필드");
		Command(Force1, Exactly, 0, "사은품");
		Void(1,Exactly,0);
	},
	actions = {
		SetCp(0);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16아군의 생존 점수가 부족합니다.\r\n\r\n\x08패배.", 4);
		Defeat();
		SetCp(1);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16아군의 생존 점수가 부족합니다.\r\n\r\n\x08패배.", 4);
		Defeat();
		SetCp(2);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16아군의 생존 점수가 부족합니다.\r\n\r\n\x08패배.", 4);
		Defeat();
		SetCp(3);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16아군의 생존 점수가 부족합니다.\r\n\r\n\x08패배.", 4);
		Defeat();
		SetCp(4);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16적군의 생존 점수가 부족합니다.\r\n\r\n\x0F승리.", 4);
		Victory();
		SetCp(5);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16적군의 생존 점수가 부족합니다.\r\n\r\n\x0F승리.", 4);
		Victory();
		SetCp(6);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16적군의 생존 점수가 부족합니다.\r\n\r\n\x0F승리.", 4);
		Victory();
		SetCp(7);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16적군의 생존 점수가 부족합니다.\r\n\r\n\x0F승리.", 4);
		Victory();
		SetCp(0);
	},
}

Trigger { -- 1팀 승리
	players = {P0},
	conditions = {
		ElapsedTime(AtLeast,3);
		Bring(Force2, Exactly, 0, "Factories", "전체필드");
		Command(Force2, Exactly, 0, "사은품");
		Void(2,Exactly,0);
	},
	actions = {
		SetCp(4);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16아군의 생존 점수가 부족합니다.\r\n\r\n\x08패배.", 4);
		Defeat();
		SetCp(5);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16아군의 생존 점수가 부족합니다.\r\n\r\n\x08패배.", 4);
		Defeat();
		SetCp(6);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16아군의 생존 점수가 부족합니다.\r\n\r\n\x08패배.", 4);
		Defeat();
		SetCp(7);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16아군의 생존 점수가 부족합니다.\r\n\r\n\x08패배.", 4);
		Defeat();
		SetCp(0);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16적군의 생존 점수가 부족합니다.\r\n\r\n\x0F승리.", 4);
		Victory();
		SetCp(1);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16적군의 생존 점수가 부족합니다.\r\n\r\n\x0F승리.", 4);
		Victory();
		SetCp(2);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16적군의 생존 점수가 부족합니다.\r\n\r\n\x0F승리.", 4);
		Victory();
		SetCp(3);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16적군의 생존 점수가 부족합니다.\r\n\r\n\x0F승리.", 4);
		Victory();
		SetCp(0);
	},
}

Trigger { -- 2팀 승리
	players = {P0},
	conditions = {
		ElapsedTime(AtLeast,3);
		Bring(Force1, Exactly, 0, "Factories", "전체필드");
		Command(Force1, Exactly, 0, "사은품");
		Void(1,AtLeast,1);
	},
	actions = {
		SetCp(0);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16아군이 전멸하였습니다.\r\n\r\n\x08패배.", 4);
		Defeat();
		SetCp(1);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16아군이 전멸하였습니다.\r\n\r\n\x08패배.", 4);
		Defeat();
		SetCp(2);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16아군이 전멸하였습니다.\r\n\r\n\x08패배.", 4);
		Defeat();
		SetCp(3);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16아군이 전멸하였습니다.\r\n\r\n\x08패배.", 4);
		Defeat();
		SetCp(4);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16적군이 전멸하였습니다.\r\n\r\n\x0F승리.", 4);
		Victory();
		SetCp(5);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16적군이 전멸하였습니다.\r\n\r\n\x0F승리.", 4);
		Victory();
		SetCp(6);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16적군이 전멸하였습니다.\r\n\r\n\x0F승리.", 4);
		Victory();
		SetCp(7);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16적군이 전멸하였습니다.\r\n\r\n\x0F승리.", 4);
		Victory();
		SetCp(0);
	},
}

Trigger { -- 1팀 승리
	players = {P0},
	conditions = {
		ElapsedTime(AtLeast,3);
		Bring(Force2, Exactly, 0, "Factories", "전체필드");
		Command(Force2, Exactly, 0, "사은품");
		Void(2,AtLeast,1);
	},
	actions = {
		SetCp(4);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16아군이 전멸하였습니다.\r\n\r\n\x08패배.", 4);
		Defeat();
		SetCp(5);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16아군이 전멸하였습니다.\r\n\r\n\x08패배.", 4);
		Defeat();
		SetCp(6);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16아군이 전멸하였습니다.\r\n\r\n\x08패배.", 4);
		Defeat();
		SetCp(7);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16아군이 전멸하였습니다.\r\n\r\n\x08패배.", 4);
		Defeat();
		SetCp(0);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16적군이 전멸하였습니다.\r\n\r\n\x0F승리.", 4);
		Victory();
		SetCp(1);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16적군이 전멸하였습니다.\r\n\r\n\x0F승리.", 4);
		Victory();
		SetCp(2);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16적군이 전멸하였습니다.\r\n\r\n\x0F승리.", 4);
		Victory();
		SetCp(3);
		PlayWAV("staredit\\wav\\Notice.wav");
		DisplayText("\x16적군이 전멸하였습니다.\r\n\r\n\x0F승리.", 4);
		Victory();
		SetCp(0);
	},
}

end