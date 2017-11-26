// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!


// **************************************************

instance SLD_703_Orf_Exit (C_INFO)
{
	npc			= SLD_703_Orf;
	condition		= SLD_703_Orf_Exit_Condition;
	information		= SLD_703_Orf_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int SLD_703_Orf_Exit_Condition()
{
	return TRUE;
};

func void SLD_703_Orf_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance SLD_703_Orf_youSmith (C_INFO)
{
	npc			= SLD_703_Orf;
	condition		= SLD_703_Orf_youSmith_Condition;
	information		= SLD_703_Orf_youSmith_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Bist du der Schmied?";
};

func int SLD_703_Orf_youSmith_Condition()
{
	return TRUE;
};

func void SLD_703_Orf_youSmith_Info()
{
	AI_Output(other, self, "SLD_703_Orf_youSmith_Info_15_01"); // Bist du der Schmied?
	AI_Output(self, other, "SLD_703_Orf_youSmith_Info_05_02"); // Sieht so aus. Oder meinst du nicht?
	AI_Output(other, self, "SLD_703_Orf_youSmith_Info_15_03"); // Doch, irgendwie schon.
	AI_Output(self, other, "SLD_703_Orf_youSmith_Info_05_04"); // Na also. Was soll dann die blöde Frage?
};

// **************************************************

instance SLD_703_Orf_youTrade (C_INFO)
{
	npc			= SLD_703_Orf;
	condition		= SLD_703_Orf_youTrade_Condition;
	information		= SLD_703_Orf_youTrade_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Verkaufst du auch Waffen?";
};

func int SLD_703_Orf_youTrade_Condition()
{
	if (Npc_KnowsInfo(hero, SLD_703_Orf_youSmith))
	{
		return TRUE;
	};
};

func void SLD_703_Orf_youTrade_Info()
{
	AI_Output(other, self, "SLD_703_Orf_youTrade_Info_15_01"); // Verkaufst du auch Waffen?
	AI_Output(self, other, "SLD_703_Orf_youTrade_Info_05_02"); // Die Frage ist schon intelligenter.
	AI_Output(self, other, "SLD_703_Orf_youTrade_Info_05_03"); // Ja, tue ich. Aber nur an Söldner.
	AI_Output(self, other, "SLD_703_Orf_youTrade_Info_05_04"); // Also, werde Mitglied bei uns und dann kommen wir ins Geschäft!
};

// **************************************************

instance SLD_703_Orf_yourHint (C_INFO)
{
	npc			= SLD_703_Orf;
	condition		= SLD_703_Orf_yourHint_Condition;
	information		= SLD_703_Orf_yourHint_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Hast du einen Hinweis auf euren Informanten?";
};

func int SLD_703_Orf_yourHint_Condition()
{
	if ((Npc_KnowsInfo(hero, SLD_703_Orf_youSmith)) && (MIS_newInfos == LOG_RUNNING))
	{
		return TRUE;
	};
};

func void SLD_703_Orf_yourHint_Info()
{
	AI_Output(other, self, "SLD_703_Orf_yourHint_Info_15_01"); // Hast du einen Hinweis auf euren Informanten?
	AI_Output(self, other, "SLD_703_Orf_yourHint_Info_05_02"); // Jareck schickt dich, hm?
	AI_Output(other, self, "SLD_703_Orf_yourHint_Info_15_03"); // Genau. Kannst du mir etwas sagen?
	AI_Output(self, other, "SLD_703_Orf_yourHint_Info_05_04"); // Hmm, wie drücke ich das aus?
	AI_Output(self, other, "SLD_703_Orf_yourHint_Info_05_05"); // Ahja, hör zu: Der Informant hat viele Waffen in der Hand, benutzt seine aber nur sehr selten.
	var int s; s = SB_New();
	hintcounter += 1;
	SB("Hinweise: ");
	SBi(hintCounter);
	SB("/4");
	AI_PrintS(self, SB_ToString());
	SB_Destroy();
	B_LogEntry(TOPIC_newInfos, "Orf gab mir den Hinweis, dass der Informant viele Waffen in der Hand habe, seine eigene aber nur selten benutze.");
	AI_Output(other, self, "SLD_703_Orf_yourHint_Info_15_06"); // Was zum...
	AI_Output(self, other, "SLD_703_Orf_yourHint_Info_05_07"); // Tja, niemand hat gesagt, dass deine Prüfung einfach wird.
	AI_Output(self, other, "SLD_703_Orf_yourHint_Info_05_08"); // Jareck sagte schon, er wolle mal wieder jemanden mit Grips haben.
	AI_Output(self, other, "SLD_703_Orf_yourHint_Info_05_09"); // Mal schauen, ob du ins Profil passt.
	AI_Output(self, other, "SLD_703_Orf_yourHint_Info_05_10"); // Also, mach dich auf den Weg und hol uns die Infos!
};
