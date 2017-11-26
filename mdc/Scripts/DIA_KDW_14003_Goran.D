// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


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
	AI_Output(self, other, "KDW_14003_Goran_whoAreYou_Info_03_02"); // Ich bin Goran. Schwarzer Magier und Meister der Beschwörung.
	AI_Output(self, other, "KDW_14003_Goran_whoAreYou_Info_03_03"); // Was kann ich für dich tun?
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
	AI_Output(self, other, "KDW_14003_Goran_canTeachMe_Info_03_02"); // Ich könnte dir zeigen, wie du dein Mana erweitern kannst.
	AI_Output(self, other, "KDW_14003_Goran_canTeachMe_Info_03_03"); // Allerdings erst, wenn du im Zirkel aufgenommen wurdest!
};

// **************************************************

instance KDW_14003_Goran_teachMeScrolls (C_INFO)
{
	npc			= KDW_14003_Goran;
	condition		= KDW_14003_Goran_teachMeScrolls_Condition;
	information		= KDW_14003_Goran_teachMeScrolls_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Ich will Lernen, Spruchrollen zu schreiben!";
};

func int KDW_14003_Goran_teachMeScrolls_Condition()
{
	if ((Npc_KnowsInfo(hero, KDW_14002_Tenho_canLearnScrolls)) && (!PLAYER_TALENT_KNOWS_SCROLLS))
	{
		return TRUE;
	};
};

func void KDW_14003_Goran_teachMeScrolls_Info()
{
	AI_Output(other, self, "KDW_14003_Goran_teachMeScrolls_Info_15_01"); // Ich will Lernen, Spruchrollen zu schreiben!
	AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_02"); // Dir ist hoffentlich bewusst, dass das Schreiben von Spruchrollen sehr anspruchsvolle Arbeit ist.
	if (learnedAlch == FALSE)
	{
		AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_03"); // Ich würde es dir ja zutrauen.
		AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_04"); // Aber leider beherrschst du ja nicht einmal die Grundlagen der Alchemie.
		AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_05"); // Das ist aber zwingend notwendig!
		AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_06"); // Lerne erst einmal Tränke brauen, dann sehen wir weiter!
	}
	else
	{
		AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_07"); // Aber... Dir traue ich das zu!
		AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_08"); // Gut, hör zu. Zuerst musst du die Essenz herstellen.
		AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_09"); // Gib dazu die Zutat, wie du sie auch für eine Rune verwenden würdest, zusammen mit etwas Wasser und gehacktem Feldknöterich in eine Laborflasche.
		AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_10"); // Lass sie aufkochen und so lange ziehen, bis sich ein leichtes Gas bildet.
		AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_11"); // Zu diesem Zeitpunkt sollte sich die magische Zutat bereits verflüchtigt haben.
		AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_12"); // Die Essenz hat sich nun in der Flüssigkeit ausgebreitet. Gib nun noch etwas Silberpulver hinzu und du erhälst eine Tinte.
		AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_13"); // Lass sie abkühlen und du kannst die Spruchrolle schreiben.
		AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_14"); // Genau genommen ist es völlig egal, was du auf das Pergament schreibst.
		AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_15"); // Meistens wird das Symbol der Rune verwendet, um die Rollen auseinanderhalten zu können.
		AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_16"); // So, wenn du das verinnerlicht hast: Versuch es!
		AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_17"); // Keine Sorge, wenn du etwas nicht richtig gemacht hast, passiert entweder gar nichts, oder die Rolle zersetzt sich einfach.
		AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_18"); // Dir kann also nichts geschehen. Aber: Solltest du auf die Idee kommen, die Rollen zu verkaufen. Achte darauf, dass alles korrekt ist.
		AI_Output(self, other, "KDW_14003_Goran_teachMeScrolls_Info_03_19"); // Oder hab selber genug Rollen dabei, falls dir jemand an den Kragen will.
	};
};
