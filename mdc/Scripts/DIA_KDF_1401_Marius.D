// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!


// **************************************************

instance KDF_1401_Marius_Exit (C_INFO)
{
	npc			= KDF_1401_Marius;
	condition		= KDF_1401_Marius_Exit_Condition;
	information		= KDF_1401_Marius_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int KDF_1401_Marius_Exit_Condition()
{
	return TRUE;
};

func void KDF_1401_Marius_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance KDF_1401_Marius_greetingsMage (C_INFO)
{
	npc			= KDF_1401_Marius;
	condition		= KDF_1401_Marius_greetingsMage_Condition;
	information		= KDF_1401_Marius_greetingsMage_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Grüße, ehrwürdiger Magier!";
};

func int KDF_1401_Marius_greetingsMage_Condition()
{
	return TRUE;
};

func void KDF_1401_Marius_greetingsMage_Info()
{
	AI_Output(other, self, "KDF_1401_Marius_greetingsMage_Info_15_01"); // Grüße, ehrwürdiger Magier!
	AI_Output(self, other, "KDF_1401_Marius_greetingsMage_Info_03_02"); // Ich grüße dich auch.
	AI_Output(self, other, "KDF_1401_Marius_greetingsMage_Info_03_03"); // Mein Name ist Marius, ich bin ein Magier des Eises.
	AI_Output(self, other, "KDF_1401_Marius_greetingsMage_Info_03_04"); // Was kann ich für dich tun?
};

// **************************************************

instance KDF_1401_Marius_canLearnMage (C_INFO)
{
	npc			= KDF_1401_Marius;
	condition		= KDF_1401_Marius_canLearnMage_Condition;
	information		= KDF_1401_Marius_canLearnMage_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kann jeder die Kunst der Magie erlernen?";
};

func int KDF_1401_Marius_canLearnMage_Condition()
{
	if (Npc_KnowsInfo(hero, KDF_1401_Marius_greetingsMage))
	{
		return TRUE;
	};
};

func void KDF_1401_Marius_canLearnMage_Info()
{
	AI_Output(other, self, "KDF_1401_Marius_canLearnMage_Info_15_01"); // Kann jeder die Kunst der Magie erlernen?
	AI_Output(self, other, "KDF_1401_Marius_canLearnMage_Info_03_02"); // Jeder Mensch ist fähig, Magie zu wirken. Die einen mehr, die anderen weniger.
	AI_Output(self, other, "KDF_1401_Marius_canLearnMage_Info_03_03"); // Während der Zeit im Kloster als Novize prüfen wir jeden einzelnen auf seine magischen Fähigkeiten.
	AI_Output(self, other, "KDF_1401_Marius_canLearnMage_Info_03_04"); // Nur die jenigen, mit dem ausgeprägtesten magischen Verständnis erhalten einmal die Möglichkeit, die Robe eines Magiers anzulegen.
	AI_Output(self, other, "KDF_1401_Marius_canLearnMage_Info_03_05"); // Nicht selten bleibt ein Mann Zeit seines Lebens Novize. Aber bei dir...
	AI_Output(self, other, "KDF_1401_Marius_canLearnMage_Info_03_06"); // (grübelt) ... ich weiß nicht, ich spüre eine starke Kraft in dir. Aber sie ist nicht gezügelt.
	if (Npc_GetTrueGuild(hero) == GIL_NONE || Npc_GetTrueGuild(hero) == GIL_VLK)
	{
		AI_Output(self, other, "KDF_1401_Marius_canLearnMage_Info_03_07"); // Ich glaube, du wärst als Magier geeignet.
	};
};

// **************************************************

instance KDF_1401_Marius_canBeNovice (C_INFO)
{
	npc			= KDF_1401_Marius;
	condition		= KDF_1401_Marius_canBeNovice_Condition;
	information		= KDF_1401_Marius_canBeNovice_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Heißt das, ich könnte bei euch aufgenommen werden?";
};

func int KDF_1401_Marius_canBeNovice_Condition()
{
	if ((Npc_KnowsInfo(hero, KDF_1401_Marius_canLearnMage)) && (kapitel == 1))
	{
		return TRUE;
	};
};

func void KDF_1401_Marius_canBeNovice_Info()
{
	AI_Output(other, self, "KDF_1401_Marius_canBeNovice_Info_15_01"); // Heißt das, ich könnte bei euch aufgenommen werden?
	AI_Output(self, other, "KDF_1401_Marius_canBeNovice_Info_03_02"); // Du hast einen starken Geist und viel Macht.
	AI_Output(self, other, "KDF_1401_Marius_canBeNovice_Info_03_03"); // Macht, die in die richtigen Bahnen gelenkt werden muss, bevor sie Unheil anrichtet.
	AI_Output(self, other, "KDF_1401_Marius_canBeNovice_Info_03_04"); // Ja, ich denke, du wärst bei uns gut aufgehoben.
	AI_Output(self, other, "KDF_1401_Marius_canBeNovice_Info_03_05"); // Wenn du willst, schicke ich dich zum Kloster.
};

// **************************************************

instance KDF_1401_Marius_goMonastery (C_INFO)
{
	npc			= KDF_1401_Marius;
	condition		= KDF_1401_Marius_goMonastery_Condition;
	information		= KDF_1401_Marius_goMonastery_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Schick' mich zum Kloster!";
};

func int KDF_1401_Marius_goMonastery_Condition()
{
	if (Npc_KnowsInfo(hero, KDF_1401_Marius_canBeNovice))
	{
		return TRUE;
	};
};

func void KDF_1401_Marius_goMonastery_Info()
{
	AI_Output(other, self, "KDF_1401_Marius_goMonastery_Info_15_01"); // Schick' mich zum Kloster!
	AI_Output(self, other, "KDF_1401_Marius_goMonastery_Info_03_02"); // In Ordnung. Ich kann dich leider nicht begleiten, da ich durch meine Aufgaben an die Stadt gebunden bin.
	CreateInvItems(self, ItWr_Map_Monastery,  1);
	B_GiveInvItems(self, other, ItWr_Map_Monastery,  1);
	AI_Output(self, other, "KDF_1401_Marius_goMonastery_Info_03_03"); // Aber ich gebe dir eine Karte mit. Hier ist das Kloster eingezeichnet. Du wirst den Weg finden, da bin ich mir sicher.
	AI_Output(self, other, "KDF_1401_Marius_goMonastery_Info_03_04"); // Auf dem halben Weg etwa findest du die Taverne 'Zum alten Scavenger'. Dort kannst du rasten.
	AI_Output(self, other, "KDF_1401_Marius_goMonastery_Info_03_05"); // Wenn du am Kloster ankommst, gib dem Novizen vor dem Tor diesen Brief. Er wird dich einlassen.
	CreateInvItems(self, ItWr_MariusMessage_Sealed,  1);
	B_GiveInvItems(self, other, ItWr_MariusMessage_Sealed,  1);
	AI_Output(other, self, "KDF_1401_Marius_goMonastery_Info_15_06"); // Muss ich keinen Tribut bezahlen?
	AI_Output(self, other, "KDF_1401_Marius_goMonastery_Info_03_07"); // Was für einen Tribut?
	AI_Output(other, self, "KDF_1401_Marius_goMonastery_Info_15_08"); // Ich hörte von 1000 Gold und einem Schaf.
	AI_Output(self, other, "KDF_1401_Marius_goMonastery_Info_03_09"); // Ich weiß nicht, warum sich dieses Gerücht derart hartnäckig hält.
	AI_Output(self, other, "KDF_1401_Marius_goMonastery_Info_03_10"); // Nein, wir fordern keinen Tribut. Wer zu uns ins Kloster kommt, der tut das aus Überzeugung, nicht aus Zwang.
	AI_Output(self, other, "KDF_1401_Marius_goMonastery_Info_03_11"); // Diese Hingabe reicht uns. Mehr brauchen wir nicht.
	AI_Output(self, other, "KDF_1401_Marius_goMonastery_Info_03_12"); // Und nun geh! Lass den hohen Rat nicht warten!
	B_LogEntry(TOPIC_newLife, "Marius, der Eismagier hat mich ins Kloster geschickt. Er sagte, er spüre eine große Macht in mir. Er gab eine Karte, auf der das Kloster eingezeichnet ist und einen Brief, der mir Zutritt verschaffen soll.");
};
