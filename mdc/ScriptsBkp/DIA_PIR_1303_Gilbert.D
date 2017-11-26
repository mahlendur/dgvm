// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


// **************************************************

instance PIR_1303_Gilbert_Exit (C_INFO)
{
	npc			= PIR_1303_Gilbert;
	condition		= PIR_1303_Gilbert_Exit_Condition;
	information		= PIR_1303_Gilbert_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int PIR_1303_Gilbert_Exit_Condition()
{
	return TRUE;
};

func void PIR_1303_Gilbert_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance PIR_1303_Gilbert_heyYou (C_INFO)
{
	npc			= PIR_1303_Gilbert;
	condition		= PIR_1303_Gilbert_heyYou_Condition;
	information		= PIR_1303_Gilbert_heyYou_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int PIR_1303_Gilbert_heyYou_Condition()
{
	return TRUE;
};

func void PIR_1303_Gilbert_heyYou_Info()
{
	AI_Output(self, other, "PIR_1303_Gilbert_heyYou_Info_14_01"); // Hey, du!
	AI_Output(self, other, "PIR_1303_Gilbert_heyYou_Info_14_02"); // Wo kommst du denn her?
	AI_Output(other, self, "PIR_1303_Gilbert_heyYou_Info_15_03"); // Aus der Stadt!
	AI_Output(self, other, "PIR_1303_Gilbert_heyYou_Info_14_04"); // Und was willst du hier?
	Info_ClearChoices(PIR_1303_Gilbert_heyYou);
	Info_AddChoice(PIR_1303_Gilbert_heyYou, "Ich seh' mich nur mal um.", PIR_1303_Gilbert_heyYou_justLooking);
	Info_AddChoice(PIR_1303_Gilbert_heyYou, "Ich will mich euch anschließen!", PIR_1303_Gilbert_heyYou_wannaJoin);
	Info_AddChoice(PIR_1303_Gilbert_heyYou, "Ich wollte hier mal aufräumen.", PIR_1303_Gilbert_heyYou_wannaKill);
};

func void PIR_1303_Gilbert_heyYou_justLooking()
{
	AI_Output(other, self, "PIR_1303_Gilbert_heyYou_justLooking_15_01"); // Ich seh' mich nur mal um.
	AI_Output(self, other, "PIR_1303_Gilbert_heyYou_justLooking_14_02"); // Umsehen ist nicht. Entweder du machst dich nützlich, oder du verschwindest gleich wieder!
	AI_Output(self, other, "PIR_1303_Gilbert_heyYou_justLooking_14_03"); // Am Besten meldest du dich direkt bei Henry.
	AI_Output(self, other, "PIR_1303_Gilbert_heyYou_justLooking_14_04"); // Marsch, sonst mache ich dir Beine!
	Info_ClearChoices(PIR_1303_Gilbert_heyYou);
};

func void PIR_1303_Gilbert_heyYou_wannaJoin()
{
	AI_Output(other, self, "PIR_1303_Gilbert_heyYou_wannaJoin_15_01"); // Ich will mich euch anschließen!
	AI_Output(self, other, "PIR_1303_Gilbert_heyYou_wannaJoin_14_02"); // Du? Dich uns anschließen? (lacht)
	AI_Output(self, other, "PIR_1303_Gilbert_heyYou_wannaJoin_14_03"); // Na, das kann ja was werden.
	AI_Output(self, other, "PIR_1303_Gilbert_heyYou_wannaJoin_14_04"); // Ich wette, du wirst die erste Woche nicht überleben.
	AI_Output(self, other, "PIR_1303_Gilbert_heyYou_wannaJoin_14_05"); // Aber, wie du willst... Wir brauchen immer neue Männer.
	AI_Output(self, other, "PIR_1303_Gilbert_heyYou_wannaJoin_14_06"); // Geh und sprich mit Henry. Er wird sich um dich kümmern.
	wannaJoinPirates = TRUE;
	Info_ClearChoices(PIR_1303_Gilbert_heyYou);
};

func void PIR_1303_Gilbert_heyYou_wannaKill()
{
	AI_Output(other, self, "PIR_1303_Gilbert_heyYou_wannaKill_15_01"); // Ich wollte hier mal aufräumen.
	AI_Output(self, other, "PIR_1303_Gilbert_heyYou_wannaKill_14_02"); // Volmar, dieser Stadtwachen-Spinner hat dich geschickt, nicht?
	AI_Output(self, other, "PIR_1303_Gilbert_heyYou_wannaKill_14_03"); // Dumme Idee, dich mit mir anzulegen!
	AI_StopProcessInfos(self);
	B_Attack(self, hero, AR_NONE, 1);
	Info_ClearChoices(PIR_1303_Gilbert_heyYou);
};

// **************************************************

instance PIR_1303_Gilbert_whereHenry (C_INFO)
{
	npc			= PIR_1303_Gilbert;
	condition		= PIR_1303_Gilbert_whereHenry_Condition;
	information		= PIR_1303_Gilbert_whereHenry_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wo finde ich Henry?";
};

func int PIR_1303_Gilbert_whereHenry_Condition()
{
	if (Npc_KnowsInfo(hero, PIR_1303_Gilbert_heyYou))
	{
		return TRUE;
	};
};

func void PIR_1303_Gilbert_whereHenry_Info()
{
	AI_Output(other, self, "PIR_1303_Gilbert_whereHenry_Info_15_01"); // Wo finde ich Henry?
	AI_Output(self, other, "PIR_1303_Gilbert_whereHenry_Info_14_02"); // Kletter einfach an der Klippe die Leiter hinab.
	AI_Output(self, other, "PIR_1303_Gilbert_whereHenry_Info_14_03"); // Aber stürz nicht ab. Ich habe keine Lust dich von den Felsen abzukratzen!
	AI_Output(other, self, "PIR_1303_Gilbert_whereHenry_Info_15_04"); // Danke für die warmen Worte..
	AI_Output(self, other, "PIR_1303_Gilbert_whereHenry_Info_14_05"); // Hey, das hier ist nicht das Stadtwachen-Kuschel-Lager. Hier wird angepackt und wers verbockt, der hat Pech gehabt.
	AI_Output(self, other, "PIR_1303_Gilbert_whereHenry_Info_14_06"); // Also sieh zu, dass du es nicht verbockst!
};

// **************************************************

instance PIR_1303_Gilbert_whatsNew (C_INFO)
{
	npc			= PIR_1303_Gilbert;
	condition		= PIR_1303_Gilbert_whatsNew_Condition;
	information		= PIR_1303_Gilbert_whatsNew_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Was gibt's neues?";
};

func int PIR_1303_Gilbert_whatsNew_Condition()
{
	return TRUE;
};

func void PIR_1303_Gilbert_whatsNew_Info()
{
	AI_Output(other, self, "PIR_1303_Gilbert_whatsNew_Info_15_01"); // Was gibt's neues?
	AI_Output(self, other, "PIR_1303_Gilbert_whatsNew_Info_14_02"); // Nichts, was dich interessiert. Hier ist alles ruhig!
};
