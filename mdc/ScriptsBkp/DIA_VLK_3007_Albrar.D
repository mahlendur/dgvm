// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!


// **************************************************

instance VLK_3007_Albrar_Exit (C_INFO)
{
	npc			= VLK_3007_Albrar;
	condition		= VLK_3007_Albrar_Exit_Condition;
	information		= VLK_3007_Albrar_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int VLK_3007_Albrar_Exit_Condition()
{
	return TRUE;
};

func void VLK_3007_Albrar_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance VLK_3007_Albrar_youTrader (C_INFO)
{
	npc			= VLK_3007_Albrar;
	condition		= VLK_3007_Albrar_youTrader_Condition;
	information		= VLK_3007_Albrar_youTrader_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Du bist Händler?";
};

func int VLK_3007_Albrar_youTrader_Condition()
{
	return TRUE;
};

func void VLK_3007_Albrar_youTrader_Info()
{
	AI_Output(other, self, "VLK_3007_Albrar_youTrader_Info_15_01"); // Du bist Händler?
	AI_Output(self, other, "VLK_3007_Albrar_youTrader_Info_13_02"); // Sehr gut erkannt. Ich bin Albrar. Bei mir bekommst du die besten Waffen in der ganzen Stadt. (gähnt)
};

// **************************************************

instance VLK_3007_Albrar_canTrade (C_INFO)
{
	npc			= VLK_3007_Albrar;
	condition		= VLK_3007_Albrar_canTrade_Condition;
	information		= VLK_3007_Albrar_canTrade_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Verkaufst du auch Waffen?";
};

func int VLK_3007_Albrar_canTrade_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_3007_Albrar_youTrader))
	{
		return TRUE;
	};
};

func void VLK_3007_Albrar_canTrade_Info()
{
	AI_Output(other, self, "VLK_3007_Albrar_canTrade_Info_15_01"); // Verkaufst du auch Waffen?
	AI_Output(self, other, "VLK_3007_Albrar_canTrade_Info_13_02"); // Aber sicher doch!
	AI_Output(self, other, "VLK_3007_Albrar_canTrade_Info_13_03"); // Ich habe... (gähnt) ... gerade erst eine neue Lieferung bekommen!
	AI_Output(self, other, "VLK_3007_Albrar_canTrade_Info_13_04"); // Sieh dich in Ruhe um!
};

// **************************************************

instance VLK_3007_Albrar_letsTrade (C_INFO)
{
	npc			= VLK_3007_Albrar;
	condition		= VLK_3007_Albrar_letsTrade_Condition;
	information		= VLK_3007_Albrar_letsTrade_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 998;
	description		= "Zeig mir deine Waffen!";
	trade		= TRUE;
};

func int VLK_3007_Albrar_letsTrade_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_3007_Albrar_canTrade))
	{
		return TRUE;
	};
};

func void VLK_3007_Albrar_letsTrade_Info()
{
	B_GiveTradeInv(self);
	AI_Output(other, self, "VLK_3007_Albrar_letsTrade_Info_15_01"); // Zeig mir deine Waffen!
};

// **************************************************

instance VLK_3007_Albrar_youTired (C_INFO)
{
	npc			= VLK_3007_Albrar;
	condition		= VLK_3007_Albrar_youTired_Condition;
	information		= VLK_3007_Albrar_youTired_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Müde?";
};

func int VLK_3007_Albrar_youTired_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_3007_Albrar_youTrader))
	{
		return TRUE;
	};
};

func void VLK_3007_Albrar_youTired_Info()
{
	AI_Output(other, self, "VLK_3007_Albrar_youTired_Info_15_01"); // Müde?
	AI_Output(self, other, "VLK_3007_Albrar_youTired_Info_13_02"); // Ach, weißt du...
	AI_Output(self, other, "VLK_3007_Albrar_youTired_Info_13_03"); // Mein Lieferant arbeitet außerhalb der Stadt und kann deshalb nur nachts liefern.
	AI_Output(self, other, "VLK_3007_Albrar_youTired_Info_13_04"); // Das ist anstrengend, jedes Mal bis weit nach Mitternacht warten zu müssen, nur um dann am Vormittag schon wieder hier zu stehen.
	AI_Output(self, other, "VLK_3007_Albrar_youTired_Info_13_05"); // Aber was solls... Was tut man nicht alles fürs Geschäft (lacht)
};

// **************************************************

instance VLK_3007_Albrar_youThief (C_INFO)
{
	npc			= VLK_3007_Albrar;
	condition		= VLK_3007_Albrar_youThief_Condition;
	information		= VLK_3007_Albrar_youThief_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Du bist also der Dieb!";
};

func int VLK_3007_Albrar_youThief_Condition()
{
	if ((Wld_IsTime(00,00,04,00)) && (MIS_weaponThief == LOG_RUNNING) && (Npc_GetDistToWP(self, "NW_CITY_KASERN_ARMORY_FIRE") <= 500))
	{
		return TRUE;
	};
};

func void VLK_3007_Albrar_youThief_Info()
{
	AI_Output(other, self, "VLK_3007_Albrar_youThief_Info_15_01"); // Du bist also der Dieb!
	AI_Output(self, other, "VLK_3007_Albrar_youThief_Info_13_02"); // Was? Wie? Nein, das ist eine Verwechslung!
	AI_Output(other, self, "VLK_3007_Albrar_youThief_Info_15_03"); // Schon klar. Es ist mitten in der Nacht, seit mehreren Tagen verschwinden hier Waffen und dich erwische ich, wie du an den Kisten rumfummelst.
	AI_Output(self, other, "VLK_3007_Albrar_youThief_Info_13_04"); // Aber...
	AI_Output(other, self, "VLK_3007_Albrar_youThief_Info_15_05"); // Kein aber! Ich...
	Info_ClearChoices(VLK_3007_Albrar_youThief);
	Info_AddChoice(VLK_3007_Albrar_youThief, "...lasse dich nochmal laufen.", VLK_3007_Albrar_youThief_letGo);
	Info_AddChoice(VLK_3007_Albrar_youThief, "...werde Yonar davon berichten!", VLK_3007_Albrar_youThief_tellYonar);
	Info_AddChoice(VLK_3007_Albrar_youThief, "...werde dem Kommandanten davon berichten!", VLK_3007_Albrar_youThief_tellVolmar);
};

func void VLK_3007_Albrar_youThief_letGo()
{
	AI_Output(other, self, "VLK_3007_Albrar_youThief_letGo_15_01"); // ... lasse dich nochmal laufen.
	AI_Output(other, self, "VLK_3007_Albrar_youThief_letGo_15_02"); // Aber ich schwöre dir: Wenn du dich noch einmal an den Waffen zu schaffen machst, dann war es das letzte, das du tust.
	AI_Output(self, other, "VLK_3007_Albrar_youThief_letGo_13_03"); // Wirklich? Danke! Vielen Dank! Das werde ich dir nie vergessen!
	AI_Output(self, other, "VLK_3007_Albrar_youThief_letGo_13_04"); // Natürlich werde ich keine Waffen mehr stehlen!
	AI_Output(other, self, "VLK_3007_Albrar_youThief_letGo_15_05"); // Das will ich auch hoffen.
	AI_Output(other, self, "VLK_3007_Albrar_youThief_letGo_15_06"); // Am besten verschwindest du aus der Stadt!
	Npc_ExchangeRoutine(self, "TOT");
	albrarChoice = 1;
	B_LogEntry(TOPIC_weaponThief, "Ich habe den Dieb gestellt. Es ist Albrar, der Waffenhändler vom Marktplatz. Ich habe mich entschlossen, ihn laufen zu lassen. Hoffentlich war das kein Fehler...");
	AI_StopProcessInfos(self);
	Info_ClearChoices(VLK_3007_Albrar_youThief);
};

func void VLK_3007_Albrar_youThief_tellYonar()
{
	AI_Output(other, self, "VLK_3007_Albrar_youThief_tellYonar_15_01"); // ... werde Yonar davon berichten!
	AI_Output(self, other, "VLK_3007_Albrar_youThief_tellYonar_13_02"); // Nein, bitte nicht das! Er wird mich umbringen.
	AI_Output(other, self, "VLK_3007_Albrar_youThief_tellYonar_15_03"); // Das ist nicht meine Entscheidung. Am Besten verschwindest du von hier.
	AI_Output(self, other, "VLK_3007_Albrar_youThief_tellYonar_13_04"); // Das... das... Ach verdammt!
	Npc_ExchangeRoutine(self, "Start");
	albrarChoice = 2;
	B_LogEntry(TOPIC_weaponThief, "Ich habe den Dieb gestellt. Es ist Albrar, der Waffenhändler vom Marktplatz. Ich sollte Yonar von ihm erzählen.");
	AI_StopProcessInfos(self);
	Info_ClearChoices(VLK_3007_Albrar_youThief);
};

func void VLK_3007_Albrar_youThief_tellVolmar()
{
	AI_Output(other, self, "VLK_3007_Albrar_youThief_tellVolmar_15_01"); // ... werde dem Kommandanten davon berichten!
	AI_Output(self, other, "VLK_3007_Albrar_youThief_tellVolmar_13_02"); // Ach du scheiße! Der wird mich ins Gefängnis stecken!
	AI_Output(other, self, "VLK_3007_Albrar_youThief_tellVolmar_15_03"); // Du stiehlst Waffen der Stadtwache. Ich glaube, das Gefängnis ist dein kleinstes Übel...
	AI_Output(self, other, "VLK_3007_Albrar_youThief_tellVolmar_13_04"); // Ich... Ich glaube, ich sollte gehen.
	AI_Output(other, self, "VLK_3007_Albrar_youThief_tellVolmar_15_05"); // Das ist besser, ja!
	albrarChoice = 3;
	albrarDay = Wld_GetDay();
	Npc_ExchangeRoutine(self, "Start");
	B_LogEntry(TOPIC_weaponThief, "Ich habe den Dieb gestellt. Es ist Albrar, der Waffenhändler vom Marktplatz. Ich habe mich entschlossen, Volmar von den Vorfällen zu berichten. Vielleicht erhält er dann seine gerechte Strafe.");
	AI_StopProcessInfos(self);
	Info_ClearChoices(VLK_3007_Albrar_youThief);
};
