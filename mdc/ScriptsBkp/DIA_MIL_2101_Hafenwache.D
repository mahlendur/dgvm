// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!


// **************************************************

instance MIL_2101_Hafenwache_youPirate (C_INFO)
{
	npc			= MIL_2101_Hafenwache;
	condition		= MIL_2101_Hafenwache_youPirate_Condition;
	information		= MIL_2101_Hafenwache_youPirate_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int MIL_2101_Hafenwache_youPirate_Condition()
{
	return TRUE;
};

func void MIL_2101_Hafenwache_youPirate_Info()
{
	AI_Output(self, other, "MIL_2101_Hafenwache_youPirate_Info_04_01"); // Hey, du!
	AI_Output(self, other, "MIL_2101_Hafenwache_youPirate_Info_04_02"); // Wo kommst du denn her?
	AI_Output(other, self, "MIL_2101_Hafenwache_youPirate_Info_15_03"); // Ich...
	AI_Output(self, other, "MIL_2101_Hafenwache_youPirate_Info_04_04"); // Du bist doch bestimmt einer dieser dreckigen Piraten!
	AI_Output(other, self, "MIL_2101_Hafenwache_youPirate_Info_15_05"); // Aber...
	AI_Output(self, other, "MIL_2101_Hafenwache_youPirate_Info_04_06"); // Keine Widerrede! Ich bringe dich erstmal zum Kommandanten!
	AI_SetWalkMode(self, NPC_RUN);
	AI_GoToWP(self, "NW_CITY_HABOUR_KASERN_CENTRE_01");
	AI_GoToWP(other, "NW_CITY_HABOUR_KASERN_CENTRE_01");
	AI_TurnToNpc(self, MIL_2102_Volmar);
	AI_TurnToNpc(other, MIL_2102_Volmar);
	AI_Output(self, other, "MIL_2101_Hafenwache_youPirate_Info_04_07"); // Kommandant!
	AI_Output(self, other, "MIL_2101_Hafenwache_youPirate_Info_04_08"); // Einer aus dieser Piratenbande wurde an Land gespült!
	AI_StopProcessInfos(self);
};
