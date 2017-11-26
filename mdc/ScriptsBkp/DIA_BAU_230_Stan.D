// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


// **************************************************

instance BAU_230_Stan_Exit (C_INFO)
{
	npc			= BAU_230_Stan;
	condition		= BAU_230_Stan_Exit_Condition;
	information		= BAU_230_Stan_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int BAU_230_Stan_Exit_Condition()
{
	return TRUE;
};

func void BAU_230_Stan_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance BAU_230_Stan_yourFarm (C_INFO)
{
	npc			= BAU_230_Stan;
	condition		= BAU_230_Stan_yourFarm_Condition;
	information		= BAU_230_Stan_yourFarm_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ist das dein Hof?";
};

func int BAU_230_Stan_yourFarm_Condition()
{
	return TRUE;
};

func void BAU_230_Stan_yourFarm_Info()
{
	AI_Output(other, self, "BAU_230_Stan_yourFarm_Info_15_01"); // Ist das dein Hof?
	AI_Output(self, other, "BAU_230_Stan_yourFarm_Info_03_02"); // Ganz richtig. Also pass auf, dass du dich benimmst.
};

// **************************************************

instance BAU_230_Stan_canBuySth (C_INFO)
{
	npc			= BAU_230_Stan;
	condition		= BAU_230_Stan_canBuySth_Condition;
	information		= BAU_230_Stan_canBuySth_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kann ich bei dir was kaufen?";
};

func int BAU_230_Stan_canBuySth_Condition()
{
	if (Npc_KnowsInfo(hero, BAU_230_Stan_yourFarm))
	{
		return TRUE;
	};
};

func void BAU_230_Stan_canBuySth_Info()
{
	AI_Output(other, self, "BAU_230_Stan_canBuySth_Info_15_01"); // Kann ich bei dir was kaufen?
	AI_Output(self, other, "BAU_230_Stan_canBuySth_Info_03_02"); // Frag mal Ron. Er ist mein Lagerverwalter.
	AI_Output(self, other, "BAU_230_Stan_canBuySth_Info_03_03"); // Vielleicht haben wir noch was übrig.
};

// **************************************************

instance BAU_230_Stan_bandits (C_INFO)
{
	npc			= BAU_230_Stan;
	condition		= BAU_230_Stan_bandits_Condition;
	information		= BAU_230_Stan_bandits_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Du hast Probleme mit Banditen?";
};

func int BAU_230_Stan_bandits_Condition()
{
	if (milPhase == 1)
	{
		return TRUE;
	};
};

func void BAU_230_Stan_bandits_Info()
{
	AI_Output(other, self, "BAU_230_Stan_bandits_Info_15_01"); // Du hast Probleme mit Banditen?
	AI_Output(self, other, "BAU_230_Stan_bandits_Info_03_02"); // Diese verfluchten Idioten wollen meinen Hof verwüsten.
	AI_Output(self, other, "BAU_230_Stan_bandits_Info_03_03"); // Sie haben schon ein paar Schafe geschlachtet, als wir vom Hof geflohen sind.
	AI_Output(other, self, "BAU_230_Stan_bandits_Info_15_04"); // Sollen wir uns drum kümmern?
	AI_Output(self, other, "BAU_230_Stan_bandits_Info_03_05"); // Ja, verdammt! Wofür seid ihr Stadtwachen denn da?
	AI_Output(self, other, "BAU_230_Stan_bandits_Info_03_06"); // Sorg dafür, dass sie von meinem Hof verschwinden.
};

// **************************************************

instance BAU_230_Stan_banditsDead (C_INFO)
{
	npc			= BAU_230_Stan;
	condition		= BAU_230_Stan_banditsDead_Condition;
	information		= BAU_230_Stan_banditsDead_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Die Banditen sind tot!";
};

func int BAU_230_Stan_banditsDead_Condition()
{
	if ((Npc_KnowsInfo(hero, BAU_230_Stan_bandits)) && (Npc_IsDead(BDT_1009_Bandit_L)) && (Npc_IsDead(BDT_1010_Bandit_L)) && (Npc_IsDead(BDT_1011_Bandit_M)))
	{
		return TRUE;
	};
};

func void BAU_230_Stan_banditsDead_Info()
{
	AI_Output(other, self, "BAU_230_Stan_banditsDead_Info_15_01"); // Die Banditen sind tot!
	AI_Output(self, other, "BAU_230_Stan_banditsDead_Info_03_02"); // Wirklich? Das ist gut.
	AI_Output(self, other, "BAU_230_Stan_banditsDead_Info_03_03"); // Dann können wir endlich weiterarbeiten!
	AI_Output(self, other, "BAU_230_Stan_banditsDead_Info_03_04"); // Wenn du irgendwas brauchst, komm zu uns. Wir haben immer etwas im Angebot!
	setMilPhaseBack(1);
};
