// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


// **************************************************

instance MIL_337_Rhaegar_Exit (C_INFO)
{
	npc			= MIL_337_Rhaegar;
	condition		= MIL_337_Rhaegar_Exit_Condition;
	information		= MIL_337_Rhaegar_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int MIL_337_Rhaegar_Exit_Condition()
{
	return TRUE;
};

func void MIL_337_Rhaegar_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance MIL_337_Rhaegar_whoAreYou (C_INFO)
{
	npc			= MIL_337_Rhaegar;
	condition		= MIL_337_Rhaegar_whoAreYou_Condition;
	information		= MIL_337_Rhaegar_whoAreYou_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was macht ihr denn hier?";
};

func int MIL_337_Rhaegar_whoAreYou_Condition()
{
	return TRUE;
};

func void MIL_337_Rhaegar_whoAreYou_Info()
{
	AI_Output(other, self, "MIL_337_Rhaegar_whoAreYou_Info_15_01"); // Was macht ihr denn hier?
	AI_Output(self, other, "MIL_337_Rhaegar_whoAreYou_Info_03_02"); // Wonach sieht es denn aus?
	AI_Output(self, other, "MIL_337_Rhaegar_whoAreYou_Info_03_03"); // Natürlich bewachen wir den Pass!
};

// **************************************************

instance MIL_337_Rhaegar_guardForWhat (C_INFO)
{
	npc			= MIL_337_Rhaegar;
	condition		= MIL_337_Rhaegar_guardForWhat_Condition;
	information		= MIL_337_Rhaegar_guardForWhat_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wovor bewacht ihr denn den Pass?";
};

func int MIL_337_Rhaegar_guardForWhat_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_337_Rhaegar_whoAreYou))
	{
		return TRUE;
	};
};

func void MIL_337_Rhaegar_guardForWhat_Info()
{
	AI_Output(other, self, "MIL_337_Rhaegar_guardForWhat_Info_15_01"); // Wovor bewacht ihr denn den Pass?
	AI_Output(self, other, "MIL_337_Rhaegar_guardForWhat_Info_03_02"); // Natürlich vor den Orks.
	AI_Output(other, self, "MIL_337_Rhaegar_guardForWhat_Info_15_03"); // Aber ich denke, der Pass...
	AI_Output(self, other, "MIL_337_Rhaegar_guardForWhat_Info_03_04"); // ... wurde verschüttet. Jaja, schon klar!
	AI_Output(self, other, "MIL_337_Rhaegar_guardForWhat_Info_03_05"); // Das bedeutet aber nicht, dass wir jetzt alle in Sicherheit sind. Ganz im Gegenteil.
	AI_Output(self, other, "MIL_337_Rhaegar_guardForWhat_Info_03_06"); // Dadurch, dass der Pass gesprengt wurde, sind die Orks nur nich wütender geworden.
	AI_Output(self, other, "MIL_337_Rhaegar_guardForWhat_Info_03_07"); // Hast du schonmal einen richtig wütenden Ork gesehen?
	AI_Output(other, self, "MIL_337_Rhaegar_guardForWhat_Info_15_08"); // Naja...
	AI_Output(self, other, "MIL_337_Rhaegar_guardForWhat_Info_03_09"); // Siehst du, das dachte ich mir! Wenn die Felle irgendwann doch noch auf die Idee kommen, den Pass wieder frei zu räumen, sind wir hier.
};

// **************************************************

instance MIL_337_Rhaegar_smthToDo (C_INFO)
{
	npc			= MIL_337_Rhaegar;
	condition		= MIL_337_Rhaegar_smthToDo_Condition;
	information		= MIL_337_Rhaegar_smthToDo_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kann ich etwas für euch tun?";
};

func int MIL_337_Rhaegar_smthToDo_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_337_Rhaegar_guardForWhat))
	{
		return TRUE;
	};
};

func void MIL_337_Rhaegar_smthToDo_Info()
{
	AI_Output(other, self, "MIL_337_Rhaegar_smthToDo_Info_15_01"); // Kann ich etwas für euch tun?
	AI_Output(self, other, "MIL_337_Rhaegar_smthToDo_Info_03_02"); // Ja, da würde mir tatsächlich etwas einfallen.
	AI_Output(self, other, "MIL_337_Rhaegar_smthToDo_Info_03_03"); // Zum einen brauchen wir was zum Essen.
	AI_Output(self, other, "MIL_337_Rhaegar_smthToDo_Info_03_04"); // Es wäre gut, wenn du uns ein paar gebratene Keulen Fleisch und ein paar Bier bringen könntest.
	AI_Output(self, other, "MIL_337_Rhaegar_smthToDo_Info_03_05"); // Zwei Keulen und ein Bier pro Mann sollten reichen.
	MIS_foodForGuard = LOG_RUNNING;
	Log_CreateTopic(TOPIC_foodForGuard, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_foodForGuard, LOG_RUNNING);
	B_LogEntry(TOPIC_foodForGuard, "Rhaegar, Anführer des kleinen Miliztrupps am Pass zum Minental hat mich gebeten, den Männern etwas zu Essen zu besorgen. Er sagt, ein paar gebratene Keulen Fleisch und etwas Bier sollte reichen.");
	AI_Output(other, self, "MIL_337_Rhaegar_smthToDo_Info_15_06"); // Alkohol im Dienst?
	AI_Output(self, other, "MIL_337_Rhaegar_smthToDo_Info_03_07"); // Ich bitte dich. Wir sind hier soweit ab vom Schuss, das bekommt sowieso niemand mit.
	AI_Output(self, other, "MIL_337_Rhaegar_smthToDo_Info_03_08"); // Außerdem brauchen ich hier frische Männer! Geh zu Volmar und sag ihm, er soll eine neue Truppe schicken.
	MIS_guardChange = LOG_RUNNING;
	Log_CreateTopic(TOPIC_guardChange, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_guardChange, LOG_RUNNING);
	Log_AddEntry(TOPIC_guardChange, "Rhaegar braucht frische Männer am Pass. Ich soll zu Volmar gehen und eine Wachablösung beantragen.");
	AI_Output(other, self, "MIL_337_Rhaegar_smthToDo_Info_15_09"); // Sonst noch was?
	AI_Output(self, other, "MIL_337_Rhaegar_smthToDo_Info_03_10"); // Nein, das wäre erstmal alles!
};

// **************************************************

instance MIL_337_Rhaegar_gotYourMeal (C_INFO)
{
	npc			= MIL_337_Rhaegar;
	condition		= MIL_337_Rhaegar_gotYourMeal_Condition;
	information		= MIL_337_Rhaegar_gotYourMeal_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Hier ist euer Essen!";
};

func int MIL_337_Rhaegar_gotYourMeal_Condition()
{
	if ((Npc_KnowsInfo(hero, MIL_337_Rhaegar_smthToDo)) && (Npc_HasItems(other, ItFo_Beer) >= 6) && (Npc_HasItems(other, ItFoMutton) >= 12))
	{
		return TRUE;
	};
};

func void MIL_337_Rhaegar_gotYourMeal_Info()
{
	AI_Output(other, self, "MIL_337_Rhaegar_gotYourMeal_Info_15_01"); // Hier ist euer Essen!
	AI_Output(self, other, "MIL_337_Rhaegar_gotYourMeal_Info_03_02"); // Sehr gut. Aber...
	MIS_foodForGuard = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_foodForGuard, LOG_SUCCESS);
	B_LogEntry(TOPIC_foodForGuard, "Auch wenn das Fleisch fast kalt war, ist Rhaegar zufrieden.");
	B_GivePlayerXP(150);
	AI_Output(self, other, "MIL_337_Rhaegar_gotYourMeal_Info_03_03"); // Das Fleisch ist ja fast kalt!
	AI_Output(other, self, "MIL_337_Rhaegar_gotYourMeal_Info_15_04"); // Wenn ihr soweit weg seid....
	AI_Output(self, other, "MIL_337_Rhaegar_gotYourMeal_Info_03_05"); // Hmpf, hast ja Recht. Wie auch immer, danke!
	AI_Output(self, other, "MIL_337_Rhaegar_gotYourMeal_Info_03_06"); // Gib her, ich werde die Sachen an die Männer verteilen.
	B_GiveInvItems(other, self, ItFo_Beer,  6);
	B_GiveInvItems(other, self, ItFoMutton,  12);
	AI_Output(self, other, "MIL_337_Rhaegar_gotYourMeal_Info_03_07"); // Hier, etwas für deine Mühen!
	CreateInvItems(self, ItMi_Gold,  50);
	B_GiveInvItems(self, other, ItMi_Gold,  50);
	if (MIS_guardChange == LOG_RUNNING)
	{
		AI_Output(self, other, "MIL_337_Rhaegar_gotYourMeal_Info_03_08"); // Wie siehts aus mit der Wachablösung?
		AI_Output(other, self, "MIL_337_Rhaegar_gotYourMeal_Info_15_09"); // Ich arbeite dran!
		AI_Output(self, other, "MIL_337_Rhaegar_gotYourMeal_Info_03_10"); // Das hoffe ich! Der müde Haufen ist zu nichts mehr zu bewegen!
	};
};

// **************************************************

instance MIL_337_Rhaegar_gotGuards (C_INFO)
{
	npc			= MIL_337_Rhaegar;
	condition		= MIL_337_Rhaegar_gotGuards_Condition;
	information		= MIL_337_Rhaegar_gotGuards_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Volmar wird dir eine Wachablösung schicken!";
};

func int MIL_337_Rhaegar_gotGuards_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2102_Volmar_newGuards))
	{
		return TRUE;
	};
};

func void MIL_337_Rhaegar_gotGuards_Info()
{
	AI_Output(other, self, "MIL_337_Rhaegar_gotGuards_Info_15_01"); // Volmar wird dir eine Wachablösung schicken!
	AI_Output(self, other, "MIL_337_Rhaegar_gotGuards_Info_03_02"); // Und wann wird die eintreffen? Warum hast du die Männer nicht gleich mitgebracht?
	AI_Output(other, self, "MIL_337_Rhaegar_gotGuards_Info_15_03"); // Entspann dich! Rhaegar wird die Männer in den nächsten Tagen losschicken.
	AI_Output(self, other, "MIL_337_Rhaegar_gotGuards_Info_03_04"); // In den nächsten Tagen?! Der Spinner weiß doch gar nicht...
	AI_Output(self, other, "MIL_337_Rhaegar_gotGuards_Info_03_05"); // Hm, schön. Danke auf jeden Fall für deine Mühen.
	AI_Output(self, other, "MIL_337_Rhaegar_gotGuards_Info_03_06"); // Hier, hast du etwas Gold! Ich werde dann mal sehen, was ich noch mit den Jungs hinbekomme.
	CreateInvItems(self, ItMi_Gold,  50);
	B_GiveInvItems(self, other, ItMi_Gold,  50);
	B_LogEntry(TOPIC_guardChange, "Rhaegar ist mit der Wachablösung zwar nicht zufrieden, nimmt es aber hin.");
	MIS_guardChange = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_guardChange, LOG_SUCCESS);
	B_GivePlayerXP(250);
};
