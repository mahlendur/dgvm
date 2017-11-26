// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!


// **************************************************

instance MIL_2106_Thalar_Exit (C_INFO)
{
	npc			= MIL_2106_Thalar;
	condition		= MIL_2106_Thalar_Exit_Condition;
	information		= MIL_2106_Thalar_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int MIL_2106_Thalar_Exit_Condition()
{
	return TRUE;
};

func void MIL_2106_Thalar_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance MIL_2106_Thalar_youTrain (C_INFO)
{
	npc			= MIL_2106_Thalar;
	condition		= MIL_2106_Thalar_youTrain_Condition;
	information		= MIL_2106_Thalar_youTrain_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Trainierst du die Stadtwache?";
};

func int MIL_2106_Thalar_youTrain_Condition()
{
	return TRUE;
};

func void MIL_2106_Thalar_youTrain_Info()
{
	AI_Output(other, self, "MIL_2106_Thalar_youTrain_Info_15_01"); // Trainierst du die Stadtwache?
	AI_Output(self, other, "MIL_2106_Thalar_youTrain_Info_01_02"); // Sieht so aus, nicht?
	AI_Output(self, other, "MIL_2106_Thalar_youTrain_Info_01_03"); // Was kann ich für dich tun?
};

// **************************************************

instance MIL_2106_Thalar_trainMe (C_INFO)
{
	npc			= MIL_2106_Thalar;
	condition		= MIL_2106_Thalar_trainMe_Condition;
	information		= MIL_2106_Thalar_trainMe_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kannst du mir etwas beibringen?";
};

func int MIL_2106_Thalar_trainMe_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2106_Thalar_youTrain))
	{
		return TRUE;
	};
};

func void MIL_2106_Thalar_trainMe_Info()
{
	AI_Output(other, self, "MIL_2106_Thalar_trainMe_Info_15_01"); // Kannst du mir etwas beibringen?
	AI_Output(self, other, "MIL_2106_Thalar_trainMe_Info_01_02"); // Wie du schon selbst erkannt hast, trainiere ich die Stadtwache.
	AI_Output(self, other, "MIL_2106_Thalar_trainMe_Info_01_03"); // Solange du kein Mitglied bist, werde ich dir nichts beibringen.
	AI_Output(self, other, "MIL_2106_Thalar_trainMe_Info_01_04"); // Danach kannst du bei mir deine Fähigkeiten im Einhand und Zweihandkampf verbessern.
};

// **************************************************

instance MIL_2106_Thalar_tellRosie (C_INFO)
{
	npc			= MIL_2106_Thalar;
	condition		= MIL_2106_Thalar_tellRosie_Condition;
	information		= MIL_2106_Thalar_tellRosie_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Eine Rose für Epona!";
};

func int MIL_2106_Thalar_tellRosie_Condition()
{
	if (MIS_newInfos == LOG_RUNNING)
	{
		return TRUE;
	};
};

func void MIL_2106_Thalar_tellRosie_Info()
{
	AI_Output(other, self, "MIL_2106_Thalar_tellRosie_Info_15_01"); // Eine Rose für Epona!
	AI_Output(self, other, "MIL_2106_Thalar_tellRosie_Info_01_02"); // Oho, gibt es ein neues Mädchen in der 'Roten Laterne'?
	AI_Output(self, other, "MIL_2106_Thalar_tellRosie_Info_01_03"); // Ich glaub, ich muss dem Laden mal wieder einen Besuch abstatten (lacht)
	AI_Output(self, other, "MIL_2106_Thalar_tellRosie_Info_01_04"); // Danke für die Info!
	roseCounter += 1;
};
