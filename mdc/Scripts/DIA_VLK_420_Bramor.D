// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!

var int givenBook;

// **************************************************

instance VLK_420_Bramor_Exit (C_INFO)
{
	npc			= VLK_420_Bramor;
	condition		= VLK_420_Bramor_Exit_Condition;
	information		= VLK_420_Bramor_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int VLK_420_Bramor_Exit_Condition()
{
	return TRUE;
};

func void VLK_420_Bramor_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance VLK_420_Bramor_whoAreYou (C_INFO)
{
	npc			= VLK_420_Bramor;
	condition		= VLK_420_Bramor_whoAreYou_Condition;
	information		= VLK_420_Bramor_whoAreYou_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wer bist du?";
};

func int VLK_420_Bramor_whoAreYou_Condition()
{
	return TRUE;
};

func void VLK_420_Bramor_whoAreYou_Info()
{
	AI_Output(other, self, "VLK_420_Bramor_whoAreYou_Info_15_01"); // Wer bist du?
	AI_Output(self, other, "VLK_420_Bramor_whoAreYou_Info_04_02"); // Ich bin Bramor, Kartenzeichner auf dieser Insel.
	AI_Output(self, other, "VLK_420_Bramor_whoAreYou_Info_04_03"); // Wenn du eine brauchst, lass es mich wissen!
};

// **************************************************

instance VLK_420_Bramor_letsTrade (C_INFO)
{
	npc			= VLK_420_Bramor;
	condition		= VLK_420_Bramor_letsTrade_Condition;
	information		= VLK_420_Bramor_letsTrade_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Zeig mir deine Karten!";
	trade		= TRUE;
};

func int VLK_420_Bramor_letsTrade_Condition()
{
	return TRUE;
};

func void VLK_420_Bramor_letsTrade_Info()
{
	B_GiveTradeInv(self);
	AI_Output(other, self, "VLK_420_Bramor_letsTrade_Info_15_01"); // Zeig mir deine Karten!
};

// **************************************************

instance VLK_420_Bramor_needBook (C_INFO)
{
	npc			= VLK_420_Bramor;
	condition		= VLK_420_Bramor_needBook_Condition;
	information		= VLK_420_Bramor_needBook_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Tenho schickt mich.";
};

func int VLK_420_Bramor_needBook_Condition()
{
	if (Npc_KnowsInfo(hero, KDW_14002_Tenho_toDoForMe))
	{
		return TRUE;
	};
};

func void VLK_420_Bramor_needBook_Info()
{
	AI_Output(other, self, "VLK_420_Bramor_needBook_Info_15_01"); // Tenho schickt mich. Ich soll ein Buch für ihn abholen.
	AI_Output(self, other, "VLK_420_Bramor_needBook_Info_04_02"); // Wirklich? (misstrauisch) Und woher soll ich wissen, ob du nicht für irgendwen spionierst?
	AI_Output(other, self, "VLK_420_Bramor_needBook_Info_15_03"); // Die Frage ist doch: Kannst du dir es leisten?
	AI_Output(other, self, "VLK_420_Bramor_needBook_Info_15_04"); // Komme ich ohne das Buch zurück, wird Tenho sehr wütend sein!
	AI_Output(self, other, "VLK_420_Bramor_needBook_Info_04_05"); // Schon gut, schon gut. Das macht dann 120 Goldstücke!
	Info_ClearChoices(VLK_420_Bramor_needBook);
	Info_AddChoice(VLK_420_Bramor_needBook, "Soviel? Tenho hat mir aber nur 100 gegeben!", VLK_420_Bramor_needBook_whySoMuch);
	Info_AddChoice(VLK_420_Bramor_needBook, "Hier hast du dein Gold.", VLK_420_Bramor_needBook_hereGold);
	Info_AddChoice(VLK_420_Bramor_needBook, "Ich habe nicht genug dabei!", VLK_420_Bramor_needBook_notEnough);
};

func void VLK_420_Bramor_needBook_whySoMuch()
{
	AI_Output(other, self, "VLK_420_Bramor_needBook_whySoMuch_15_01"); // Soviel? Tenho hat mir aber nur 100 gegeben!
	AI_Output(self, other, "VLK_420_Bramor_needBook_whySoMuch_04_02"); // Ist das mein Problem?
	AI_Output(self, other, "VLK_420_Bramor_needBook_whySoMuch_04_03"); // Das Buch ist teurer geworden als geplant.
	AI_Output(self, other, "VLK_420_Bramor_needBook_whySoMuch_04_04"); // Jetzt sinds hatl 120!
};

func void VLK_420_Bramor_needBook_hereGold()
{
	AI_Output(other, self, "VLK_420_Bramor_needBook_hereGold_15_01"); // Hier hast du dein Gold.
	if (Npc_HasItems(hero, ItMi_Gold) >= 120)
	{
		B_GiveInvItems(other, self, ItMi_Gold,  120);
		AI_Output(self, other, "VLK_420_Bramor_needBook_hereGold_04_02"); // Gut. Dann ist hier das Buch.
		CreateInvItems(self, ItMi_BookPaket,  1);
		B_GiveInvItems(self, other, ItMi_BookPaket,  1);
		AI_Output(self, other, "VLK_420_Bramor_needBook_hereGold_04_03"); // Bring es schnell zu Tenho, er wartet bestimmt schon darauf.
		givenBook = TRUE;
	}
	else
	{
		AI_Output(self, other, "VLK_420_Bramor_needBook_hereGold_04_04"); // Das ist aber nicht genug.
		AI_Output(self, other, "VLK_420_Bramor_needBook_hereGold_04_05"); // Ich sagte 120 Gold! Komm wieder, wenn du alles hast!
	};
	Info_ClearChoices(VLK_420_Bramor_needBook);
};

func void VLK_420_Bramor_needBook_notEnough()
{
	AI_Output(other, self, "VLK_420_Bramor_needBook_notEnough_15_01"); // Ich habe nicht genug dabei!
	AI_Output(self, other, "VLK_420_Bramor_needBook_notEnough_04_02"); // Dann komm wieder, wenn du alles hast!
	AI_Output(self, other, "VLK_420_Bramor_needBook_notEnough_04_03"); // Denk dran, 120 Gold!
	Info_ClearChoices(VLK_420_Bramor_needBook);
};

// **************************************************

instance VLK_420_Bramor_giveBook (C_INFO)
{
	npc			= VLK_420_Bramor;
	condition		= VLK_420_Bramor_giveBook_Condition;
	information		= VLK_420_Bramor_giveBook_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Gib mir das Buch.";
};

func int VLK_420_Bramor_giveBook_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_420_Bramor_needBook)) && (givenBook == TRUE))
	{
		return TRUE;
	};
};

func void VLK_420_Bramor_giveBook_Info()
{
	AI_Output(other, self, "VLK_420_Bramor_giveBook_Info_15_01"); // Gib mir das Buch.
	if (Npc_HasItems(hero, ItMi_Gold) >= 120)
	{
		AI_Output(other, self, "VLK_420_Bramor_giveBook_Info_15_02"); // Hier ist das Gold.
		AI_Output(self, other, "VLK_420_Bramor_giveBook_Info_04_03"); // Gut. Dann ist hier das Buch.
		CreateInvItems(self, ItMi_BookPaket,  1);
		B_GiveInvItems(self, other, ItMi_BookPaket,  1);
		AI_Output(self, other, "VLK_420_Bramor_giveBook_Info_04_04"); // Bring es schnell zu Tenho, er wartet bestimmt schon darauf.
		givenBook = TRUE;
	}
	else
	{
		AI_Output(self, other, "VLK_420_Bramor_giveBook_Info_04_05"); // Du hast ja immer noch nicht genug Gold dabei!
		AI_Output(self, other, "VLK_420_Bramor_giveBook_Info_04_06"); // 120 Gold. Komm wieder, wenn du alles hast!
	};
};
