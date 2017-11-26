// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


// **************************************************

instance MIL_339_Fred_Exit (C_INFO)
{
	npc			= MIL_339_Fred;
	condition		= MIL_339_Fred_Exit_Condition;
	information		= MIL_339_Fred_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int MIL_339_Fred_Exit_Condition()
{
	return TRUE;
};

func void MIL_339_Fred_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance MIL_339_Fred_whoAreYou (C_INFO)
{
	npc			= MIL_339_Fred;
	condition		= MIL_339_Fred_whoAreYou_Condition;
	information		= MIL_339_Fred_whoAreYou_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wer bist du?";
};

func int MIL_339_Fred_whoAreYou_Condition()
{
	return TRUE;
};

func void MIL_339_Fred_whoAreYou_Info()
{
	AI_Output(other, self, "MIL_339_Fred_whoAreYou_Info_15_01"); // Wer bist du?
	AI_Output(self, other, "MIL_339_Fred_whoAreYou_Info_11_02"); // Ich bin Fred, Arenaleiter der Stadt Mahlendur.
	AI_Output(other, self, "MIL_339_Fred_whoAreYou_Info_15_03"); // Arena? Also auch noch hier.
	AI_Output(self, other, "MIL_339_Fred_whoAreYou_Info_11_04"); // Was soll das denn heißen?
	AI_Output(other, self, "MIL_339_Fred_whoAreYou_Info_15_05"); // Auf dem Festland sprießen die Arenen aus dem Boden wie Unkraut.
	AI_Output(other, self, "MIL_339_Fred_whoAreYou_Info_15_06"); // Jedes noch so kleine Dorf hat jetzt eine 'Arena'.
	AI_Output(self, other, "MIL_339_Fred_whoAreYou_Info_11_07"); // Naja... Unsere Arena ist auch nicht sehr groß, aber es hilft dabei, fit zu bleiben.
	AI_Output(self, other, "MIL_339_Fred_whoAreYou_Info_11_08"); // Manchmal ist es besser mit einem anderen Menschen zu trainieren, als immer nur Tiere zu jagen.
	AI_Output(self, other, "MIL_339_Fred_whoAreYou_Info_11_09"); // Wie siehts aus? Lust auf ein Kämpfchen?
};

// **************************************************

instance MIL_339_Fred_whatToBet (C_INFO)
{
	npc			= MIL_339_Fred;
	condition		= MIL_339_Fred_whatToBet_Condition;
	information		= MIL_339_Fred_whatToBet_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was ist der Einsatz?";
};

func int MIL_339_Fred_whatToBet_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_339_Fred_whoAreYou))
	{
		return TRUE;
	};
};

func void MIL_339_Fred_whatToBet_Info()
{
	AI_Output(other, self, "MIL_339_Fred_whatToBet_Info_15_01"); // Was ist der Einsatz?
	AI_Output(self, other, "MIL_339_Fred_whatToBet_Info_11_02"); // Du zahlst pro Kampf 50 Gold. Außer für den letzten. Der kostet 100!
	AI_Output(self, other, "MIL_339_Fred_whatToBet_Info_11_03"); // Gewinnst du alle Kämpfe, gewinnst du eine Waffe.
	AI_Output(self, other, "MIL_339_Fred_whatToBet_Info_11_04"); // Du darfst dir sogar aussuchen, welche!
};

// **************************************************

instance MIL_339_Fred_fightOne (C_INFO)
{
	npc			= MIL_339_Fred;
	condition		= MIL_339_Fred_fightOne_Condition;
	information		= MIL_339_Fred_fightOne_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Gib mir den ersten Kampf!";
};

func int MIL_339_Fred_fightOne_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_339_Fred_whatToBet))
	{
		return TRUE;
	};
};

func void MIL_339_Fred_fightOne_Info()
{
	AI_Output(other, self, "MIL_339_Fred_fightOne_Info_15_01"); // Gib mir den ersten Kampf!
	AI_Output(self, other, "MIL_339_Fred_fightOne_Info_11_02"); // In Ordnung. Du wirst gegen Randolph kämpfen.
	AI_Output(self, other, "MIL_339_Fred_fightOne_Info_11_03"); // Er ist ein Bauer von einem der Höfe vor der Stadt.
	AI_Output(self, other, "MIL_339_Fred_fightOne_Info_11_04"); // Aber pass auf. Unterschätz ihn nicht!
	AI_Output(self, other, "MIL_339_Fred_fightOne_Info_11_05"); // Wenn du bereit bist, sprich mit ihm. Wenn ihr beide in der Arena seid, beginnt der Kampf.
	AI_Output(self, other, "MIL_339_Fred_fightOne_Info_11_06"); // Aber pass auf, verlässt du die Arena, ist es vorbei!
	AI_Output(self, other, "MIL_339_Fred_fightOne_Info_11_07"); // Viel Glück!
};
