// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


// **************************************************

instance BAU_202_Joffrey_Exit (C_INFO)
{
	npc			= BAU_202_Joffrey;
	condition		= BAU_202_Joffrey_Exit_Condition;
	information		= BAU_202_Joffrey_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int BAU_202_Joffrey_Exit_Condition()
{
	return TRUE;
};

func void BAU_202_Joffrey_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance BAU_202_Joffrey_getLost (C_INFO)
{
	npc			= BAU_202_Joffrey;
	condition		= BAU_202_Joffrey_getLost_Condition;
	information		= BAU_202_Joffrey_getLost_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int BAU_202_Joffrey_getLost_Condition()
{
	return TRUE;
};

func void BAU_202_Joffrey_getLost_Info()
{
	AI_Output(self, other, "BAU_202_Joffrey_getLost_Info_06_01"); // Hey! Pass doch auf wo du langlatschst.
	AI_Output(self, other, "BAU_202_Joffrey_getLost_Info_06_02"); // Du zertrampelst das ganze Gras und den Klee.
};

// **************************************************

instance BAU_202_Joffrey_youreDumb (C_INFO)
{
	npc			= BAU_202_Joffrey;
	condition		= BAU_202_Joffrey_youreDumb_Condition;
	information		= BAU_202_Joffrey_youreDumb_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Du bist ja ein ganz Gro�er...";
};

func int BAU_202_Joffrey_youreDumb_Condition()
{
	if (Npc_KnowsInfo(hero, BAU_202_Joffrey_getLost))
	{
		return TRUE;
	};
};

func void BAU_202_Joffrey_youreDumb_Info()
{
	AI_Output(other, self, "BAU_202_Joffrey_youreDumb_Info_15_01"); // Du bist ja ein ganz Gro�er...
	AI_Output(self, other, "BAU_202_Joffrey_youreDumb_Info_06_02"); // Machst du dich �ber mich lustig?
	AI_Output(self, other, "BAU_202_Joffrey_youreDumb_Info_06_03"); // Ich bin der Sohn eines gro�en Bauern..!
	AI_Output(other, self, "BAU_202_Joffrey_youreDumb_Info_15_04"); // Wenn du w�sstest, was das bedeutet, wo ich herkomme...
	AI_Output(self, other, "BAU_202_Joffrey_youreDumb_Info_06_05"); // Was meinst du?
	AI_Output(other, self, "BAU_202_Joffrey_youreDumb_Info_15_06"); // Ach nichts, schon gut...
};

// **************************************************

instance BAU_202_Joffrey_yourSheep (C_INFO)
{
	npc			= BAU_202_Joffrey;
	condition		= BAU_202_Joffrey_yourSheep_Condition;
	information		= BAU_202_Joffrey_yourSheep_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Werden deine Schafe von W�lfen gerissen?";
};

func int BAU_202_Joffrey_yourSheep_Condition()
{
	if (Npc_KnowsInfo(hero, BAU_202_Joffrey_getLost))
	{
		return TRUE;
	};
};

func void BAU_202_Joffrey_yourSheep_Info()
{
	AI_Output(other, self, "BAU_202_Joffrey_yourSheep_Info_15_01"); // Werden deine Schafe von W�lfen gerissen?
	AI_Output(self, other, "BAU_202_Joffrey_yourSheep_Info_06_02"); // Ja, seit einigen Tagen fehlt morgens immer mal wieder ein Schaf.
	AI_Output(self, other, "BAU_202_Joffrey_yourSheep_Info_06_03"); // Mein Vater ist gar nicht begeistert...
	AI_Output(other, self, "BAU_202_Joffrey_yourSheep_Info_15_04"); // Rodar ist dein Vater?
	AI_Output(self, other, "BAU_202_Joffrey_yourSheep_Info_06_05"); // Wundert dich das?
	AI_Output(other, self, "BAU_202_Joffrey_yourSheep_Info_15_06"); // Mich wundert nur, dass du dann die Schafe bewachst.
	if (Npc_KnowsInfo(hero, BAU_202_Joffrey_youreDumb))
	{
		AI_Output(other, self, "BAU_202_Joffrey_yourSheep_Info_15_07"); // Der Sohn des Gro�en Bauern scheint ja selber kein Gro�er Wurf zu sein...
		AI_Output(self, other, "BAU_202_Joffrey_yourSheep_Info_06_08"); // Pass auf, was du von dir gibst, sonst...
		AI_Output(other, self, "BAU_202_Joffrey_yourSheep_Info_15_09"); // Sagst du es deinem Vater?
		AI_Output(self, other, "BAU_202_Joffrey_yourSheep_Info_06_10"); // Ich....
		AI_Output(other, self, "BAU_202_Joffrey_yourSheep_Info_15_11"); // Vergessen wirs!
	};
};

// **************************************************

instance BAU_202_Joffrey_knowAny (C_INFO)
{
	npc			= BAU_202_Joffrey;
	condition		= BAU_202_Joffrey_knowAny_Condition;
	information		= BAU_202_Joffrey_knowAny_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Hast du eine Idee, wo die W�lfe herkommen?";
};

func int BAU_202_Joffrey_knowAny_Condition()
{
	if (Npc_KnowsInfo(hero, BAU_202_Joffrey_yourSheep))
	{
		return TRUE;
	};
};

func void BAU_202_Joffrey_knowAny_Info()
{
	AI_Output(other, self, "BAU_202_Joffrey_knowAny_Info_15_01"); // Hast du eine Idee, wo die W�lfe herkommen?
	AI_Output(self, other, "BAU_202_Joffrey_knowAny_Info_06_02"); // Ich habe sie noch nicht gesehen, aber ich glaube manchmal ein Heulen zu h�ren.
	AI_Output(self, other, "BAU_202_Joffrey_knowAny_Info_06_03"); // Es kommt von den Felsw�nden dort hinten!
	AI_Output(other, self, "BAU_202_Joffrey_knowAny_Info_15_04"); // Dann werde ich dort wohl mal nachsehen m�ssen.
	B_LogEntry(TOPIC_pestControl, "Joffrey, der gro�e Bauer, sagte, er h�re immer wieder ein Heulen von den Felsw�nden zu ihm schallen. Vielleicht finde ich dort die gesuchen W�lfe. Oder es ist sein eigenes...");
};

// **************************************************

instance BAU_202_Joffrey_wolfDead (C_INFO)
{
	npc			= BAU_202_Joffrey;
	condition		= BAU_202_Joffrey_wolfDead_Condition;
	information		= BAU_202_Joffrey_wolfDead_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Die W�lfe sind tot.";
};

func int BAU_202_Joffrey_wolfDead_Condition()
{
	if ((Npc_KnowsInfo(hero, BAU_202_Joffrey_yourSheep)) && (NPC_IsDead(HofWolf1) == TRUE) && (Npc_IsDead(HofWolf2) == TRUE) && (Npc_IsDead(HofWolf3) == TRUE))
	{
		return TRUE;
	};
};

func void BAU_202_Joffrey_wolfDead_Info()
{
	AI_Output(other, self, "BAU_202_Joffrey_wolfDead_Info_15_01"); // Die W�lfe sind tot.
	AI_Output(self, other, "BAU_202_Joffrey_wolfDead_Info_06_02"); // Du meinst, du hast die Monster beseitigt?
	AI_Output(other, self, "BAU_202_Joffrey_wolfDead_Info_15_03"); // Monster? Es waren zwei junge Tiere dabei.
	AI_Output(other, self, "BAU_202_Joffrey_wolfDead_Info_15_04"); // Wahrscheinlich hatten sie alle nur Hunger.
	AI_Output(other, self, "BAU_202_Joffrey_wolfDead_Info_15_05"); // Ich meine, was w�rdest du tun, wenn dir deine Nahrung weggenommen wird?
	AI_Output(self, other, "BAU_202_Joffrey_wolfDead_Info_06_06"); // (�berzeugt) Ich w�rde sie mir zur�ckholen!
	AI_Output(other, self, "BAU_202_Joffrey_wolfDead_Info_15_07"); // Na, hoffen wir, dass es niemals dazu kommt.
	B_GivePlayerXP(100);
};
