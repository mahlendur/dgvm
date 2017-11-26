// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!


// **************************************************

instance NONE_9991_Nallon_Exit (C_INFO)
{
	npc			= NONE_9991_Nallon;
	condition		= NONE_9991_Nallon_Exit_Condition;
	information		= NONE_9991_Nallon_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int NONE_9991_Nallon_Exit_Condition()
{
	return TRUE;
};

func void NONE_9991_Nallon_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance NONE_9991_Nallon_whoAreYou (C_INFO)
{
	npc			= NONE_9991_Nallon;
	condition		= NONE_9991_Nallon_whoAreYou_Condition;
	information		= NONE_9991_Nallon_whoAreYou_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Schöne Taverne, nicht?";
};

func int NONE_9991_Nallon_whoAreYou_Condition()
{
	return TRUE;
};

func void NONE_9991_Nallon_whoAreYou_Info()
{
	AI_Output(other, self, "NONE_9991_Nallon_whoAreYou_Info_15_01"); // Schöne Taverne, nicht?
	AI_Output(self, other, "NONE_9991_Nallon_whoAreYou_Info_14_02"); // Hm? Jaja, mag schon sein.
};

// **************************************************

instance NONE_9991_Nallon_whatsGoingOn (C_INFO)
{
	npc			= NONE_9991_Nallon;
	condition		= NONE_9991_Nallon_whatsGoingOn_Condition;
	information		= NONE_9991_Nallon_whatsGoingOn_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was ist denn mit dir los?";
};

func int NONE_9991_Nallon_whatsGoingOn_Condition()
{
	if (Npc_KnowsInfo(hero, NONE_9991_Nallon_whoAreYou))
	{
		return TRUE;
	};
};

func void NONE_9991_Nallon_whatsGoingOn_Info()
{
	AI_Output(other, self, "NONE_9991_Nallon_whatsGoingOn_Info_15_01"); // Was ist denn mit dir los?
	AI_Output(self, other, "NONE_9991_Nallon_whatsGoingOn_Info_14_02"); // Hm? Achso, entschuldige meine ruppige Art.
	AI_Output(self, other, "NONE_9991_Nallon_whatsGoingOn_Info_14_03"); // Ich bin einfach ein alter Mann, der viel zu lange zur See gefahren ist.
	AI_Output(self, other, "NONE_9991_Nallon_whatsGoingOn_Info_14_04"); // Und jetzt? Mein letztes Schiff wurde beschlagnahmt und ich verbringe meine Zeit, indem ich hier sitze und alte Geschichten und Legenden erzähle.
	AI_Output(self, other, "NONE_9991_Nallon_whatsGoingOn_Info_14_05"); // Manchmal wird man da etwas melancholisch. Und je näher es auf das eigene Ende zu geht, desto häufiger passiert das.
};

// **************************************************

instance NONE_9991_Nallon_yourEnd (C_INFO)
{
	npc			= NONE_9991_Nallon;
	condition		= NONE_9991_Nallon_yourEnd_Condition;
	information		= NONE_9991_Nallon_yourEnd_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Das eigenes Ende?";
};

func int NONE_9991_Nallon_yourEnd_Condition()
{
	if (Npc_KnowsInfo(hero, NONE_9991_Nallon_whatsGoingOn))
	{
		return TRUE;
	};
};

func void NONE_9991_Nallon_yourEnd_Info()
{
	AI_Output(other, self, "NONE_9991_Nallon_yourEnd_Info_15_01"); // Das eigenes Ende?
	AI_Output(self, other, "NONE_9991_Nallon_yourEnd_Info_14_02"); // Ach Junge, ich mache mir nichts vor. Sieh mich doch an. Ich bin ein alter Mann.
	AI_Output(self, other, "NONE_9991_Nallon_yourEnd_Info_14_03"); // Meine Lebensuhr läuft ab. Ich kann spüren, dass meine Zeit bald abgelaufen ist.
};

// **************************************************

instance NONE_9991_Nallon_youKnowLegends (C_INFO)
{
	npc			= NONE_9991_Nallon;
	condition		= NONE_9991_Nallon_youKnowLegends_Condition;
	information		= NONE_9991_Nallon_youKnowLegends_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Du kennst dich mit alten Legenden aus?";
};

func int NONE_9991_Nallon_youKnowLegends_Condition()
{
	if ((Npc_KnowsInfo(hero, NONE_9991_Nallon_whatsGoingOn)) && (Npc_KnowsInfo(hero, NONE_9990_Elvellia_whereIsHe)))
	{
		return TRUE;
	};
};

func void NONE_9991_Nallon_youKnowLegends_Info()
{
	AI_Output(other, self, "NONE_9991_Nallon_youKnowLegends_Info_15_01"); // Du kennst dich mit alten Legenden aus?
	AI_Output(self, other, "NONE_9991_Nallon_youKnowLegends_Info_14_02"); // Vielleicht nicht so gut wie irgendein Schriftgelehrter, aber für schaurig-schöne Tavernenabende reicht es allemale.
	AI_Output(self, other, "NONE_9991_Nallon_youKnowLegends_Info_14_03"); // Wieso, möchtest du eine hören?
};

// **************************************************

instance NONE_9991_Nallon_knowAeon (C_INFO)
{
	npc			= NONE_9991_Nallon;
	condition		= NONE_9991_Nallon_knowAeon_Condition;
	information		= NONE_9991_Nallon_knowAeon_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kennst du die Legende von Aeon?";
};

func int NONE_9991_Nallon_knowAeon_Condition()
{
	if (Npc_KnowsInfo(hero, NONE_9991_Nallon_youKnowLegends))
	{
		return TRUE;
	};
};

func void NONE_9991_Nallon_knowAeon_Info()
{
	AI_Output(other, self, "NONE_9991_Nallon_knowAeon_Info_15_01"); // Kennst du die Legende von Aeon?
	AI_Output(self, other, "NONE_9991_Nallon_knowAeon_Info_14_02"); // Aeon... Den Namen habe ich schon Ewigkeiten nicht mehr gehört.
	AI_Output(self, other, "NONE_9991_Nallon_knowAeon_Info_14_03"); // Ja, die Legende ist mir durchaus bekannt.
	AI_Output(other, self, "NONE_9991_Nallon_knowAeon_Info_15_04"); // Worum geht es?
	AI_Output(self, other, "NONE_9991_Nallon_knowAeon_Info_14_05"); // Es ist die Legende des Paradieses. Sie wird hauptsächlich in Seefahrerkreisen erzählt, denn sie besagt, dass du Aeon nur über das Meer erreichst.
	AI_Output(self, other, "NONE_9991_Nallon_knowAeon_Info_14_06"); // Schlägst du die richtige Richtung ein und segelst lange genug, dann erreichst du irgendwann die Küste von Aeon.
	AI_Output(self, other, "NONE_9991_Nallon_knowAeon_Info_14_07"); // Allerdings hat die Sache einen Haken. Aeon liegt nicht in unserer Sphäre. Aeon ist der Ort der Toten, der friedvollen Seelen.
	AI_Output(self, other, "NONE_9991_Nallon_knowAeon_Info_14_08"); // Das ist aber eine spezielle Legende... Wieso fragst du?
	Info_ClearChoices(NONE_9991_Nallon_knowAeon);
	Info_AddChoice(NONE_9991_Nallon_knowAeon, "Nur so.", NONE_9991_Nallon_knowAeon_justSo);
	Info_AddChoice(NONE_9991_Nallon_knowAeon, "Ich habe eine Frau getroffen, die an diese Legende glaubt.", NONE_9991_Nallon_knowAeon_ghostWoman);
};

func void NONE_9991_Nallon_knowAeon_justSo()
{
	AI_Output(other, self, "NONE_9991_Nallon_knowAeon_justSo_15_01"); // Nur so.
	AI_Output(other, self, "NONE_9991_Nallon_knowAeon_justSo_15_02"); // Ich habe den Namen letztens irgendwo aufgeschnappt und fand ihn einfach interessant.
	AI_Output(self, other, "NONE_9991_Nallon_knowAeon_justSo_14_03"); // Ach so. Dann hoffe ich, dass ich dir helfen konnte.
	MIS_shoreToAeon = LOG_FAILED;
	Log_SetTopicStatus(TOPIC_shoreToAeon, LOG_FAILED);
	Info_ClearChoices(NONE_9991_Nallon_knowAeon);
};

func void NONE_9991_Nallon_knowAeon_ghostWoman()
{
	AI_Output(other, self, "NONE_9991_Nallon_knowAeon_ghostWoman_15_01"); // Ich habe eine Frau getroffen, die an diese Legende glaubt.
	AI_Output(self, other, "NONE_9991_Nallon_knowAeon_ghostWoman_14_02"); // Wirklich? Immerhin macht das kaum noch jemand. Was sagt sie denn?
	AI_Output(other, self, "NONE_9991_Nallon_knowAeon_ghostWoman_15_03"); // Sie wartet auf ihren Liebsten, damit sie zusammen nach Aeon reisen können.
	AI_Output(self, other, "NONE_9991_Nallon_knowAeon_ghostWoman_14_04"); // Achje. Das ist nicht gut. Ist etwas... ungewöhnlich an dieser Frau?
	AI_Output(other, self, "NONE_9991_Nallon_knowAeon_ghostWoman_15_05"); // Naja, sie ist... Sie ist ein Geist.
	AI_Output(self, other, "NONE_9991_Nallon_knowAeon_ghostWoman_14_06"); // Ein Geist!? Dann ist sie wirklich bemitleidenswert.
	AI_Output(self, other, "NONE_9991_Nallon_knowAeon_ghostWoman_14_07"); // Und ihr Liebster?
	AI_Output(other, self, "NONE_9991_Nallon_knowAeon_ghostWoman_15_08"); // Ist mit der königlichen Marine von Mahlendur aus aufgebrochen. Allerdings glaube ich, dass sein Schiff zerstört wurde.
	AI_Output(self, other, "NONE_9991_Nallon_knowAeon_ghostWoman_14_09"); // Das ist nicht gut. Das würde bedeuten, dass sie diese Welt nicht verlassen kann.
	B_LogEntry(TOPIC_shoreToAeon, "Nallon, ein alter Seemann in der Taverne kennt ebenfalls die Legende von Aeon. Er sprach von einem Ort, der den Seelen der Toten gehört. Das würde erklären, warum ein Geist dorthin will. Wenn ihr Liebster allerdings wirklich tot ist, dann kann sie diese Welt nicht verlassen. Irgendwie muss ihr doch zu helfen sein...");
	Info_ClearChoices(NONE_9991_Nallon_knowAeon);
};

// **************************************************

instance NONE_9991_Nallon_canHelp (C_INFO)
{
	npc			= NONE_9991_Nallon;
	condition		= NONE_9991_Nallon_canHelp_Condition;
	information		= NONE_9991_Nallon_canHelp_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Gibt es nicht einen Weg ihr zu helfen?";
};

func int NONE_9991_Nallon_canHelp_Condition()
{
	if ((Npc_KnowsInfo(hero, NONE_9991_Nallon_knowAeon)) && (MIS_shoreToAeon == LOG_RUNNING))
	{
		return TRUE;
	};
};

func void NONE_9991_Nallon_canHelp_Info()
{
	AI_Output(other, self, "NONE_9991_Nallon_canHelp_Info_15_01"); // Gibt es nicht einen Weg ihr zu helfen?
	AI_Output(self, other, "NONE_9991_Nallon_canHelp_Info_14_02"); // Jemand müsste sie dorthin geleiten.
	AI_Output(self, other, "NONE_9991_Nallon_canHelp_Info_14_03"); // Es müsste jemand sein, der sein Leben gelebt hat und sich freiwillig auf die möglicherweise endlose Reise macht.
	AI_Output(self, other, "NONE_9991_Nallon_canHelp_Info_14_04"); // Wenn du also jemanden kennst, dann Ja.
	AI_Output(other, self, "NONE_9991_Nallon_canHelp_Info_15_05"); // Naja...
	AI_Output(self, other, "NONE_9991_Nallon_canHelp_Info_14_06"); // Kennst du so jemanden?
	AI_Output(other, self, "NONE_9991_Nallon_canHelp_Info_15_07"); // Ich kenne zumindest einen alten Seebären mit einem großen Herzen, der seine eigene Lebensuhr ablaufen fühlt.
	AI_Output(self, other, "NONE_9991_Nallon_canHelp_Info_14_08"); // Und wer... Oh! Das habe ich verstanden.
	AI_Output(self, other, "NONE_9991_Nallon_canHelp_Info_14_09"); // Vielleicht hast du Recht. Ich habe mein Leben gelebt. Vielleicht ist das die erstrebenswerteste Art, diese Welt zu verlassen.
	AI_Output(self, other, "NONE_9991_Nallon_canHelp_Info_14_10"); // Wenn ich dadurch meine eigene und die Seele eines anderen Menschen retten kann, wer weiß?
	AI_Output(self, other, "NONE_9991_Nallon_canHelp_Info_14_11"); // Also gut, wo finde ich die Frau?
	AI_Output(other, self, "NONE_9991_Nallon_canHelp_Info_15_12"); // An der Küste, hinter dem Piratenlager. Wenn du ein kleines Boot vom Hafen aus nimmst, fahre am Piratennest vorbei.
	AI_Output(other, self, "NONE_9991_Nallon_canHelp_Info_15_13"); // In der nächsten Bucht wartet sie.
	AI_Output(self, other, "NONE_9991_Nallon_canHelp_Info_14_14"); // In Ordnung. Ich danke dir. So kann ich dem Rest meines Lebens wenigstens noch einen Sinn verleihen.
	AI_Output(other, self, "NONE_9991_Nallon_canHelp_Info_15_15"); // Die Frau heißt übrigens Elvellia.
	AI_Output(self, other, "NONE_9991_Nallon_canHelp_Info_14_16"); // Elvellia und Nallon. Passt irgendwie zusammen, findest du nicht?
	AI_Output(self, other, "NONE_9991_Nallon_canHelp_Info_14_17"); // Gut, ich werde zu ihr gehen. Wir werden diese Reise gemeinsam antreten.
	MIS_shoreToAeon = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_shoreToAeon, LOG_SUCCESS);
	B_LogEntry(TOPIC_shoreToAeon, "Nallon hat sich bereit erklärt, Elvellia nach Aeon zu bringen. Ich hoffe für die Beiden, dass es wirklich existiert.");
	B_GivePlayerXP(700);
};
