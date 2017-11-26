// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!


// **************************************************

instance VLK_3006_Tom_Exit (C_INFO)
{
	npc			= VLK_3006_Tom;
	condition		= VLK_3006_Tom_Exit_Condition;
	information		= VLK_3006_Tom_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int VLK_3006_Tom_Exit_Condition()
{
	return TRUE;
};

func void VLK_3006_Tom_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance VLK_3006_Tom_youHunter (C_INFO)
{
	npc			= VLK_3006_Tom;
	condition		= VLK_3006_Tom_youHunter_Condition;
	information		= VLK_3006_Tom_youHunter_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ihr seid Jäger?";
};

func int VLK_3006_Tom_youHunter_Condition()
{
	return TRUE;
};

func void VLK_3006_Tom_youHunter_Info()
{
	AI_Output(other, self, "VLK_3006_Tom_youHunter_Info_15_01"); // Ihr seid Jäger?
	AI_Output(self, other, "VLK_3006_Tom_youHunter_Info_04_02"); // (sarkastisch) Sehr gut erkannt! Ich glaube, wir sollten etwas an unserem Auftreten ändern...
};

// **************************************************

instance VLK_3006_Tom_gotPackage (C_INFO)
{
	npc			= VLK_3006_Tom;
	condition		= VLK_3006_Tom_gotPackage_Condition;
	information		= VLK_3006_Tom_gotPackage_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Rupert schickt mich!";
};

func int VLK_3006_Tom_gotPackage_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_413_Rupert_whatCanIDo))
	{
		return TRUE;
	};
};

func void VLK_3006_Tom_gotPackage_Info()
{
	AI_Output(other, self, "VLK_3006_Tom_gotPackage_Info_15_01"); // Rupert schickt mich!
	AI_Output(other, self, "VLK_3006_Tom_gotPackage_Info_15_02"); // Ich habe hier ein Paket für euch.
	AI_Output(self, other, "VLK_3006_Tom_gotPackage_Info_04_03"); // Sehr gut. Das klingt nach Nachschub.
	B_GiveInvItems(other, self, ItMi_BreadPaket,  1);
	AI_Output(other, self, "VLK_3006_Tom_gotPackage_Info_15_04"); // Rupert fragt, wie es aussieht?
	AI_Output(self, other, "VLK_3006_Tom_gotPackage_Info_04_05"); // Sag ihm, wir hatten bisher wenig Glück.
	AI_Output(self, other, "VLK_3006_Tom_gotPackage_Info_04_06"); // Uns sind erst ein paar Scavenger und ein Wolf vor den Bogen gelaufen.
	AI_Output(self, other, "VLK_3006_Tom_gotPackage_Info_04_07"); // Die Piraten schießen uns fast jegliche Beute weg.
	AI_Output(self, other, "VLK_3006_Tom_gotPackage_Info_04_08"); // Wir werden morgen ein wenig tiefer in die Wälder gehen und im Zweifelsfall unser Lager verlegen.
	AI_Output(self, other, "VLK_3006_Tom_gotPackage_Info_04_09"); // Sollte es soweit kommen, werden wir ihm aber rechtzeitig Bescheid geben.
	AI_Output(other, self, "VLK_3006_Tom_gotPackage_Info_15_10"); // In Ordnung. Sonst noch etwas?
	AI_Output(self, other, "VLK_3006_Tom_gotPackage_Info_04_11"); // Ja. Sag ihm, wenn er uns noch einmal in ein Gebiet mit Geistern schickt, dann kann er seinen Scheiß allein machen!
	B_LogEntry(TOPIC_workRupert, "Tom der Jäger hat das Paket 'dankend' angenommen. Er lässt ausrichten, dass sie bisher, dank der Piraten keinen Jagderfolg hatten. Desweiteren soll ich Rupert sagen, dass sie keine Lust auf Untote und Geister haben.");
};

// **************************************************

instance VLK_3006_Tom_canYouTeach (C_INFO)
{
	npc			= VLK_3006_Tom;
	condition		= VLK_3006_Tom_canYouTeach_Condition;
	information		= VLK_3006_Tom_canYouTeach_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kannst du mir etwas beibringen?";
};

func int VLK_3006_Tom_canYouTeach_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_3006_Tom_youHunter))
	{
		return TRUE;
	};
};

func void VLK_3006_Tom_canYouTeach_Info()
{
	AI_Output(other, self, "VLK_3006_Tom_canYouTeach_Info_15_01"); // Kannst du mir etwas beibringen?
	AI_Output(self, other, "VLK_3006_Tom_canYouTeach_Info_04_02"); // Du meinst, mit dem Bogen zu schießen, oder Felle zu nehmen?
	AI_Output(other, self, "VLK_3006_Tom_canYouTeach_Info_15_03"); // An so etwas hatte ich gedacht, ja.
	AI_Output(self, other, "VLK_3006_Tom_canYouTeach_Info_04_04"); // Ich nicht, dafür habe ich keine Zeit und vor allem kein Talent.
	AI_Output(self, other, "VLK_3006_Tom_canYouTeach_Info_04_05"); // Aber frag mal Matt, der kann dir bestimmt ein paar Tipps für den Bogen geben.
	Log_CreateTopic(TOPIC_OutTeacher, LOG_NOTE);
	B_LogEntry(TOPIC_OutTeacher, "Matt der Jäger kann mir helfen, besser mit dem Bogen umzugehen. Er befindet sich im Jägerlager außerhalb der Stadt.");
};
