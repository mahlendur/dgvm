// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!

var int knowsAboutHose;
var int mikaAkt;

// **************************************************

instance VLK_3005_Mika_Exit (C_INFO)
{
	npc			= VLK_3005_Mika;
	condition		= VLK_3005_Mika_Exit_Condition;
	information		= VLK_3005_Mika_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int VLK_3005_Mika_Exit_Condition()
{
	return TRUE;
};

func void VLK_3005_Mika_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance VLK_3005_Mika_youSchuerfer (C_INFO)
{
	npc			= VLK_3005_Mika;
	condition		= VLK_3005_Mika_youSchuerfer_Condition;
	information		= VLK_3005_Mika_youSchuerfer_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Du bist Schürfer?";
};

func int VLK_3005_Mika_youSchuerfer_Condition()
{
	return TRUE;
};

func void VLK_3005_Mika_youSchuerfer_Info()
{
	AI_Output(other, self, "VLK_3005_Mika_youSchuerfer_Info_15_01"); // Du bist Schürfer?
	AI_Output(self, other, "VLK_3005_Mika_youSchuerfer_Info_09_02"); // Ach was, wie kommst du denn darauf?
	AI_Output(self, other, "VLK_3005_Mika_youSchuerfer_Info_09_03"); // Was hat mich verraten?
	Info_ClearChoices(VLK_3005_Mika_youSchuerfer);
	Info_AddChoice(VLK_3005_Mika_youSchuerfer, "Ich dachte da an deine Spitzhacke...", VLK_3005_Mika_youSchuerfer_spitzhacke);
	Info_AddChoice(VLK_3005_Mika_youSchuerfer, "Eigentlich nur die komische Hose.", VLK_3005_Mika_youSchuerfer_thoughtOfIt);
};

func void VLK_3005_Mika_youSchuerfer_spitzhacke()
{
	AI_Output(other, self, "VLK_3005_Mika_youSchuerfer_spitzhacke_15_01"); // Ich dachte da an deine Spitzhacke...
	AI_Output(self, other, "VLK_3005_Mika_youSchuerfer_spitzhacke_09_02"); // Ts... Du bist mir ja ein Spaßvogel.
	AI_Output(self, other, "VLK_3005_Mika_youSchuerfer_spitzhacke_09_03"); // Was kann ich für dich tun?
	Info_ClearChoices(VLK_3005_Mika_youSchuerfer);
};

func void VLK_3005_Mika_youSchuerfer_thoughtOfIt()
{
	AI_Output(other, self, "VLK_3005_Mika_youSchuerfer_thoughtOfIt_15_01"); // Eigentlich nur die komische Hose.
	AI_Output(self, other, "VLK_3005_Mika_youSchuerfer_thoughtOfIt_09_02"); // Ach was, das unbequeme Ding.
	AI_Output(self, other, "VLK_3005_Mika_youSchuerfer_thoughtOfIt_09_03"); // Ich wünschte, ich hätte meine alte Lederrüstung noch.
	AI_Output(self, other, "VLK_3005_Mika_youSchuerfer_thoughtOfIt_09_04"); // Da drunter war es zwar warm, aber immerhin bekam ich so nicht immer die Splitter ab.
	AI_Output(self, other, "VLK_3005_Mika_youSchuerfer_thoughtOfIt_09_05"); // Gut, was kann ich für dich tun?
	knowsAboutHose = TRUE;
	Info_ClearChoices(VLK_3005_Mika_youSchuerfer);
};

// **************************************************

instance VLK_3005_Mika_justTalk (C_INFO)
{
	npc			= VLK_3005_Mika;
	condition		= VLK_3005_Mika_justTalk_Condition;
	information		= VLK_3005_Mika_justTalk_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich wollte nur ein bisschen quatschen.";
};

func int VLK_3005_Mika_justTalk_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_3005_Mika_youSchuerfer))
	{
		return TRUE;
	};
};

func void VLK_3005_Mika_justTalk_Info()
{
	AI_Output(other, self, "VLK_3005_Mika_justTalk_Info_15_01"); // Ich wollte nur ein bisschen quatschen.
	AI_Output(self, other, "VLK_3005_Mika_justTalk_Info_09_02"); // Sorry, dafür hab ich keine Zeit!
	AI_Output(self, other, "VLK_3005_Mika_justTalk_Info_09_03"); // Du siehst ja, wieviel Erz wir noch aus dem Stein holen müssen.
	AI_StopProcessInfos(self);
};

// **************************************************

instance VLK_3005_Mika_fromHatof (C_INFO)
{
	npc			= VLK_3005_Mika;
	condition		= VLK_3005_Mika_fromHatof_Condition;
	information		= VLK_3005_Mika_fromHatof_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Hatof schickt mich, ich soll eine Erzkiste abholen!";
};

func int VLK_3005_Mika_fromHatof_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_412_Hatof_whatToDo))
	{
		return TRUE;
	};
};

func void VLK_3005_Mika_fromHatof_Info()
{
	AI_Output(other, self, "VLK_3005_Mika_fromHatof_Info_15_01"); // Hatof schickt mich, ich soll eine Erzkiste abholen!
	AI_Output(self, other, "VLK_3005_Mika_fromHatof_Info_09_02"); // Kann ich dir denn vertrauen?
	AI_Output(self, other, "VLK_3005_Mika_fromHatof_Info_09_03"); // Na gut, ich will mal nicht so sein. Wenigstens muss ich das Ding nicht selber schleppen.
	CreateInvItems(self, ItMi_Erzkiste,  1);
	B_GiveInvItems(self, other, ItMi_Erzkiste,  1);
	B_LogEntry(TOPIC_workHatof, "Mika hat mir die Erzkiste gegeben. Große Götter ist das Ding schwer! Schnell zu Hatof damit!");
	AI_Output(self, other, "VLK_3005_Mika_fromHatof_Info_09_04"); // Richte ihm schöne Grüße aus und sag ihm, er soll langsamer schmieden! (lacht)
	AI_Output(self, other, "VLK_3005_Mika_fromHatof_Info_09_05"); // Wir kommen gar nicht hinterher mit dem Schürfen.
};

// **************************************************

instance VLK_3005_Mika_youLookForHose (C_INFO)
{
	npc			= VLK_3005_Mika;
	condition		= VLK_3005_Mika_youLookForHose_Condition;
	information		= VLK_3005_Mika_youLookForHose_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Du suchst deine alte Lederrüstung?";
};

func int VLK_3005_Mika_youLookForHose_Condition()
{
	if (knowsAboutHose == TRUE)
	{
		return TRUE;
	};
};

func void VLK_3005_Mika_youLookForHose_Info()
{
	AI_Output(other, self, "VLK_3005_Mika_youLookForHose_Info_15_01"); // Du suchst deine alte Lederrüstung?
	AI_Output(self, other, "VLK_3005_Mika_youLookForHose_Info_09_02"); // Ja, Mann! Das Ding ist kaputt. Komplett zerissen.
	AI_Output(self, other, "VLK_3005_Mika_youLookForHose_Info_09_03"); // Seit meinem letzten Kampf mit ein paar Wölfen ist sie in Reparatur.
	AI_Output(self, other, "VLK_3005_Mika_youLookForHose_Info_09_04"); // Und ich komm hier verdammt nochmal nicht weg.
};

// **************************************************

instance VLK_3005_Mika_shallIGo (C_INFO)
{
	npc			= VLK_3005_Mika;
	condition		= VLK_3005_Mika_shallIGo_Condition;
	information		= VLK_3005_Mika_shallIGo_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Soll ich sie für dich holen?";
};

func int VLK_3005_Mika_shallIGo_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_3005_Mika_youLookForHose))
	{
		return TRUE;
	};
};

func void VLK_3005_Mika_shallIGo_Info()
{
	AI_Output(other, self, "VLK_3005_Mika_shallIGo_Info_15_01"); // Soll ich sie für dich holen?
	AI_Output(self, other, "VLK_3005_Mika_shallIGo_Info_09_02"); // Das würdest du tun?
	AI_Output(self, other, "VLK_3005_Mika_shallIGo_Info_09_03"); // Mensch, das wär klasse!
	AI_Output(other, self, "VLK_3005_Mika_shallIGo_Info_15_04"); // Wo hast du sie denn abgegeben?
	AI_Output(self, other, "VLK_3005_Mika_shallIGo_Info_09_05"); // Bei Ruperts 'gespannter Sehne'. Rupert ist der Lederverarbeiter in Mahlendur.
	AI_Output(self, other, "VLK_3005_Mika_shallIGo_Info_09_06"); // Hier hast du etwas Gold. Schließlich arbeitet auch er nicht umsonst.
	CreateInvItems(self, ItMi_Gold,  150);
	B_GiveInvItems(self, other, ItMi_Gold,  150);
	AI_Output(self, other, "VLK_3005_Mika_shallIGo_Info_09_07"); // Aber versauf das Gold nicht!
	AI_Output(other, self, "VLK_3005_Mika_shallIGo_Info_15_08"); // Bin gleich wieder zurück!
	MIS_mikaHose = LOG_RUNNING;
	Log_CreateTopic(TOPIC_mikaHose, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_mikaHose, LOG_RUNNING);
	B_LogEntry(TOPIC_mikaHose, "Mika, einer der Schürfer vor der Stadt hat vor einigen Tagen seine Lederrüstung bei Rupert dem Lederer zur Reparatur abgegeben. Ich habe mich angeboten, die Rüstung für ihn abzuholen.");
	mikaTag = Wld_GetDay();
};

// **************************************************

instance VLK_3005_Mika_gotYourRuestung (C_INFO)
{
	npc			= VLK_3005_Mika;
	condition		= VLK_3005_Mika_gotYourRuestung_Condition;
	information		= VLK_3005_Mika_gotYourRuestung_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich hab deine Rüstung!";
};

func int VLK_3005_Mika_gotYourRuestung_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_3005_Mika_shallIGo)) && (Npc_HasItems(other, ItAr_Mika) >= 1))
	{
		return TRUE;
	};
};

func void VLK_3005_Mika_gotYourRuestung_Info()
{
	AI_Output(other, self, "VLK_3005_Mika_gotYourRuestung_Info_15_01"); // Ich hab deine Rüstung!
	B_GiveInvItems(other, self, ItAr_Mika,  1);
	mikaAkt = Wld_GetDay() - mikaTag;
	if (mikaAkt >= 3)
	{
		AI_Output(self, other, "VLK_3005_Mika_gotYourRuestung_Info_09_02"); // Das hat aber auch lange gedauert! Musstest du die Rüstung erst noch nähen?
		AI_Output(other, self, "VLK_3005_Mika_gotYourRuestung_Info_15_03"); // Ich nicht, aber Rupert!
		AI_Output(self, other, "VLK_3005_Mika_gotYourRuestung_Info_09_04"); // Hah, das glaubst du doch wohl selber nicht.
		AI_Output(self, other, "VLK_3005_Mika_gotYourRuestung_Info_09_05"); // Hast wahrscheinlich das Gold doch versoffen und musstest erst neues auftreiben.
		AI_Output(other, self, "VLK_3005_Mika_gotYourRuestung_Info_15_06"); // Ich..
		AI_Output(self, other, "VLK_3005_Mika_gotYourRuestung_Info_09_07"); // Ist ja auch egal, jetzt hab ich meine Rüstung ja wieder. Danke dafür.
		AI_Output(self, other, "VLK_3005_Mika_gotYourRuestung_Info_09_08"); // Hier hast du ein wenig Gold. Diesmal kannst du es versaufen!
		CreateInvItems(self, ItMi_Gold,  20);
		B_GiveInvItems(self, other, ItMi_Gold,  20);
		B_GivePlayerXP(XP_AmbientKap1);
		B_LogEntry(TOPIC_mikaHose, "Mika hat seine Rüstung wieder. Scheinbar hat es ihm zu lange gedauert, aber immerhin habe ich etwas Gold bekommen.");
		MIS_mikaHose = LOG_SUCCESS;
		Log_SetTopicStatus(TOPIC_mikaHose, LOG_SUCCESS);
	};
	if (mikaAkt == 2)
	{
		AI_Output(self, other, "VLK_3005_Mika_gotYourRuestung_Info_09_09"); // Ich dachte schon, du hättest dir nen Knopf an die Back genäht.
		AI_Output(other, self, "VLK_3005_Mika_gotYourRuestung_Info_15_10"); // So ähnlich...
		AI_Output(self, other, "VLK_3005_Mika_gotYourRuestung_Info_09_11"); // (lacht) Gut, dass du dann noch sprechen kannst.
		AI_Output(self, other, "VLK_3005_Mika_gotYourRuestung_Info_09_12"); // Vielen Dank für die Rüstung. Ein Weg gespart.
		AI_Output(self, other, "VLK_3005_Mika_gotYourRuestung_Info_09_13"); // Warte, ich geb dir etwas Gold als Belohnung. Hast du dir verdient.
		CreateInvItems(self, ItMi_Gold,  30);
		B_GiveInvItems(self, other, ItMi_Gold,  30);
		B_GivePlayerXP(XP_AmbientKap2);
		Log_AddEntry(TOPIC_mikaHose, "Mika hat seine Rüstung wieder. Er schien zufrieden. Wenigstens ist mein Goldbeutel etwas voller.");
		MIS_mikaHose = LOG_SUCCESS;
		Log_SetTopicStatus(TOPIC_mikaHose, LOG_SUCCESS);
	};
	if (mikaAkt == 1)
	{
		AI_Output(self, other, "VLK_3005_Mika_gotYourRuestung_Info_09_14"); // Mensch, das ging flott!
		AI_Output(self, other, "VLK_3005_Mika_gotYourRuestung_Info_09_15"); // Danke fürs Laufen. Hier ist deine Belohnung. Versauf nicht alles auf einmal!
		CreateInvItems(self, ItMi_Gold,  50);
		B_GiveInvItems(self, other, ItMi_Gold,  50);
		B_GivePlayerXP(XP_AmbientKap2);
		Log_AddEntry(TOPIC_mikaHose, "Mika hat seine Rüstung wieder. Er war sehr glücklich und gab mir etwas Gold für meine Mühen.");
		MIS_mikaHose = LOG_SUCCESS;
		Log_SetTopicStatus(TOPIC_mikaHose, LOG_SUCCESS);
	};
	if (mikaAkt == 0)
	{
		AI_Output(self, other, "VLK_3005_Mika_gotYourRuestung_Info_09_16"); // Bist du geflogen?
		AI_Output(self, other, "VLK_3005_Mika_gotYourRuestung_Info_09_17"); // Wie auch immer. Ich danke dir für den Weg.
		AI_Output(self, other, "VLK_3005_Mika_gotYourRuestung_Info_09_18"); // Hier, das sollte dir helfen. Viel Erfolg für die Zukunft!
		CreateInvItems(self, ItMi_Gold,  75);
		B_GiveInvItems(self, other, ItMi_Gold,  75);
		CreateInvItems(self, ItPo_Health_01,  1);
		B_GiveInvItems(self, other, ItPo_Health_01,  1);
		B_GivePlayerXP(XP_AmbientKap3);
		Log_AddEntry(TOPIC_mikaHose, "Mika hat seine Rüstung wieder. Er schien sehr zufrieden mit mir, gab mir etwas Gold und sogar einen Heiltrank!");
		MIS_mikaHose = LOG_SUCCESS;
		Log_SetTopicStatus(TOPIC_mikaHose, LOG_SUCCESS);
	};
};
