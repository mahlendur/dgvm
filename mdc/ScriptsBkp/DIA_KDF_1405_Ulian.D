// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


// **************************************************

instance KDF_1405_Ulian_Exit (C_INFO)
{
	npc			= KDF_1405_Ulian;
	condition		= KDF_1405_Ulian_Exit_Condition;
	information		= KDF_1405_Ulian_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int KDF_1405_Ulian_Exit_Condition()
{
	return TRUE;
};

func void KDF_1405_Ulian_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance KDF_1405_Ulian_greetingsMage (C_INFO)
{
	npc			= KDF_1405_Ulian;
	condition		= KDF_1405_Ulian_greetingsMage_Condition;
	information		= KDF_1405_Ulian_greetingsMage_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich gr��e Euch, Magier!";
};

func int KDF_1405_Ulian_greetingsMage_Condition()
{
	return TRUE;
};

func void KDF_1405_Ulian_greetingsMage_Info()
{
	AI_Output(other, self, "KDF_1405_Ulian_greetingsMage_Info_15_01"); // Ich gr��e Euch, Magier!
	AI_Output(self, other, "KDF_1405_Ulian_greetingsMage_Info_09_02"); // Und ich gr��e dich, neuer Anw�rter.
	AI_Output(self, other, "KDF_1405_Ulian_greetingsMage_Info_09_03"); // Was kann der hohe Rat f�r dich tun?
};

// **************************************************

instance KDF_1405_Ulian_wannaJoin (C_INFO)
{
	npc			= KDF_1405_Ulian;
	condition		= KDF_1405_Ulian_wannaJoin_Condition;
	information		= KDF_1405_Ulian_wannaJoin_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich will dem Orden beitreten!";
};

func int KDF_1405_Ulian_wannaJoin_Condition()
{
	if (Npc_KnowsInfo(hero, KDF_1405_Ulian_greetingsMage))
	{
		return TRUE;
	};
};

func void KDF_1405_Ulian_wannaJoin_Info()
{
	AI_Output(other, self, "KDF_1405_Ulian_wannaJoin_Info_15_01"); // Ich will dem Orden beitreten!
	AI_Output(self, other, "KDF_1405_Ulian_wannaJoin_Info_09_02"); // Wirklich? Es ist selten geworden, dass jemand unserem Orden beitreten m�chte.
	AI_Output(self, other, "KDF_1405_Ulian_wannaJoin_Info_09_03"); // Geh und sprich mit Uysal, er wird dich pr�fen.
};

// **************************************************

instance KDF_1405_Ulian_yourYes (C_INFO)
{
	npc			= KDF_1405_Ulian;
	condition		= KDF_1405_Ulian_yourYes_Condition;
	information		= KDF_1405_Ulian_yourYes_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich war bei Uysal!";
};

func int KDF_1405_Ulian_yourYes_Condition()
{
	if (Npc_KnowsInfo(hero, KDF_1404_Uysal_gotThem))
	{
		return TRUE;
	};
};

func void KDF_1405_Ulian_yourYes_Info()
{
	AI_Output(other, self, "KDF_1405_Ulian_yourYes_Info_15_01"); // Ich war bei Uysal!
	AI_Output(self, other, "KDF_1405_Ulian_yourYes_Info_09_02"); // Und? Hat er dir eine Pr�fungsaufgabe gegeben?
	AI_Output(other, self, "KDF_1405_Ulian_yourYes_Info_15_03"); // Hat er. Ich soll die D�monen, welche sich im Keller eingenistet haben t�ten.
	AI_Output(self, other, "KDF_1405_Ulian_yourYes_Info_09_04"); // Dann tu' dies. Danach sehen wir weiter.
	AI_Output(other, self, "KDF_1405_Ulian_yourYes_Info_15_05"); // Die D�monen sind bereits Geschichte.
	AI_Output(self, other, "KDF_1405_Ulian_yourYes_Info_09_06"); // Wirklich? Das erkl�rt, warum sich mein Geist klarer anf�hlt.
	AI_Output(self, other, "KDF_1405_Ulian_yourYes_Info_09_07"); // Ich danke dir f�r deine M�hen. Und nun? M�chtest du dem Orden beitreten?
	AI_Output(self, other, "KDF_1405_Ulian_yourYes_Info_09_08"); // Dann sprich mit Rayan. Meinen Segen sollst du haben.
};

// **************************************************

instance KDF_1405_Ulian_canTeach (C_INFO)
{
	npc			= KDF_1405_Ulian;
	condition		= KDF_1405_Ulian_canTeach_Condition;
	information		= KDF_1405_Ulian_canTeach_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Rayan sagte, du k�nntest mir etwas beibringen?";
};

func int KDF_1405_Ulian_canTeach_Condition()
{
	if (Npc_KnowsInfo(hero, KDF_1403_Rayan_whatToDo))
	{
		return TRUE;
	};
};

func void KDF_1405_Ulian_canTeach_Info()
{
	AI_Output(other, self, "KDF_1405_Ulian_canTeach_Info_15_01"); // Rayan sagte, du k�nntest mir etwas beibringen?
	AI_Output(self, other, "KDF_1405_Ulian_canTeach_Info_09_02"); // Das ist richtig. Ich kann dir beibringen, deine magische Kraft zu st�rken.
};
