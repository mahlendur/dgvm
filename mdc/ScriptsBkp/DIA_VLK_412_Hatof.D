// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!

var int talkedToPlayer;

// **************************************************

instance VLK_412_Hatof_Exit (C_INFO)
{
	npc			= VLK_412_Hatof;
	condition		= VLK_412_Hatof_Exit_Condition;
	information		= VLK_412_Hatof_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int VLK_412_Hatof_Exit_Condition()
{
	return TRUE;
};

func void VLK_412_Hatof_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance VLK_412_Hatof_startDialog (C_INFO)
{
	npc			= VLK_412_Hatof;
	condition		= VLK_412_Hatof_startDialog_Condition;
	information		= VLK_412_Hatof_startDialog_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int VLK_412_Hatof_startDialog_Condition()
{
	if ((Npc_IsInState(self, ZS_Talk)) && (talkedToPlayer == FALSE))
	{
		return TRUE;
	};
};

func void VLK_412_Hatof_startDialog_Info()
{
	AI_Output(self, other, "VLK_412_Hatof_startDialog_Info_12_01"); // Sieh an, ein neues Gesicht!
	AI_Output(self, other, "VLK_412_Hatof_startDialog_Info_12_02"); // Möchtest du etwas kaufen, verkaufen, oder nur meine Schmiede besetzen? (lacht)
	talkedToPlayer = TRUE;
};

// **************************************************

instance VLK_412_Hatof_lookingForWork (C_INFO)
{
	npc			= VLK_412_Hatof;
	condition		= VLK_412_Hatof_lookingForWork_Condition;
	information		= VLK_412_Hatof_lookingForWork_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich suche Arbeit!";
};

func int VLK_412_Hatof_lookingForWork_Condition()
{
	if (jobCounter <= 1)
	{
		return TRUE;
	};
};

func void VLK_412_Hatof_lookingForWork_Info()
{
	AI_Output(other, self, "VLK_412_Hatof_lookingForWork_Info_15_01"); // Ich suche Arbeit!
	AI_Output(self, other, "VLK_412_Hatof_lookingForWork_Info_12_02"); // Ja, das tun viele. Hmm, bist du dir denn sicher, dass das Schmiedehandwerk etwas für dich ist?
	AI_Output(other, self, "VLK_412_Hatof_lookingForWork_Info_15_03"); // Ich glaube schon...
	AI_Output(self, other, "VLK_412_Hatof_lookingForWork_Info_12_04"); // Das ist immerhin etwas. Der letzte, der hier war konnte nicht einmal den Hammer halten. Du siehst auf jeden Fall kräftiger aus.
	AI_Output(self, other, "VLK_412_Hatof_lookingForWork_Info_12_05"); // Wenn es dir ernst ist, habe ich etwas zu tun für dich.
};

// **************************************************

instance VLK_412_Hatof_whatToDo (C_INFO)
{
	npc			= VLK_412_Hatof;
	condition		= VLK_412_Hatof_whatToDo_Condition;
	information		= VLK_412_Hatof_whatToDo_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was hast du zu tun?";
};

func int VLK_412_Hatof_whatToDo_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_412_Hatof_lookingForWork))
	{
		return TRUE;
	};
};

func void VLK_412_Hatof_whatToDo_Info()
{
	AI_Output(other, self, "VLK_412_Hatof_whatToDo_Info_15_01"); // Was hast du zu tun?
	AI_Output(self, other, "VLK_412_Hatof_whatToDo_Info_12_02"); // Ich erwarte eine Lieferung aus einer der Minen vor der Stadt.
	AI_Output(self, other, "VLK_412_Hatof_whatToDo_Info_12_03"); // Bring mir die Kiste, dann sehen wir weiter!
	MIS_workHatof = LOG_RUNNING;
	Log_CreateTopic(TOPIC_workHatof, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_workHatof, LOG_RUNNING);
	B_LogEntry(TOPIC_workHatof, "Hatof der Schmied hat mich beauftragt eine Kiste mit Erz von einer der Minen zu ihm zu bringen. Vielleicht nimmt er mich danach als Lehrling auf.");
};

// **************************************************

instance VLK_412_Hatof_wheresMine (C_INFO)
{
	npc			= VLK_412_Hatof;
	condition		= VLK_412_Hatof_wheresMine_Condition;
	information		= VLK_412_Hatof_wheresMine_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wo finde ich die Schürfer?";
};

func int VLK_412_Hatof_wheresMine_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_412_Hatof_whatToDo)) && (MIS_workHatof == LOG_RUNNING))
	{
		return TRUE;
	};
};

func void VLK_412_Hatof_wheresMine_Info()
{
	AI_Output(other, self, "VLK_412_Hatof_wheresMine_Info_15_01"); // Wo finde ich die Schürfer?
	AI_Output(self, other, "VLK_412_Hatof_wheresMine_Info_12_02"); // Die Schürfer, die mir eine Kiste Erz schulden sind direkt vor der Stadt.
	AI_Output(self, other, "VLK_412_Hatof_wheresMine_Info_12_03"); // Wenn du durch das Nordtor gehst, dich rechts hälst und direkt den Hügel hinauf, kannst du die Mine nicht verfehlen.
	AI_Output(self, other, "VLK_412_Hatof_wheresMine_Info_12_04"); // Rede mit Mika, er wird dir die Kiste geben.
};

// **************************************************

instance VLK_412_Hatof_gotTheOre (C_INFO)
{
	npc			= VLK_412_Hatof;
	condition		= VLK_412_Hatof_gotTheOre_Condition;
	information		= VLK_412_Hatof_gotTheOre_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich hab das Erz!";
};

func int VLK_412_Hatof_gotTheOre_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_412_Hatof_lookingForWork)) && (Npc_HasItems(other, ItMi_Erzkiste) >= 1))
	{
		return TRUE;
	};
};

func void VLK_412_Hatof_gotTheOre_Info()
{
	AI_Output(other, self, "VLK_412_Hatof_gotTheOre_Info_15_01"); // Ich hab das Erz!
	B_GiveInvItems(other, self, ItMi_Erzkiste,  1);
	AI_Output(self, other, "VLK_412_Hatof_gotTheOre_Info_12_02"); // Sehr gut, dann kann ich wenigstens vernünftig weiterarbeiten.
	AI_Output(self, other, "VLK_412_Hatof_gotTheOre_Info_12_03"); // Hat er irgendetwas gesagt?
	AI_Output(other, self, "VLK_412_Hatof_gotTheOre_Info_15_04"); // Ja, ich soll schöne Grüße ausrichten und sagen, dass du nicht so schnell arbeiten sollst.
	AI_Output(other, self, "VLK_412_Hatof_gotTheOre_Info_15_05"); // Die Jungs kommen mit dem Schürfen nicht hinterher.
	AI_Output(self, other, "VLK_412_Hatof_gotTheOre_Info_12_06"); // (lacht) Der hat gut Reden... Ich hab eine ganze Stadtwache mit Waffen zu versorgen.
	AI_Output(self, other, "VLK_412_Hatof_gotTheOre_Info_12_07"); // Aber, wie dem auch sei. Du hast deinen Job gemacht, das ist schonmal mehr als die meisten anderen.
	AI_Output(self, other, "VLK_412_Hatof_gotTheOre_Info_12_08"); // Wenn du immer noch mein Lehrling werden möchtest, komm wieder zu mir, dann besprechen wir alles weitere.
	B_LogEntry(TOPIC_workHatof, "Hatof hat seine Erzkiste erhalten. Jetzt kann ich von ihm das Schmiedehandwerk lernen!");
	MIS_workHatof = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_workHatof, LOG_SUCCESS);
	B_GivePlayerXP(250);
};

// **************************************************

instance VLK_412_Hatof_becomeApprentice (C_INFO)
{
	npc			= VLK_412_Hatof;
	condition		= VLK_412_Hatof_becomeApprentice_Condition;
	information		= VLK_412_Hatof_becomeApprentice_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Ich will den Bergbau lernen! (5 LP)";
};

func int VLK_412_Hatof_becomeApprentice_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_412_Hatof_gotTheOre)) && (jobCounter <= 1) && (learnedBergbau == FALSE))
	{
		return TRUE;
	};
};

func void VLK_412_Hatof_becomeApprentice_Info()
{
	AI_Output(other, self, "VLK_412_Hatof_becomeApprentice_Info_15_01"); // Ich will den Bergbau lernen!
	AI_Output(self, other, "VLK_412_Hatof_becomeApprentice_Info_12_02"); // Bist du dir sicher?
	AI_Output(self, other, "VLK_412_Hatof_becomeApprentice_Info_12_03"); // Denk daran, du kannst nur zwei Berufe gleichzeitig ausüben!
	Info_ClearChoices(VLK_412_Hatof_becomeApprentice);
	Info_AddChoice(VLK_412_Hatof_becomeApprentice, "Nein, ich brauche noch etwas Bedenkzeit.", VLK_412_Hatof_becomeApprentice_noBergbau);
	Info_AddChoice(VLK_412_Hatof_becomeApprentice, "Ja, ich will bei dir lernen!", VLK_412_Hatof_becomeApprentice_yesBergbau);
};

func void VLK_412_Hatof_becomeApprentice_noBergbau()
{
	AI_Output(other, self, "VLK_412_Hatof_becomeApprentice_noBergbau_15_01"); // Nein, ich brauche noch etwas Bedenkzeit.
	AI_Output(self, other, "VLK_412_Hatof_becomeApprentice_noBergbau_12_02"); // Gut, du weißt ja, wo du mich findest!
	Info_ClearChoices(VLK_412_Hatof_becomeApprentice);
};

func void VLK_412_Hatof_becomeApprentice_yesBergbau()
{
	AI_Output(other, self, "VLK_412_Hatof_becomeApprentice_yesBergbau_15_01"); // Ja, ich will bei dir lernen!
	if (other.LP >= 5)
	{
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice_yesBergbau_12_02"); // Gut, dann hör mir genau zu.
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice_yesBergbau_12_03"); // Natürlich brauchst du eine Spitzhacke. Das sollte klar sein.
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice_yesBergbau_12_04"); // Am Anfang solltest du dich an einfache Erze wie Eisen halten.
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice_yesBergbau_12_05"); // Versuch besser nicht Gold, oder gar magisches Erz abzubauen. Das geht nur schief und du bekommst unbrauchbare Stücke!
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice_yesBergbau_12_06"); // Nimm dir also die Spitzhacke und such dir eine schöne Eisenader. Dann schaust du genau, wo das Erz an die Oberfläche tritt.
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice_yesBergbau_12_07"); // Schlag präzise und fest, aber nicht auf das Mineral, sondern daneben!
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice_yesBergbau_12_08"); // So brichst du große Stücke Eisen aus dem Stein.
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice_yesBergbau_12_09"); // Mit dem Erz kannst du dann an eine Schmiede gehen und es zu Stahl einschmelzen.
		if ((Npc_GetTrueGuild(hero) != GIL_VLK))
		{
			AI_Output(self, other, "VLK_412_Hatof_becomeApprentice_yesBergbau_12_10"); // Und jetzt: Kannst du dich auch Bürger der Stadt nennen!
		};
		jobcounter += 1;
		learnedBergbau = TRUE;
		bergbauSkill = 1;
		AI_PrintS(self, "Neuer Beruf: Bergbau!");
		other.lp = other.lp - 5;
		Log_CreateTopic(TOPIC_Bergbau, LOG_NOTE);
		B_LogEntry(TOPIC_Bergbau, "Ich habe den Bergbau gelernt. Jetzt kann ich Eisenerz aus entsprechenden Adern herauslösen und einschmelzen.");
		if (MIS_getCitizen == LOG_RUNNING)
		{
			MIS_getCitizen = LOG_SUCCESS;
			Log_SetTopicStatus(TOPIC_getCitizen, LOG_SUCCESS);
			Log_AddEntry(TOPIC_getCitizen, "Hatof hat mich als Lehrling aufgenommen und mir den Bergbau beigebracht. Jetzt kann ich mich Bürger der Stadt Mahlendur nennen!");
			Npc_SetTrueGuild(hero, GIL_VLK);
			other.guild = GIL_VLK;
		};
	}
	else
	{
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice_yesBergbau_12_11"); // Das ist löblich, aber es sieht aus, als hättest du noch nicht genug Erfahrung.
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice_yesBergbau_12_12"); // Komm wieder, wenn du bereit bist!
	};
	Info_ClearChoices(VLK_412_Hatof_becomeApprentice);
};

// **************************************************

instance VLK_412_Hatof_becomeApprentice2 (C_INFO)
{
	npc			= VLK_412_Hatof;
	condition		= VLK_412_Hatof_becomeApprentice2_Condition;
	information		= VLK_412_Hatof_becomeApprentice2_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Ich will das Schmieden lernen! (5 LP)";
};

func int VLK_412_Hatof_becomeApprentice2_Condition()
{
	if ((Npc_KnowsInfo(hero, VLK_412_Hatof_gotTheOre)) && (jobCounter <= 1) && (learnedSmith == FALSE))
	{
		return TRUE;
	};
};

func void VLK_412_Hatof_becomeApprentice2_Info()
{
	AI_Output(other, self, "VLK_412_Hatof_becomeApprentice2_Info_15_01"); // Ich will das Schmieden lernen! (5 LP)
	AI_Output(self, other, "VLK_412_Hatof_becomeApprentice2_Info_12_02"); // In Ordnung, das kann ich dir beibringen!
	AI_Output(self, other, "VLK_412_Hatof_becomeApprentice2_Info_12_03"); // Bist du dir sicher?
	Info_ClearChoices(VLK_412_Hatof_becomeApprentice2);
	Info_AddChoice(VLK_412_Hatof_becomeApprentice2, "Nein, gib mir noch Zeit!", VLK_412_Hatof_becomeApprentice2_noSmith);
	Info_AddChoice(VLK_412_Hatof_becomeApprentice2, "Ja, bring mir die Schmiedekunst bei!", VLK_412_Hatof_becomeApprentice2_yesSmith);
};

func void VLK_412_Hatof_becomeApprentice2_noSmith()
{
	AI_Output(other, self, "VLK_412_Hatof_becomeApprentice2_noSmith_15_01"); // Nein, gib mir noch Zeit!
	AI_Output(self, other, "VLK_412_Hatof_becomeApprentice2_noSmith_12_02"); // Gut, ich laufe hier nicht weg!
	Info_ClearChoices(VLK_412_Hatof_becomeApprentice2);
};

func void VLK_412_Hatof_becomeApprentice2_yesSmith()
{
	AI_Output(other, self, "VLK_412_Hatof_becomeApprentice2_yesSmith_15_01"); // Ja, bring mir die Schmiedekunst bei!
	if (other.LP >= 5)
	{
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice2_yesSmith_12_02"); // In Ordnung. Schmieden ist eigentlich kein Hexenwerk.
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice2_yesSmith_12_03"); // Du darfst nur nicht vergessen, dass es hauptsächlich auf die Technik ankommt.
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice2_yesSmith_12_04"); // Lass dich also nicht verunsichern, wenn deine ersten Versuche etwas krumm werden. Stärke alleine reicht nicht.
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice2_yesSmith_12_05"); // Wenn du dir ein Stück Rohstahl nimmst, erhitze es zuerst am Schmiedefeuer. Achte darauf, dass es rotglühend ist.
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice2_yesSmith_12_06"); // Wird das Eisen zu heiß, verbrennt dir der Stahl und der Rohling ist unbrauchbar.
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice2_yesSmith_12_07"); // Wenn bis hierhin alles funktioniert hat, musst du nur noch die Waffe am Amboss zurechtschlagen.
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice2_yesSmith_12_08"); // Hab das Ziel immer vor Augen. Wenn du einen Fehler nicht bemerkst, ist es zu spät.
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice2_yesSmith_12_09"); // Härte die Waffe zum Schluss noch im Wassereimer. Auch hier musst du ein wenig Vorsicht walten lassen.
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice2_yesSmith_12_10"); // Höre genau hin. Knistert die Waffe, ist der Stahl zu heiß und wird spröde.
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice2_yesSmith_12_11"); // Auch wenn das alles kompliziert klingt, es ist nur eine Frage der Ãœbung.
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice2_yesSmith_12_12"); // Und jetzt: Ran an den Stahl!
		if ((Npc_GetTrueGuild(hero) != GIL_VLK))
		{
			AI_Output(self, other, "VLK_412_Hatof_becomeApprentice2_yesSmith_12_13"); // Übrigens kannst du dich nun Bürger der Stadt nennen.
		};
		jobcounter += 1;
		learnedSmith = TRUE;
		smithSkill = 1;
		AI_PrintS(self, "Neuer Beruf: Schmiedekunst!");
		other.lp = other.lp - 5;
		Log_CreateTopic(TOPIC_TalentSmith, LOG_NOTE);
		B_LogEntry(TOPIC_TalentSmith, "Ich habe die Schmiedekunst erlernt. Ich kann jetzt einfache Schwerter herstellen.");
		if (MIS_getCitizen == LOG_RUNNING)
		{
			MIS_getCitizen = LOG_SUCCESS;
			Log_SetTopicStatus(TOPIC_getCitizen, LOG_SUCCESS);
			Log_AddEntry(TOPIC_getCitizen, "Hatof hat mich als Lehrling aufgenommen und mir die Schmiedekunst beigebracht. Jetzt kann ich mich Bürger der Stadt Mahlendur nennen!");
			Npc_SetTrueGuild(hero, GIL_VLK);
			other.guild = GIL_VLK;
		};
	}
	else
	{
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice2_yesSmith_12_14"); // Das ist löblich, aber es sieht aus, als hättest du noch nicht genug Erfahrung.
		AI_Output(self, other, "VLK_412_Hatof_becomeApprentice2_yesSmith_12_15"); // Komm wieder, wenn du bereit bist!
	};
	Info_ClearChoices(VLK_412_Hatof_becomeApprentice2);
};

// **************************************************

instance VLK_412_Hatof_canTrade (C_INFO)
{
	npc			= VLK_412_Hatof;
	condition		= VLK_412_Hatof_canTrade_Condition;
	information		= VLK_412_Hatof_canTrade_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Du verkaufst auch Waffen?";
};

func int VLK_412_Hatof_canTrade_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_412_Hatof_startDialog))
	{
		return TRUE;
	};
};

func void VLK_412_Hatof_canTrade_Info()
{
	AI_Output(other, self, "VLK_412_Hatof_canTrade_Info_15_01"); // Du verkaufst auch Waffen?
	AI_Output(self, other, "VLK_412_Hatof_canTrade_Info_12_02"); // Waffen eher weniger. Die Stadtwache kauft mir die meisten Schwerter direkt ab. Ein paar habe ich noch hier.
	AI_Output(self, other, "VLK_412_Hatof_canTrade_Info_12_03"); // Hauptsächlich kann ich die Materialien fürs Schmieden verkaufen. Wenn du daran Interesse hast, sag Bescheid!
};

// **************************************************

instance VLK_412_Hatof_letsTrade (C_INFO)
{
	npc			= VLK_412_Hatof;
	condition		= VLK_412_Hatof_letsTrade_Condition;
	information		= VLK_412_Hatof_letsTrade_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 998;
	description		= "Zeig mir deine Waffen!";
	trade		= TRUE;
};

func int VLK_412_Hatof_letsTrade_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_412_Hatof_canTrade))
	{
		return TRUE;
	};
};

func void VLK_412_Hatof_letsTrade_Info()
{
	B_GiveTradeInv(self);
	AI_Output(other, self, "VLK_412_Hatof_letsTrade_Info_15_01"); // Zeig mir deine Waffen!
};

// **************************************************

instance VLK_412_Hatof_teachMeSth (C_INFO)
{
	npc			= VLK_412_Hatof;
	condition		= VLK_412_Hatof_teachMeSth_Condition;
	information		= VLK_412_Hatof_teachMeSth_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kannst du mir auch was beibringen?";
};

func int VLK_412_Hatof_teachMeSth_Condition()
{
	if (Npc_KnowsInfo(hero, VLK_412_Hatof_lookingForWork))
	{
		return TRUE;
	};
};

func void VLK_412_Hatof_teachMeSth_Info()
{
	AI_Output(other, self, "VLK_412_Hatof_teachMeSth_Info_15_01"); // Kannst du mir auch was beibringen?
	AI_Output(self, other, "VLK_412_Hatof_teachMeSth_Info_12_02"); // Hmm, lass mich überlegen.
	AI_Output(self, other, "VLK_412_Hatof_teachMeSth_Info_12_03"); // Ja, ich glaube, ich könnte dich etwas stärker machen. Schließlich bin ich nicht umsonst Schmied geworden (lacht)
	AI_Output(self, other, "VLK_412_Hatof_teachMeSth_Info_12_04"); // Komm zu mir, dann gebe ich dir ein paar Tipps!
	Log_CreateTopic(TOPIC_teacherCity, LOG_NOTE);
	B_LogEntry(TOPIC_teacherCity, "Hatof, der Schmied, kann mir beibringen, stärker zu werden!");
};

// **************************************************

instance VLK_412_Hatof_teachSwords (C_INFO)
{
	npc			= VLK_412_Hatof;
	condition		= VLK_412_Hatof_teachSwords_Condition;
	information		= VLK_412_Hatof_teachSwords_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kannst du mir beibringen, andere Waffen zu schmieden?";
};

func int VLK_412_Hatof_teachSwords_Condition()
{
	if (learnedSmith == TRUE)
	{
		return TRUE;
	};
};

func void VLK_412_Hatof_teachSwords_Info()
{
	AI_Output(other, self, "VLK_412_Hatof_teachSwords_Info_15_01"); // Kannst du mir beibringen, andere Waffen zu schmieden?
	AI_Output(self, other, "VLK_412_Hatof_teachSwords_Info_12_02"); // Einige Schwerte kann ich dich lehren. Für die meisten brauchst du allerdings einen Baulan.
	AI_Output(self, other, "VLK_412_Hatof_teachSwords_Info_12_03"); // Einen kann ich dir noch verkaufen, ansonsten sieh dich bei den Händlern um. Manchmal haben sie einen Plan zu verkaufen.
	AI_Output(self, other, "VLK_412_Hatof_teachSwords_Info_12_04"); // Ansonsten: Sieh dich um! Du glaubst gar nicht, was man alles finden kann.
	Log_CreateTopic(TOPIC_TalentSmith, LOG_NOTE);
	B_LogEntry(TOPIC_TalentSmith, "Hatof kann mir beibringen, einige andere Schwerter zu schmieden. Für die meisten brauche ich aber einen Bauplan.");
};
