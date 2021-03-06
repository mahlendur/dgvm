// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


// **************************************************

instance VLK_417_Clovis_Exit (C_INFO)
{
	npc			= VLK_417_Clovis;
	condition		= VLK_417_Clovis_Exit_Condition;
	information		= VLK_417_Clovis_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int VLK_417_Clovis_Exit_Condition()
{
	return TRUE;
};

func void VLK_417_Clovis_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance VLK_417_Clovis_niceDranks (C_INFO)
{
	npc			= VLK_417_Clovis;
	condition		= VLK_417_Clovis_niceDranks_Condition;
	information		= VLK_417_Clovis_niceDranks_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Nette Tr�nke hast du hier.";
};

func int VLK_417_Clovis_niceDranks_Condition()
{
	return TRUE;
};

func void VLK_417_Clovis_niceDranks_Info()
{
	AI_Output(other, self, "VLK_417_Clovis_niceDranks_Info_15_01"); // Nette Tr�nke hast du hier.
	AI_Output(other, self, "VLK_417_Clovis_niceDranks_Info_15_02"); // Verkaufst du die auch?
	AI_Output(self, other, "VLK_417_Clovis_niceDranks_Info_10_03"); // Kommt drauf an... Hast du Gold?
};

// **************************************************

instance VLK_417_Clovis_workAlch (C_INFO)
{
	npc			= VLK_417_Clovis;
	condition		= VLK_417_Clovis_workAlch_Condition;
	information		= VLK_417_Clovis_workAlch_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kann ich auch daf�r arbeiten?";
};

func int VLK_417_Clovis_workAlch_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_417_Clovis_niceDranks))
	{
		return TRUE;
	};
};

func void VLK_417_Clovis_workAlch_Info()
{
	AI_Output(other, self, "VLK_417_Clovis_workAlch_Info_15_01"); // Kann ich auch daf�r arbeiten?
	AI_Output(self, other, "VLK_417_Clovis_workAlch_Info_10_02"); // Ein Tagel�hner? Damit kann ich nichts anfangen.
	AI_Output(other, self, "VLK_417_Clovis_workAlch_Info_15_03"); // Ich dachte mehr an einen Lehrling.
	AI_Output(self, other, "VLK_417_Clovis_workAlch_Info_10_04"); // Einen Lehrling? Das ist etwas anderes... Ich habe lange keinen Lehrling mehr gehabt.
	AI_Output(self, other, "VLK_417_Clovis_workAlch_Info_10_05"); // Es wird anstrengend, dessen bist du dir bewusst?
	AI_Output(other, self, "VLK_417_Clovis_workAlch_Info_15_06"); // Was soll denn am Tr�nke brauen so anstrengend sein?
	AI_Output(self, other, "VLK_417_Clovis_workAlch_Info_10_07"); // Ignorant! Nat�rlich nicht am Brauen.
	AI_Output(self, other, "VLK_417_Clovis_workAlch_Info_10_08"); // Aber was glaubst du, wo die Pflanzen herkommen?
	AI_Output(self, other, "VLK_417_Clovis_workAlch_Info_10_09"); // Die fallen garantiert nicht vom Himmel.
	AI_Output(self, other, "VLK_417_Clovis_workAlch_Info_10_10"); // Ich glaube, bevor ich dich als Lehrling aufnehme, wirst du erst einmal Respekt vor den Pflanzen lernen m�ssen.
};

// **************************************************

instance VLK_417_Clovis_whatPlants (C_INFO)
{
	npc			= VLK_417_Clovis;
	condition		= VLK_417_Clovis_whatPlants_Condition;
	information		= VLK_417_Clovis_whatPlants_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was soll ich f�r dich tun?";
};

func int VLK_417_Clovis_whatPlants_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_417_Clovis_workAlch))
	{
		return TRUE;
	};
};

func void VLK_417_Clovis_whatPlants_Info()
{
	AI_Output(other, self, "VLK_417_Clovis_whatPlants_Info_15_01"); // Was soll ich f�r dich tun?
	AI_Output(self, other, "VLK_417_Clovis_whatPlants_Info_10_02"); // Ich ben�tige neue Pflanzen. Um genau zu sein, zehn Heilkr�uter.
	AI_Output(self, other, "VLK_417_Clovis_whatPlants_Info_10_03"); // Besorge sie mir und wir schauen weiter.
	MIS_workClovis = LOG_RUNNING;
	Log_CreateTopic(TOPIC_workClovis, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_workClovis, LOG_RUNNING);
	B_LogEntry(TOPIC_workClovis, "Clovis der Alchemist m�chte, dass ich f�r ihn Bl�mchen pfl�cke. Zehn Heilkr�uter soll ich ihm bringen, dann nimmt er mich vielleicht als Lehrling auf.");
};

// **************************************************

instance VLK_417_Clovis_whereToFind (C_INFO)
{
	npc			= VLK_417_Clovis;
	condition		= VLK_417_Clovis_whereToFind_Condition;
	information		= VLK_417_Clovis_whereToFind_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Und wo finde ich Heilkr�uter?";
};

func int VLK_417_Clovis_whereToFind_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_417_Clovis_whatPlants))
	{
		return TRUE;
	};
};

func void VLK_417_Clovis_whereToFind_Info()
{
	AI_Output(other, self, "VLK_417_Clovis_whereToFind_Info_15_01"); // Und wo finde ich Heilkr�uter?
	AI_Output(self, other, "VLK_417_Clovis_whereToFind_Info_10_02"); // Die Dinger wachsen �berall.
	AI_Output(self, other, "VLK_417_Clovis_whereToFind_Info_10_03"); // Aber achte darauf, dass du die richtigen pfl�ckst.
	AI_Output(self, other, "VLK_417_Clovis_whereToFind_Info_10_04"); // Halte einfach die Augen auf.
	B_LogEntry(TOPIC_workClovis, "Er sagt, die Pflanzen wachsen �berall. Mal sehen, wo die Dinger sind.");
};

// **************************************************

instance VLK_417_Clovis_whatsThis (C_INFO)
{
	npc			= VLK_417_Clovis;
	condition		= VLK_417_Clovis_whatsThis_Condition;
	information		= VLK_417_Clovis_whatsThis_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was sind das denn f�r Pflanzen?";
};

func int VLK_417_Clovis_whatsThis_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_417_Clovis_whereToFind)) && (Npc_HasItems(other, ItPl_Unknown) >= 3))
	{
		return TRUE;
	};
};

func void VLK_417_Clovis_whatsThis_Info()
{
	AI_Output(other, self, "VLK_417_Clovis_whatsThis_Info_15_01"); // Was sind das denn f�r Pflanzen?
	B_GiveInvItems(other, self, ItPl_Unknown,  2);
	AI_Output(self, other, "VLK_417_Clovis_whatsThis_Info_10_02"); // Was meinst du?
	AI_Output(other, self, "VLK_417_Clovis_whatsThis_Info_15_03"); // Hier, diese Pflanzen! Die B�schel sehen f�r mich alle gleich aus!
	AI_Output(self, other, "VLK_417_Clovis_whatsThis_Info_10_04"); // Achso, du hast Probleme die Pflanzen zu identifizieren?
	AI_Output(self, other, "VLK_417_Clovis_whatsThis_Info_10_05"); // Tja, gut, dass du noch keine gegessen hast. Eine war n�mlich giftig.
	CreateInvItems(self, ItPl_Unknown, 1);
	B_GiveInvItems(self, other, ItPl_Unknown, 1);
	AI_Output(other, self, "VLK_417_Clovis_whatsThis_Info_15_06"); // Wie bitte? Das sagst du mir jetzt?
	AI_Output(self, other, "VLK_417_Clovis_whatsThis_Info_10_07"); // Ich hatte gehofft, dass du so intelligent bist.
	AI_Output(other, self, "VLK_417_Clovis_whatsThis_Info_15_08"); // Und was sollich mit den B�scheln machen?
	AI_Output(self, other, "VLK_417_Clovis_whatsThis_Info_10_09"); // Na, identifizieren nat�rlich!
	AI_Output(other, self, "VLK_417_Clovis_whatsThis_Info_15_10"); // Und wie? Ich sagte doch schon, die sehen alle gleich aus.
	AI_Output(self, other, "VLK_417_Clovis_whatsThis_Info_10_11"); // Du bist doch ein intelligenter Bursche. Du schaffst das schon.
};

// **************************************************

instance VLK_417_Clovis_canYouIdentify (C_INFO)
{
	npc			= VLK_417_Clovis;
	condition		= VLK_417_Clovis_canYouIdentify_Condition;
	information		= VLK_417_Clovis_canYouIdentify_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kannst du die Pflanzen nicht identifizieren?";
};

func int VLK_417_Clovis_canYouIdentify_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_417_Clovis_whatsThis)) && (MIS_workClovis == LOG_RUNNING))
	{
		return TRUE;
	};
};

func void VLK_417_Clovis_canYouIdentify_Info()
{
	AI_Output(other, self, "VLK_417_Clovis_canYouIdentify_Info_15_01"); // Kannst du die Pflanzen nicht identifizieren?
	AI_Output(self, other, "VLK_417_Clovis_canYouIdentify_Info_10_02"); // K�nnte ich, aber ich habe keine Zeit dazu.
	AI_Output(self, other, "VLK_417_Clovis_canYouIdentify_Info_10_03"); // Such dir jemand anderen. Du findest bestimmt jemanden!
};

// **************************************************

instance VLK_417_Clovis_getYourself (C_INFO)
{
	npc			= VLK_417_Clovis;
	condition		= VLK_417_Clovis_getYourself_Condition;
	information		= VLK_417_Clovis_getYourself_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wie w�rs, wenn du deine Pflanzen selber holst?";
};

func int VLK_417_Clovis_getYourself_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_417_Clovis_whatsThis)) && (MIS_workClovis == LOG_RUNNING))
	{
		return TRUE;
	};
};

func void VLK_417_Clovis_getYourself_Info()
{
	AI_Output(other, self, "VLK_417_Clovis_getYourself_Info_15_01"); // Wie w�rs, wenn du deine Pflanzen selber holst?
	AI_Output(other, self, "VLK_417_Clovis_getYourself_Info_15_02"); // Den Schei� macht doch niemand freiwillig.
	AI_Output(self, other, "VLK_417_Clovis_getYourself_Info_10_03"); // Hah! Wusste ich es doch, dass du nicht der Richtige bist.
	AI_Output(self, other, "VLK_417_Clovis_getYourself_Info_10_04"); // In Ordnung, ich hole meine Pflanzen selbst.
	AI_Output(self, other, "VLK_417_Clovis_getYourself_Info_10_05"); // Aber glaube nicht, dass ich dir auch nur eine Sache beibringe, oder dir noch etwas verkaufe.
	AI_StopProcessInfos(self);
	B_GivePlayerXP(50);
	MIS_workClovis = LOG_FAILED;
	Log_SetTopicStatus(TOPIC_workClovis, LOG_FAILED);
	B_LogEntry(TOPIC_workClovis, "Jetzt habe ich's verbockt. Clovis ist sauer und wird mir weder etwas beibringen, noch etwas verkaufen. Manchmal sollte ich mir vorher �berlegen, was ich sage...");
};

// **************************************************

instance VLK_417_Clovis_gotYourPlants (C_INFO)
{
	npc			= VLK_417_Clovis;
	condition		= VLK_417_Clovis_gotYourPlants_Condition;
	information		= VLK_417_Clovis_gotYourPlants_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich habe hier deine Pflanzen!";
};

func int VLK_417_Clovis_gotYourPlants_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_417_Clovis_whatsThis)) && (Npc_HasItems(other, ItPl_Health_Herb_01) >= 10))
	{
		return TRUE;
	};
};

func void VLK_417_Clovis_gotYourPlants_Info()
{
	AI_Output(other, self, "VLK_417_Clovis_gotYourPlants_Info_15_01"); // Ich habe hier deine Pflanzen!
	AI_Output(self, other, "VLK_417_Clovis_gotYourPlants_Info_10_02"); // Du hast sie tats�hlich alle gefunden?
	AI_Output(self, other, "VLK_417_Clovis_gotYourPlants_Info_10_03"); // Potzblitz! Damit habe ich nicht gerechnet.
	AI_Output(self, other, "VLK_417_Clovis_gotYourPlants_Info_10_04"); // Und? Merkst du jetzt, dass die Arbeit als Alchemist und Kr�utersammler keine leichte ist?
	AI_Output(other, self, "VLK_417_Clovis_gotYourPlants_Info_15_05"); // Ja, das habe ich am eigenen Leib erfahren...
	AI_Output(self, other, "VLK_417_Clovis_gotYourPlants_Info_10_06"); // Bist du trotzdem noch bereit bei mir anzufangen?
	AI_Output(self, other, "VLK_417_Clovis_gotYourPlants_Info_10_07"); // Wenn du willst, bringe ich dir die Alchemie oder die Kr�uterkunde bei.
	B_GivePlayerXP(250);
};

// **************************************************

instance VLK_417_Clovis_wannaHerb (C_INFO)
{
	npc			= VLK_417_Clovis;
	condition		= VLK_417_Clovis_wannaHerb_Condition;
	information		= VLK_417_Clovis_wannaHerb_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Bring mir das Kr�utersammeln bei! (5 LP)";
};

func int VLK_417_Clovis_wannaHerb_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_417_Clovis_gotYourPlants)) && (jobCounter <= 1) && (learnedHerb == FALSE))
	{
		return TRUE;
	};
};

func void VLK_417_Clovis_wannaHerb_Info()
{
	AI_Output(other, self, "VLK_417_Clovis_wannaHerb_Info_15_01"); // Bring mir das Kr�utersammeln bei!
	if (other.lp >= 5)
	{
		AI_Output(self, other, "VLK_417_Clovis_wannaHerb_Info_10_02"); // In Ordnung. Wie du vielleicht selbst bemerkt hast, ist das Sammeln nicht das Schwierige.
		AI_Output(self, other, "VLK_417_Clovis_wannaHerb_Info_10_03"); // Aber es ist schon eine gewisse Kunst, zu erkennen, welche Pflanze n�tzlich ist und welche Unkraut oder gar giftig.
		AI_Output(self, other, "VLK_417_Clovis_wannaHerb_Info_10_04"); // Du hast recht, die Pflanzen sehen sich sehr �hnlich. Allerdings kann man sie mit etwas �bung gut unterscheiden.
		AI_Output(self, other, "VLK_417_Clovis_wannaHerb_Info_10_05"); // �be etwas. Du wirst sehen, mit der Zeit wird es dir leichter fallen, auch extrem �hnlich aussehende Pflanzen zu unterscheiden.
		Log_CreateTopic(TOPIC_Herbalism, LOG_NOTE);
		B_LogEntry(TOPIC_Herbalism, "Ich habe von Clovis die Kr�uterkunde gelernt. Er zeigte mir, wie ich verschiedene Pflanzen unterscheiden kann.");
		B_GivePlayerXP(200);
		jobCounter += 1;
		learnedHerb = TRUE;
		AI_PrintS(self, "Neuer Beruf: Kr�uterkunde!");
		other.lp = other.lp-5;
		herbSkill = 1;
		if (MIS_getCitizen == LOG_RUNNING)
		{
			MIS_getCitizen = LOG_SUCCESS;
			Log_SetTopicStatus(TOPIC_getCitizen, LOG_SUCCESS);
			Log_AddEntry(TOPIC_getCitizen, "Clovis hat mich als Lehrling aufgenommen und mir beigebracht, wie ich verschiedene Pflanzen unterscheide. Ich darf mich jetzt Lehrling der Kr�uterkunde und B�rger der Stadt nennen!");
			Npc_SetTrueGuild(hero, GIL_VLK);
		};
	}
	else
	{
		AI_Output(self, other, "VLK_417_Clovis_wannaHerb_Info_10_06"); // Das w�rde ich gerne, aber mir scheint, du bist noch nicht bereit dazu.
		AI_Output(self, other, "VLK_417_Clovis_wannaHerb_Info_10_07"); // Komm wieder, wenn du mehr Erfahrung hast!
	};
};

// **************************************************

instance VLK_417_Clovis_wannaAlchy (C_INFO)
{
	npc			= VLK_417_Clovis;
	condition		= VLK_417_Clovis_wannaAlchy_Condition;
	information		= VLK_417_Clovis_wannaAlchy_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Lehre mich die Alchemie! (5 LP)";
};

func int VLK_417_Clovis_wannaAlchy_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_417_Clovis_gotYourPlants)) && (jobCounter <= 1) && (learnedAlch == FALSE))
	{
		return TRUE;
	};
};

func void VLK_417_Clovis_wannaAlchy_Info()
{
	AI_Output(other, self, "VLK_417_Clovis_wannaAlchy_Info_15_01"); // Lehre mich die Alchemie!
	if (other.lp >= 5)
	{
		AI_Output(self, other, "VLK_417_Clovis_wannaAlchy_Info_10_02"); // Gut, pass auf und h�r mir genau zu!
		AI_Output(self, other, "VLK_417_Clovis_wannaAlchy_Info_10_03"); // Alchemie bedeutet nicht ein paar Pflanzen zusammen mit Wasser zu erhitzen. Die Alchemie ist ein n�tzliches, aber auch sehr gef�hrliches Handwerk.
		AI_Output(self, other, "VLK_417_Clovis_wannaAlchy_Info_10_04"); // Einige Tr�nke bestehen aus Pflanzen, die normalerweise giftig w�ren.
		AI_Output(self, other, "VLK_417_Clovis_wannaAlchy_Info_10_05"); // Erhitzt du einen solchen Trank zu lange, kann er t�dlich werden, erhitzt du ihn zu kurz, wird er unwirksam.
		AI_Output(self, other, "VLK_417_Clovis_wannaAlchy_Info_10_06"); // Deswegen: Halte dich zuerst an einfache Tr�nke, wie Heil oder Manatr�nke. Wenn diese gelingen, kannst du schwierigere Gebr�ue versuchen.
		AI_Output(self, other, "VLK_417_Clovis_wannaAlchy_Info_10_07"); // Achte aber darauf, dass du niemanden umbringst!
		B_GivePlayerXP(200);
		Log_CreateTopic(TOPIC_Alchemy, LOG_NOTE);
		B_LogEntry(TOPIC_Alchemy, "Clovis hat mir die Grundlagen der Alchemie beigebracht. Ich kann jetzt Heiltr�nke und Manatr�nke brauen!");
		jobCounter += 1;
		learnedAlch = TRUE;
		AI_PrintS(self, "Neuer Beruf: Alchemie!");
		other.lp = other.lp-5;
		alchSkill = 1;
		if (MIS_getCitizen == LOG_RUNNING)
		{
			MIS_getCitizen = LOG_SUCCESS;
			Log_SetTopicStatus(TOPIC_getCitizen, LOG_SUCCESS);
			Log_AddEntry(TOPIC_getCitizen, "Clovis hat mich als Lehrling aufgenommen und mir beigebracht, wie ich verschiedene Tr�nke braue. Ich darf mich jetzt Lehrling der Alchemie und B�rger der Stadt nennen!");
			Npc_SetTrueGuild(hero, GIL_VLK);
		};
	}
	else
	{
		AI_Output(self, other, "VLK_417_Clovis_wannaAlchy_Info_10_08"); // Das w�rde ich gerne, aber mir scheint, du bist noch nicht bereit dazu.
		AI_Output(self, other, "VLK_417_Clovis_wannaAlchy_Info_10_09"); // Komm wieder, wenn du mehr Erfahrung hast!
	};
};
