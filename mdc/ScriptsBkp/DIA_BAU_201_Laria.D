// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


// **************************************************

instance BAU_201_Laria_Exit (C_INFO)
{
	npc			= BAU_201_Laria;
	condition		= BAU_201_Laria_Exit_Condition;
	information		= BAU_201_Laria_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int BAU_201_Laria_Exit_Condition()
{
	return TRUE;
};

func void BAU_201_Laria_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance BAU_201_Laria_heyYou (C_INFO)
{
	npc			= BAU_201_Laria;
	condition		= BAU_201_Laria_heyYou_Condition;
	information		= BAU_201_Laria_heyYou_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int BAU_201_Laria_heyYou_Condition()
{
	return TRUE;
};

func void BAU_201_Laria_heyYou_Info()
{
	AI_Output(self, other, "BAU_201_Laria_heyYou_Info_17_01"); // Hey, du! Warte bitte!
	AI_Output(self, other, "BAU_201_Laria_heyYou_Info_17_02"); // Du siehst stark aus. Zumindest st�rker als alles, was hier an "M�nnern" auf meinem Hof rumrennt.
	AI_Output(self, other, "BAU_201_Laria_heyYou_Info_17_03"); // K�nntest du mir einen Gefallen tun?
	AI_Output(self, other, "BAU_201_Laria_heyYou_Info_17_04"); // Wir haben ein Problem mit Riesenratten in der Scheune. Vielleicht k�nntest du dich darum k�mmern?
	if (MIS_pestControl == LOG_RUNNING)
	{
		AI_Output(other, self, "BAU_201_Laria_heyYou_Info_15_05"); // Das trifft sich gut.
		AI_Output(other, self, "BAU_201_Laria_heyYou_Info_15_06"); // Rodar hat mich geschickt, um dein Rattenproblem in den Griff zu bekommen.
		AI_Output(self, other, "BAU_201_Laria_heyYou_Info_17_07"); // Wirklich? Und ich dachte schon, er h�tte mich vergessen.
		AI_Output(self, other, "BAU_201_Laria_heyYou_Info_17_08"); // Aber dann wird ja alles gut.
		AI_Output(self, other, "BAU_201_Laria_heyYou_Info_17_09"); // Vielen Dank schonmal!
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(other, self, "BAU_201_Laria_heyYou_Info_15_10"); // Ich werde sehen, was sich machen l�sst.
		AI_Output(self, other, "BAU_201_Laria_heyYou_Info_17_11"); // Du als starker Mann wirst doch bestimmt Interesse an einem Platz bei den S�ldnern haben.
		AI_Output(self, other, "BAU_201_Laria_heyYou_Info_17_12"); // Wenn du mir hilfst, wird das Rodar, den Gro�bauern bestimmt beeindrucken.
		AI_Output(other, self, "BAU_201_Laria_heyYou_Info_15_13"); // Das klingt nach einem Plan...
		MIS_pestControl = LOG_RUNNING;
		Log_CreateTopic(TOPIC_pestControl, LOG_MISSION);
		Log_SetTopicStatus(TOPIC_pestControl, LOG_RUNNING);
		B_LogEntry(TOPIC_pestControl, "Laria, eine B�uerin, bat mich ein paar Riesenratten in ihrer Scheune zu t�ten. Vielleicht schindet das Eindruck beim Gro�bauern.");
	};
};

// **************************************************

instance BAU_201_Laria_ratsDead (C_INFO)
{
	npc			= BAU_201_Laria;
	condition		= BAU_201_Laria_ratsDead_Condition;
	information		= BAU_201_Laria_ratsDead_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Die Ratten sind erledigt!";
};

func int BAU_201_Laria_ratsDead_Condition()
{
	if ((Npc_KnowsInfo(hero, BAU_201_Laria_heyYou)) && (Npc_IsDead(HofRat1) == TRUE) && (Npc_IsDead(HofRat2) == TRUE))
	{
		return TRUE;
	};
};

func void BAU_201_Laria_ratsDead_Info()
{
	AI_Output(other, self, "BAU_201_Laria_ratsDead_Info_15_01"); // Die Ratten sind erledigt!
	AI_Output(self, other, "BAU_201_Laria_ratsDead_Info_17_02"); // Wirklich? Vielen lieben Dank!
	AI_Output(self, other, "BAU_201_Laria_ratsDead_Info_17_03"); // Das wird das Leben hier wieder etwas einfacher machen.
	AI_Output(self, other, "BAU_201_Laria_ratsDead_Info_17_04"); // Warte, ich habe etwas f�r dich. Das wird dir helfen.
	CreateInvItems(self, ItFo_XPStew,  1);
	B_GiveInvItems(self, other, ItFo_XPStew,  1);
	AI_Output(self, other, "BAU_201_Laria_ratsDead_Info_17_05"); // Lass es dir schmecken. Und wenn du einmal einen Platz zum Schlafen brauchst, komm wieder.
	AI_Output(self, other, "BAU_201_Laria_ratsDead_Info_17_06"); // Hier brennt immer ein Feuer!
	B_LogEntry(TOPIC_pestControl, "Laria war erleichtert, als sie erfahren hat, dass die Ratten auf ihrem Hof tot sind.");
	B_GivePlayerXP(100);
};
