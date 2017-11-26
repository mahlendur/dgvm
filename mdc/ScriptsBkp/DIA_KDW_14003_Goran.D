// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!


// **************************************************

instance KDW_14003_Goran_Exit (C_INFO)
{
	npc			= KDW_14003_Goran;
	condition		= KDW_14003_Goran_Exit_Condition;
	information		= KDW_14003_Goran_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int KDW_14003_Goran_Exit_Condition()
{
	return TRUE;
};

func void KDW_14003_Goran_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance KDW_14003_Goran_whoAreYou (C_INFO)
{
	npc			= KDW_14003_Goran;
	condition		= KDW_14003_Goran_whoAreYou_Condition;
	information		= KDW_14003_Goran_whoAreYou_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wer bist du?";
};

func int KDW_14003_Goran_whoAreYou_Condition()
{
	return TRUE;
};

func void KDW_14003_Goran_whoAreYou_Info()
{
	AI_Output(other, self, "KDW_14003_Goran_whoAreYou_Info_15_01"); // Wer bist du?
	AI_Output(self, other, "KDW_14003_Goran_whoAreYou_Info_03_02"); // Ich bin Goran. Schwarzer Magier und Meister der BeschwÃ¶rung.
	AI_Output(self, other, "KDW_14003_Goran_whoAreYou_Info_03_03"); // Was kann ich fÃ¼r dich tun?
};

// **************************************************

instance KDW_14003_Goran_canTeachMe (C_INFO)
{
	npc			= KDW_14003_Goran;
	condition		= KDW_14003_Goran_canTeachMe_Condition;
	information		= KDW_14003_Goran_canTeachMe_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kannst du mir etwas beibringen?";
};

func int KDW_14003_Goran_canTeachMe_Condition()
{
	if (Npc_KnowsInfo(hero, KDW_14003_Goran_whoAreYou))
	{
		return TRUE;
	};
};

func void KDW_14003_Goran_canTeachMe_Info()
{
	AI_Output(other, self, "KDW_14003_Goran_canTeachMe_Info_15_01"); // Kannst du mir etwas beibringen?
	AI_Output(self, other, "KDW_14003_Goran_canTeachMe_Info_03_02"); // Ich kÃ¶nnte dir zeigen, wie du dein Mana erweitern kannst.
	AI_Output(self, other, "KDW_14003_Goran_canTeachMe_Info_03_03"); // Allerdings erst, wenn du im Zirkel aufgenommen wurdest!
};
