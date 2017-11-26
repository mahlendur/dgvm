// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!


// **************************************************

instance MIL_2104_Marco_Exit (C_INFO)
{
	npc			= MIL_2104_Marco;
	condition		= MIL_2104_Marco_Exit_Condition;
	information		= MIL_2104_Marco_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int MIL_2104_Marco_Exit_Condition()
{
	return TRUE;
};

func void MIL_2104_Marco_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance MIL_2104_Marco_youSellWeapons (C_INFO)
{
	npc			= MIL_2104_Marco;
	condition		= MIL_2104_Marco_youSellWeapons_Condition;
	information		= MIL_2104_Marco_youSellWeapons_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Du verkaufst Waffen?";
};

func int MIL_2104_Marco_youSellWeapons_Condition()
{
	return TRUE;
};

func void MIL_2104_Marco_youSellWeapons_Info()
{
	AI_Output(other, self, "MIL_2104_Marco_youSellWeapons_Info_15_01"); // Du verkaufst Waffen?
	AI_Output(self, other, "MIL_2104_Marco_youSellWeapons_Info_08_02"); // Auf ausdrücklichen Befehl der Paladine darf ich diese Waffen nur an Mitglieder der Stadtwache verteilen.
	AI_Output(self, other, "MIL_2104_Marco_youSellWeapons_Info_08_03"); // Natürlich kostenfrei, versteht sich.
	AI_Output(other, self, "MIL_2104_Marco_youSellWeapons_Info_15_04"); // Also verkaufst du welche?
	AI_Output(self, other, "MIL_2104_Marco_youSellWeapons_Info_08_05"); // Hast du mir nicht zugehört?
	AI_Output(self, other, "MIL_2104_Marco_youSellWeapons_Info_08_06"); // Als Miliz bekommst du eine Waffe, ansonsten nicht.
	AI_Output(self, other, "MIL_2104_Marco_youSellWeapons_Info_08_07"); // Und versuch gar nicht erst, mich zu bestechen.
};

// **************************************************

instance MIL_2104_Marco_newInfos (C_INFO)
{
	npc			= MIL_2104_Marco;
	condition		= MIL_2104_Marco_newInfos_Condition;
	information		= MIL_2104_Marco_newInfos_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Du kannst doch bestimmt gut mit Waffen umgehen...";
};

func int MIL_2104_Marco_newInfos_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2104_Marco_youSellWeapons))
	{
		return TRUE;
	};
};

func void MIL_2104_Marco_newInfos_Info()
{
	AI_Output(other, self, "MIL_2104_Marco_newInfos_Info_15_01"); // Du kannst doch bestimmt gut mit Waffen umgehen...
	AI_Output(self, other, "MIL_2104_Marco_newInfos_Info_08_02"); // Sollte man meinen, nicht?
	AI_Output(self, other, "MIL_2104_Marco_newInfos_Info_08_03"); // Aber mein Job ist nicht wirklich spannend.
	AI_Output(self, other, "MIL_2104_Marco_newInfos_Info_08_04"); // Ich fasse zwar täglich mehrere Dutzend Schwerter an, aber mein eigenes schwinge ich nur sehr selten.
	AI_Output(other, self, "MIL_2104_Marco_newInfos_Info_15_05"); // Schade, ich dachte...
	AI_Output(self, other, "MIL_2104_Marco_newInfos_Info_08_06"); // ... ich könnte dir etwas beibringen?
	AI_Output(self, other, "MIL_2104_Marco_newInfos_Info_08_07"); // Leider nicht. Aber frag mal im Innenhof der Kaserne nach, da kann dir bestimmt jemand helfen.
};

// **************************************************

instance MIL_2104_Marco_newInfos2 (C_INFO)
{
	npc			= MIL_2104_Marco;
	condition		= MIL_2104_Marco_newInfos2_Condition;
	information		= MIL_2104_Marco_newInfos2_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Eine Rose für Epona!";
};

func int MIL_2104_Marco_newInfos2_Condition()
{
	if ((Npc_KnowsInfo(hero, MIL_2104_Marco_newInfos)) && (MIS_newInfos == LOG_RUNNING))
	{
		return TRUE;
	};
};

func void MIL_2104_Marco_newInfos2_Info()
{
	AI_Output(other, self, "MIL_2104_Marco_newInfos2_Info_15_01"); // Eine Rose für Epona!
	AI_Output(self, other, "MIL_2104_Marco_newInfos2_Info_08_02"); // Psst! Spinnst du, das hier so laut rumzutröten?
	AI_Output(self, other, "MIL_2104_Marco_newInfos2_Info_08_03"); // Komm heute Abend gegen 19 Uhr zum Baum vor der Kaserne.
	AI_Output(self, other, "MIL_2104_Marco_newInfos2_Info_08_04"); // Dann sprechen wir!
	FF_Remove(countRoses);
	Npc_ExchangeRoutine(self,"Date");
	B_LogEntry(TOPIC_newInfos, "Es scheint, als hätte ich den Spitzel gefunden. Marco, der Milizionär, welcher die Waffen an die Soldaten verteilt, will sich heute Abend mit mir treffen. Ich soll gegen 19 Uhr zum Baum vor der Kaserne kommen.");
};

// **************************************************

instance MIL_2104_Marco_getInfos (C_INFO)
{
	npc			= MIL_2104_Marco;
	condition		= MIL_2104_Marco_getInfos_Condition;
	information		= MIL_2104_Marco_getInfos_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Eine Rose für Epona!";
};

func int MIL_2104_Marco_getInfos_Condition()
{
	if ((Npc_KnowsInfo(hero, MIL_2104_Marco_newInfos)) && (Npc_GetDistToWP(self, "NW_CITY_HABOUR_KASERN_05_01") <= 500) && (Wld_IsTime(18,00,20,00)))
	{
		return TRUE;
	};
};

func void MIL_2104_Marco_getInfos_Info()
{
	AI_Output(other, self, "MIL_2104_Marco_getInfos_Info_15_01"); // Eine Rose für Epona!
	AI_Output(self, other, "MIL_2104_Marco_getInfos_Info_08_02"); // Jaja, hör auf mit dem Quatsch.
	AI_Output(self, other, "MIL_2104_Marco_getInfos_Info_08_03"); // Wer bist du, was willst du und woher hast du diesen Spruch?
	AI_Output(other, self, "MIL_2104_Marco_getInfos_Info_15_04"); // Ich komme im Auftrag von Jareck. Da du es scheinbar nicht schaffst, soll ich deinen neuesten Bericht abholen.
	AI_Output(self, other, "MIL_2104_Marco_getInfos_Info_08_05"); // Nicht schaffen? Hast du gesehen, wieviel Waffen in der Kaserne produziert und verteilt werden?
	AI_Output(self, other, "MIL_2104_Marco_getInfos_Info_08_06"); // Ich KANN nicht einfach weg. Und genau DAS ist mein Bericht.
	AI_Output(other, self, "MIL_2104_Marco_getInfos_Info_15_07"); // Wie bitte? Was meinst du damit?
	AI_Output(self, other, "MIL_2104_Marco_getInfos_Info_08_08"); // Sag Jareck folgendes: Die Stadtwache bereitet sich auf etwas vor. An allen Ecken und Enden wird aufgerüstet.
	AI_Output(self, other, "MIL_2104_Marco_getInfos_Info_08_09"); // Ich kann nicht sagen, wofür, aber die Söldner sollten sich besser vorbereiten.
	AI_Output(self, other, "MIL_2104_Marco_getInfos_Info_08_10"); // Bevor es zu spät ist!
	AI_Output(other, self, "MIL_2104_Marco_getInfos_Info_15_11"); // Na also, geht doch.
	AI_Output(self, other, "MIL_2104_Marco_getInfos_Info_08_12"); // Und noch etwas: Wenn du das nächste Mal unser Erkennungszeichen so in die Welt herausschreist, dann NUTZE ich meine Klinge!
	Npc_ExchangeRoutine(self, "Start");
	B_LogEntry(TOPIC_newInfos, "Marco hat beunruhigende Informationen für die Söldner. Die Stadtwache bereitet sich entweder auf einen Großangriff oder eine Verteidigung vor. Die gesamte Miliz wird mit neuen Waffen ausgestattet. Ich sollte Jareck schnellstmöglich davon berichten.");
	AI_StopProcessInfos(self);
};

// **************************************************

instance MIL_2104_Marco_getWeapon (C_INFO)
{
	npc			= MIL_2104_Marco;
	condition		= MIL_2104_Marco_getWeapon_Condition;
	information		= MIL_2104_Marco_getWeapon_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich soll mir meine Rüstung und eine Waffe abholen.";
};

func int MIL_2104_Marco_getWeapon_Condition()
{
	if (kapitel == 2)
	{
		return TRUE;
	};
};

func void MIL_2104_Marco_getWeapon_Info()
{
	AI_Output(other, self, "MIL_2104_Marco_getWeapon_Info_15_01"); // Ich soll mir meine Rüstung und eine Waffe abholen.
	AI_Output(self, other, "MIL_2104_Marco_getWeapon_Info_08_02"); // So, sollst du das?
	AI_Output(self, other, "MIL_2104_Marco_getWeapon_Info_08_03"); // Gut, dass ich noch was hier habe.
	AI_Output(self, other, "MIL_2104_Marco_getWeapon_Info_08_04"); // Hier hast du die Rüstung.
	CreateInvItems(self, ItAr_MIL_L,  1);
	B_GiveInvItems(self, other, ItAr_MIL_L,  1);
	AI_EquipBestArmor(self);
	AI_Output(self, other, "MIL_2104_Marco_getWeapon_Info_08_05"); // Wenn du eine bessere willst, musst du dafür bezahlen.
	AI_Output(self, other, "MIL_2104_Marco_getWeapon_Info_08_06"); // Und eine Waffe...
	AI_Output(self, other, "MIL_2104_Marco_getWeapon_Info_08_07"); // Ah, ja. Die hier sollte für den Anfang gut sein.
	CreateInvItems(self, ItMw_1h_Mil_Sword,  1);
	B_GiveInvItems(self, other, ItMw_1h_Mil_Sword,  1);
	AI_Output(self, other, "MIL_2104_Marco_getWeapon_Info_08_08"); // Wenn du eine andere haben möchtest, kann ich dir welche verkaufen.
};

// **************************************************

instance MIL_2104_Marco_trade (C_INFO)
{
	npc			= MIL_2104_Marco;
	condition		= MIL_2104_Marco_trade_Condition;
	information		= MIL_2104_Marco_trade_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Zeig mir deine Waffen!";
	trade		= TRUE;
};

func int MIL_2104_Marco_trade_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2104_Marco_getWeapon))
	{
		return TRUE;
	};
};

func void MIL_2104_Marco_trade_Info()
{
	B_GiveTradeInv(self);
	AI_Output(other, self, "MIL_2104_Marco_trade_Info_15_01"); // Zeig mir deine Waffen!
};
