// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


// **************************************************

instance PIR_1305_Steve_Exit (C_INFO)
{
	npc			= PIR_1305_Steve;
	condition		= PIR_1305_Steve_Exit_Condition;
	information		= PIR_1305_Steve_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int PIR_1305_Steve_Exit_Condition()
{
	return TRUE;
};

func void PIR_1305_Steve_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance PIR_1305_Steve_whatYouDoing (C_INFO)
{
	npc			= PIR_1305_Steve;
	condition		= PIR_1305_Steve_whatYouDoing_Condition;
	information		= PIR_1305_Steve_whatYouDoing_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was machst du gerade?";
};

func int PIR_1305_Steve_whatYouDoing_Condition()
{
	if (Wld_IsTime(08,00,16,00))
	{
		return TRUE;
	};
};

func void PIR_1305_Steve_whatYouDoing_Info()
{
	AI_Output(other, self, "PIR_1305_Steve_whatYouDoing_Info_15_01"); // Was machst du gerade?
	AI_Output(self, other, "PIR_1305_Steve_whatYouDoing_Info_01_02"); // Siehst du das nicht?
	AI_Output(self, other, "PIR_1305_Steve_whatYouDoing_Info_01_03"); // Verdammt nochmal, bist du blind?
	AI_Output(self, other, "PIR_1305_Steve_whatYouDoing_Info_01_04"); // Ich säge Holz! Den ganzen langen Tag säge ich gottverdammtes Holz!
	AI_Output(self, other, "PIR_1305_Steve_whatYouDoing_Info_01_05"); // Jetzt muss nur noch irgendjemand das alles zu Brennholz verarbeiten.
	AI_Output(self, other, "PIR_1305_Steve_whatYouDoing_Info_01_06"); // DEN Scheiß mache ich garantiert nicht auch noch!
};

// **************************************************

instance PIR_1305_Steve_letMeHack (C_INFO)
{
	npc			= PIR_1305_Steve;
	condition		= PIR_1305_Steve_letMeHack_Condition;
	information		= PIR_1305_Steve_letMeHack_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kann ich dir irgendwie helfen?";
};

func int PIR_1305_Steve_letMeHack_Condition()
{
	if ((Npc_KnowsInfo(hero, PIR_1305_Steve_whatYouDoing)) && (kapitel >= 2))
	{
		return TRUE;
	};
};

func void PIR_1305_Steve_letMeHack_Info()
{
	AI_Output(other, self, "PIR_1305_Steve_letMeHack_Info_15_01"); // Kann ich dir irgendwie helfen?
	AI_Output(self, other, "PIR_1305_Steve_letMeHack_Info_01_02"); // Was denkst du denn? Schonmal versucht zu zweit an einem Stamm zu sägen?
	AI_Output(self, other, "PIR_1305_Steve_letMeHack_Info_01_03"); // Aber du könntest das Holz kleinhacken.
	AI_Output(self, other, "PIR_1305_Steve_letMeHack_Info_01_04"); // Ich hab schon einiges da hinten gestapelt. Hier, bring mir 15 Holzscheite und dann sehen wir weiter!
	AI_Output(self, other, "PIR_1305_Steve_letMeHack_Info_01_05"); // So, und jetzt fang an!
	MIS_woodChopping = LOG_RUNNING;
	Log_CreateTopic(TOPIC_woodChopping, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_woodChopping, LOG_RUNNING);
	B_LogEntry(TOPIC_woodChopping, "Steve hat mir aufgetragen, 15 Holzscheite zu hacken. Vielleicht ist er dann nicht mehr so mies gelaunt.");
	AI_StopProcessInfos(self);
};

// **************************************************

instance PIR_1305_Steve_gotWood (C_INFO)
{
	npc			= PIR_1305_Steve;
	condition		= PIR_1305_Steve_gotWood_Condition;
	information		= PIR_1305_Steve_gotWood_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich hab dein Holz!";
};

func int PIR_1305_Steve_gotWood_Condition()
{
	if ((Npc_KnowsInfo(hero, PIR_1305_Steve_letMeHack)) && (Npc_HasItems(other, ItMi_Holzscheit) >= 15))
	{
		return TRUE;
	};
};

func void PIR_1305_Steve_gotWood_Info()
{
	AI_Output(other, self, "PIR_1305_Steve_gotWood_Info_15_01"); // Ich hab dein Holz!
	AI_Output(self, other, "PIR_1305_Steve_gotWood_Info_01_02"); // Echt? Mann, gute Arbeit! Gib her!
	AI_Output(other, self, "PIR_1305_Steve_gotWood_Info_15_03"); // Hier!
	B_GiveInvItems(other, self, ItMi_Holzscheit,  15);
	AI_Output(self, other, "PIR_1305_Steve_gotWood_Info_01_04"); // Sehr gut. Das wird die Feuer in der nächsten Zeit warmhalten.
	AI_Output(self, other, "PIR_1305_Steve_gotWood_Info_01_05"); // Hier, du hast dir ein bisschen Gold verdient.
	CreateInvItems(self, ItMi_Gold,  50);
	B_GiveInvItems(self, other, ItMi_Gold,  50);
	B_GivePlayerXP(200);
	B_LogEntry(TOPIC_woodChopping, "Steve hat sein Feuerholz bekommen.");
	MIS_woodChopping = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_woodChopping, LOG_SUCCESS);
};

// **************************************************

instance PIR_1305_Steve_whereToGetAxe (C_INFO)
{
	npc			= PIR_1305_Steve;
	condition		= PIR_1305_Steve_whereToGetAxe_Condition;
	information		= PIR_1305_Steve_whereToGetAxe_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Woher bekomme ich eine Axt?";
};

func int PIR_1305_Steve_whereToGetAxe_Condition()
{
	if (Npc_KnowsInfo(hero, PIR_1305_Steve_letMeHack))
	{
		return TRUE;
	};
};

func void PIR_1305_Steve_whereToGetAxe_Info()
{
	AI_Output(other, self, "PIR_1305_Steve_whereToGetAxe_Info_15_01"); // Woher bekomme ich eine Axt?
	AI_Output(self, other, "PIR_1305_Steve_whereToGetAxe_Info_01_02"); // Sieh dich um! Irgendwo liegt bestimmt noch eine rum.
	AI_Output(self, other, "PIR_1305_Steve_whereToGetAxe_Info_01_03"); // Aber nimm nichts zu Großes. Etwas handliches und dann ab dafür!
};
