// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


// **************************************************

instance NONE_9990_Elvellia_Exit (C_INFO)
{
	npc			= NONE_9990_Elvellia;
	condition		= NONE_9990_Elvellia_Exit_Condition;
	information		= NONE_9990_Elvellia_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int NONE_9990_Elvellia_Exit_Condition()
{
	return TRUE;
};

func void NONE_9990_Elvellia_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance NONE_9990_Elvellia_whoAreYou (C_INFO)
{
	npc			= NONE_9990_Elvellia;
	condition		= NONE_9990_Elvellia_whoAreYou_Condition;
	information		= NONE_9990_Elvellia_whoAreYou_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wer bist du denn?";
};

func int NONE_9990_Elvellia_whoAreYou_Condition()
{
	return TRUE;
};

func void NONE_9990_Elvellia_whoAreYou_Info()
{
	AI_Output(other, self, "NONE_9990_Elvellia_whoAreYou_Info_15_01"); // Wer bist du denn?
	AI_Output(self, other, "NONE_9990_Elvellia_whoAreYou_Info_16_02"); // Ich? Ich bin Elvellia!
	AI_Output(self, other, "NONE_9990_Elvellia_whoAreYou_Info_16_03"); // Und du?
	AI_Output(other, self, "NONE_9990_Elvellia_whoAreYou_Info_15_04"); // Ich bin...
	AI_Output(self, other, "NONE_9990_Elvellia_whoAreYou_Info_16_05"); // Ach, ist eigentlich auch egal. Namen sind doch nur Schall und Rauch.
};

// **************************************************

instance NONE_9990_Elvellia_whatHappened (C_INFO)
{
	npc			= NONE_9990_Elvellia;
	condition		= NONE_9990_Elvellia_whatHappened_Condition;
	information		= NONE_9990_Elvellia_whatHappened_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was ist dir passiert?";
};

func int NONE_9990_Elvellia_whatHappened_Condition()
{
	if (Npc_KnowsInfo(hero, NONE_9990_Elvellia_whoAreYou))
	{
		return TRUE;
	};
};

func void NONE_9990_Elvellia_whatHappened_Info()
{
	AI_Output(other, self, "NONE_9990_Elvellia_whatHappened_Info_15_01"); // Was ist dir passiert?
	AI_Output(self, other, "NONE_9990_Elvellia_whatHappened_Info_16_02"); // Was meinst du?
	AI_Output(other, self, "NONE_9990_Elvellia_whatHappened_Info_15_03"); // Du bist...
	AI_Output(other, self, "NONE_9990_Elvellia_whatHappened_Info_15_04"); // Naja...
	AI_Output(other, self, "NONE_9990_Elvellia_whatHappened_Info_15_05"); // Ein Geist.
	AI_Output(self, other, "NONE_9990_Elvellia_whatHappened_Info_16_06"); // Wie bitte?
	AI_Output(self, other, "NONE_9990_Elvellia_whatHappened_Info_16_07"); // Wie kommst du denn auf die Idee?
	AI_Output(self, other, "NONE_9990_Elvellia_whatHappened_Info_16_08"); // Blödsinn, mir ging es noch nie besser.
};

// **************************************************

instance NONE_9990_Elvellia_whatDoing (C_INFO)
{
	npc			= NONE_9990_Elvellia;
	condition		= NONE_9990_Elvellia_whatDoing_Condition;
	information		= NONE_9990_Elvellia_whatDoing_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was tust du hier?";
};

func int NONE_9990_Elvellia_whatDoing_Condition()
{
	if (Npc_KnowsInfo(hero, NONE_9990_Elvellia_whatHappened))
	{
		return TRUE;
	};
};

func void NONE_9990_Elvellia_whatDoing_Info()
{
	AI_Output(other, self, "NONE_9990_Elvellia_whatDoing_Info_15_01"); // Was tust du hier?
	AI_Output(self, other, "NONE_9990_Elvellia_whatDoing_Info_16_02"); // Ich warte auf meinen Liebsten.
	AI_Output(self, other, "NONE_9990_Elvellia_whatDoing_Info_16_03"); // Er wird bald zu mir kommen. Dann verreisen wir zusammen.
	AI_Output(other, self, "NONE_9990_Elvellia_whatDoing_Info_15_04"); // Und wo soll's hingehen?
	AI_Output(self, other, "NONE_9990_Elvellia_whatDoing_Info_16_05"); // Nach Aeon. Dort ist immer schönes Wetter und es herrscht unendlicher Frieden.
	AI_Output(other, self, "NONE_9990_Elvellia_whatDoing_Info_15_06"); // Ach.. Klingt ja wie das Paradies.
	AI_Output(self, other, "NONE_9990_Elvellia_whatDoing_Info_16_07"); // Ja, nicht wahr?
	AI_Output(self, other, "NONE_9990_Elvellia_whatDoing_Info_16_08"); // Hoffentlich kommt mein Liebster bald.
	MIS_shoreToAeon = LOG_RUNNING;
	Log_CreateTopic(TOPIC_shoreToAeon, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_shoreToAeon, LOG_RUNNING);
	B_LogEntry(TOPIC_shoreToAeon, "An der Küste, unweit des Piratenlagers sitzt Tag und Nacht der Geist einer Frau, Elvellia. Sie wartet auf ihren Liebsten, damit sie beide nach Aeon, ins Paradies, reisen können.");
};

// **************************************************

instance NONE_9990_Elvellia_whereIsHe (C_INFO)
{
	npc			= NONE_9990_Elvellia;
	condition		= NONE_9990_Elvellia_whereIsHe_Condition;
	information		= NONE_9990_Elvellia_whereIsHe_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wo ist er denn gerade?";
};

func int NONE_9990_Elvellia_whereIsHe_Condition()
{
	if (Npc_KnowsInfo(hero, NONE_9990_Elvellia_whatDoing))
	{
		return TRUE;
	};
};

func void NONE_9990_Elvellia_whereIsHe_Info()
{
	AI_Output(other, self, "NONE_9990_Elvellia_whereIsHe_Info_15_01"); // Wo ist er denn gerade?
	AI_Output(self, other, "NONE_9990_Elvellia_whereIsHe_Info_16_02"); // Irgendwo auf See. Er ist mit einem der letzten Schiffe in See gestochen, welche die Insel verlassen haben.
	AI_Output(self, other, "NONE_9990_Elvellia_whereIsHe_Info_16_03"); // Er ist Soldat, weißt du? Ein tapferer Mann in der königlichen Marine.
	AI_Output(other, self, "NONE_9990_Elvellia_whereIsHe_Info_15_04"); // Ja, das sind tapfere Männer.
	AI_Output(other, self, "NONE_9990_Elvellia_whereIsHe_Info_15_05"); // (zu sich) Die Marine wurde fast vollständig aufgerieben. Die letzten Schiffe von Mahlendur sollen alle zerstört worden sein.
	AI_Output(self, other, "NONE_9990_Elvellia_whereIsHe_Info_16_06"); // Das ist wahr. Hoffentlich kommt er bald...
	B_LogEntry(TOPIC_shoreToAeon, "Scheinbar ist ihr Liebster ein Marinesoldat, wie ich. Wenn ich richtig informiert bin, ist sein Schiff aber zerstört worden. Wenn er nicht genauso viel Glück gehabt hat wie ich, dann wird er wahrscheinlich umgekommen sein. Irgendwie muss ich dieser armen Seele doch helfen können. Sie sprach von Aeon. Seltsam, ich dachte, ich hätte schon alle Beschreibungen vom Paradies gehört. Vielleicht kennt jemand die Legende von Aeon.");
};
