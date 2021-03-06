// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


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
	AI_Output(self, other, "BAU_200_Rodar_lookingForWork_Info_02_02"); // Ich kann keine Tagel�hner mehr gebrauchen!
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
	description		= "Ich bin kein Tagel�hner.";
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
	AI_Output(other, self, "BAU_200_Rodar_imNotBauer_Info_15_01"); // Ich bin kein Tagel�hner.
	AI_Output(self, other, "BAU_200_Rodar_imNotBauer_Info_02_02"); // Und was willst du dann hier?
	AI_Output(self, other, "BAU_200_Rodar_imNotBauer_Info_02_03"); // Du siehst nicht aus, als k�nntest du k�mpfen.
	AI_Output(other, self, "BAU_200_Rodar_imNotBauer_Info_15_04"); // Ich kann k�mpfen?
	AI_Output(self, other, "BAU_200_Rodar_imNotBauer_Info_02_05"); // Achja? (lacht) Dann beweis' es mir!
	AI_Output(self, other, "BAU_200_Rodar_imNotBauer_Info_02_06"); // Und sprich vor allem mit Jareck.
	B_LogEntry(TOPIC_newLife, "Um bei den S�ldnern aufgenommen zu werden, brauche ich die Zustimmung vom Bauern Rodar und vom S�ldner-Anf�hrer Jareck. Beide werden mir eine Aufgabe stellen.");
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
	AI_Output(self, other, "BAU_200_Rodar_whosJareck_Info_02_02"); // Jareck ist der Anf�hrer meiner S�ldner. Wenn du wirklich k�mpfen willst, kannst du das, wenn du ihnen beitrittst.
	AI_Output(self, other, "BAU_200_Rodar_whosJareck_Info_02_03"); // Daf�r brauchst du aber seine und meine Zustimmung.
	AI_Output(self, other, "BAU_200_Rodar_whosJareck_Info_02_04"); // Erst, wenn du uns beide �berzeugt hast, glaube ich dir, dass du meinen Hof besch�tzen kannst.
};

// **************************************************

instance BAU_200_Rodar_whatToDo (C_INFO)
{
	npc			= BAU_200_Rodar;
	condition		= BAU_200_Rodar_whatToDo_Condition;
	information		= BAU_200_Rodar_whatToDo_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was soll ich f�r dich tun?";
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
	AI_Output(other, self, "BAU_200_Rodar_whatToDo_Info_15_01"); // Was soll ich f�r dich tun?
	AI_Output(self, other, "BAU_200_Rodar_whatToDo_Info_02_02"); // Wir haben ein Problem mit Viechern. Um genau zu sein, zwei Probleme.
	AI_Output(other, self, "BAU_200_Rodar_whatToDo_Info_15_03"); // Und welche sind das?
	AI_Output(self, other, "BAU_200_Rodar_whatToDo_Info_02_04"); // Wie du bestimmt wei�t, sind an meinen Hof zwei weitere H�fe angeschlossen.
	AI_Output(self, other, "BAU_200_Rodar_whatToDo_Info_02_05"); // Auf einem von ihnen hat Laria, die P�chterin, Probleme mit Riesenratten in ihrer Vorratskammer.
	AI_Output(self, other, "BAU_200_Rodar_whatToDo_Info_02_06"); // F�r die Bauern ist es eine zu gro�e Herausforderung, aber meine S�ldner lachen sich kaputt, wenn ich sie wegen Ratten schicke.
	AI_Output(self, other, "BAU_200_Rodar_whatToDo_Info_02_07"); // Aber f�r dich ist es genau die richtige Kragenweite.
	AI_Output(self, other, "BAU_200_Rodar_whatToDo_Info_02_08"); // Damit du dich aber auch nicht langweilst: Zu allem �berfluss ist ein Rudel W�lfe aufgetaucht und rei�t meine Schafe.
	AI_Output(self, other, "BAU_200_Rodar_whatToDo_Info_02_09"); // Darum k�nntest du dich auch noch k�mmern!
	MIS_pestControl = LOG_RUNNING;
	Log_CreateTopic(TOPIC_pestControl, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_pestControl, LOG_RUNNING);
	B_LogEntry(TOPIC_pestControl, "Rodar der Gro�bauer hat mich losgeschickt, auf einem seiner verpachteten H�fe Kammerj�ger zu spielen. Dort treiben sich wohl einige Riesenratten in der Kornkammer herum. Au�erdem m�chte er ein Wolfsrudel tot sehen, das seine Schafe rei�t.");
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
	AI_Output(self, other, "BAU_200_Rodar_wheresLaria_Info_02_02"); // Geh den Weg zur�ck in Richtung Stadt. Wenn du an der Kreuzung inmitten der Felder rechts abbiegst, kannst du den Hof gar nicht verfehlen.
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
	AI_Output(self, other, "BAU_200_Rodar_wheresWolf_Info_02_03"); // Sprich mit den Hirten. Sie waren in der N�he, als die W�lfe kamen.
	B_LogEntry(TOPIC_pestControl, "Um mehr �ber die W�lfe herauszufinden, sollte ich mit den Hirten sprechen.");
};
