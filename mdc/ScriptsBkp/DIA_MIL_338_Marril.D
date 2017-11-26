// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


// **************************************************

instance MIL_338_Marril_Exit (C_INFO)
{
	npc			= MIL_338_Marril;
	condition		= MIL_338_Marril_Exit_Condition;
	information		= MIL_338_Marril_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int MIL_338_Marril_Exit_Condition()
{
	return TRUE;
};

func void MIL_338_Marril_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance MIL_338_Marril_youMarril (C_INFO)
{
	npc			= MIL_338_Marril;
	condition		= MIL_338_Marril_youMarril_Condition;
	information		= MIL_338_Marril_youMarril_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wer bist du?";
};

func int MIL_338_Marril_youMarril_Condition()
{
	return TRUE;
};

func void MIL_338_Marril_youMarril_Info()
{
	AI_Output(other, self, "MIL_338_Marril_youMarril_Info_15_01"); // Wer bist du?
	AI_Output(self, other, "MIL_338_Marril_youMarril_Info_12_02"); // Ich bin Marril. Soldat des Königs und...
	AI_Output(self, other, "MIL_338_Marril_youMarril_Info_12_03"); // Ach, lassen wir den Scheiß!
};

// **************************************************

instance MIL_338_Marril_whatsGoingOn (C_INFO)
{
	npc			= MIL_338_Marril;
	condition		= MIL_338_Marril_whatsGoingOn_Condition;
	information		= MIL_338_Marril_whatsGoingOn_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was ist los?";
};

func int MIL_338_Marril_whatsGoingOn_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_338_Marril_youMarril))
	{
		return TRUE;
	};
};

func void MIL_338_Marril_whatsGoingOn_Info()
{
	AI_Output(other, self, "MIL_338_Marril_whatsGoingOn_Info_15_01"); // Was ist los?
	AI_Output(self, other, "MIL_338_Marril_whatsGoingOn_Info_12_02"); // Es gibt einfach nichts zu tun.
	AI_Output(self, other, "MIL_338_Marril_whatsGoingOn_Info_12_03"); // Seit einer Woche bin ich nicht mehr für den Wachdienst in der Stadt eingeteilt und auch sonst ist alles ruhig.
	AI_Output(self, other, "MIL_338_Marril_whatsGoingOn_Info_12_04"); // Nicht einmal die Söldner trauen sich mehr in unsere Nähe.
};

// **************************************************

instance MIL_338_Marril_getUp (C_INFO)
{
	npc			= MIL_338_Marril;
	condition		= MIL_338_Marril_getUp_Condition;
	information		= MIL_338_Marril_getUp_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Steh auf, es gibt Arbeit!";
};

func int MIL_338_Marril_getUp_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2102_Volmar_whatToDo))
	{
		return TRUE;
	};
};

func void MIL_338_Marril_getUp_Info()
{
	AI_Output(other, self, "MIL_338_Marril_getUp_Info_15_01"); // Steh auf, es gibt Arbeit!
	AI_Output(self, other, "MIL_338_Marril_getUp_Info_12_02"); // Ach, wirklich? Was ist es diesmal? Ratten?
	AI_Output(other, self, "MIL_338_Marril_getUp_Info_15_03"); // Banditen. Also, komm mit!
	AI_Output(self, other, "MIL_338_Marril_getUp_Info_12_04"); // Und warum sollte ich auf deinen Befehl hören? Ich bin dir im Rang höhergestellt!
	Info_ClearChoices(MIL_338_Marril_getUp);
	Info_AddChoice(MIL_338_Marril_getUp, "Weil der Befehl von Volmar stammt!", MIL_338_Marril_getUp_volmarToldSo);
	Info_AddChoice(MIL_338_Marril_getUp, "Steh auf, sonst mach ich dir Beine!", MIL_338_Marril_getUp_iTellYou);
	Info_AddChoice(MIL_338_Marril_getUp, "Dann geh ich halt alleine.", MIL_338_Marril_getUp_iGoAlone);
};

func void MIL_338_Marril_getUp_volmarToldSo()
{
	AI_Output(other, self, "MIL_338_Marril_getUp_volmarToldSo_15_01"); // Weil der Befehl von Volmar stammt!
	AI_Output(self, other, "MIL_338_Marril_getUp_volmarToldSo_12_02"); // So? Na, dann habe ich wohl keine Wahl.
	AI_Output(self, other, "MIL_338_Marril_getUp_volmarToldSo_12_03"); // Du gehst vor!
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine	(self,"FOLLOW");
	self.aivar[AIV_PARTYMEMBER] = TRUE;
	Info_ClearChoices(MIL_338_Marril_getUp);
};

func void MIL_338_Marril_getUp_iTellYou()
{
	AI_Output(other, self, "MIL_338_Marril_getUp_iTellYou_15_01"); // Steh auf, sonst mach ich dir Beine!
	AI_Output(self, other, "MIL_338_Marril_getUp_iTellYou_12_02"); // Na, das wollen wir ja mal sehen.
	AI_StopProcessInfos(self);
	Info_ClearChoices(MIL_338_Marril_getUp);
};

func void MIL_338_Marril_getUp_iGoAlone()
{
	AI_Output(other, self, "MIL_338_Marril_getUp_iGoAlone_15_01"); // Dann geh ich halt alleine.
	AI_Output(other, self, "MIL_338_Marril_getUp_iGoAlone_15_02"); // Ich dachte, du würdest dich langweilen?
	AI_Output(self, other, "MIL_338_Marril_getUp_iGoAlone_12_03"); // So sehr auch wieder nicht, dass ich von jedem dahergelaufenen Befehle entgegennehme.
	Info_ClearChoices(MIL_338_Marril_getUp);
};

// **************************************************

instance MIL_338_Marril_goBack (C_INFO)
{
	npc			= MIL_338_Marril;
	condition		= MIL_338_Marril_goBack_Condition;
	information		= MIL_338_Marril_goBack_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Lauf zurück!";
};

func int MIL_338_Marril_goBack_Condition()
{
	if ((Npc_KnowsInfo(hero, MIL_338_Marril_getUp)) && (self.aivar[AIV_PARTYMEMBER] == TRUE))
	{
		return TRUE;
	};
};

func void MIL_338_Marril_goBack_Info()
{
	AI_Output(other, self, "MIL_338_Marril_goBack_Info_15_01"); // Lauf zurück!
	AI_Output(self, other, "MIL_338_Marril_goBack_Info_12_02"); // Schön. Aber glaub nicht, dass ich nochmal mit dir losgehe!
	Npc_ExchangeRoutine(self, "START");
	self.aivar[AIV_PARTYMEMBER] = FALSE;
	AI_StopProcessInfos(self);
};
