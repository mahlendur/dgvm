// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


// **************************************************

instance VLK_3008_Brandon_Exit (C_INFO)
{
	npc			= VLK_3008_Brandon;
	condition		= VLK_3008_Brandon_Exit_Condition;
	information		= VLK_3008_Brandon_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int VLK_3008_Brandon_Exit_Condition()
{
	return TRUE;
};

func void VLK_3008_Brandon_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance VLK_3008_Brandon_whoAreYou (C_INFO)
{
	npc			= VLK_3008_Brandon;
	condition		= VLK_3008_Brandon_whoAreYou_Condition;
	information		= VLK_3008_Brandon_whoAreYou_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wer bist du?";
};

func int VLK_3008_Brandon_whoAreYou_Condition()
{
	return TRUE;
};

func void VLK_3008_Brandon_whoAreYou_Info()
{
	AI_Output(other, self, "VLK_3008_Brandon_whoAreYou_Info_15_01"); // Wer bist du?
	AI_Output(self, other, "VLK_3008_Brandon_whoAreYou_Info_06_02"); // Ich bin Brandon. Meines Zeichens Jäger.
	AI_Output(self, other, "VLK_3008_Brandon_whoAreYou_Info_06_03"); // Kann ich irgendwas für dich tun?
};

// **************************************************

instance VLK_3008_Brandon_canTeachMe (C_INFO)
{
	npc			= VLK_3008_Brandon;
	condition		= VLK_3008_Brandon_canTeachMe_Condition;
	information		= VLK_3008_Brandon_canTeachMe_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kannst du mir etwas beibringen?";
};

func int VLK_3008_Brandon_canTeachMe_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_3008_Brandon_whoAreYou))
	{
		return TRUE;
	};
};

func void VLK_3008_Brandon_canTeachMe_Info()
{
	AI_Output(other, self, "VLK_3008_Brandon_canTeachMe_Info_15_01"); // Kannst du mir etwas beibringen?
	AI_Output(self, other, "VLK_3008_Brandon_canTeachMe_Info_06_02"); // Sicher kann ich das. Aber... Bist du es denn auch wert?
};

// **************************************************

instance VLK_3008_Brandon_whatToDo (C_INFO)
{
	npc			= VLK_3008_Brandon;
	condition		= VLK_3008_Brandon_whatToDo_Condition;
	information		= VLK_3008_Brandon_whatToDo_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was verlangst du?";
};

func int VLK_3008_Brandon_whatToDo_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_3008_Brandon_canTeachMe))
	{
		return TRUE;
	};
};

func void VLK_3008_Brandon_whatToDo_Info()
{
	AI_Output(other, self, "VLK_3008_Brandon_whatToDo_Info_15_01"); // (seufzt) Was muss ich tun, dass du mich trainierst?
	AI_Output(self, other, "VLK_3008_Brandon_whatToDo_Info_06_02"); // Okay, hör zu. Die ganze Sache ist etwas heikel.
	AI_Output(other, self, "VLK_3008_Brandon_whatToDo_Info_15_03"); // Spucks schon aus!
	AI_Output(self, other, "VLK_3008_Brandon_whatToDo_Info_06_04"); // Gut. Wie du vielleicht weißt, sind wir schon lange hier draußen.
	AI_Output(other, self, "VLK_3008_Brandon_whatToDo_Info_15_05"); // Und jetzt? Soll ich dir eine Frau besorgen?
	AI_Output(self, other, "VLK_3008_Brandon_whatToDo_Info_06_06"); // (lacht) Nein, das wäre mein kleinstes Problem.
	AI_Output(self, other, "VLK_3008_Brandon_whatToDo_Info_06_07"); // Ich brauch Sumpfkraut! Ich hab' schon seit Tagen nichts mehr geraucht und bekomme langsam Kopfschmerzen davon.
	AI_Output(self, other, "VLK_3008_Brandon_whatToDo_Info_06_08"); // Besorg mir was! Am besten mindestens fünf Stängel!
	AI_Output(self, other, "VLK_3008_Brandon_whatToDo_Info_06_09"); // Dann kann ich dir bestimmt was beibringen!
	MIS_brandonSmoke = LOG_RUNNING;
	Log_CreateTopic(TOPIC_brandonSmoke, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_brandonSmoke, LOG_RUNNING);
	B_LogEntry(TOPIC_brandonSmoke, "Brandon, einer der Jäger vor der Stadt ist auf Entzug. Um mir etwas beizubringen verlangt er mindestens fünf Stängel Sumpfkraut. Mal sehen, wo ich die herbekomme.");
};

// **************************************************

instance VLK_3008_Brandon_whereToFind (C_INFO)
{
	npc			= VLK_3008_Brandon;
	condition		= VLK_3008_Brandon_whereToFind_Condition;
	information		= VLK_3008_Brandon_whereToFind_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Woher bekomme ich Sumpfkraut?";
};

func int VLK_3008_Brandon_whereToFind_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_3008_Brandon_whatToDo))
	{
		return TRUE;
	};
};

func void VLK_3008_Brandon_whereToFind_Info()
{
	AI_Output(other, self, "VLK_3008_Brandon_whereToFind_Info_15_01"); // Woher bekomme ich Sumpfkraut?
	AI_Output(self, other, "VLK_3008_Brandon_whereToFind_Info_06_02"); // Keine Ahnung. Die Stadtwache hat in den letzten Wochen den Handel extrem stark eingeschränkt.
	AI_Output(self, other, "VLK_3008_Brandon_whereToFind_Info_06_03"); // Das einzige, wo du in der Stadt noch rauchen kannst, ist vor der Kaserne.
	AI_Output(self, other, "VLK_3008_Brandon_whereToFind_Info_06_04"); // Du könntest dich da mal umschauen, ansonsten vielleicht bei den Piraten oder den Söldnern?
	AI_Output(self, other, "VLK_3008_Brandon_whereToFind_Info_06_05"); // Versuchs nur besser nicht im Kloster (lacht)
	B_LogEntry(TOPIC_brandonSmoke, "Er sagte, am ehesten könnte ich das Kraut in der Stadt vor der Kaserne bekommen. Ansonsten soll ich mal bei den Söldnern oder den Piraten vorbeischauen.");
};

// **************************************************

instance VLK_3008_Brandon_gotYourPot (C_INFO)
{
	npc			= VLK_3008_Brandon;
	condition		= VLK_3008_Brandon_gotYourPot_Condition;
	information		= VLK_3008_Brandon_gotYourPot_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Hier ist das Zeug!";
};

func int VLK_3008_Brandon_gotYourPot_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_3008_Brandon_whatToDo)) && (Npc_HasItems(other, ItMi_Joint) >= 5))
	{
		return TRUE;
	};
};

func void VLK_3008_Brandon_gotYourPot_Info()
{
	AI_Output(other, self, "VLK_3008_Brandon_gotYourPot_Info_15_01"); // Hier ist das Zeug!
	AI_Output(self, other, "VLK_3008_Brandon_gotYourPot_Info_06_02"); // Wirklich? Mensch, das ist 'ne Überraschung!
	AI_Output(self, other, "VLK_3008_Brandon_gotYourPot_Info_06_03"); // Danke, Mann. Hier, das ist es mir wert.
	CreateInvItems(self, ItMi_Gold,  80);
	B_GiveInvItems(self, other, ItMi_Gold,  80);
	MIS_brandonSmoke = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_brandonSmoke, LOG_SUCCESS);
	B_LogEntry(TOPIC_brandonSmoke, "Brandon war begeistert, als ich ihm die Stängel gebracht habe. Er gab mir sogar Gold dafür.");
	B_GivePlayerXP(250);
	AI_UseItem(self, ItMi_Joint);
	AI_Output(self, other, "VLK_3008_Brandon_gotYourPot_Info_06_04"); // So. Jetzt kann ich dir auch was beibringen.
	Log_AddEntry(TOPIC_teacherOut, "Brandon kann mir beibringen, wie ich besser mit dem Bogen werde. Außerdem kann er mir beibringen, wie ich Tieren Zähne, Krallen und andere Trophäen abnehme.");
	Npc_ExchangeRoutine(self, "SMOKE");
};
