// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!


// **************************************************

instance BAU_200_Rodar_Exit (C_INFO)
{
	npc			= BAU_200_Rodar;
	condition		= BAU_200_Rodar_Exit_Condition;
	information		= BAU_200_Rodar_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int BAU_200_Rodar_Exit_Condition()
{
	return TRUE;
};

func void BAU_200_Rodar_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance BAU_200_Rodar_whyHere (C_INFO)
{
	npc			= BAU_200_Rodar;
	condition		= BAU_200_Rodar_whyHere_Condition;
	information		= BAU_200_Rodar_whyHere_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int BAU_200_Rodar_whyHere_Condition()
{
	return TRUE;
};

func void BAU_200_Rodar_whyHere_Info()
{
	AI_Output(self, other, "BAU_200_Rodar_whyHere_Info_02_01"); // Was machst du hier auf meinem Hof? Sprich!
};

// **************************************************

instance BAU_200_Rodar_lookingForWork (C_INFO)
{
	npc			= BAU_200_Rodar;
	condition		= BAU_200_Rodar_lookingForWork_Condition;
	information		= BAU_200_Rodar_lookingForWork_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich suche Arbeit!";
};

func int BAU_200_Rodar_lookingForWork_Condition()
{
	if (Npc_KnowsInfo(hero, BAU_200_Rodar_whyHere))
	{
		return TRUE;
	};
};

func void BAU_200_Rodar_lookingForWork_Info()
{
	AI_Output(other, self, "BAU_200_Rodar_lookingForWork_Info_15_01"); // Ich suche Arbeit!
	AI_Output(self, other, "BAU_200_Rodar_lookingForWork_Info_02_02"); // Ich kann keine Tagelöhner mehr gebrauchen!
	AI_Output(self, other, "BAU_200_Rodar_lookingForWork_Info_02_03"); // Also verschwinde! Oder ich lasse dich von meinem Hof entfernen!
};

// **************************************************

instance BAU_200_Rodar_imNotBauer (C_INFO)
{
	npc			= BAU_200_Rodar;
	condition		= BAU_200_Rodar_imNotBauer_Condition;
	information		= BAU_200_Rodar_imNotBauer_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich bin kein Tagelöhner.";
};

func int BAU_200_Rodar_imNotBauer_Condition()
{
	if (Npc_KnowsInfo(hero, BAU_200_Rodar_lookingForWork))
	{
		return TRUE;
	};
};

func void BAU_200_Rodar_imNotBauer_Info()
{
	AI_Output(other, self, "BAU_200_Rodar_imNotBauer_Info_15_01"); // Ich bin kein Tagelöhner.
	AI_Output(self, other, "BAU_200_Rodar_imNotBauer_Info_02_02"); // Und was willst du dann hier?
	AI_Output(self, other, "BAU_200_Rodar_imNotBauer_Info_02_03"); // Du siehst nicht aus, als könntest du kämpfen.
	AI_Output(other, self, "BAU_200_Rodar_imNotBauer_Info_15_04"); // Ich kann kämpfen?
	AI_Output(self, other, "BAU_200_Rodar_imNotBauer_Info_02_05"); // Achja? (lacht) Dann beweis' es mir!
	AI_Output(self, other, "BAU_200_Rodar_imNotBauer_Info_02_06"); // Und sprich vor allem mit Jareck.
	B_LogEntry(TOPIC_newLife, "Um bei den Söldnern aufgenommen zu werden, brauche ich die Zustimmung vom Bauern Rodar und vom Söldner-Anführer Jareck. Beide werden mir eine Aufgabe stellen.");
};

// **************************************************

instance BAU_200_Rodar_whosJareck (C_INFO)
{
	npc			= BAU_200_Rodar;
	condition		= BAU_200_Rodar_whosJareck_Condition;
	information		= BAU_200_Rodar_whosJareck_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wer ist Jareck?";
};

func int BAU_200_Rodar_whosJareck_Condition()
{
	if (Npc_KnowsInfo(hero, BAU_200_Rodar_imNotBauer))
	{
		return TRUE;
	};
};

func void BAU_200_Rodar_whosJareck_Info()
{
	AI_Output(other, self, "BAU_200_Rodar_whosJareck_Info_15_01"); // Wer ist Jareck?
	AI_Output(self, other, "BAU_200_Rodar_whosJareck_Info_02_02"); // Jareck ist der Anführer meiner Söldner. Wenn du wirklich kämpfen willst, kannst du das, wenn du ihnen beitrittst.
	AI_Output(self, other, "BAU_200_Rodar_whosJareck_Info_02_03"); // Dafür brauchst du aber seine und meine Zustimmung.
	AI_Output(self, other, "BAU_200_Rodar_whosJareck_Info_02_04"); // Erst, wenn du uns beide überzeugt hast, glaube ich dir, dass du meinen Hof beschützen kannst.
};

// **************************************************

instance BAU_200_Rodar_whatToDo (C_INFO)
{
	npc			= BAU_200_Rodar;
	condition		= BAU_200_Rodar_whatToDo_Condition;
	information		= BAU_200_Rodar_whatToDo_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was soll ich für dich tun?";
};

func int BAU_200_Rodar_whatToDo_Condition()
{
	if (Npc_KnowsInfo(hero, BAU_200_Rodar_imNotBauer))
	{
		return TRUE;
	};
};

func void BAU_200_Rodar_whatToDo_Info()
{
	AI_Output(other, self, "BAU_200_Rodar_whatToDo_Info_15_01"); // Was soll ich für dich tun?
	AI_Output(self, other, "BAU_200_Rodar_whatToDo_Info_02_02"); // Wir haben ein Problem mit Viechern. Um genau zu sein, zwei Probleme.
	AI_Output(other, self, "BAU_200_Rodar_whatToDo_Info_15_03"); // Und welche sind das?
	AI_Output(self, other, "BAU_200_Rodar_whatToDo_Info_02_04"); // Wie du bestimmt weißt, sind an meinen Hof zwei weitere Höfe angeschlossen.
	AI_Output(self, other, "BAU_200_Rodar_whatToDo_Info_02_05"); // Auf einem von ihnen hat Laria, die Pächterin, Probleme mit Riesenratten in ihrer Vorratskammer.
	AI_Output(self, other, "BAU_200_Rodar_whatToDo_Info_02_06"); // Für die Bauern ist es eine zu große Herausforderung, aber meine Söldner lachen sich kaputt, wenn ich sie wegen Ratten schicke.
	AI_Output(self, other, "BAU_200_Rodar_whatToDo_Info_02_07"); // Aber für dich ist es genau die richtige Kragenweite.
	AI_Output(self, other, "BAU_200_Rodar_whatToDo_Info_02_08"); // Damit du dich aber auch nicht langweilst: Zu allem Überfluss ist ein Rudel Wölfe aufgetaucht und reißt meine Schafe.
	AI_Output(self, other, "BAU_200_Rodar_whatToDo_Info_02_09"); // Darum könntest du dich auch noch kümmern!
	MIS_pestControl = LOG_RUNNING;
	Log_CreateTopic(TOPIC_pestControl, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_pestControl, LOG_RUNNING);
	B_LogEntry(TOPIC_pestControl, "Rodar der Großbauer hat mich losgeschickt, auf einem seiner verpachteten Höfe Kammerjäger zu spielen. Dort treiben sich wohl einige Riesenratten in der Kornkammer herum. Außerdem möchte er ein Wolfsrudel tot sehen, das seine Schafe reißt.");
};

// **************************************************

instance BAU_200_Rodar_wheresLaria (C_INFO)
{
	npc			= BAU_200_Rodar;
	condition		= BAU_200_Rodar_wheresLaria_Condition;
	information		= BAU_200_Rodar_wheresLaria_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wo finde ich Larias Hof?";
};

func int BAU_200_Rodar_wheresLaria_Condition()
{
	if (Npc_KnowsInfo(hero, BAU_200_Rodar_whatToDo))
	{
		return TRUE;
	};
};

func void BAU_200_Rodar_wheresLaria_Info()
{
	AI_Output(other, self, "BAU_200_Rodar_wheresLaria_Info_15_01"); // Wo finde ich Larias Hof?
	AI_Output(self, other, "BAU_200_Rodar_wheresLaria_Info_02_02"); // Geh den Weg zurück in Richtung Stadt. Wenn du an der Kreuzung inmitten der Felder rechts abbiegst, kannst du den Hof gar nicht verfehlen.
	B_LogEntry(TOPIC_pestControl, "Larias Hof befindet sich, von Rodars Hof gesehen auf der rechten Seite der Felder.");
};

// **************************************************

instance BAU_200_Rodar_wheresWolf (C_INFO)
{
	npc			= BAU_200_Rodar;
	condition		= BAU_200_Rodar_wheresWolf_Condition;
	information		= BAU_200_Rodar_wheresWolf_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wo finde ich das Wolfsrudel?";
};

func int BAU_200_Rodar_wheresWolf_Condition()
{
	if (Npc_KnowsInfo(hero, BAU_200_Rodar_whatToDo))
	{
		return TRUE;
	};
};

func void BAU_200_Rodar_wheresWolf_Info()
{
	AI_Output(other, self, "BAU_200_Rodar_wheresWolf_Info_15_01"); // Wo finde ich das Wolfsrudel?
	AI_Output(self, other, "BAU_200_Rodar_wheresWolf_Info_02_02"); // Woher soll ich das wissen?
	AI_Output(self, other, "BAU_200_Rodar_wheresWolf_Info_02_03"); // Sprich mit den Hirten. Sie waren in der Nähe, als die Wölfe kamen.
	B_LogEntry(TOPIC_pestControl, "Um mehr über die Wölfe herauszufinden, sollte ich mit den Hirten sprechen.");
};
