// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!

var int tradedPot;

// **************************************************

instance SLD_704_Steph_Exit (C_INFO)
{
	npc			= SLD_704_Steph;
	condition		= SLD_704_Steph_Exit_Condition;
	information		= SLD_704_Steph_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int SLD_704_Steph_Exit_Condition()
{
	return TRUE;
};

func void SLD_704_Steph_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance SLD_704_Steph_whoAreYou (C_INFO)
{
	npc			= SLD_704_Steph;
	condition		= SLD_704_Steph_whoAreYou_Condition;
	information		= SLD_704_Steph_whoAreYou_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int SLD_704_Steph_whoAreYou_Condition()
{
	return TRUE;
};

func void SLD_704_Steph_whoAreYou_Info()
{
	AI_Output(self, other, "SLD_704_Steph_whoAreYou_Info_07_01"); // Hey, pass doch auf, wo du hintrittst!
	AI_Output(self, other, "SLD_704_Steph_whoAreYou_Info_07_02"); // Du zertrampelst noch meine ganzen Pflanzen!
};

// **************************************************

instance SLD_704_Steph_whatAreYouDoing (C_INFO)
{
	npc			= SLD_704_Steph;
	condition		= SLD_704_Steph_whatAreYouDoing_Condition;
	information		= SLD_704_Steph_whatAreYouDoing_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was machst du hier?";
};

func int SLD_704_Steph_whatAreYouDoing_Condition()
{
	if (Npc_KnowsInfo(hero, SLD_704_Steph_whoAreYou))
	{
		return TRUE;
	};
};

func void SLD_704_Steph_whatAreYouDoing_Info()
{
	AI_Output(other, self, "SLD_704_Steph_whatAreYouDoing_Info_15_01"); // Was machst du hier?
	AI_Output(self, other, "SLD_704_Steph_whatAreYouDoing_Info_07_02"); // Ich baue Sumpfkraut an, riechst du das nicht?
	AI_Output(other, self, "SLD_704_Steph_whatAreYouDoing_Info_15_03"); // Das Zeug wächst hier?
	AI_Output(self, other, "SLD_704_Steph_whatAreYouDoing_Info_07_04"); // Wie Teufel! Hätte ich nicht gedacht. Aber nur hier. Scheint die Nähe zur Kapelle zu machen
	AI_Output(self, other, "SLD_704_Steph_whatAreYouDoing_Info_07_05"); // Scheinbar stehen die Götter auf den Stoff (lacht)
};

// **************************************************

instance SLD_704_Steph_canBuySth (C_INFO)
{
	npc			= SLD_704_Steph;
	condition		= SLD_704_Steph_canBuySth_Condition;
	information		= SLD_704_Steph_canBuySth_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Kann ich dir etwas Sumpfkraut abkaufen?";
};

func int SLD_704_Steph_canBuySth_Condition()
{
	if ((Npc_KnowsInfo(hero, SLD_704_Steph_whatAreYouDoing)) && (tradedPot == FALSE))
	{
		return TRUE;
	};
};

func void SLD_704_Steph_canBuySth_Info()
{
	AI_Output(other, self, "SLD_704_Steph_canBuySth_Info_15_01"); // Kann ich dir etwas Sumpfkraut abkaufen?
	AI_Output(self, other, "SLD_704_Steph_canBuySth_Info_07_02"); // Klar, Mann! Ich hab' den besten Stoff der ganzen Insel. Wieviel brauchst du?
	Info_ClearChoices(SLD_704_Steph_canBuySth);
	Info_AddChoice(SLD_704_Steph_canBuySth, "Gib mir zehn Stängel!", SLD_704_Steph_canBuySth_tenPcs);
	Info_AddChoice(SLD_704_Steph_canBuySth, "Fünf reichen erstmal.", SLD_704_Steph_canBuySth_fivePcs);
	Info_AddChoice(SLD_704_Steph_canBuySth, "Gib mir einen!", SLD_704_Steph_canBuySth_onePcs);
};

func void SLD_704_Steph_canBuySth_tenPcs()
{
	AI_Output(other, self, "SLD_704_Steph_canBuySth_tenPcs_15_01"); // Gib mir zehn Stängel!
	AI_Output(self, other, "SLD_704_Steph_canBuySth_tenPcs_07_02"); // Zehn Stängel? Mensch, du haust ja richtig rein.
	AI_Output(self, other, "SLD_704_Steph_canBuySth_tenPcs_07_03"); // Ich mach dir einen Freundschaftspreis. Nur 100 Goldstücke!
	if (Npc_HasItems (hero, ItMi_Gold) >= 100)
	{
		AI_Output(other, self, "SLD_704_Steph_canBuySth_tenPcs_15_04"); // Hier!
		B_GiveInvItems(other, self, ItMi_Gold,  100);
		AI_Output(self, other, "SLD_704_Steph_canBuySth_tenPcs_07_05"); // Danke, Mann! Hier ist dein Zeug!
		CreateInvItems(self, ItMi_Joint,  10);
		B_GiveInvItems(self, other, ItMi_Joint,  10);
		tradedPot = TRUE;
	}
	else
	{
		AI_Output(other, self, "SLD_704_Steph_canBuySth_tenPcs_15_06"); // Soviel hab ich nicht dabei.
		AI_Output(self, other, "SLD_704_Steph_canBuySth_tenPcs_07_07"); // Kein Problem, Mann! Ich lauf hier nicht weg!
	};
	Info_ClearChoices(SLD_704_Steph_canBuySth);
};

func void SLD_704_Steph_canBuySth_fivePcs()
{
	AI_Output(other, self, "SLD_704_Steph_canBuySth_fivePcs_15_01"); // Fünf reichen erstmal.
	AI_Output(self, other, "SLD_704_Steph_canBuySth_fivePcs_07_02"); // Gut. Ich mach dir einen Freundschaftspreis. Nur 50 Goldstücke!
	if (Npc_HasItems (hero, ItMi_Gold) >= 50)
	{
		AI_Output(other, self, "SLD_704_Steph_canBuySth_fivePcs_15_03"); // Hier!
		B_GiveInvItems(other, self, ItMi_Gold,  50);
		AI_Output(self, other, "SLD_704_Steph_canBuySth_fivePcs_07_04"); // Danke, Mann! Hier ist dein Zeug!
		CreateInvItems(self, ItMi_Joint,  5);
		B_GiveInvItems(self, other, ItMi_Joint,  5);
		tradedPot = TRUE;
	}
	else
	{
		AI_Output(other, self, "SLD_704_Steph_canBuySth_fivePcs_15_05"); // Soviel hab ich nicht dabei.
		AI_Output(self, other, "SLD_704_Steph_canBuySth_fivePcs_07_06"); // Kein Problem, Mann! Ich lauf hier nicht weg!
	};
	Info_ClearChoices(SLD_704_Steph_canBuySth);
};

func void SLD_704_Steph_canBuySth_onePcs()
{
	AI_Output(other, self, "SLD_704_Steph_canBuySth_onePcs_15_01"); // Gib mir einen!
	AI_Output(self, other, "SLD_704_Steph_canBuySth_onePcs_07_02"); // Ah, ein Genießer!
	AI_Output(self, other, "SLD_704_Steph_canBuySth_onePcs_07_03"); // Ich mach dir einen Freundschaftspreis. Nur 10 Goldstücke!
	if (Npc_HasItems (hero, ItMi_Gold) >= 10)
	{
		AI_Output(other, self, "SLD_704_Steph_canBuySth_onePcs_15_04"); // Hier!
		B_GiveInvItems(other, self, ItMi_Gold,  10);
		AI_Output(self, other, "SLD_704_Steph_canBuySth_onePcs_07_05"); // Danke, Mann! Hier ist dein Zeug!
		CreateInvItems(self, ItMi_Joint,  1);
		B_GiveInvItems(self, other, ItMi_Joint,  1);
		tradedPot = TRUE;
	}
	else
	{
		AI_Output(other, self, "SLD_704_Steph_canBuySth_onePcs_15_06"); // Soviel hab ich nicht dabei.
		AI_Output(self, other, "SLD_704_Steph_canBuySth_onePcs_07_07"); // Kein Problem, Mann! Ich lauf hier nicht weg!
	};
	Info_ClearChoices(SLD_704_Steph_canBuySth);
};

// **************************************************

instance SLD_704_Steph_canBuyMore (C_INFO)
{
	npc			= SLD_704_Steph;
	condition		= SLD_704_Steph_canBuyMore_Condition;
	information		= SLD_704_Steph_canBuyMore_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kannst du mir noch mehr verkaufen?";
};

func int SLD_704_Steph_canBuyMore_Condition()
{
	if (tradedPot == TRUE)
	{
		return TRUE;
	};
};

func void SLD_704_Steph_canBuyMore_Info()
{
	AI_Output(other, self, "SLD_704_Steph_canBuyMore_Info_15_01"); // Kannst du mir noch mehr verkaufen?
	AI_Output(self, other, "SLD_704_Steph_canBuyMore_Info_07_02"); // Weißt du, meine Vorräte sind langsam aufgebraucht.
	AI_Output(self, other, "SLD_704_Steph_canBuyMore_Info_07_03"); // Aber ich biete dir etwas besseres: Ich bringe dir bei, wie du selber herrliche Stängel herstellst!
	AI_Output(self, other, "SLD_704_Steph_canBuyMore_Info_07_04"); // Du müsstest mir nur einen kleinen Gefallen tun.
};

// **************************************************

instance SLD_704_Steph_whatToDo (C_INFO)
{
	npc			= SLD_704_Steph;
	condition		= SLD_704_Steph_whatToDo_Condition;
	information		= SLD_704_Steph_whatToDo_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was soll ich für dich tun?";
};

func int SLD_704_Steph_whatToDo_Condition()
{
	if (Npc_KnowsInfo(hero, SLD_704_Steph_canBuyMore))
	{
		return TRUE;
	};
};

func void SLD_704_Steph_whatToDo_Info()
{
	AI_Output(other, self, "SLD_704_Steph_whatToDo_Info_15_01"); // Was soll ich für dich tun?
	AI_Output(self, other, "SLD_704_Steph_whatToDo_Info_07_02"); // Hör zu: Ich komme hier in der letzten Zeit kaum noch weg. Außerdem lassen uns die Wachen nicht mehr in die Stadt.
	AI_Output(self, other, "SLD_704_Steph_whatToDo_Info_07_03"); // Ich habe hier ein großes Paket, 15 Stängel. Die müssen an den Mann gebracht werden.
	AI_Output(self, other, "SLD_704_Steph_whatToDo_Info_07_04"); // Ich mache dir einen Vorschlag: Du bringst das Zeug in die Stadt und an den Mann.
	AI_Output(self, other, "SLD_704_Steph_whatToDo_Info_07_05"); // Dann bringst du mir das Gold und ich bringe dir die hohe Kunst des Stängeldrehens bei.
	AI_Output(self, other, "SLD_704_Steph_whatToDo_Info_07_06"); // Was sagst du?
	Info_ClearChoices(SLD_704_Steph_whatToDo);
	Info_AddChoice(SLD_704_Steph_whatToDo, "Danke, verzichte.", SLD_704_Steph_whatToDo_noThanks);
	Info_AddChoice(SLD_704_Steph_whatToDo, "Klar, gib her!", SLD_704_Steph_whatToDo_yeahSure);
};

func void SLD_704_Steph_whatToDo_noThanks()
{
	AI_Output(other, self, "SLD_704_Steph_whatToDo_noThanks_15_01"); // Danke, verzichte.
	AI_Output(self, other, "SLD_704_Steph_whatToDo_noThanks_07_02"); // Wie du willst. Man kanns halt nicht jedem Recht machen.
	AI_StopProcessInfos(self);
	Info_ClearChoices(SLD_704_Steph_whatToDo);
};

func void SLD_704_Steph_whatToDo_yeahSure()
{
	AI_Output(other, self, "SLD_704_Steph_whatToDo_yeahSure_15_01"); // Klar, gib her!
	AI_Output(self, other, "SLD_704_Steph_whatToDo_yeahSure_07_02"); // Gut, hier sind die Stängel.
	CreateInvItems(self, ItMi_Joint,  15);
	B_GiveInvItems(self, other, ItMi_Joint,  15);
	AI_Output(self, other, "SLD_704_Steph_whatToDo_yeahSure_07_03"); // Du kannst jeden für 30 Gold verkaufen. Wenn du mir also...
	AI_Output(self, other, "SLD_704_Steph_whatToDo_yeahSure_07_04"); // ... also...
	AI_Output(other, self, "SLD_704_Steph_whatToDo_yeahSure_15_05"); // 450?
	AI_Output(self, other, "SLD_704_Steph_whatToDo_yeahSure_07_06"); // Genau, 450 Goldstücke bringst, dann sind wir im Geschäft!
	AI_Output(self, other, "SLD_704_Steph_whatToDo_yeahSure_07_07"); // Ich verlass mich auf dich!
	MIS_potTrade = LOG_RUNNING;
	Log_CreateTopic(TOPIC_potTrade, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_potTrade, LOG_RUNNING);
	B_LogEntry(TOPIC_potTrade, "Ich habe mich bereit erklärt, die Sumpfkrautstängel von Steph in die Stadt zu bringen und zu verkaufen. Wenn ich ihm die 450 Goldstücke bringe, bringt er mir bei, wie ich meine eigenen Stängel drehe.");
	Info_ClearChoices(SLD_704_Steph_whatToDo);
};
