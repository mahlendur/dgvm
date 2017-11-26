// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!


// **************************************************

instance BAU_241_Zaphina_Exit (C_INFO)
{
	npc			= BAU_241_Zaphina;
	condition		= BAU_241_Zaphina_Exit_Condition;
	information		= BAU_241_Zaphina_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int BAU_241_Zaphina_Exit_Condition()
{
	return TRUE;
};

func void BAU_241_Zaphina_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance BAU_241_Zaphina_whatYouDoing (C_INFO)
{
	npc			= BAU_241_Zaphina;
	condition		= BAU_241_Zaphina_whatYouDoing_Condition;
	information		= BAU_241_Zaphina_whatYouDoing_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was machst du hier?";
};

func int BAU_241_Zaphina_whatYouDoing_Condition()
{
	if (((Wld_IsTime(04,00,06,30) || Wld_IsTime(19,00,22,30))))
	{
		return TRUE;
	};
};

func void BAU_241_Zaphina_whatYouDoing_Info()
{
	AI_Output(other, self, "BAU_241_Zaphina_whatYouDoing_Info_15_01"); // Was machst du hier?
	AI_Output(self, other, "BAU_241_Zaphina_whatYouDoing_Info_17_02"); // Wonach siehts denn aus?
	AI_Output(self, other, "BAU_241_Zaphina_whatYouDoing_Info_17_03"); // Ich trainiere meinen Schwertarm!
	AI_Output(self, other, "BAU_241_Zaphina_whatYouDoing_Info_17_04"); // Vielleicht komme ich irgendwann aus diesem Loch hier raus und kann richtig kÃ¤mpfen...
};

// **************************************************

instance BAU_241_Zaphina_notNow (C_INFO)
{
	npc			= BAU_241_Zaphina;
	condition		= BAU_241_Zaphina_notNow_Condition;
	information		= BAU_241_Zaphina_notNow_Info;
	important		= TRUE;
	permanent		= TRUE;
};

func int BAU_241_Zaphina_notNow_Condition()
{
	if ((Wld_IsTime(06,30,19,00)) && (Npc_IsInState(self, ZS_TALK)) && (Npc_GetTrueGuild(self) == GIL_BAU))
	{
		return TRUE;
	};
};

func void BAU_241_Zaphina_notNow_Info()
{
	AI_Output(self, other, "BAU_241_Zaphina_notNow_Info_17_01"); // Nicht jetzt! Siehst du nicht, dass ich arbeiten muss?
};

// **************************************************

instance BAU_241_Zaphina_mustRest (C_INFO)
{
	npc			= BAU_241_Zaphina;
	condition		= BAU_241_Zaphina_mustRest_Condition;
	information		= BAU_241_Zaphina_mustRest_Info;
	important		= TRUE;
	permanent		= TRUE;
};

func int BAU_241_Zaphina_mustRest_Condition()
{
	if ((Wld_IsTime(22,30,04,00)) && (Npc_IsInState(self, ZS_TALK)) && (Npc_GetTrueGuild(self) == GIL_BAU))
	{
		return TRUE;
	};
};

func void BAU_241_Zaphina_mustRest_Info()
{
	AI_Output(self, other, "BAU_241_Zaphina_mustRest_Info_17_01"); // Ich muss mich ausruhen... Das war ein anstrengender Tag.
};
