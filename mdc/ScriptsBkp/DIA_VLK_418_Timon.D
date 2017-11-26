// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!

var int pflanzenzahl;
var int heilPflanzenzahl;
var int clovisChoice;

// **************************************************

instance VLK_418_Timon_Exit (C_INFO)
{
	npc			= VLK_418_Timon;
	condition		= VLK_418_Timon_Exit_Condition;
	information		= VLK_418_Timon_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int VLK_418_Timon_Exit_Condition()
{
	return TRUE;
};

func void VLK_418_Timon_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance VLK_418_Timon_sellPlants (C_INFO)
{
	npc			= VLK_418_Timon;
	condition		= VLK_418_Timon_sellPlants_Condition;
	information		= VLK_418_Timon_sellPlants_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Du verkaufst Pflanzen?";
};

func int VLK_418_Timon_sellPlants_Condition()
{
	return TRUE;
};

func void VLK_418_Timon_sellPlants_Info()
{
	AI_Output(other, self, "VLK_418_Timon_sellPlants_Info_15_01"); // Du verkaufst Pflanzen?
	AI_Output(self, other, "VLK_418_Timon_sellPlants_Info_06_02"); // Und zwar nur die erlesensten! Alles frisch gesammelt. Bessere Ware wirst du auf der ganzen Insel nicht finden.
	AI_Output(self, other, "VLK_418_Timon_sellPlants_Info_06_03"); // Brauchst du etwas?
};

// **************************************************

instance VLK_418_Timon_letsTrade (C_INFO)
{
	npc			= VLK_418_Timon;
	condition		= VLK_418_Timon_letsTrade_Condition;
	information		= VLK_418_Timon_letsTrade_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 998;
	description		= "Zeig mir deine Pflanzen!";
	trade		= TRUE;
};

func int VLK_418_Timon_letsTrade_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_418_Timon_sellPlants))
	{
		return TRUE;
	};
};

func void VLK_418_Timon_letsTrade_Info()
{
	B_GiveTradeInv(self);
	AI_Output(other, self, "VLK_418_Timon_letsTrade_Info_15_01"); // Zeig mir deine Pflanzen!
};

// **************************************************

instance VLK_418_Timon_knowPlants (C_INFO)
{
	npc			= VLK_418_Timon;
	condition		= VLK_418_Timon_knowPlants_Condition;
	information		= VLK_418_Timon_knowPlants_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kennst du dich auch mit Pflanzen aus?";
};

func int VLK_418_Timon_knowPlants_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_417_Clovis_whatsThis))
	{
		return TRUE;
	};
};

func void VLK_418_Timon_knowPlants_Info()
{
	AI_Output(other, self, "VLK_418_Timon_knowPlants_Info_15_01"); // Kennst du dich auch mit Pflanzen aus?
	AI_Output(self, other, "VLK_418_Timon_knowPlants_Info_06_02"); // Natürlich! Wie sollte ich sonst mit gutem Gewissen das Grünzeug verkaufen?
	AI_Output(self, other, "VLK_418_Timon_knowPlants_Info_06_03"); // Wieso fragst du?
};

// **************************************************

instance VLK_418_Timon_canIdentify (C_INFO)
{
	npc			= VLK_418_Timon;
	condition		= VLK_418_Timon_canIdentify_Condition;
	information		= VLK_418_Timon_canIdentify_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kannst du diese Pflanzen für mich identifizieren?";
};

func int VLK_418_Timon_canIdentify_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_418_Timon_knowPlants)) && (Npc_HasItems(other, ItPl_Unknown) >= 2))
	{
		return TRUE;
	};
};

func void VLK_418_Timon_canIdentify_Info()
{
	AI_Output(other, self, "VLK_418_Timon_canIdentify_Info_15_01"); // Kannst du diese Pflanzen für mich identifizieren?
	B_GiveInvItems(other, self, ItPl_Unknown,  2);
	AI_Output(self, other, "VLK_418_Timon_canIdentify_Info_06_02"); // Das könnte ich, ja. Wofür brauchst du sie denn?
	Info_ClearChoices(VLK_418_Timon_canIdentify);
	Info_AddChoice(VLK_418_Timon_canIdentify, "Ich will die Pflanzen verkaufen!", VLK_418_Timon_canIdentify_wannaSell);
	Info_AddChoice(VLK_418_Timon_canIdentify, "Ich will bei Clovis als Lehrling anfangen", VLK_418_Timon_canIdentify_wannaLearn);
	Info_AddChoice(VLK_418_Timon_canIdentify, "Ich wollte die Pflanzen essen.", VLK_418_Timon_canIdentify_wannaEat);
};

func void VLK_418_Timon_canIdentify_wannaSell()
{
	AI_Output(other, self, "VLK_418_Timon_canIdentify_wannaSell_15_01"); // Ich will die Pflanzen verkaufen!
	AI_Output(self, other, "VLK_418_Timon_canIdentify_wannaSell_06_02"); // Und ich soll sie identifizieren? Damit ich mir mein eigenes Geschäft kaputt mache?
	AI_Output(self, other, "VLK_418_Timon_canIdentify_wannaSell_06_03"); // Nein, Danke! Such dir einen anderen Dummen!
	CreateInvItems(self, ItPl_Unknown,  2);
	B_GiveInvItems(self, other, ItPl_Unknown,  2);
	Info_ClearChoices(VLK_418_Timon_canIdentify);
};

func void VLK_418_Timon_canIdentify_wannaLearn()
{
	AI_Output(other, self, "VLK_418_Timon_canIdentify_wannaLearn_15_01"); // Ich will bei Clovis als Lehrling anfangen und er hat mich losgeschickt, zehn Heilpflanzen zu besorgen.
	AI_Output(self, other, "VLK_418_Timon_canIdentify_wannaLearn_06_02"); // Soso, Clovis mal wieder.
	AI_Output(self, other, "VLK_418_Timon_canIdentify_wannaLearn_06_03"); // Du bist nicht der erste, der diesen Auftrag bekommen hat und auch nicht der erste, der entnervt aufgegeben hat.
	AI_Output(self, other, "VLK_418_Timon_canIdentify_wannaLearn_06_04"); // Aber, wenn es dir ernst ist, werde ich dir die Pflanzen identifizieren.
	AI_Output(self, other, "VLK_418_Timon_canIdentify_wannaLearn_06_05"); // Lass mal sehen...
	AI_Output(self, other, "VLK_418_Timon_canIdentify_wannaLearn_06_06"); // Hm, sieht aus, als hättest du Glück. Zumindest eine Heilpflanze ist dabei. Das andere ist leider nur Unkraut.
	CreateInvItems(self, ItPl_Weed,  1);
	B_GiveInvItems(self, other, ItPl_Weed,  1);
	CreateInvItems(self, ItPl_Health_Herb_01,  1);
	B_GiveInvItems(self, other, ItPl_Health_Herb_01,  1);
	AI_Output(self, other, "VLK_418_Timon_canIdentify_wannaLearn_06_07"); // Wenn du noch mehr Pflanzen brauchst, komm wieder zu mir! Ich werde dir dabei helfen! Jeweils zehn Pflanzen identifiziere ich dir gleichzeitig!
	B_LogEntry(TOPIC_workClovis, "Timon, der Kräuter- und Tränkehändler am Marktplatz hat mir angeboten, die Pflanzen für mich zu identifizieren.");
	clovisChoice = 1;
	Info_ClearChoices(VLK_418_Timon_canIdentify);
};

func void VLK_418_Timon_canIdentify_wannaEat()
{
	AI_Output(other, self, "VLK_418_Timon_canIdentify_wannaEat_15_01"); // Ich wollte die Pflanzen essen.
	AI_Output(self, other, "VLK_418_Timon_canIdentify_wannaEat_06_02"); // Ach, wirklich? Lass mal sehen.
	AI_Output(self, other, "VLK_418_Timon_canIdentify_wannaEat_06_03"); // Hmm, die eine könntest du essen. Blauflieder, sehr schmackhaft.
	CreateInvItems(self, ItPl_Blueplant,  1);
	B_GiveInvItems(self, other, ItPl_Blueplant,  1);
	AI_Output(self, other, "VLK_418_Timon_canIdentify_wannaEat_06_04"); // Bei der anderen würde ich dir davon abraten. Sumpfkraut macht sehr schnell abhängig!
	CreateInvItems(self, ItPl_SwampHerb,  1);
	B_GiveInvItems(self, other, ItPl_SwampHerb,  1);
	AI_Output(self, other, "VLK_418_Timon_canIdentify_wannaEat_06_05"); // Kann ich sonst noch etwas für dich tun?
	clovisChoice = 2;
	Info_ClearChoices(VLK_418_Timon_canIdentify);
};

// **************************************************

instance VLK_418_Timon_canIdentifyMore (C_INFO)
{
	npc			= VLK_418_Timon;
	condition		= VLK_418_Timon_canIdentifyMore_Condition;
	information		= VLK_418_Timon_canIdentifyMore_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Kannst du noch ein paar Pflanzen für mich identifizieren?";
};

func int VLK_418_Timon_canIdentifyMore_Condition()
{
	if ((MIS_workClovis == LOG_RUNNING) && (clovisChoice == 1))
	{
		return TRUE;
	};
};

func void VLK_418_Timon_canIdentifyMore_Info()
{
	AI_Output(other, self, "VLK_418_Timon_canIdentifyMore_Info_15_01"); // Kannst du noch ein paar Pflanzen für mich identifizieren?
	AI_Output(self, other, "VLK_418_Timon_canIdentifyMore_Info_06_02"); // Klar, gib her! Denk dran, mindestens zehn Stück!
	if (Npc_HasItems(hero, ItPl_Unknown) >= 10)
	{
		AI_Output(other, self, "VLK_418_Timon_canIdentifyMore_Info_15_03"); // Hier!
		B_GiveInvItems(other, self, ItPl_Unknown,  10);
		AI_Output(self, other, "VLK_418_Timon_canIdentifyMore_Info_06_04"); // Na, siehst du, ein paar Heilpflanzen sind immerhin dabei!
		CreateInvItems(self, ItPl_Health_Herb_01,  3);
		B_GiveInvItems(self, other, ItPl_Health_Herb_01,  3);
		AI_Output(self, other, "VLK_418_Timon_canIdentifyMore_Info_06_05"); // Der Rest ist glaube ich erst einmal uninteressant.
		AI_Output(self, other, "VLK_418_Timon_canIdentifyMore_Info_06_06"); // Ich geb dir etwas Gold dafür!
		CreateInvItems(self, ItMi_Gold,  50);
		B_GiveInvItems(self, other, ItMi_Gold,  50);
		AI_Output(self, other, "VLK_418_Timon_canIdentifyMore_Info_06_07"); // Wenn du noch welche brauchst, komm wieder!
	}
	else
	{
		AI_Output(other, self, "VLK_418_Timon_canIdentifyMore_Info_15_08"); // Dann habe ich nicht genug dabei!
		AI_Output(self, other, "VLK_418_Timon_canIdentifyMore_Info_06_09"); // Gut, dann sammel noch welche und komm dann wieder!
	};
};
