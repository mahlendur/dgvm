// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


// **************************************************

instance BAU_241_Zaphina_Exit (C_INFO)
{
	npc			= BAU_241_Zaphina;
	condition		= BAU_241_Zaphina_Exit_Condition;
	information		= BAU_241_Zaphina_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int BAU_241_Zaphina_Exit_Condition()
{
	return TRUE;
};

func void BAU_241_Zaphina_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance BAU_241_Zaphina_whatYouDoing (C_INFO)
{
	npc			= BAU_241_Zaphina;
	condition		= BAU_241_Zaphina_whatYouDoing_Condition;
	information		= BAU_241_Zaphina_whatYouDoing_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was machst du hier?";
};

func int BAU_241_Zaphina_whatYouDoing_Condition()
{
	if (((Wld_IsTime(04,00,06,30) || Wld_IsTime(19,00,22,30))))
	{
		return TRUE;
	};
};

func void BAU_241_Zaphina_whatYouDoing_Info()
{
	AI_Output(other, self, "BAU_241_Zaphina_whatYouDoing_Info_15_01"); // Was machst du hier?
	AI_Output(self, other, "BAU_241_Zaphina_whatYouDoing_Info_17_02"); // Wonach siehts denn aus?
	AI_Output(self, other, "BAU_241_Zaphina_whatYouDoing_Info_17_03"); // Ich trainiere meinen Schwertarm!
	AI_Output(self, other, "BAU_241_Zaphina_whatYouDoing_Info_17_04"); // Vielleicht komme ich irgendwann aus diesem Loch hier raus und kann richtig kämpfen...
	AI_StopProcessInfos(self);
};

// **************************************************

instance BAU_241_Zaphina_notNow (C_INFO)
{
	npc			= BAU_241_Zaphina;
	condition		= BAU_241_Zaphina_notNow_Condition;
	information		= BAU_241_Zaphina_notNow_Info;
	important		= TRUE;
	permanent		= TRUE;
};

func int BAU_241_Zaphina_notNow_Condition()
{
	if ((Wld_IsTime(06,30,19,00)) && (Npc_IsInState(self, ZS_TALK)) && (Npc_GetTrueGuild(self) == GIL_BAU))
	{
		return TRUE;
	};
};

func void BAU_241_Zaphina_notNow_Info()
{
	AI_Output(self, other, "BAU_241_Zaphina_notNow_Info_17_01"); // Nicht jetzt! Siehst du nicht, dass ich arbeiten muss?
	AI_StopProcessInfos(self);
};

// **************************************************

instance BAU_241_Zaphina_mustRest (C_INFO)
{
	npc			= BAU_241_Zaphina;
	condition		= BAU_241_Zaphina_mustRest_Condition;
	information		= BAU_241_Zaphina_mustRest_Info;
	important		= TRUE;
	permanent		= TRUE;
};

func int BAU_241_Zaphina_mustRest_Condition()
{
	if ((Wld_IsTime(22,30,04,00)) && (Npc_IsInState(self, ZS_TALK)) && (Npc_GetTrueGuild(self) == GIL_BAU))
	{
		return TRUE;
	};
};

func void BAU_241_Zaphina_mustRest_Info()
{
	AI_Output(self, other, "BAU_241_Zaphina_mustRest_Info_17_01"); // Ich muss mich ausruhen... Das war ein anstrengender Tag.
	AI_StopProcessInfos(self);
};

// **************************************************

instance BAU_241_Zaphina_wannaJoinPirates (C_INFO)
{
	npc			= BAU_241_Zaphina;
	condition		= BAU_241_Zaphina_wannaJoinPirates_Condition;
	information		= BAU_241_Zaphina_wannaJoinPirates_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Suchst du immer noch eine Möglichkeit zu kämpfen?";
};

func int BAU_241_Zaphina_wannaJoinPirates_Condition()
{
	if (MIS_newPirates == LOG_RUNNING)
	{
		return TRUE;
	};
};

func void BAU_241_Zaphina_wannaJoinPirates_Info()
{
	AI_Output(other, self, "BAU_241_Zaphina_wannaJoinPirates_Info_15_01"); // Suchst du immer noch eine Möglichkeit zu kämpfen?
	AI_Output(self, other, "BAU_241_Zaphina_wannaJoinPirates_Info_17_02"); // Willst du mich verarschen?
	AI_Output(self, other, "BAU_241_Zaphina_wannaJoinPirates_Info_17_03"); // Natürlich suche ich danach. Solange es mich hier rausbringt...
	AI_Output(other, self, "BAU_241_Zaphina_wannaJoinPirates_Info_15_04"); // Wie stehst du zu nicht ganz legalen Geschäften...?
	AI_Output(self, other, "BAU_241_Zaphina_wannaJoinPirates_Info_17_05"); // Wie, nicht ganz legal?
};

// **************************************************

instance BAU_241_Zaphina_joinPirates (C_INFO)
{
	npc			= BAU_241_Zaphina;
	condition		= BAU_241_Zaphina_joinPirates_Condition;
	information		= BAU_241_Zaphina_joinPirates_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich hätte einen neuen Job für dich. (Für die Piraten anwerben)";
};

func int BAU_241_Zaphina_joinPirates_Condition()
{
	if (Npc_KnowsInfo(hero, BAU_241_Zaphina_wannaJoinPirates))
	{
		return TRUE;
	};
};

func void BAU_241_Zaphina_joinPirates_Info()
{
	AI_Output(other, self, "BAU_241_Zaphina_joinPirates_Info_15_01"); // Ich hätte einen neuen Job für dich.
	AI_Output(self, other, "BAU_241_Zaphina_joinPirates_Info_17_02"); // Jetzt rück schon raus!
	AI_Output(other, self, "BAU_241_Zaphina_joinPirates_Info_15_03"); // Du hast doch bestimmt davon gehört, dass Piraten auf der Insel sind.
	AI_Output(self, other, "BAU_241_Zaphina_joinPirates_Info_17_04"); // Sicher. Es war ja schwer das nicht mitzubekommen.
	AI_Output(other, self, "BAU_241_Zaphina_joinPirates_Info_15_05"); // Weißt du, wir suchen neue Leute, die kämpfen können.
	AI_Output(self, other, "BAU_241_Zaphina_joinPirates_Info_17_06"); // Ich bei den Piraten? Und du meinst, ich werde nicht nur zum Kochen degradiert?
	AI_Output(other, self, "BAU_241_Zaphina_joinPirates_Info_15_07"); // Wenn Henry das versucht, mach ihm klar, dass du mehr kannst.
	AI_Output(other, self, "BAU_241_Zaphina_joinPirates_Info_15_08"); // Und zur Not... Sag ihm, dass ICH ihm das klar mache.
	AI_Output(self, other, "BAU_241_Zaphina_joinPirates_Info_17_09"); // Also schön.. Ich bei den Piraten.
	AI_Output(self, other, "BAU_241_Zaphina_joinPirates_Info_17_10"); // Hätte ich nie gedacht. Aber alle mal besser als dieser dämliche Bauernhof hier.
	AI_Output(self, other, "BAU_241_Zaphina_joinPirates_Info_17_11"); // Also, wo soll ich hin?
	AI_Output(other, self, "BAU_241_Zaphina_joinPirates_Info_15_12"); // Geh zum Leuchtturm in der Nähe der Stadt. Gilbert steht wahrscheinlich am Tor.
	AI_Output(other, self, "BAU_241_Zaphina_joinPirates_Info_15_13"); // Sag ihm, ich hätte dich geschickt. Dann wird er dir alles erklären und dich reinlassen.
	B_LogEntry(TOPIC_newPirates, "Ich habe Zaphina auf einem der Bauernhöfe getroffen. Sie wird sich uns anschließen.");
	B_GivePlayerXP(350);
};
