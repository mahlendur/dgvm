// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!

var int knowsNewsChapter1;
var int knowsNewsChapter2;
var int knowsNewsChapter3;
var int meatCounter;
var int meatMax;

// **************************************************

instance BAU_970_Alec_Exit (C_INFO)
{
	npc			= BAU_970_Alec;
	condition		= BAU_970_Alec_Exit_Condition;
	information		= BAU_970_Alec_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int BAU_970_Alec_Exit_Condition()
{
	return TRUE;
};

func void BAU_970_Alec_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance BAU_970_Alec_welcomeTavern (C_INFO)
{
	npc			= BAU_970_Alec;
	condition		= BAU_970_Alec_welcomeTavern_Condition;
	information		= BAU_970_Alec_welcomeTavern_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int BAU_970_Alec_welcomeTavern_Condition()
{
	return TRUE;
};

func void BAU_970_Alec_welcomeTavern_Info()
{
	AI_Output(self, other, "BAU_970_Alec_welcomeTavern_Info_06_01"); // Willkommen in der Taverne 'Zum alten Scavenger'!
	AI_Output(self, other, "BAU_970_Alec_welcomeTavern_Info_06_02"); // Möchtest du etwas trinken? Oder ein Bett?
	AI_Output(self, other, "BAU_970_Alec_welcomeTavern_Info_06_03"); // Sag einfach Bescheid, wenn du etwas brauchst!
};

// **************************************************

instance BAU_970_Alec_wannaDrink (C_INFO)
{
	npc			= BAU_970_Alec;
	condition		= BAU_970_Alec_wannaDrink_Condition;
	information		= BAU_970_Alec_wannaDrink_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 998;
	description		= "Gib mir was zu Trinken!";
	trade		= TRUE;
};

func int BAU_970_Alec_wannaDrink_Condition()
{
	if (Npc_KnowsInfo(hero, BAU_970_Alec_welcomeTavern))
	{
		return TRUE;
	};
};

func void BAU_970_Alec_wannaDrink_Info()
{
	B_GiveTradeInv(self);
	AI_Output(other, self, "BAU_970_Alec_wannaDrink_Info_15_01"); // Gib mir was zu Trinken!
	AI_Output(self, other, "BAU_970_Alec_wannaDrink_Info_06_02"); // Gerne!
};

// **************************************************

instance BAU_970_Alec_whatsHere (C_INFO)
{
	npc			= BAU_970_Alec;
	condition		= BAU_970_Alec_whatsHere_Condition;
	information		= BAU_970_Alec_whatsHere_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wo bin ich hier?";
};

func int BAU_970_Alec_whatsHere_Condition()
{
	if (Npc_KnowsInfo(hero, BAU_970_Alec_welcomeTavern))
	{
		return TRUE;
	};
};

func void BAU_970_Alec_whatsHere_Info()
{
	AI_Output(other, self, "BAU_970_Alec_whatsHere_Info_15_01"); // Wo bin ich hier?
	AI_Output(self, other, "BAU_970_Alec_whatsHere_Info_06_02"); // Du bist hier im Herzen der Insel. Von meiner Taverne aus kommst du überall hin, wo du hin willst.
	AI_Output(self, other, "BAU_970_Alec_whatsHere_Info_06_03"); // Ich nehme an, du bist gerade aus der Stadt gekommen. Dann ist es von hier nicht mehr weit, um zum Kloster oder zu den Bauernhöfen zu gelangen.
};

// **************************************************

instance BAU_970_Alec_whosHere (C_INFO)
{
	npc			= BAU_970_Alec;
	condition		= BAU_970_Alec_whosHere_Condition;
	information		= BAU_970_Alec_whosHere_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Welche Menschen trifft man hier?";
};

func int BAU_970_Alec_whosHere_Condition()
{
	if (Npc_KnowsInfo(hero, BAU_970_Alec_welcomeTavern))
	{
		return TRUE;
	};
};

func void BAU_970_Alec_whosHere_Info()
{
	AI_Output(other, self, "BAU_970_Alec_whosHere_Info_15_01"); // Welche Menschen trifft man hier?
	AI_Output(self, other, "BAU_970_Alec_whosHere_Info_06_02"); // Alle möglichen! Meine Taverne ist so etwas wie die neutrale Zone auf der Insel.
	AI_Output(self, other, "BAU_970_Alec_whosHere_Info_06_03"); // Meistens findest du hier einige Bauern, die ihren kleinen Lohn versaufen. Aber auch die Söldner lassen gerne ihr Gold hier.
	AI_Output(self, other, "BAU_970_Alec_whosHere_Info_06_04"); // Ab und an kommt auch einer der Magier bei mir vorbei, meistens wenn er auf dem Weg in die Stadt ist, oder von dort kommt.
	AI_Output(self, other, "BAU_970_Alec_whosHere_Info_06_05"); // Sollte die Stadtwache gerade irgendwo hin unterwegs sein, trinken auch sie gerne mal ein Bier bei mir.
	AI_Output(self, other, "BAU_970_Alec_whosHere_Info_06_06"); // Nur Piraten oder Schwarzmagier habe ich hier noch nicht gesehen.
};

// **************************************************

instance BAU_970_Alec_getNews (C_INFO)
{
	npc			= BAU_970_Alec;
	condition		= BAU_970_Alec_getNews_Condition;
	information		= BAU_970_Alec_getNews_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Du bekommst doch sicher viel mit, oder?";
};

func int BAU_970_Alec_getNews_Condition()
{
	if (Npc_KnowsInfo(hero, BAU_970_Alec_welcomeTavern))
	{
		return TRUE;
	};
};

func void BAU_970_Alec_getNews_Info()
{
	AI_Output(other, self, "BAU_970_Alec_getNews_Info_15_01"); // Du bekommst doch sicher viel mit, oder?
	AI_Output(self, other, "BAU_970_Alec_getNews_Info_06_02"); // Natürlich! (lacht) Die meisten Menschen werden redselig, wenn sie erst einmal getrunken haben.
	AI_Output(self, other, "BAU_970_Alec_getNews_Info_06_03"); // Da hört man vieles, leider auch Dinge, die man eigentlich gar nicht hören möchte... (schmunzelt)
};

// **************************************************

instance BAU_970_Alec_someNews (C_INFO)
{
	npc			= BAU_970_Alec;
	condition		= BAU_970_Alec_someNews_Condition;
	information		= BAU_970_Alec_someNews_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 990;
	description		= "Hast du irgendwelche Neuigkeiten?";
};

func int BAU_970_Alec_someNews_Condition()
{
	if (Npc_KnowsInfo(hero, BAU_970_Alec_getNews))
	{
		return TRUE;
	};
};

func void BAU_970_Alec_someNews_Info()
{
	AI_Output(other, self, "BAU_970_Alec_someNews_Info_15_01"); // Hast du irgendwelche Neuigkeiten?
	AI_Output(self, other, "BAU_970_Alec_someNews_Info_06_02"); // Hmm, lass mal sehen...
	if (knowsNewsChapter1 == FALSE)
	{
		AI_Output(self, other, "BAU_970_Alec_someNews_Info_06_03"); // Die Bauern und die Söldner verschanzen sich immer mehr, genau wie die Magier im Kloster.
		AI_Output(self, other, "BAU_970_Alec_someNews_Info_06_04"); // Dazu rüstet die Stadtwache noch auf.
		AI_Output(self, other, "BAU_970_Alec_someNews_Info_06_05"); // Gut, wer will es ihnen verdenken? Immerhin ist die Bedrohung durch die Piraten und die Schwarzmagier real.
		AI_Output(self, other, "BAU_970_Alec_someNews_Info_06_06"); // Ansonsten...
		knowsNewsChapter1 = TRUE;
	}
	else if (kapitel == 2 && knowsNewsChapter2 == FALSE)
	{
		AI_Output(self, other, "BAU_970_Alec_someNews_Info_06_07"); // Es wird hier langsam brenzlig.
		AI_Output(self, other, "BAU_970_Alec_someNews_Info_06_08"); // Mir fehlen immer mehr Gäste und ich meine gehört zu haben, dass die Söldner ein Lager in der Nähe der Stadt einrichten.
		AI_Output(self, other, "BAU_970_Alec_someNews_Info_06_09"); // Angeblich nehmen auch die Angriffe der Schwarzmagier auf das Kloster immer mehr zu.
		AI_Output(self, other, "BAU_970_Alec_someNews_Info_06_10"); // Ansonsten...
		knowsNewsChapter2 = TRUE;
	}
	else if (kapitel == 3 && knowsNewsChapter3 == FALSE)
	{
		AI_Output(self, other, "BAU_970_Alec_someNews_Info_06_11"); // Die neue Bedrohung durch die Geister und Untoten rückt immer näher.
		AI_Output(self, other, "BAU_970_Alec_someNews_Info_06_12"); // Waren es bisher vereinzelte Wesen, tauchen sie jetzt immer häufiger und in größeren Gruppen auf.
		AI_Output(self, other, "BAU_970_Alec_someNews_Info_06_13"); // Zumindest hier kommen die Dämonenjäger der Söldner kaum noch hinterher.
		AI_Output(self, other, "BAU_970_Alec_someNews_Info_06_14"); // Ansonsten...
		knowsNewsChapter3 = TRUE;
	};
	AI_Output(self, other, "BAU_970_Alec_someNews_Info_06_15"); // ... soweit nichts Neues.
};

// **************************************************

instance BAU_970_Alec_needSomething (C_INFO)
{
	npc			= BAU_970_Alec;
	condition		= BAU_970_Alec_needSomething_Condition;
	information		= BAU_970_Alec_needSomething_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Brauchst du noch irgendwas?";
};

func int BAU_970_Alec_needSomething_Condition()
{
	if (Npc_KnowsInfo(hero, BAU_970_Alec_welcomeTavern))
	{
		return TRUE;
	};
};

func void BAU_970_Alec_needSomething_Info()
{
	AI_Output(other, self, "BAU_970_Alec_needSomething_Info_15_01"); // Brauchst du noch irgendwas?
	AI_Output(self, other, "BAU_970_Alec_needSomething_Info_06_02"); // Hmm, kommt ganz darauf an.
	AI_Output(self, other, "BAU_970_Alec_needSomething_Info_06_03"); // Kannst du jagen?
	meatMax = 50;
	Info_ClearChoices(BAU_970_Alec_needSomething);
	Info_AddChoice(BAU_970_Alec_needSomething, "Ich könnte es auf einen Versuch ankommen lassen.", BAU_970_Alec_needSomething_letsTry);
	Info_AddChoice(BAU_970_Alec_needSomething, "Natürlich kann ich jagen!", BAU_970_Alec_needSomething_ofCourse);
	Info_AddChoice(BAU_970_Alec_needSomething, "Lass mal lieber!", BAU_970_Alec_needSomething_betterNot);
};

func void BAU_970_Alec_needSomething_letsTry()
{
	AI_Output(other, self, "BAU_970_Alec_needSomething_letsTry_15_01"); // Ich könnte es auf einen Versuch ankommen lassen.
	AI_Output(self, other, "BAU_970_Alec_needSomething_letsTry_06_02"); // Sicher? Du klingst nicht wirklich begeistert.
	AI_Output(self, other, "BAU_970_Alec_needSomething_letsTry_06_03"); // Aber gut, wenn du willst: Mir fressen die Bauern und Söldner und all die Anderen hier regelmäßig die Haare vom Kopf.
	AI_Output(self, other, "BAU_970_Alec_needSomething_letsTry_06_04"); // Ich brauche Fleisch. Ziemlich dringend und ziemlich viel.
	AI_Output(self, other, "BAU_970_Alec_needSomething_letsTry_06_05"); // Wenn du mir, sagen wir, etwa fünfzig Keulen besorgst, kann ich die Meute wieder verköstigen.
	AI_Output(other, self, "BAU_970_Alec_needSomething_letsTry_15_06"); // 50 Stück Fleisch! Wo soll ich die denn hernehmen?
	AI_Output(self, other, "BAU_970_Alec_needSomething_letsTry_06_07"); // Siehst du, deswegen fragte ich, ob du jagen kannst. Hier rennt genug Viehzeug rum, die groß und saftig genug sind.
	AI_Output(self, other, "BAU_970_Alec_needSomething_letsTry_06_08"); // Ich brauche das Fleisch aber roh! Sonst kann ich meine Spezialmarinade nicht verwenden.
	AI_Output(other, self, "BAU_970_Alec_needSomething_letsTry_15_09"); // (seufzt) In Ordnung. Ich werde sehen, was ich tun kann.
	MIS_tavernMeat = LOG_RUNNING;
	Log_CreateTopic(TOPIC_tavernMeat, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_tavernMeat, LOG_RUNNING);
	B_LogEntry(TOPIC_tavernMeat, "Alec, Wirt in der Taverne 'Zum alten Scavenger' braucht Fleisch. Viel davon und auch noch roh. Ich soll ihm fünfzig Stück bringen, damit er seine Gäste bedienen kann. Na dann, auf zur Jagd!");
	Info_ClearChoices(BAU_970_Alec_needSomething);
};

func void BAU_970_Alec_needSomething_ofCourse()
{
	AI_Output(other, self, "BAU_970_Alec_needSomething_ofCourse_15_01"); // Natürlich kann ich jagen!
	AI_Output(self, other, "BAU_970_Alec_needSomething_ofCourse_06_02"); // Wirklich? Das ist sehr gut. Folgendes Problem:
	AI_Output(self, other, "BAU_970_Alec_needSomething_ofCourse_06_03"); // Mir fressen die Bauern und Söldner und all die Anderen hier regelmäßig die Haare vom Kopf.
	AI_Output(self, other, "BAU_970_Alec_needSomething_ofCourse_06_04"); // Ich brauche Fleisch. Ziemlich dringend und ziemlich viel.
	AI_Output(self, other, "BAU_970_Alec_needSomething_ofCourse_06_05"); // Wenn du mir, sagen wir, etwa fünfzig Keulen besorgst, kann ich die Meute wieder verköstigen.
	AI_Output(other, self, "BAU_970_Alec_needSomething_ofCourse_15_06"); // 50 Stück Fleisch? Kein Problem!
	AI_Output(self, other, "BAU_970_Alec_needSomething_ofCourse_06_07"); // (lacht) Dachte ich mir. Bring mir einfach, soviel wie du bekommst. Es muss nicht alles auf einmal sein!
	AI_Output(self, other, "BAU_970_Alec_needSomething_ofCourse_06_08"); // Ich brauche das Fleisch aber roh! Sonst kann ich meine Spezialmarinade nicht verwenden.
	AI_Output(other, self, "BAU_970_Alec_needSomething_ofCourse_15_09"); // Bin gleich wieder da!
	MIS_tavernMeat = LOG_RUNNING;
	Log_CreateTopic(TOPIC_tavernMeat, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_tavernMeat, LOG_RUNNING);
	B_LogEntry(TOPIC_tavernMeat, "Alec, Wirt in der Taverne 'Zum alten Scavenger' braucht Fleisch. Viel davon und auch noch roh. Ich soll ihm fünfzig Stück bringen, damit er seine Gäste bedienen kann. Na dann, auf zur Jagd!");
	Info_ClearChoices(BAU_970_Alec_needSomething);
};

func void BAU_970_Alec_needSomething_betterNot()
{
	AI_Output(other, self, "BAU_970_Alec_needSomething_betterNot_15_01"); // Lass mal lieber!
	AI_Output(self, other, "BAU_970_Alec_needSomething_betterNot_06_02"); // Schade. Dann habe ich leider nichts für dich zu tun.
	Info_ClearChoices(BAU_970_Alec_needSomething);
};

// **************************************************

instance BAU_970_Alec_gotSomeMeat (C_INFO)
{
	npc			= BAU_970_Alec;
	condition		= BAU_970_Alec_gotSomeMeat_Condition;
	information		= BAU_970_Alec_gotSomeMeat_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Ich habe Fleisch für dich!";
};

func int BAU_970_Alec_gotSomeMeat_Condition()
{
	if ((Npc_HasItems(other, ItFoMuttonRaw) >= 1) && (MIS_tavernMeat == LOG_RUNNING))
	{
		return TRUE;
	};
};

func void BAU_970_Alec_gotSomeMeat_Info()
{
	AI_Output(other, self, "BAU_970_Alec_gotSomeMeat_Info_15_01"); // Ich habe Fleisch für dich!
	AI_Output(self, other, "BAU_970_Alec_gotSomeMeat_Info_06_02"); // Wirklich? Sehr gut, dann kann ich schon wieder einige Keulen marinieren.
	AI_Output(self, other, "BAU_970_Alec_gotSomeMeat_Info_06_03"); // Gib her!
	var int meatCnt; meatCnt = Npc_HasItems(hero, ItFoMuttonRaw);
	if (meatCounter + meatCnt > meatMax)
	{
		meatCnt = (meatCnt + meatCounter) - 50;
	};
	B_GiveInvItems(other, self, ItFoMuttonRaw,  meatCnt);
	meatCounter += meatCnt;
	if (meatCounter <= 49)
	{
		AI_Output(self, other, "BAU_970_Alec_gotSomeMeat_Info_06_04"); // Aber ich brauche noch mehr!
		var string conStr; conStr = ConcatStrings("Es fehlen noch ", IntToString(meatMax - meatCounter));
		conStr = ConcatStrings(conStr, " Keulen rohes Fleisch!");
		AI_PrintS(self, conStr);
	}
	else
	{
		AI_Output(self, other, "BAU_970_Alec_gotSomeMeat_Info_06_05"); // Gut, das dürften dann alle gewesen sein!
		AI_Output(self, other, "BAU_970_Alec_gotSomeMeat_Info_06_06"); // Vielen Dank für deine Mühe. Hier, ich gebe dir etwas Gold.
		CreateInvItems(self, ItMi_Gold,  200);
		B_GiveInvItems(self, other, ItMi_Gold,  200);
		AI_Output(self, other, "BAU_970_Alec_gotSomeMeat_Info_06_07"); // Außerdem... Lass mich überlegen. Klar, du bekommst hier auch immer ein warmes Zimmer.
		AI_Output(self, other, "BAU_970_Alec_gotSomeMeat_Info_06_08"); // Natürlich kostenlos!
		AI_Output(self, other, "BAU_970_Alec_gotSomeMeat_Info_06_09"); // Wie gesagt, Danke für alles!
		B_LogEntry(TOPIC_tavernMeat, "Alec hat sein Fleisch bekommen. Im Gegenzug hat er mir angeboten, immer ein warmes Zimmer in seiner Taverne zu bekommen. Kostenlos, versteht sich.");
		B_GivePlayerXP(300);
		MIS_tavernMeat = LOG_SUCCESS;
		Log_SetTopicStatus(TOPIC_tavernMeat, LOG_SUCCESS);
	};
};

// **************************************************

instance BAU_970_Alec_getSupplies (C_INFO)
{
	npc			= BAU_970_Alec;
	condition		= BAU_970_Alec_getSupplies_Condition;
	information		= BAU_970_Alec_getSupplies_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Lieferst du auch Vorräte?";
};

func int BAU_970_Alec_getSupplies_Condition()
{
	if (MIS_getGoodsPirates == LOG_RUNNING)
	{
		return TRUE;
	};
};

func void BAU_970_Alec_getSupplies_Info()
{
	AI_Output(other, self, "BAU_970_Alec_getSupplies_Info_15_01"); // Sag mal... Lieferst du auch Vorräte?
	AI_Output(self, other, "BAU_970_Alec_getSupplies_Info_06_02"); // Kommt drauf an. Was brauchst du denn?
	AI_Output(other, self, "BAU_970_Alec_getSupplies_Info_15_03"); // Wasser und Bier. Zur Not auch Wein.
	AI_Output(self, other, "BAU_970_Alec_getSupplies_Info_06_04"); // Jo, das sollte möglich sein.
	AI_Output(self, other, "BAU_970_Alec_getSupplies_Info_06_05"); // Sonst noch was?
	AI_Output(other, self, "BAU_970_Alec_getSupplies_Info_15_06"); // Fleisch. Wir brauchen Fleisch.
	AI_Output(self, other, "BAU_970_Alec_getSupplies_Info_06_07"); // Das könnte schwieriger werden... Wieviel brauchst du denn?
	AI_Output(other, self, "BAU_970_Alec_getSupplies_Info_15_08"); // Ich brauche die Vorräte für zwanzig Leute. Am besten regelmäßig, so einmal die Woche.
	AI_Output(self, other, "BAU_970_Alec_getSupplies_Info_06_09"); // Zwanzig Leute? Bist du wahnsinnig? Wo soll ich denn soviel Fleisch herbekommen?
	AI_Output(other, self, "BAU_970_Alec_getSupplies_Info_15_10"); // Ähm..
	AI_Output(self, other, "BAU_970_Alec_getSupplies_Info_06_11"); // Siehst du. Das Wasser und Wein kann ich dir liefern. Bier müsstest du mal in der Stadt nachfragen.
	AI_Output(self, other, "BAU_970_Alec_getSupplies_Info_06_12"); // Die können da Freibier verteilen, irgendwoher müssen die das ja bekommen.
	AI_Output(self, other, "BAU_970_Alec_getSupplies_Info_06_13"); // Und das Fleisch... Sieh dich mal auf der Insel um. Es gibt einige Jägergruppen hier.
	AI_Output(self, other, "BAU_970_Alec_getSupplies_Info_06_14"); // Ein paar arbeiten für mich, aber vielleicht hat ja jemand Vorräte übrig.
	AI_Output(self, other, "BAU_970_Alec_getSupplies_Info_06_15"); // Wenn das für dich in Ordnung ist... Muss ich nur noch wissen, wo ich alles hinliefern soll.
	AI_Output(other, self, "BAU_970_Alec_getSupplies_Info_15_16"); // Im Tal, zwischen der Stadt und dem Leuchtturm gibt es eine Höhle.
	AI_Output(other, self, "BAU_970_Alec_getSupplies_Info_15_17"); // Dort kannst du es hinliefern und wir holen es dann ab.
	AI_Output(self, other, "BAU_970_Alec_getSupplies_Info_06_18"); // In Ordnung. Ich hoffe für dich, dass ich dann in der Höhle jede Woche einen Goldbeutel mit mindestens 150 Goldstücken finde.
	AI_Output(other, self, "BAU_970_Alec_getSupplies_Info_15_19"); // Das sollte sich einrichten lassen.
	AI_Output(self, other, "BAU_970_Alec_getSupplies_Info_06_20"); // Perfekt. Also: Auf gute Zusammenarbeit!
	B_LogEntry(TOPIC_getGoodsPirates, "Alec liefert jede Woche zumindest das Wasser und den Wein. Er sagte mir, Bier könnte ich vielleicht in der Stadt bekommen und für Fleisch sollte ich bei den Jägern nachfragen. Für seine Lieferung will er jede Woche 150 Goldstücke sehen.");
};
