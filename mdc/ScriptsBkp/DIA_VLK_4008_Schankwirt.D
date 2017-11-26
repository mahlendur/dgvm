// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


// **************************************************

instance VLK_4008_Schankwirt_Exit (C_INFO)
{
	npc			= VLK_4008_Schankwirt;
	condition		= VLK_4008_Schankwirt_Exit_Condition;
	information		= VLK_4008_Schankwirt_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int VLK_4008_Schankwirt_Exit_Condition()
{
	return TRUE;
};

func void VLK_4008_Schankwirt_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance VLK_4008_Schankwirt_start (C_INFO)
{
	npc			= VLK_4008_Schankwirt;
	condition		= VLK_4008_Schankwirt_start_Condition;
	information		= VLK_4008_Schankwirt_start_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int VLK_4008_Schankwirt_start_Condition()
{
	if (Npc_IsInState(self, ZS_TALK))
	{
		return TRUE;
	};
};

func void VLK_4008_Schankwirt_start_Info()
{
	AI_Output(other, self, "VLK_4008_Schankwirt_start_Info_15_01"); // Hey, du! Du siehst durstig aus.
	AI_Output(other, self, "VLK_4008_Schankwirt_start_Info_15_02"); // Komm zu uns und trink dir ein Bier. Geht aufs Haus!
	B_GiveInvItems(other, self, ItFo_Beer,  1);
};

// **************************************************

instance VLK_4008_Schankwirt_fromWhere (C_INFO)
{
	npc			= VLK_4008_Schankwirt;
	condition		= VLK_4008_Schankwirt_fromWhere_Condition;
	information		= VLK_4008_Schankwirt_fromWhere_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Woher bekommst du dein Bier?";
};

func int VLK_4008_Schankwirt_fromWhere_Condition()
{
	return TRUE;
};

func void VLK_4008_Schankwirt_fromWhere_Info()
{
	AI_Output(other, self, "VLK_4008_Schankwirt_fromWhere_Info_15_01"); // Woher bekommst du dein Bier?
	AI_Output(self, other, "VLK_4008_Schankwirt_fromWhere_Info_04_02"); // Och, einige der Handwerker zahlen mir regelmäßig Gold. Sie wollen nach der Arbeit was trinken und der Wirt am Tempel soll sehr unfreundlich sein.
	AI_Output(self, other, "VLK_4008_Schankwirt_fromWhere_Info_04_03"); // Dann geben die Stadtwache und die Paladine immer wieder Gold. Für sich selbst, aber vor allem für die Reisenden.
};

// **************************************************

instance VLK_4008_Schankwirt_couldSend (C_INFO)
{
	npc			= VLK_4008_Schankwirt;
	condition		= VLK_4008_Schankwirt_couldSend_Condition;
	information		= VLK_4008_Schankwirt_couldSend_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Könntest du auch Bier liefern?";
};

func int VLK_4008_Schankwirt_couldSend_Condition()
{
	if (MIS_getGoodsPirates == LOG_RUNNING)
	{
		return TRUE;
	};
};

func void VLK_4008_Schankwirt_couldSend_Info()
{
	AI_Output(other, self, "VLK_4008_Schankwirt_couldSend_Info_15_01"); // Könntest du auch Bier liefern?
	AI_Output(self, other, "VLK_4008_Schankwirt_couldSend_Info_04_02"); // Liefern? Wo soll's denn hingehen?
	AI_Output(other, self, "VLK_4008_Schankwirt_couldSend_Info_15_03"); // Wir haben da eine Höhle, hier direkt neben der Stadt.
	AI_Output(self, other, "VLK_4008_Schankwirt_couldSend_Info_04_04"); // Wir? Wer ist denn wir?
	AI_Output(other, self, "VLK_4008_Schankwirt_couldSend_Info_15_05"); // Wir sind...
	AI_Output(other, self, "VLK_4008_Schankwirt_couldSend_Info_15_06"); // ... naja...
	AI_Output(other, self, "VLK_4008_Schankwirt_couldSend_Info_15_07"); // ... sagen wir...
	AI_Output(other, self, "VLK_4008_Schankwirt_couldSend_Info_15_08"); // ... eine freie Gruppe Abenteurer.
	AI_Output(self, other, "VLK_4008_Schankwirt_couldSend_Info_04_09"); // (lächelt) Soso. Weißt du, eigentlich ist mir das auch egal.
	AI_Output(self, other, "VLK_4008_Schankwirt_couldSend_Info_04_10"); // Wenn ich da 50 Goldstücke finde, dann liefer ich die das Bier.
	AI_Output(self, other, "VLK_4008_Schankwirt_couldSend_Info_04_11"); // Wieviel brauchst du denn?
	AI_Output(other, self, "VLK_4008_Schankwirt_couldSend_Info_15_12"); // Genug für zwanzig Leute.
	AI_Output(self, other, "VLK_4008_Schankwirt_couldSend_Info_04_13"); // Zwanzig? Okay, das ist auch machbar, aber das wird teurer.
	AI_Output(other, self, "VLK_4008_Schankwirt_couldSend_Info_15_14"); // Wieviel?
	AI_Output(self, other, "VLK_4008_Schankwirt_couldSend_Info_04_15"); // 125 Goldstücke. Dann ist alles geritzt.
	B_LogEntry(TOPIC_getGoodsPirates, "Wir bekommen Bier aus der Stadt geliefert. 125 Goldstücke im Tausch für ein paar Fässer, das klingt fair.");
};
