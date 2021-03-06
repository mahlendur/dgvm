// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!

var int gotRuestung;
var int talkedOnceMika;

// **************************************************

instance VLK_413_Rupert_Exit (C_INFO)
{
	npc			= VLK_413_Rupert;
	condition		= VLK_413_Rupert_Exit_Condition;
	information		= VLK_413_Rupert_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int VLK_413_Rupert_Exit_Condition()
{
	return TRUE;
};

func void VLK_413_Rupert_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance VLK_413_Rupert_startDialog (C_INFO)
{
	npc			= VLK_413_Rupert;
	condition		= VLK_413_Rupert_startDialog_Condition;
	information		= VLK_413_Rupert_startDialog_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int VLK_413_Rupert_startDialog_Condition()
{
	return TRUE;
};

func void VLK_413_Rupert_startDialog_Info()
{
	AI_Output(self, other, "VLK_413_Rupert_startDialog_Info_02_01"); // Willkommen in der 'gespannten Sehne'!
	AI_Output(self, other, "VLK_413_Rupert_startDialog_Info_02_02"); // Suchst du einen Bogen, Felle oder eine neue R�stung?
	AI_Output(self, other, "VLK_413_Rupert_startDialog_Info_02_03"); // Dann bist du hier genau richtig!
};

// **************************************************

instance VLK_413_Rupert_startDialog2 (C_INFO)
{
	npc			= VLK_413_Rupert;
	condition		= VLK_413_Rupert_startDialog2_Condition;
	information		= VLK_413_Rupert_startDialog2_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Stellst du deine R�stungen selber her?";
};

func int VLK_413_Rupert_startDialog2_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_413_Rupert_startDialog))
	{
		return TRUE;
	};
};

func void VLK_413_Rupert_startDialog2_Info()
{
	AI_Output(other, self, "VLK_413_Rupert_startDialog2_Info_15_01"); // Stellst du deine R�stungen selber her?
	AI_Output(self, other, "VLK_413_Rupert_startDialog2_Info_02_02"); // Ganz recht! Nur so erhalten sie ihre erstklassige Qualit�t.
	AI_Output(self, other, "VLK_413_Rupert_startDialog2_Info_02_03"); // �brigens, mein Name ist Rupert.
};

// **************************************************

instance VLK_413_Rupert_gotMikaHose (C_INFO)
{
	npc			= VLK_413_Rupert;
	condition		= VLK_413_Rupert_gotMikaHose_Condition;
	information		= VLK_413_Rupert_gotMikaHose_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Ich soll f�r Mika eine R�stung abholen.";
};

func int VLK_413_Rupert_gotMikaHose_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_3005_Mika_shallIGo)) && (gotRuestung == FALSE))
	{
		return TRUE;
	};
};

func void VLK_413_Rupert_gotMikaHose_Info()
{
	AI_Output(other, self, "VLK_413_Rupert_gotMikaHose_Info_15_01"); // Ich soll f�r Mika eine R�stung abholen.
	if (talkedOnceMika == FALSE)
	{
		AI_Output(self, other, "VLK_413_Rupert_gotMikaHose_Info_02_02"); // Ja, der gute Mika. War schon immer ein Draufg�nger. Gott wei�, was er schon wieder angestellt hat.
		AI_Output(self, other, "VLK_413_Rupert_gotMikaHose_Info_02_03"); // So oft, wie ich seine Klamotten wieder zusammengeflickt habe, wundert es mich, dass er noch lebt.
		AI_Output(self, other, "VLK_413_Rupert_gotMikaHose_Info_02_04"); // Was war es denn diesmal?
		AI_Output(other, self, "VLK_413_Rupert_gotMikaHose_Info_15_05"); // Er sprach von einem Rudel W�lfe.
		AI_Output(self, other, "VLK_413_Rupert_gotMikaHose_Info_02_06"); // Das sieht ihm �hnlich... (lacht)
		AI_Output(self, other, "VLK_413_Rupert_gotMikaHose_Info_02_07"); // Und du sollst seine R�stung abholen?
		AI_Output(other, self, "VLK_413_Rupert_gotMikaHose_Info_15_08"); // Ja, er selbst kommt nicht aus der Mine weg. Ich habe angeboten, das gute St�ck abzuholen.
		AI_Output(self, other, "VLK_413_Rupert_gotMikaHose_Info_02_09"); // Sehr l�blich. Vorher bekomme ich allerdings noch 150 Goldst�cke f�r die Reparatur.
		talkedOnceMika = TRUE;
	}
	else
	{
		AI_Output(self, other, "VLK_413_Rupert_gotMikaHose_Info_02_10"); // Ich bekomme immernoch 150 Gold daf�r!
	};
	if (Npc_HasItems(other, ItMi_Gold) >= 150)
	{
		AI_Output(other, self, "VLK_413_Rupert_gotMikaHose_Info_15_11"); // Hier hast du das Gold!
		B_GiveInvItems(other, self, ItMi_Gold,  150);
		AI_Output(self, other, "VLK_413_Rupert_gotMikaHose_Info_02_12"); // In Ordnung. Hier ist die reparierte R�stung.
		CreateInvItems(self, ItAr_Mika,  1);
		B_GiveInvItems(self, other, ItAr_Mika,  1);
		AI_Output(self, other, "VLK_413_Rupert_gotMikaHose_Info_02_13"); // Bring sie ihm schnell, bevor er sich mit schlimmerem als dem Erz anlegt! (lacht)
		gotRuestung = TRUE;
		B_LogEntry(TOPIC_mikaHose, "Ich habe die R�stung von Rupert bekommen. Ist ja schon ein schickes Teil. Ich sollte sie Mika bringen.");
	}
	else
	{
		AI_Output(other, self, "VLK_413_Rupert_gotMikaHose_Info_15_14"); // Soviel habe ich nicht dabei!
		AI_Output(self, other, "VLK_413_Rupert_gotMikaHose_Info_02_15"); // Dann besorg das Gold. Danach bekommst du die R�stung!
	};
};

// **************************************************

instance VLK_413_Rupert_wannaLearn (C_INFO)
{
	npc			= VLK_413_Rupert;
	condition		= VLK_413_Rupert_wannaLearn_Condition;
	information		= VLK_413_Rupert_wannaLearn_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kann ich bei dir etwas lernen?";
};

func int VLK_413_Rupert_wannaLearn_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_413_Rupert_startDialog)) && (jobCounter <= 1))
	{
		return TRUE;
	};
};

func void VLK_413_Rupert_wannaLearn_Info()
{
	AI_Output(other, self, "VLK_413_Rupert_wannaLearn_Info_15_01"); // Kann ich bei dir etwas lernen?
	AI_Output(self, other, "VLK_413_Rupert_wannaLearn_Info_02_02"); // Taugst du denn etwas?
	AI_Output(other, self, "VLK_413_Rupert_wannaLearn_Info_15_03"); // �hm...
	AI_Output(self, other, "VLK_413_Rupert_wannaLearn_Info_02_04"); // (lacht) Keine Sorge, nur ein Scherz.
	AI_Output(self, other, "VLK_413_Rupert_wannaLearn_Info_02_05"); // Wenn du schon ausgebildet w�rst, m�sstest du nichts lernen.
	AI_Output(self, other, "VLK_413_Rupert_wannaLearn_Info_02_06"); // Interessiert du dich denn f�r die K�rschnerei oder die Lederverarbeitung?
	AI_Output(other, self, "VLK_413_Rupert_wannaLearn_Info_15_07"); // Auf jeden Fall!
	AI_Output(self, other, "VLK_413_Rupert_wannaLearn_Info_02_08"); // Gut, dann arbeite f�r mich.
	AI_Output(self, other, "VLK_413_Rupert_wannaLearn_Info_02_09"); // Wenn du das zu meiner Zufriedenheit schaffst, kannst du bei mir ein Handwerk erlernen!
};

// **************************************************

instance VLK_413_Rupert_whatCanIDo (C_INFO)
{
	npc			= VLK_413_Rupert;
	condition		= VLK_413_Rupert_whatCanIDo_Condition;
	information		= VLK_413_Rupert_whatCanIDo_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was hast du f�r mich zu tun?";
};

func int VLK_413_Rupert_whatCanIDo_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_413_Rupert_wannaLearn))
	{
		return TRUE;
	};
};

func void VLK_413_Rupert_whatCanIDo_Info()
{
	AI_Output(other, self, "VLK_413_Rupert_whatCanIDo_Info_15_01"); // Was hast du f�r mich zu tun?
	AI_Output(self, other, "VLK_413_Rupert_whatCanIDo_Info_02_02"); // Ich erwarte eine Nachricht von meinen J�gern.
	AI_Output(self, other, "VLK_413_Rupert_whatCanIDo_Info_02_03"); // Au�erdem habe ich hier ein Paket mit Brot f�r sie.
	AI_Output(self, other, "VLK_413_Rupert_whatCanIDo_Info_02_04"); // Bring es ihnen und mir die Neuigkeiten, dann sehen wir weiter!
	CreateInvItems(self, ItMi_BreadPaket,  1);
	B_GiveInvItems(self, other, ItMi_BreadPaket,  1);
	AI_Output(other, self, "VLK_413_Rupert_whatCanIDo_Info_15_05"); // Bin gleich wieder da!
	MIS_workRupert = LOG_RUNNING;
	Log_CreateTopic(TOPIC_workRupert, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_workRupert, LOG_RUNNING);
	B_LogEntry(TOPIC_workRupert, "Um bei Rupert als Lehrling anfangen zu k�nnen, soll ich f�r ihn arbeiten. Er hat mir ein Paket mit Brot f�r seine J�ger gegeben, im Austausch sollen sie mir Informatioenn f�r ihn geben.");
};

// **************************************************

instance VLK_413_Rupert_whereHunter (C_INFO)
{
	npc			= VLK_413_Rupert;
	condition		= VLK_413_Rupert_whereHunter_Condition;
	information		= VLK_413_Rupert_whereHunter_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wo finde ich deine J�ger?";
};

func int VLK_413_Rupert_whereHunter_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_413_Rupert_whatCanIDo)) && (MIS_workRupert == LOG_RUNNING))
	{
		return TRUE;
	};
};

func void VLK_413_Rupert_whereHunter_Info()
{
	AI_Output(other, self, "VLK_413_Rupert_whereHunter_Info_15_01"); // Wo finde ich deine J�ger?
	AI_Output(self, other, "VLK_413_Rupert_whereHunter_Info_02_02"); // Sie haben ihr Lager direkt au�erhalb der Stadt aufgeschlagen.
	AI_Output(self, other, "VLK_413_Rupert_whereHunter_Info_02_03"); // Wenn du aus dem Tor auf der anderen Seite der Stadt hinausgehst, halte dich links. Nach einigen Metern gabelt sich der Weg.
	AI_Output(self, other, "VLK_413_Rupert_whereHunter_Info_02_04"); // Biege nun scharf rechts ab. Pass auf, dass du auch wirklich rechts herum gehst! Gehst du nach links, l�ufst du direkt den Piraten in die Arme!
	AI_Output(self, other, "VLK_413_Rupert_whereHunter_Info_02_05"); // Noch ein St�ckchen den Weg hinauf und du kannst das Lager nicht mehr verfehlen!
	B_LogEntry(TOPIC_workRupert, "Das J�gerlager liegt auf einem Berg vor der Stadt. Einfach in Richtung Leuchtturm und dann scharf rechts. Gehe ich nach links, komme ich zu den Piraten. Interessant...");
};

// **************************************************

instance VLK_413_Rupert_gotInfos (C_INFO)
{
	npc			= VLK_413_Rupert;
	condition		= VLK_413_Rupert_gotInfos_Condition;
	information		= VLK_413_Rupert_gotInfos_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich habe dein Paket �berbracht!";
};

func int VLK_413_Rupert_gotInfos_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_3006_Tom_gotPackage))
	{
		return TRUE;
	};
};

func void VLK_413_Rupert_gotInfos_Info()
{
	AI_Output(other, self, "VLK_413_Rupert_gotInfos_Info_15_01"); // Ich habe dein Paket �berbracht!
	AI_Output(self, other, "VLK_413_Rupert_gotInfos_Info_02_02"); // Und?
	AI_Output(other, self, "VLK_413_Rupert_gotInfos_Info_15_03"); // Tom l�sst ausrichten, dass sie bisher keinen Erfolg hatten. Die Piraten nehmen ihnen jegliche Beute.
	AI_Output(self, other, "VLK_413_Rupert_gotInfos_Info_02_04"); // Verdammte Hunde.
	AI_Output(other, self, "VLK_413_Rupert_gotInfos_Info_15_05"); // Au�erdem sagte er, dass du, wenn du sie noch einmal in ein Geister-Gebiet schickst, den Schei� selber machen kannst.
	AI_Output(self, other, "VLK_413_Rupert_gotInfos_Info_02_06"); // Hat er das so gesagt?
	AI_Output(other, self, "VLK_413_Rupert_gotInfos_Info_15_07"); // W�rtlich.
	AI_Output(self, other, "VLK_413_Rupert_gotInfos_Info_02_08"); // Dann will ich ihm glauben. Zwar wei� ich nicht, wo er auf Geistern treffen sollte, aber gut.
	AI_Output(self, other, "VLK_413_Rupert_gotInfos_Info_02_09"); // Wenn du ihn das n�chste Mal siehst, sag ihm, es tue mir leid.
	AI_Output(self, other, "VLK_413_Rupert_gotInfos_Info_02_10"); // Ich wei� nichts von Geistern auf der Insel.
	AI_Output(self, other, "VLK_413_Rupert_gotInfos_Info_02_11"); // Danke f�r deine M�hen. Wenn du immer noch Interesse hast, kann ich dich ausbilden!
	MIS_workRupert = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_workRupert, LOG_SUCCESS);
	B_LogEntry(TOPIC_workRupert, "Ich habe Rupert die Nachrichten der J�ger �berbracht. Er war zufrieden mit mir und gibt mir die M�glichkeit, mich ausbilden zu lassen.");
	B_GivePlayerXP(250);
};

// **************************************************

instance VLK_413_Rupert_wannaLearnKuerschner (C_INFO)
{
	npc			= VLK_413_Rupert;
	condition		= VLK_413_Rupert_wannaLearnKuerschner_Condition;
	information		= VLK_413_Rupert_wannaLearnKuerschner_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Bilde mich zum K�rschner aus! (5 LP)";
};

func int VLK_413_Rupert_wannaLearnKuerschner_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_413_Rupert_gotInfos)) && (jobCounter <= 1) && (learnedKuerschner == FALSE))
	{
		return TRUE;
	};
};

func void VLK_413_Rupert_wannaLearnKuerschner_Info()
{
	AI_Output(other, self, "VLK_413_Rupert_wannaLearnKuerschner_Info_15_01"); // Bilde mich zum K�rschner aus! (5 LP)
	AI_Output(self, other, "VLK_413_Rupert_wannaLearnKuerschner_Info_02_02"); // Bist du dir sicher?
	AI_Output(self, other, "VLK_413_Rupert_wannaLearnKuerschner_Info_02_03"); // Du kannst immer nur zwei Berufe erlernen!
	Info_ClearChoices(VLK_413_Rupert_wannaLearnKuerschner);
	Info_AddChoice(VLK_413_Rupert_wannaLearnKuerschner, "Ich brauche noch Bedenkzeit!", VLK_413_Rupert_wannaLearnKuerschner_noKuerschner);
	Info_AddChoice(VLK_413_Rupert_wannaLearnKuerschner, "Ja, ich will lernen!", VLK_413_Rupert_wannaLearnKuerschner_yesKuerschner);
};

func void VLK_413_Rupert_wannaLearnKuerschner_noKuerschner()
{
	AI_Output(other, self, "VLK_413_Rupert_wannaLearnKuerschner_noKuerschner_15_01"); // Ich brauche noch Bedenkzeit!
	AI_Output(self, other, "VLK_413_Rupert_wannaLearnKuerschner_noKuerschner_02_02"); // Gut, ich bin hier, falls du mich suchst.
	Info_ClearChoices(VLK_413_Rupert_wannaLearnKuerschner);
};

func void VLK_413_Rupert_wannaLearnKuerschner_yesKuerschner()
{
	AI_Output(other, self, "VLK_413_Rupert_wannaLearnKuerschner_yesKuerschner_15_01"); // Ja, ich will lernen!
	if (other.LP >= 5)
	{
		AI_Output(self, other, "VLK_413_Rupert_wannaLearnKuerschner_yesKuerschner_02_02"); // In Ordnung. Als erstes ben�tigst du ein entsprechendes Messer.
		AI_Output(self, other, "VLK_413_Rupert_wannaLearnKuerschner_yesKuerschner_02_03"); // Achte darauf, dass es scharf ist, sonst zerst�rst du die Felle!
		AI_Output(self, other, "VLK_413_Rupert_wannaLearnKuerschner_yesKuerschner_02_04"); // Schneide am �u�eren Rand entlang, vorsichtig und immer in der Form.
		AI_Output(self, other, "VLK_413_Rupert_wannaLearnKuerschner_yesKuerschner_02_05"); // Mit gen�gend �bung bekommst du sch�ne Felle und H�ute.
		AI_Output(self, other, "VLK_413_Rupert_wannaLearnKuerschner_yesKuerschner_02_06"); // Halte dich am Anfang an kleinere Tiere wie W�lfe und Scavenger, die sind am einfachsten.
		learnedKuerschner = TRUE;
		kuerschnerSkill = 1;
		jobCounter += 1;
		AI_PrintS(self, "Neuer Beruf: K�rschnerei!");
		other.lp = other.lp - 5;
		Log_CreateTopic(TOPIC_Kuerschnerei, LOG_NOTE);
		B_LogEntry(TOPIC_Kuerschnerei, "Ich habe die K�rschnerei erlernt. Jetzt kann ich W�lfen das Fell und Scavengern die Haut abziehen.");
		if (MIS_getCitizen == LOG_RUNNING)
		{
			MIS_getCitizen = LOG_SUCCESS;
			Log_SetTopicStatus(TOPIC_getCitizen, LOG_SUCCESS);
			Log_AddEntry(TOPIC_getCitizen, "Rupert hat mich als Lehrling aufgenommen und mir die K�rschnerei beigebracht. Jetzt kann ich mich B�rger der Stadt Mahlendur nennen!");
		};
	}
	else
	{
		AI_Output(self, other, "VLK_413_Rupert_wannaLearnKuerschner_yesKuerschner_02_07"); // Das freut mich, aber du bist noch nicht soweit!
		AI_Output(self, other, "VLK_413_Rupert_wannaLearnKuerschner_yesKuerschner_02_08"); // Komm wieder, wenn du erfahrener bist!
	};
};

// **************************************************

instance VLK_413_Rupert_wannaLearnLeather (C_INFO)
{
	npc			= VLK_413_Rupert;
	condition		= VLK_413_Rupert_wannaLearnLeather_Condition;
	information		= VLK_413_Rupert_wannaLearnLeather_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Bilde mich zum Lederverarbeiter aus! (5 LP)";
};

func int VLK_413_Rupert_wannaLearnLeather_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_413_Rupert_gotInfos)) && (jobCounter <= 1) && (learnedLeather == FALSE))
	{
		return TRUE;
	};
};

func void VLK_413_Rupert_wannaLearnLeather_Info()
{
	AI_Output(other, self, "VLK_413_Rupert_wannaLearnLeather_Info_15_01"); // Bilde mich zum Lederverarbeiter aus! (5 LP)
	AI_Output(self, other, "VLK_413_Rupert_wannaLearnLeather_Info_02_02"); // Bist du dir sicher?
	AI_Output(self, other, "VLK_413_Rupert_wannaLearnLeather_Info_02_03"); // Du kannst immer nur zwei Berufe erlernen!
	Info_ClearChoices(VLK_413_Rupert_wannaLearnLeather);
	Info_AddChoice(VLK_413_Rupert_wannaLearnLeather, "Ich bin mir noch nicht sicher.", VLK_413_Rupert_wannaLearnLeather_noLeather);
	Info_AddChoice(VLK_413_Rupert_wannaLearnLeather, "Ja, ich bin mir sicher!", VLK_413_Rupert_wannaLearnLeather_yesKuerschner);
};

func void VLK_413_Rupert_wannaLearnLeather_noLeather()
{
	AI_Output(other, self, "VLK_413_Rupert_wannaLearnLeather_noLeather_15_01"); // Ich bin mir noch nicht sicher.
	AI_Output(self, other, "VLK_413_Rupert_wannaLearnLeather_noLeather_02_02"); // Gut, ich bin hier, falls du mich suchst.
	Info_ClearChoices(VLK_413_Rupert_wannaLearnLeather);
};

func void VLK_413_Rupert_wannaLearnLeather_yesKuerschner()
{
	AI_Output(other, self, "VLK_413_Rupert_wannaLearnLeather_yesKuerschner_15_01"); // Ja, ich bin mir sicher!
	if (other.LP >= 5)
	{
		AI_Output(self, other, "VLK_413_Rupert_wannaLearnLeather_yesKuerschner_02_02"); // In Ordnung. Wenn du schon einmal Stoff gen�ht hast, hast du einen Vorteil.
		AI_Output(self, other, "VLK_413_Rupert_wannaLearnLeather_yesKuerschner_02_03"); // Mit Leder und Fellen ist es ganz �hnlich. Nur ist das Material dicker.
		AI_Output(self, other, "VLK_413_Rupert_wannaLearnLeather_yesKuerschner_02_04"); // H�ute hingegen sind meistens sehr viel d�nner. Sei also vorsichtig.
		AI_Output(self, other, "VLK_413_Rupert_wannaLearnLeather_yesKuerschner_02_05"); // W�hle dein Werkzeug anhand deines Materials. F�r Felle nimmst du eine dicke Nadel und starken Faden.
		AI_Output(self, other, "VLK_413_Rupert_wannaLearnLeather_yesKuerschner_02_06"); // F�r H�ute brauchst du d�nne Nadeln, aber trotzdem stabile F�den.
		AI_Output(self, other, "VLK_413_Rupert_wannaLearnLeather_yesKuerschner_02_07"); // Wenn du dann noch eine Vorlage hast, steht deiner ersten R�stung nichts mehr im Wege!
		AI_Output(self, other, "VLK_413_Rupert_wannaLearnLeather_yesKuerschner_02_08"); // Versuch es einmal!
		learnedLeather = TRUE;
		leatherSkill = 1;
		jobCounter += 1;
		AI_PrintS(self, "Neuer Beruf: Lederverarbeitung!");
		other.lp = other.lp - 5;
		Log_CreateTopic(TOPIC_Kuerschnerei, LOG_NOTE);
		B_LogEntry(TOPIC_Kuerschnerei, "Ich habe die K�rschnerei erlernt. Jetzt kann ich die ersten H�ute und Felle weiterverarbeiten..");
		if (MIS_getCitizen == LOG_RUNNING)
		{
			MIS_getCitizen = LOG_SUCCESS;
			Log_SetTopicStatus(TOPIC_getCitizen, LOG_SUCCESS);
			Log_AddEntry(TOPIC_getCitizen, "Rupert hat mich als Lehrling aufgenommen und mir die Lederverarbeitung beigebracht. Jetzt kann ich mich B�rger der Stadt Mahlendur nennen!");
		};
	}
	else
	{
		AI_Output(self, other, "VLK_413_Rupert_wannaLearnLeather_yesKuerschner_02_09"); // Ich f�rchte, das wird so nichts.
		AI_Output(self, other, "VLK_413_Rupert_wannaLearnLeather_yesKuerschner_02_10"); // Komm wieder, wenn du mehr Erfahrung hast!
	};
};

// **************************************************

instance VLK_413_Rupert_letsTrade (C_INFO)
{
	npc			= VLK_413_Rupert;
	condition		= VLK_413_Rupert_letsTrade_Condition;
	information		= VLK_413_Rupert_letsTrade_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Handelst du mit mir?";
};

func int VLK_413_Rupert_letsTrade_Condition()
{
	return TRUE;
};

func void VLK_413_Rupert_letsTrade_Info()
{
	AI_Output(other, self, "VLK_413_Rupert_letsTrade_Info_15_01"); // Handelst du mit mir?
	AI_Output(self, other, "VLK_413_Rupert_letsTrade_Info_02_02"); // Nat�rlich. Ich werde dir deine Felle, Krallen und andere Jagdtroph�en abkaufen.
};

// **************************************************

instance VLK_413_Rupert_letsTrade2 (C_INFO)
{
	npc			= VLK_413_Rupert;
	condition		= VLK_413_Rupert_letsTrade2_Condition;
	information		= VLK_413_Rupert_letsTrade2_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 998;
	description		= "Zeig mir deine Ware!";
	trade		= TRUE;
};

func int VLK_413_Rupert_letsTrade2_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_413_Rupert_letsTrade))
	{
		return TRUE;
	};
};

func void VLK_413_Rupert_letsTrade2_Info()
{
	B_GiveTradeInv(self);
	AI_Output(other, self, "VLK_413_Rupert_letsTrade2_Info_15_01"); // Zeig mir deine Ware!
};
