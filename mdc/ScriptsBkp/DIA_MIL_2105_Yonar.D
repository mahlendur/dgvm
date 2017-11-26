// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!

var int yonarTrade;
var int yonarGold;
var int yonarWork;

// **************************************************

instance MIL_2105_Yonar_Exit (C_INFO)
{
	npc			= MIL_2105_Yonar;
	condition		= MIL_2105_Yonar_Exit_Condition;
	information		= MIL_2105_Yonar_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int MIL_2105_Yonar_Exit_Condition()
{
	return TRUE;
};

func void MIL_2105_Yonar_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance MIL_2105_Yonar_youSmith (C_INFO)
{
	npc			= MIL_2105_Yonar;
	condition		= MIL_2105_Yonar_youSmith_Condition;
	information		= MIL_2105_Yonar_youSmith_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Du bist Schmied?";
};

func int MIL_2105_Yonar_youSmith_Condition()
{
	return TRUE;
};

func void MIL_2105_Yonar_youSmith_Info()
{
	AI_Output(other, self, "MIL_2105_Yonar_youSmith_Info_15_01"); // Du bist Schmied?
	AI_Output(self, other, "MIL_2105_Yonar_youSmith_Info_03_02"); // Sehr gut erkannt, Fuchs.
	AI_Output(other, self, "MIL_2105_Yonar_youSmith_Info_15_03"); // Warum hat die Miliz einen eigenen Schmied, wenn es schon welche in der Stadt gibt?
	AI_Output(self, other, "MIL_2105_Yonar_youSmith_Info_03_04"); // Weil wir Waffen brauchen. Viele Waffen. Wenn wir die bei den städtischen Schmieden kaufen, müssen wir bezahlen.
	AI_Output(self, other, "MIL_2105_Yonar_youSmith_Info_03_05"); // Und das wird teuer. Also produzieren wir selber, das ist für alle einfacher.
};

// **************************************************

instance MIL_2105_Yonar_youTrade (C_INFO)
{
	npc			= MIL_2105_Yonar;
	condition		= MIL_2105_Yonar_youTrade_Condition;
	information		= MIL_2105_Yonar_youTrade_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Verkaufst du auch Waffen?";
};

func int MIL_2105_Yonar_youTrade_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2105_Yonar_youSmith))
	{
		return TRUE;
	};
};

func void MIL_2105_Yonar_youTrade_Info()
{
	AI_Output(other, self, "MIL_2105_Yonar_youTrade_Info_15_01"); // Verkaufst du auch Waffen?
	AI_Output(self, other, "MIL_2105_Yonar_youTrade_Info_03_02"); // Kommt darauf an... Was bietest du mir im Gegenzug an?
	Info_ClearChoices(MIL_2105_Yonar_youTrade);
	Info_AddChoice(MIL_2105_Yonar_youTrade, "Wen soll ich töten?", MIL_2105_Yonar_youTrade_shouldIKill);
	Info_AddChoice(MIL_2105_Yonar_youTrade, "Was wäre denn in deinem Interesse?", MIL_2105_Yonar_youTrade_whatYouWant);
	Info_AddChoice(MIL_2105_Yonar_youTrade, "Wäre Gold für dich von Interesse?", MIL_2105_Yonar_youTrade_howManyGold);
};

func void MIL_2105_Yonar_youTrade_shouldIKill()
{
	AI_Output(other, self, "MIL_2105_Yonar_youTrade_shouldIKill_15_01"); // Wen soll ich töten?
	AI_Output(self, other, "MIL_2105_Yonar_youTrade_shouldIKill_03_02"); // Um Himmels Willen! Bist du wahnsinnig?
	AI_Output(self, other, "MIL_2105_Yonar_youTrade_shouldIKill_03_03"); // Tut mir leid, aber ich habe kein gutes Gewissen dabei, dir Waffen zu verkaufen.
	AI_Output(self, other, "MIL_2105_Yonar_youTrade_shouldIKill_03_04"); // Natürlich werden sie zum Töten benutzt, aber ich gehe immer von Verteidigung aus. Nie von mutwilligem Angriff.
	Info_ClearChoices(MIL_2105_Yonar_youTrade);
};

func void MIL_2105_Yonar_youTrade_whatYouWant()
{
	AI_Output(other, self, "MIL_2105_Yonar_youTrade_whatYouWant_15_01"); // Was wäre denn in deinem Interesse?
	AI_Output(self, other, "MIL_2105_Yonar_youTrade_whatYouWant_03_02"); // Oh, das ist die richtige Frage...
	AI_Output(self, other, "MIL_2105_Yonar_youTrade_whatYouWant_03_03"); // Du könntest tatsächlich etwas für mich tun.
	yonarWork = TRUE;
	Info_ClearChoices(MIL_2105_Yonar_youTrade);
};

func void MIL_2105_Yonar_youTrade_howManyGold()
{
	AI_Output(other, self, "MIL_2105_Yonar_youTrade_howManyGold_15_01"); // Wäre Gold für dich von Interesse?
	AI_Output(self, other, "MIL_2105_Yonar_youTrade_howManyGold_03_02"); // Gold klingt immer gut, mein Freund.
	AI_Output(self, other, "MIL_2105_Yonar_youTrade_howManyGold_03_03"); // Sagen wir, für... (überlegt) ... 500 Gold kommen wir ins Geschäft!
	Info_ClearChoices(MIL_2105_Yonar_youTrade);
};

// **************************************************

instance MIL_2105_Yonar_tradeGold (C_INFO)
{
	npc			= MIL_2105_Yonar;
	condition		= MIL_2105_Yonar_tradeGold_Condition;
	information		= MIL_2105_Yonar_tradeGold_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Hier sind deine 500 Gold!";
};

func int MIL_2105_Yonar_tradeGold_Condition()
{
	if ((Npc_HasItems(other, ItMi_Gold) >= 500) && (yonarGold == TRUE))
	{
		return TRUE;
	};
};

func void MIL_2105_Yonar_tradeGold_Info()
{
	AI_Output(other, self, "MIL_2105_Yonar_tradeGold_Info_15_01"); // Hier sind deine 500 Gold!
	B_GiveInvItems(other, self, ItMi_Gold,  500);
	AI_Output(self, other, "MIL_2105_Yonar_tradeGold_Info_03_02"); // Sehr gut. Sieh dich in Ruhe um, du findest bestimmt etwas von Interesse.
	yonarTrade = TRUE;
};

// **************************************************

instance MIL_2105_Yonar_tradeWork (C_INFO)
{
	npc			= MIL_2105_Yonar;
	condition		= MIL_2105_Yonar_tradeWork_Condition;
	information		= MIL_2105_Yonar_tradeWork_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was kann ich für dich tun?";
};

func int MIL_2105_Yonar_tradeWork_Condition()
{
	if (yonarWork == TRUE)
	{
		return TRUE;
	};
};

func void MIL_2105_Yonar_tradeWork_Info()
{
	AI_Output(other, self, "MIL_2105_Yonar_tradeWork_Info_15_01"); // Was kann ich für dich tun?
	AI_Output(self, other, "MIL_2105_Yonar_tradeWork_Info_03_02"); // Die Aufgabe ist etwas heikel.
	AI_Output(other, self, "MIL_2105_Yonar_tradeWork_Info_15_03"); // Heikel ist mein Spezialgebiet.
	AI_Output(self, other, "MIL_2105_Yonar_tradeWork_Info_03_04"); // Sehr gut. Hür zu: Wir haben hier ein Problem mit Dieben.
	AI_Output(other, self, "MIL_2105_Yonar_tradeWork_Info_15_05"); // Diebe? In der Kaserne?
	AI_Output(self, other, "MIL_2105_Yonar_tradeWork_Info_03_06"); // Verspotte uns nicht. Der Dieb ist sehr geschickt, wahrscheinlich hat er Kontakte zur Stadtwache.
	AI_Output(self, other, "MIL_2105_Yonar_tradeWork_Info_03_07"); // Egal, wie wir unsere Wachschichten anpassen, in einem unbemerkten Moment verschafft sich der Dieb Zutritt zur Schmiede und klaut unsere Waffen.
	AI_Output(self, other, "MIL_2105_Yonar_tradeWork_Info_03_08"); // Es ist nicht viel, aber zu viel, um auch noch Waffenhandel unter der Hand zu verschleiern.
	AI_Output(self, other, "MIL_2105_Yonar_tradeWork_Info_03_09"); // Der Dieb muss gefasst werden! Du bist neu, unbekannt. Du bist genau der richtige Mann!
	AI_Output(self, other, "MIL_2105_Yonar_tradeWork_Info_03_10"); // Finde den Dieb und ich werde dir mit Vergnügen meine Waffen verkaufen.
	MIS_weaponThief = LOG_RUNNING;
	Log_CreateTopic(TOPIC_weaponThief, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_weaponThief, LOG_RUNNING);
	B_LogEntry(TOPIC_weaponThief, "Yonar, der Schmied in der Kaserne ist bereit, mir seine Waffen zu verkaufen. Allerdings soll ich dafür etwas für ihn erledigen. Seit geraumer Zeit verschwinden Waffen in der Kaserne, Yonar vermutet dahinter einen Dieb. Ich soll den Dieb stellen. Er kommt in der Nacht, zwischen den Wachwechseln. Vielleicht sollte ich mich in der Schmiede auf die Lauer legen.");
};

// **************************************************

instance MIL_2105_Yonar_eponaRose (C_INFO)
{
	npc			= MIL_2105_Yonar;
	condition		= MIL_2105_Yonar_eponaRose_Condition;
	information		= MIL_2105_Yonar_eponaRose_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Eine Rose für Epona!";
};

func int MIL_2105_Yonar_eponaRose_Condition()
{
	if ((Npc_KnowsInfo(hero, MIL_2105_Yonar_youSmith)) && (MIS_newLife == LOG_RUNNING))
	{
		return TRUE;
	};
};

func void MIL_2105_Yonar_eponaRose_Info()
{
	AI_Output(other, self, "MIL_2105_Yonar_eponaRose_Info_15_01"); // Eine Rose für Epona!
	AI_Output(self, other, "MIL_2105_Yonar_eponaRose_Info_03_02"); // Was?
	AI_Output(self, other, "MIL_2105_Yonar_eponaRose_Info_03_03"); // Willst du Rosen kaufen? Dann bist du in der Schmiede an der falschen Adresse mein Freund.
	rosecounter += 1;
};

// **************************************************

instance MIL_2105_Yonar_foundThief1 (C_INFO)
{
	npc			= MIL_2105_Yonar;
	condition		= MIL_2105_Yonar_foundThief1_Condition;
	information		= MIL_2105_Yonar_foundThief1_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich habe den Dieb gestellt!";
};

func int MIL_2105_Yonar_foundThief1_Condition()
{
	if (albrarChoice == 2)
	{
		return TRUE;
	};
};

func void MIL_2105_Yonar_foundThief1_Info()
{
	AI_Output(other, self, "MIL_2105_Yonar_foundThief1_Info_15_01"); // Ich habe den Dieb gestellt!
	AI_Output(self, other, "MIL_2105_Yonar_foundThief1_Info_03_02"); // Ach? Und? Welcher Schweinehund bestiehlt mich ständig?
	AI_Output(other, self, "MIL_2105_Yonar_foundThief1_Info_15_03"); // Es ist der Waffenhändler Albrar. Er schlich hier durch die Kaserne und machte sich an den Waffenkisten zu schaffen.
	AI_Output(self, other, "MIL_2105_Yonar_foundThief1_Info_03_04"); // Hat er den Diebstahl gestanden?
	AI_Output(other, self, "MIL_2105_Yonar_foundThief1_Info_15_05"); // Hat er.
	AI_Output(self, other, "MIL_2105_Yonar_foundThief1_Info_03_06"); // Gut, ich werde ihn mir vorknöpfen.
	AI_Output(self, other, "MIL_2105_Yonar_foundThief1_Info_03_07"); // Vielen Dank für deine Hilfe!
	AI_Output(self, other, "MIL_2105_Yonar_foundThief1_Info_03_08"); // Hier hast du etwas für deine Mühen.
	CreateInvItems(self, ItMi_Gold,  200);
	B_GiveInvItems(self, other, ItMi_Gold,  200);
	B_GivePlayerXP(250);
	AI_Output(self, other, "MIL_2105_Yonar_foundThief1_Info_03_09"); // Und natürlich steht dir jetzt mein Warenangebot zur Verfügung!
	Npc_ExchangeRoutine(VLK_3007_Albrar, "TOT");
	yonarTrade = TRUE;
	MIS_weaponThief = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_weaponThief, LOG_SUCCESS);
	B_LogEntry(TOPIC_weaponThief, "Ich habe Yonar von Albrar berichtet. Er schien erleichtert, dass der Dieb nun endlich überführt ist. Yonar verkauft mir ab sofort seine Waffen.");
};

// **************************************************

instance MIL_2105_Yonar_foundThief2 (C_INFO)
{
	npc			= MIL_2105_Yonar;
	condition		= MIL_2105_Yonar_foundThief2_Condition;
	information		= MIL_2105_Yonar_foundThief2_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich habe den Dieb gestellt!";
};

func int MIL_2105_Yonar_foundThief2_Condition()
{
	if (albrarChoice == 1)
	{
		return TRUE;
	};
};

func void MIL_2105_Yonar_foundThief2_Info()
{
	AI_Output(other, self, "MIL_2105_Yonar_foundThief2_Info_15_01"); // Ich habe den Dieb gestellt!
	AI_Output(self, other, "MIL_2105_Yonar_foundThief2_Info_03_02"); // Ach? Und? Welcher Schweinehund bestiehlt mich ständig?
	AI_Output(other, self, "MIL_2105_Yonar_foundThief2_Info_15_03"); // Es ist der Waffenhändler Albrar. Er schlich hier durch die Kaserne und machte sich an den Waffenkisten zu schaffen.
	AI_Output(self, other, "MIL_2105_Yonar_foundThief2_Info_03_04"); // Hat er den Diebstahl gestanden?
	AI_Output(other, self, "MIL_2105_Yonar_foundThief2_Info_15_05"); // Hat er.
	AI_Output(self, other, "MIL_2105_Yonar_foundThief2_Info_03_06"); // Gut, ich werde ihn mir vorknöpfen.
	AI_Output(other, self, "MIL_2105_Yonar_foundThief2_Info_15_07"); // Das wird wahrscheinlich nicht möglich sein.
	AI_Output(self, other, "MIL_2105_Yonar_foundThief2_Info_03_08"); // Was? Wieso das denn?
	AI_Output(other, self, "MIL_2105_Yonar_foundThief2_Info_15_09"); // Ich habe ihn laufen gelassen und ihm empfohlen aus der Stadt zu verschwinden.
	AI_Output(other, self, "MIL_2105_Yonar_foundThief2_Info_15_10"); // Er wird dir keinen Ärger mehr machen.
	AI_Output(self, other, "MIL_2105_Yonar_foundThief2_Info_03_11"); // Das hoffe ich für dich.
	AI_Output(self, other, "MIL_2105_Yonar_foundThief2_Info_03_12"); // Gut, wie auch immer. Du hast den Dieb überführt, du sollst belohnt werden.
	CreateInvItems(self, ItMi_Gold,  50);
	B_GiveInvItems(self, other, ItMi_Gold,  50);
	B_GivePlayerXP(250);
	AI_Output(self, other, "MIL_2105_Yonar_foundThief2_Info_03_13"); // Auch wenn es nicht so ausgegangen ist, wie ich es mir erhofft habe, werde ich trotzdem mit dir handeln.
	yonarTrade = TRUE;
	MIS_weaponThief = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_weaponThief, LOG_SUCCESS);
	B_LogEntry(TOPIC_weaponThief, "Ich habe Yonar von Albrar berichtet. Er war nicht erfreut, dass ich ihn habe laufen lassen, aber er wird mir trotzdem seine Waffen verkaufen.");
};

// **************************************************

instance MIL_2105_Yonar_foundThief3 (C_INFO)
{
	npc			= MIL_2105_Yonar;
	condition		= MIL_2105_Yonar_foundThief3_Condition;
	information		= MIL_2105_Yonar_foundThief3_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich habe den Dieb gestellt!";
};

func int MIL_2105_Yonar_foundThief3_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2102_Volmar_wannaTellThief))
	{
		return TRUE;
	};
};

func void MIL_2105_Yonar_foundThief3_Info()
{
	AI_Output(other, self, "MIL_2105_Yonar_foundThief3_Info_15_01"); // Ich habe den Dieb gestellt!
	AI_Output(self, other, "MIL_2105_Yonar_foundThief3_Info_03_02"); // Ach? Und? Welcher Schweinehund bestiehlt mich ständig?
	AI_Output(other, self, "MIL_2105_Yonar_foundThief3_Info_15_03"); // Es ist der Waffenhändler Albrar. Er schlich hier durch die Kaserne und machte sich an den Waffenkisten zu schaffen.
	AI_Output(self, other, "MIL_2105_Yonar_foundThief3_Info_03_04"); // Hat er den Diebstahl gestanden?
	AI_Output(other, self, "MIL_2105_Yonar_foundThief3_Info_15_05"); // Hat er.
	AI_Output(self, other, "MIL_2105_Yonar_foundThief3_Info_03_06"); // Gut, ich werde ihn mir vorknöpfen.
	AI_Output(other, self, "MIL_2105_Yonar_foundThief3_Info_15_07"); // Brauchst du nicht. Ich habe den Vorfall bereits an Kommandant Volmar gemeldet.
	AI_Output(self, other, "MIL_2105_Yonar_foundThief3_Info_03_08"); // Wirklich? Sehr gut. Dann brauche ich mir keine Sorgen zu machen.
	AI_Output(self, other, "MIL_2105_Yonar_foundThief3_Info_03_09"); // Hier, eine kleine Entschädigung für deine Mühen.
	CreateInvItems(self, ItMi_Gold,  100);
	B_GiveInvItems(self, other, ItMi_Gold,  100);
	B_GivePlayerXP(250);
	AI_Output(self, other, "MIL_2105_Yonar_foundThief3_Info_03_10"); // Und natürlich steht dir jetzt mein Warenangebot zur Verfügung!
	yonarTrade = TRUE;
	MIS_weaponThief = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_weaponThief, LOG_SUCCESS);
	B_LogEntry(TOPIC_weaponThief, "Ich habe Yonar von Albrar berichtet. Er war erfreut, dass Kommandant Volmar bereits Maßnahmen ergriffen hat und wird ab sofort mit mit handeln.");
};

// **************************************************

instance MIL_2105_Yonar_letsTrade (C_INFO)
{
	npc			= MIL_2105_Yonar;
	condition		= MIL_2105_Yonar_letsTrade_Condition;
	information		= MIL_2105_Yonar_letsTrade_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 998;
	description		= "Zeig mir deine Waffen!";
	trade		= TRUE;
};

func int MIL_2105_Yonar_letsTrade_Condition()
{
	if (yonarTrade == TRUE)
	{
		return TRUE;
	};
};

func void MIL_2105_Yonar_letsTrade_Info()
{
	AI_Output(other, self, "MIL_2105_Yonar_letsTrade_Info_15_01"); // Zeig mir deine Waffen!
};
