// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


// **************************************************

instance KDF_1409_Kelsava_Exit (C_INFO)
{
	npc			= KDF_1409_Kelsava;
	condition		= KDF_1409_Kelsava_Exit_Condition;
	information		= KDF_1409_Kelsava_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int KDF_1409_Kelsava_Exit_Condition()
{
	return TRUE;
};

func void KDF_1409_Kelsava_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance KDF_1409_Kelsava_heyYou (C_INFO)
{
	npc			= KDF_1409_Kelsava;
	condition		= KDF_1409_Kelsava_heyYou_Condition;
	information		= KDF_1409_Kelsava_heyYou_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wer bist du?";
};

func int KDF_1409_Kelsava_heyYou_Condition()
{
	return TRUE;
};

func void KDF_1409_Kelsava_heyYou_Info()
{
	AI_Output(other, self, "KDF_1409_Kelsava_heyYou_Info_15_01"); // Wer bist du?
	AI_Output(self, other, "KDF_1409_Kelsava_heyYou_Info_03_02"); // Mein Name ist Kelsava, Magier des Eises und Meister der Runen.
	AI_Output(self, other, "KDF_1409_Kelsava_heyYou_Info_03_03"); // Was kann ich für dich tun?
};

// **************************************************

instance KDF_1409_Kelsava_teachLightRune (C_INFO)
{
	npc			= KDF_1409_Kelsava;
	condition		= KDF_1409_Kelsava_teachLightRune_Condition;
	information		= KDF_1409_Kelsava_teachLightRune_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Uysal schickt mich.";
};

func int KDF_1409_Kelsava_teachLightRune_Condition()
{
	if (Npc_KnowsInfo(hero, KDF_1404_Uysal_teachRune))
	{
		return TRUE;
	};
};

func void KDF_1409_Kelsava_teachLightRune_Info()
{
	AI_Output(other, self, "KDF_1409_Kelsava_teachLightRune_Info_15_01"); // Uysal schickt mich.
	AI_Output(other, self, "KDF_1409_Kelsava_teachLightRune_Info_15_02"); // Er sagt, du kannst mir einen Runenstein geben.
	AI_Output(self, other, "KDF_1409_Kelsava_teachLightRune_Info_03_03"); // Soso, einen Runenstein? Wofür brauchst du denn einen?
	AI_Output(other, self, "KDF_1409_Kelsava_teachLightRune_Info_15_04"); // Ich soll eine Lichtrune herstellen.
	AI_Output(self, other, "KDF_1409_Kelsava_teachLightRune_Info_03_05"); // Weißt du denn auch, welche Elemente du noch brauchst?
	AI_Output(other, self, "KDF_1409_Kelsava_teachLightRune_Info_15_06"); // Einige Goldstücke.
	AI_Output(self, other, "KDF_1409_Kelsava_teachLightRune_Info_03_07"); // Sehr gut. Dann nimm diesen Runenstein.
	CreateInvItems(self, ItMi_RuneBlank,  1);
	B_GiveInvItems(self, other, ItMi_RuneBlank,  1);
	AI_Output(self, other, "KDF_1409_Kelsava_teachLightRune_Info_03_08"); // Leg ihn zusammen mit dem Gold in den Runentisch. Die Essenz wird dann in den Stein übergehen.
};

// **************************************************

instance KDF_1409_Kelsava_gotRune (C_INFO)
{
	npc			= KDF_1409_Kelsava;
	condition		= KDF_1409_Kelsava_gotRune_Condition;
	information		= KDF_1409_Kelsava_gotRune_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich habe die Rune hergestellt!";
};

func int KDF_1409_Kelsava_gotRune_Condition()
{
	if (Npc_HasItems(other, ItRu_Light) >= 1)
	{
		return TRUE;
	};
};

func void KDF_1409_Kelsava_gotRune_Info()
{
	AI_Output(other, self, "KDF_1409_Kelsava_gotRune_Info_15_01"); // Ich habe die Rune hergestellt!
	AI_Output(self, other, "KDF_1409_Kelsava_gotRune_Info_03_02"); // Sehr gut! Dann geh direkt zu Uysal zurück! Er wird dir dann weitere Runen beibringen.
	B_GivePlayerXP(150);
};
