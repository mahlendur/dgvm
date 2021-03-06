// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!

var int talkedToHero;

// **************************************************

instance MIL_2102_Volmar_Ende (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_Ende_Condition;
	information		= MIL_2102_Volmar_Ende_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= "ENDE";
};

func int MIL_2102_Volmar_Ende_Condition()
{
	return TRUE;
};

func void MIL_2102_Volmar_Ende_Info()
{
	if (talkedToHero == FALSE)
	{
		AI_Output(self, other, "MIL_2102_Volmar_Ende_Info_07_01"); // Pass auf dich auf!
		IntroduceChapter (KapWechsel_1,KapWechsel_1_Text,"Chapter1_Mah.tga","chapterchange.wav", 6000);
		talkedToHero = TRUE;
	};
	AI_StopProcessInfos(self);
};

// **************************************************

instance MIL_2102_Volmar_whoAreYou (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_whoAreYou_Condition;
	information		= MIL_2102_Volmar_whoAreYou_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int MIL_2102_Volmar_whoAreYou_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2101_Hafenwache_youPirate))
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_whoAreYou_Info()
{
	AI_Output(self, other, "MIL_2102_Volmar_whoAreYou_Info_07_01"); // Soso, ein Pirat.
	AI_Output(self, other, "MIL_2102_Volmar_whoAreYou_Info_07_02"); // Normalerweise machen wir ja kurzen Prozess mit euch...
	AI_Output(other, self, "MIL_2102_Volmar_whoAreYou_Info_15_03"); // Kommandant, bitte haltet ein!
	AI_Output(other, self, "MIL_2102_Volmar_whoAreYou_Info_15_04"); // Ich bin kein Pirat!
	AI_Output(self, other, "MIL_2102_Volmar_whoAreYou_Info_07_05"); // Du glaubst gar nicht, wie oft ich das schon geh�rt habe.
	AI_Output(other, self, "MIL_2102_Volmar_whoAreYou_Info_15_06"); // Aber ich sage die Wahrheit, Kommandant. Ich bin... oder vielmehr war Soldat auf einem k�niglichen Kriegsschiff.
	AI_Output(self, other, "MIL_2102_Volmar_whoAreYou_Info_07_07"); // Und das soll ich dir glauben?
	AI_Output(other, self, "MIL_2102_Volmar_whoAreYou_Info_15_08"); // Überzeugt euch dieser Ring?
	AI_PlayAni(hero, "T_GREETLEFT");
	AI_Output(self, other, "MIL_2102_Volmar_whoAreYou_Info_07_09"); // Ein Siegelring der Marine. Den kannst du nirgendwo gefunden haben
	AI_Output(self, other, "MIL_2102_Volmar_whoAreYou_Info_07_10"); // Gut, ich will dir glauben. Aber sag mir:
	AI_Output(self, other, "MIL_2102_Volmar_whoAreYou_Info_07_11"); // Warum bist du hier und nicht auf deinem Schiff?
};

// **************************************************

instance MIL_2102_Volmar_orcAttack (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_orcAttack_Condition;
	information		= MIL_2102_Volmar_orcAttack_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wir wurden auf hoher See von Orks angegriffen.";
};

func int MIL_2102_Volmar_orcAttack_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2102_Volmar_whoAreYou))
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_orcAttack_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_orcAttack_Info_15_01"); // Wir wurden auf hoher See von Orks angegriffen.
	AI_Output(self, other, "MIL_2102_Volmar_orcAttack_Info_07_02"); // Von Orks?
	AI_Output(other, self, "MIL_2102_Volmar_orcAttack_Info_15_03"); // Ja, von Orks. Ich wei� nicht, wann sie gelernt haben, Schiffe zu bauen, oder zur See zu fahren, aber mit Kanonen k�nnen sie umgehen.
	AI_Output(other, self, "MIL_2102_Volmar_orcAttack_Info_15_04"); // Sie nutzten eine Nebelbank. Wir gerieten hinein und pl�tzlich er�ffneten sie das Feuer.
	AI_Output(other, self, "MIL_2102_Volmar_orcAttack_Info_15_05"); // Es dauerte keine zwei Minuten, dann brannte unser Schiff lichterloh.
	AI_Output(other, self, "MIL_2102_Volmar_orcAttack_Info_15_06"); // Wir versuchten uns in die Nussschalen zu retten, doch auch diese wurden versenkt.
	AI_Output(other, self, "MIL_2102_Volmar_orcAttack_Info_15_07"); // Ich habe mein Gl�ck au�erhalb der Boote gesucht. Mit einer Planke als Hilfsmittel versuchte ich wegzuschwimen, so schnell ich konnte.
	AI_Output(other, self, "MIL_2102_Volmar_orcAttack_Info_15_08"); // Scheinbar habe ich Gl�ck gehabt, auch wenn ich vor Ersch�pfung irgendwann eingeschlafen bin.
	AI_Output(self, other, "MIL_2102_Volmar_orcAttack_Info_07_09"); // Da hast du wirklich Gl�ck gehabt. Jetzt bist du hier.
};

// **************************************************

instance MIL_2102_Volmar_andNow (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_andNow_Condition;
	information		= MIL_2102_Volmar_andNow_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was mache ich jetzt?";
};

func int MIL_2102_Volmar_andNow_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2102_Volmar_orcAttack))
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_andNow_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_andNow_Info_15_01"); // Was mache ich jetzt?
	AI_Output(self, other, "MIL_2102_Volmar_andNow_Info_07_02"); // Das ist eine gute Frage.
	AI_Output(self, other, "MIL_2102_Volmar_andNow_Info_07_03"); // Ohne Zweifel bist du gut ausgebildet, aber ich kann dich hier nicht einfach in die Stadtwache aufnehmen.
	AI_Output(self, other, "MIL_2102_Volmar_andNow_Info_07_04"); // Und es wird noch einige Zeit dauern, bis wieder ein Schiff zum Festland ablegt.
	AI_Output(self, other, "MIL_2102_Volmar_andNow_Info_07_05"); // Du wirst wohl erst einmal hier bleiben m�ssen.
	AI_Output(self, other, "MIL_2102_Volmar_andNow_Info_07_06"); // Am Besten ist es, du baust dir ein neues Leben auf.
	MIS_newLife = LOG_RUNNING;
	Log_CreateTopic(TOPIC_newLife, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_newLife, LOG_RUNNING);
	B_LogEntry(TOPIC_newLife, "An den Strand gesp�lt, f�r einen Piraten gehalten und jetzt ohne Zukunft. Der Kommandant der Stadtwache sagte mir, ich solle mir ein neues Leben aufbauen. Als ob das so einfach w�re.");
};

// **************************************************

instance MIL_2102_Volmar_myOptions (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_myOptions_Condition;
	information		= MIL_2102_Volmar_myOptions_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Welche M�glichkeiten habe ich denn?";
};

func int MIL_2102_Volmar_myOptions_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2102_Volmar_andNow))
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_myOptions_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_myOptions_Info_15_01"); // Welche M�glichkeiten habe ich denn?
	AI_Output(self, other, "MIL_2102_Volmar_myOptions_Info_07_02"); // Ich empfehle dir, dich einer der Gruppierungen auf der Insel anzuschlie�en.
	AI_Output(self, other, "MIL_2102_Volmar_myOptions_Info_07_03"); // Leider kommst du zu einer sehr ungem�tlichen Zeit.
	AI_Output(other, self, "MIL_2102_Volmar_myOptions_Info_15_04"); // Was ist denn los?
	AI_Output(self, other, "MIL_2102_Volmar_myOptions_Info_07_05"); // Wir haben hier allerhand Probleme. Seit wir auf die Insel gekommen sind, geht es immer weiter bergab.
	AI_Output(self, other, "MIL_2102_Volmar_myOptions_Info_07_06"); // Im Minental probten die Gefangenen den Aufstand. Wir mussten den Pass verriegeln, um unsere eigene Haut zu retten.
	AI_Output(self, other, "MIL_2102_Volmar_myOptions_Info_07_07"); // Leider ist nun der Zugang zu den gro�en Erzvorkommen abgeschnitten.
	AI_Output(self, other, "MIL_2102_Volmar_myOptions_Info_07_08"); // Seitdem versuchen wir auf der Insel die letzten Adern auszusch�pfen.
	AI_Output(self, other, "MIL_2102_Volmar_myOptions_Info_07_09"); // Allerdings gibt es Menschen, die uns mit aller Macht daran hindern wollen.
};

// **************************************************

instance MIL_2102_Volmar_whichGroups (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_whichGroups_Condition;
	information		= MIL_2102_Volmar_whichGroups_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Welche Menschen sind das?";
};

func int MIL_2102_Volmar_whichGroups_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2102_Volmar_myOptions))
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_whichGroups_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_whichGroups_Info_15_01"); // Welche Menschen sind das?
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_02"); // Zuerst einmal unser derzeit gr��tes Problem.
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_03"); // Wenn du die Stadt verl�sst und dich n�rdlich h�lst, kommst du irgendwann zu einem Leuchtturm.
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_04"); // Dort und in der Bucht darunter haben sich Piraten eingenistet.
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_05"); // Sie machen uns das Leben schwer, versenken Fischerboote und tauchen in  der Stadt auf und beklauen jeden, der irgendetwas dabei hat.
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_06"); // Aber ihre Bucht ist gut gesch�tzt und ich habe zu wenig M�nner um sie frontal anzugreifen.
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_07"); // Dazu kommt noch das Problem mit den Bauern.
	AI_Output(other, self, "MIL_2102_Volmar_whichGroups_Info_15_08"); // Mit den Bauern? Was k�nnen Bauern denn f�r Probleme bereiten?
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_09"); // Die Bauern weniger, mehr ihre Aufpasser.
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_10"); // Nat�rlich muss die Stadt versorgt werden und in einer Kriegszeit muss sie st�rker versorgt werden als sonst.
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_11"); // Der Gro�bauer, dem zwei kleinere H�fe angeschlossen sind, will das aber nicht hinnehmen und hat einige S�ldner um sich geschart.
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_12"); // Seitdem zahlt er keine Abgaben mehr. Und schon einige meienr M�nner haben bei dem Versuch die Abgaben zu erzwingen ihr Leben verloren.
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_13"); // Im S�den der Insel ist es fast noch gef�hrlicher. Dort haben sich einige Schwarzmagier h�uslich eingerichtet.
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_14"); // Sie �berfallen die Bauernh�fe in der N�he der Stadt und ihr Turm ist f�r meine Stadtwache nicht einzunehmen.
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_15"); // Als Einzige sind noch die Eismagier in ihrem Kloster im Norden auf unserer Seite.
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_16"); // Aber auch sie haben viel zu tun. Denn sie sehen sich immer wieder Angriffen der Schwarzmagier ausgesetzt.
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_17"); // Wie du siehst, ist es hier nicht ruhig und schon gar nicht friedlich.
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_18"); // Wie gesagt, ich empfehle dir Folgendes:
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_19"); // Schlie�e dich einer der Fraktionen an. Aber achte darauf, dass du nicht auf die schiefe Bahn ger�tst.
	AI_Output(self, other, "MIL_2102_Volmar_whichGroups_Info_07_20"); // Ich gebe dir eine Karte mit, dann findest du dich besser zurecht.
	CreateInvItems(self, ItWr_Map_NewWorld,  1);
	B_GiveInvItems(self, other, ItWr_Map_NewWorld,  1);
	B_LogEntry(TOPIC_newLife, "Volmar erz�hlte mir von den verschiedenen Gruppen auf der Insel. Laut ihm existiert ein Piratennest, eine S�ldnertruppe und zwei Magierzirkel. Achja, und seine Stadtwache nicht zu vergessen. Ich glaube, ich sollte allen mal einen Besuch abstatten.");
};

// **************************************************

instance MIL_2102_Volmar_canGetWeapon (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_canGetWeapon_Condition;
	information		= MIL_2102_Volmar_canGetWeapon_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Bekomme ich irgendwoher eine Waffe?";
};

func int MIL_2102_Volmar_canGetWeapon_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2102_Volmar_andNow))
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_canGetWeapon_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_canGetWeapon_Info_15_01"); // Bekomme ich irgendwoher eine Waffe?
	AI_Output(self, other, "MIL_2102_Volmar_canGetWeapon_Info_07_02"); // Ich kann dir keine geben. Wenn du etwas Gold hast, kannst du bestimmt am Marktplatz etwas finden.
	AI_Output(self, other, "MIL_2102_Volmar_canGetWeapon_Info_07_03"); // Ansonsten... Schau mal in der N�he der Waffenkammer, vielleicht liegt da noch ein altes Schwert.
	AI_Output(self, other, "MIL_2102_Volmar_canGetWeapon_Info_07_04"); // F�r den Anfang sollte das ja reichen.
};

// **************************************************

instance MIL_2102_Volmar_howMiliz (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_howMiliz_Condition;
	information		= MIL_2102_Volmar_howMiliz_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kann ich Mitglied der Stadtwache werden?";
};

func int MIL_2102_Volmar_howMiliz_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2102_Volmar_whichGroups))
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_howMiliz_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_howMiliz_Info_15_01"); // Kann ich Mitglied der Stadtwache werden?
	AI_Output(self, other, "MIL_2102_Volmar_howMiliz_Info_07_02"); // Nat�rlich, gute Soldaten k�nnen wir immer brauchen! Aber es ist nicht ganz so einfach.
	AI_Output(other, self, "MIL_2102_Volmar_howMiliz_Info_15_03"); // Wieso nicht? Ich war...
	AI_Output(self, other, "MIL_2102_Volmar_howMiliz_Info_07_04"); // ... Soldat in der k�niglichen Flotte, ich wei�. Aber hier gelten andere Regeln, an die auch ich mich zu halten habe.
	AI_Output(self, other, "MIL_2102_Volmar_howMiliz_Info_07_05"); // Ich kann nur B�rger der Stadt Mahlendur in der Stadtwache aufnehmen.
	B_LogEntry(TOPIC_newLife, "Um bei der Miliz der Stadt aufgenommen zu werden, muss ich B�rger der Stadt sein. Wer hat sich den Quatsch denn ausgedacht? Immerhin bin ich bereits Soldat! Aber gut, wenn die Regeln es vorschreiben, muss auch ich mich daran halten. Mal sehen, was das alles bringen wird.");
};

// **************************************************

instance MIL_2102_Volmar_howCitizen (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_howCitizen_Condition;
	information		= MIL_2102_Volmar_howCitizen_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Und wie werde ich B�rger der Stadt?";
};

func int MIL_2102_Volmar_howCitizen_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2102_Volmar_howMiliz))
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_howCitizen_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_howCitizen_Info_15_01"); // Und wie werde ich B�rger der Stadt?
	AI_Output(self, other, "MIL_2102_Volmar_howCitizen_Info_07_02"); // Mach dich n�tzlich!
	AI_Output(self, other, "MIL_2102_Volmar_howCitizen_Info_07_03"); // Lerne ein Handwerk.
	AI_Output(self, other, "MIL_2102_Volmar_howCitizen_Info_07_04"); // Am Besten schaust du dich im H�ndler und Handwerksviertel einmal um und sprichst mit den Meistern.
	AI_Output(self, other, "MIL_2102_Volmar_howCitizen_Info_07_05"); // Sie werden dir mehr dazu erz�hlen k�nnen.
	MIS_getCitizen = LOG_RUNNING;
	Log_CreateTopic(TOPIC_getCitizen, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_getCitizen, LOG_RUNNING);
	B_LogEntry(TOPIC_getCitizen, "Um B�rger der Stadt zu werden, muss ich mich n�tzlich machen und ein Handwerk erlernen. Volmar sagte, ich solle mit den Handwerkern sprechen. Mal sehen, welche M�glichkeiten sich mir bieten.");
};

// **************************************************

instance MIL_2102_Volmar_whatAboutMage (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_whatAboutMage_Condition;
	information		= MIL_2102_Volmar_whatAboutMage_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was ist, wenn ich den Weg der Magie beschreiten m�chte?";
};

func int MIL_2102_Volmar_whatAboutMage_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2102_Volmar_whichGroups))
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_whatAboutMage_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_whatAboutMage_Info_15_01"); // Was ist, wenn ich den Weg der Magie beschreiten m�chte?
	AI_Output(self, other, "MIL_2102_Volmar_whatAboutMage_Info_07_02"); // Dann bist du wohl am Besten im Kloster aufgehoben.
	AI_Output(self, other, "MIL_2102_Volmar_whatAboutMage_Info_07_03"); // Die Magier werden dich beraten.
	AI_Output(self, other, "MIL_2102_Volmar_whatAboutMage_Info_07_04"); // Sieh dich auf dem Marktplatz um, meistens ist dort ein Magier aus dem Kloster auf der Suche nach neuen Novizen.
	AI_Output(self, other, "MIL_2102_Volmar_whatAboutMage_Info_07_05"); // Allerdings habe ich zuletzt geh�rt, dass sie einen Tribut verlangen.
	B_LogEntry(TOPIC_newLife, "Ich kann mich also auch den Magiern anschlie�en. Zumindest ein Eismagier soll sich in der Stadt aufhalten. Ob ich bei den Schwarzmagiern vielleicht auch willkommen bin?");
};

// **************************************************

instance MIL_2102_Volmar_whatAboutOthers (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_whatAboutOthers_Condition;
	information		= MIL_2102_Volmar_whatAboutOthers_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kann ich mich den Piraten oder S�ldnern anschlie�en?";
};

func int MIL_2102_Volmar_whatAboutOthers_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2102_Volmar_whichGroups))
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_whatAboutOthers_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_whatAboutOthers_Info_15_01"); // Kann ich mich den Piraten oder S�ldnern anschlie�en?
	AI_Output(self, other, "MIL_2102_Volmar_whatAboutOthers_Info_07_02"); // Ich als Kommandant kann dir davon nur abraten.
	AI_Output(self, other, "MIL_2102_Volmar_whatAboutOthers_Info_07_03"); // Die Piraten locken mit gro�em Geld und die S�ldner mit einem starken Kampftraining und Eigenverantwortung.
	AI_Output(self, other, "MIL_2102_Volmar_whatAboutOthers_Info_07_04"); // Das alles kannst du auch in der Stadt bekommen.
	AI_Output(self, other, "MIL_2102_Volmar_whatAboutOthers_Info_07_05"); // Wie dem auch sei, ich kann dich nicht davon abhalten. Du stehst nicht unter meinem Kommando und bist ein freier Mann.
	AI_Output(self, other, "MIL_2102_Volmar_whatAboutOthers_Info_07_06"); // Es ist deine Entscheidung!
	B_LogEntry(TOPIC_newLife, "Volmar r�t mir davon ab, mich den Piraten oder den S�ldnern anzuschlie�en. Aber wer wei�, vielleicht liegt meine Zukunft etwas abseits des Gesetzes?");
};

// **************************************************

instance MIL_2102_Volmar_enterMiliz (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_enterMiliz_Condition;
	information		= MIL_2102_Volmar_enterMiliz_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Ich will der Miliz beitreten!";
};

func int MIL_2102_Volmar_enterMiliz_Condition()
{
	if ((Npc_KnowsInfo(hero, MIL_2102_Volmar_howCitizen)) && (kapitel == 1) && (Npc_GetTrueGuild(hero) != GIL_SLD) && (Npc_GetTrueGuild(hero) != GIL_PIR) && (Npc_GetTrueGuild(hero) != GIL_KDF) && (Npc_GetTrueGuild(hero) != GIL_KDW))
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_enterMiliz_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_enterMiliz_Info_15_01"); // Ich will der Miliz beitreten!
	if (Npc_GetTrueGuild(other) != GIL_VLK)
	{
		AI_Output(self, other, "MIL_2102_Volmar_enterMiliz_Info_07_02"); // Ich kann dich nicht aufnehmen!
		AI_Output(self, other, "MIL_2102_Volmar_enterMiliz_Info_07_03"); // Lerne ein Handwerk und werde B�rger, dann sehen wir weiter!
	}
	else
	{
		AI_Output(self, other, "MIL_2102_Volmar_enterMiliz_Info_07_04"); // Bist du dir sicher? Das ist keine einfache Entscheidung!
		Info_ClearChoices(MIL_2102_Volmar_enterMiliz);
		Info_AddChoice(MIL_2102_Volmar_enterMiliz, "Nein, lass mich noch �berlegen!", MIL_2102_Volmar_enterMiliz_notSecure);
		Info_AddChoice(MIL_2102_Volmar_enterMiliz, "Ja, ich will f�r die Stadt k�mpfen!", MIL_2102_Volmar_enterMiliz_yesSecure);
	};
};

func void MIL_2102_Volmar_enterMiliz_notSecure()
{
	AI_Output(other, self, "MIL_2102_Volmar_enterMiliz_notSecure_15_01"); // Nein, lass mich noch �berlegen!
	AI_Output(self, other, "MIL_2102_Volmar_enterMiliz_notSecure_07_02"); // In Orndung, ich bin hier, wenn du es dir �berlegt hast.
	Info_ClearChoices(MIL_2102_Volmar_enterMiliz);
};

func void MIL_2102_Volmar_enterMiliz_yesSecure()
{
	AI_Output(other, self, "MIL_2102_Volmar_enterMiliz_yesSecure_15_01"); // Ja, ich will f�r die Stadt k�mpfen!
	AI_Output(self, other, "MIL_2102_Volmar_enterMiliz_yesSecure_07_02"); // Gut. Wenn dies dein Wunsch ist.
	AI_Output(self, other, "MIL_2102_Volmar_enterMiliz_yesSecure_07_03"); // Dann sei herzlich willkommen in der Stadtwache!
	AI_Output(self, other, "MIL_2102_Volmar_enterMiliz_yesSecure_07_04"); // Geh zu Marco und hol dir deine Waffe und deine R�stung ab!
	Npc_SetTrueGuild(hero, GIL_MIL);
	B_LogEntry(TOPIC_newLife, "Endlich bin ich Mitglied der Stadtwache! Auf in ein neues Kapitel meines Lebens!");
	MIS_newLife = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_newLife, LOG_SUCCESS);
	B_GivePlayerXP(XP_BecomeMiliz);
	kapitel = 2;
	IntroduceChapter (KapWechsel_2,KapWechsel_2_Text,"chapter2.tga","chapterchange.wav", 6000);
	Spine_UnlockAchievement(0);
	Info_ClearChoices(MIL_2102_Volmar_enterMiliz);
};

// **************************************************

instance MIL_2102_Volmar_wannaTellThief (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_wannaTellThief_Condition;
	information		= MIL_2102_Volmar_wannaTellThief_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich will einen Dieb melden!";
};

func int MIL_2102_Volmar_wannaTellThief_Condition()
{
	if (albrarChoice == 3)
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_wannaTellThief_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_wannaTellThief_Info_15_01"); // Ich will einen Dieb melden!
	AI_Output(self, other, "MIL_2102_Volmar_wannaTellThief_Info_07_02"); // In Ordnung. Um wen handelt es sich und was hat er gestohlen?
	AI_Output(other, self, "MIL_2102_Volmar_wannaTellThief_Info_15_03"); // Der Waffenh�ndler Albrar vom Marktplatz ist es, der seit Wochen die Stadtwache bestiehlt.
	AI_Output(self, other, "MIL_2102_Volmar_wannaTellThief_Info_07_04"); // Und hast du daf�r Beweise?
	AI_Output(other, self, "MIL_2102_Volmar_wannaTellThief_Info_15_05"); // Ich habe den Dieb selbst gestellt.
	AI_Output(self, other, "MIL_2102_Volmar_wannaTellThief_Info_07_06"); // In Ordnung, das reicht mir.
	if (Wld_GetDay() <= albrarDay + 1)
	{
		AI_Output(self, other, "MIL_2102_Volmar_wannaTellThief_Info_07_07"); // Hier hast du das Gold, dass auf die Ergreifung des Diebes ausgesetzt war.
		CreateInvItems(self, ItMi_Gold,  350);
		B_GiveInvItems(self, other, ItMi_Gold,  350);
		AI_Output(self, other, "MIL_2102_Volmar_wannaTellThief_Info_07_08"); // Gute Arbeit! Weiter so!
		Npc_ExchangeRoutine(VLK_3007_Albrar, "Locked");
	}
	else
	{
		AI_Output(self, other, "MIL_2102_Volmar_wannaTellThief_Info_07_09"); // Nur leider hat er sich vor Kurzem aus dem Staub gemacht.
		AI_Output(self, other, "MIL_2102_Volmar_wannaTellThief_Info_07_10"); // Leider k�nnen wir ihn nun nicht mehr seiner gerechten Strafe zuf�hren.
		AI_Output(self, other, "MIL_2102_Volmar_wannaTellThief_Info_07_11"); // Trotzdem sollst du etwas von dem ausgesetzten Gold erhalten.
		CreateInvItems(self, ItMi_Gold,  100);
		B_GiveInvItems(self, other, ItMi_Gold,  100);
		AI_Output(self, other, "MIL_2102_Volmar_wannaTellThief_Info_07_12"); // Immerhin hast du ihn �berf�hrt.
	};
	AI_Output(self, other, "MIL_2102_Volmar_wannaTellThief_Info_07_13"); // Ich bin froh, dass du bei uns an Land gesp�lt wurdest. M�nner wie dich k�nnen wir hier gut brauchen!
	B_GivePlayerXP(200);
};

// **************************************************

instance MIL_2102_Volmar_tellRose (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_tellRose_Condition;
	information		= MIL_2102_Volmar_tellRose_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Eine Rose f�r Epona!";
};

func int MIL_2102_Volmar_tellRose_Condition()
{
	if (MIS_newInfos == LOG_RUNNING)
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_tellRose_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_tellRose_Info_15_01"); // Eine Rose f�r Epona!
	AI_Output(self, other, "MIL_2102_Volmar_tellRose_Info_07_02"); // Alles in Ordnung mit dir?
	AI_Output(other, self, "MIL_2102_Volmar_tellRose_Info_15_03"); // Alles Bestens!
	roseCounter += 1;
};

// **************************************************

instance MIL_2102_Volmar_newGuards (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_newGuards_Condition;
	information		= MIL_2102_Volmar_newGuards_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Du sollst eine Wachabl�sung an den Pass schicken!";
};

func int MIL_2102_Volmar_newGuards_Condition()
{
	if (MIS_guardChange == LOG_RUNNING)
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_newGuards_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_newGuards_Info_15_01"); // Du sollst eine Wachabl�sung an den Pass schicken!
	AI_Output(self, other, "MIL_2102_Volmar_newGuards_Info_07_02"); // Ach, wer sagt das denn?
	AI_Output(other, self, "MIL_2102_Volmar_newGuards_Info_15_03"); // Rhaegar sagt das. Er meint, der m�de Haufen sei zu kaum etwas mehr zu gebrauchen.
	AI_Output(self, other, "MIL_2102_Volmar_newGuards_Info_07_04"); // Ist das so? Wovon sind die denn m�de? Die bewachen einen zugesch�tteten Pass.
	AI_Output(other, self, "MIL_2102_Volmar_newGuards_Info_15_05"); // Frag mich nicht. Ich wurde nur von Rhaegar geschickt. Mehr hat er mir nicht gesagt.
	AI_Output(self, other, "MIL_2102_Volmar_newGuards_Info_07_06"); // Hm, na gut. Sag ihm, ich werde ihm in den n�chsten Tagen neue M�nner schicken.
	B_LogEntry(TOPIC_guardChange, "Volmar hat sich nach etwas '�berzeugungsarbeit' dazu bereit erkl�rt, neue M�nner an den Pass zu schicken.");
};

// **************************************************

instance MIL_2102_Volmar_whatNow (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_whatNow_Condition;
	information		= MIL_2102_Volmar_whatNow_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was ist jetzt zu tun?";
};

func int MIL_2102_Volmar_whatNow_Condition()
{
	if ((kapitel == 2) && (Npc_GetTrueGuild(hero) == GIL_MIL))
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_whatNow_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_whatNow_Info_15_01"); // Was ist jetzt zu tun?
	AI_Output(self, other, "MIL_2102_Volmar_whatNow_Info_07_02"); // Du wirst wie, jeder Andere auch, deinen Dienst tun. Wenn du eine Aufgabe erledigt hast, kommst du zu mir und ich zahle dir deinen Sold aus.
	AI_Output(self, other, "MIL_2102_Volmar_whatNow_Info_07_03"); // Ansonsten wird Thalar dich ab sofort trainieren. Bei Marco kannst du dir bessere Waffen und R�stungen kaufen.
	AI_Output(self, other, "MIL_2102_Volmar_whatNow_Info_07_04"); // Ich h�tte auch schon einen ersten Auftrag f�r dich.
};

// **************************************************

instance MIL_2102_Volmar_whatToDo (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_whatToDo_Condition;
	information		= MIL_2102_Volmar_whatToDo_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was soll ich tun?";
};

func int MIL_2102_Volmar_whatToDo_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2102_Volmar_whatNow))
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_whatToDo_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_whatToDo_Info_15_01"); // Was soll ich tun?
	AI_Output(self, other, "MIL_2102_Volmar_whatToDo_Info_07_02"); // Die Bauern auf Stans Hof vor der Stadt haben Probleme mit Bauern.
	AI_Output(self, other, "MIL_2102_Volmar_whatToDo_Info_07_03"); // Nimm dir einen der Soldaten mit und sieh nach, was da los ist.
	AI_Output(self, other, "MIL_2102_Volmar_whatToDo_Info_07_04"); // Nimm dir Marril mit. Er hatte schon lange nichts mehr zu tun.
	MIS_stansBandits = LOG_RUNNING;
	Log_CreateTopic(TOPIC_stansBandits, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_stansBandits, LOG_RUNNING);
	B_LogEntry(TOPIC_stansBandits, "Stan hat auf seinem Hof Probleme mit Banditen. Volmar sagt, ich solle mir Marril mitnehmen und dort f�r Ruhe sorgen.");
	setMilPhase(1);
};

// **************************************************

instance MIL_2102_Volmar_banditsDead (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_banditsDead_Condition;
	information		= MIL_2102_Volmar_banditsDead_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Die Banditen sind tot!";
};

func int MIL_2102_Volmar_banditsDead_Condition()
{
	if ((Npc_KnowsInfo(hero, MIL_2102_Volmar_whatToDo)) && (Npc_IsDead(BDT_1009_Bandit_L)) && (Npc_IsDead(BDT_1010_Bandit_L)) && (Npc_IsDead(BDT_1011_Bandit_M)))
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_banditsDead_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_banditsDead_Info_15_01"); // Die Banditen sind tot!
	AI_Output(self, other, "MIL_2102_Volmar_banditsDead_Info_07_02"); // Hervorragend. Das hast du gut gemacht.
	AI_Output(self, other, "MIL_2102_Volmar_banditsDead_Info_07_03"); // Gab es Schwierigkeiten?
	AI_Output(other, self, "MIL_2102_Volmar_banditsDead_Info_15_04"); // Keine nennenswerten.
	AI_Output(self, other, "MIL_2102_Volmar_banditsDead_Info_07_05"); // Gut. Dann wird Stan hoffentlich bald seine Abgaben wieder liefern.
	AI_Output(self, other, "MIL_2102_Volmar_banditsDead_Info_07_06"); // Hier hast du deinen Sold!
	CreateInvItems(self, ItMi_Gold,  250);
	B_GiveInvItems(self, other, ItMi_Gold,  250);
	MIS_stansBandits = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_stansBandits, LOG_SUCCESS);
	B_LogEntry(TOPIC_stansBandits, "Volmar war zufrieden mit dem Ausgang des Auftrags und hat mich entlohnt.");
	B_GivePlayerXP(XP_AmbientKap3);
};

// **************************************************

instance MIL_2102_Volmar_whatNext (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_whatNext_Condition;
	information		= MIL_2102_Volmar_whatNext_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was gibt es noch zu tun?";
};

func int MIL_2102_Volmar_whatNext_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2102_Volmar_banditsDead))
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_whatNext_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_whatNext_Info_15_01"); // Was gibt es noch zu tun?
	AI_Output(self, other, "MIL_2102_Volmar_whatNext_Info_07_02"); // Im Moment nichts. Sieh dich am Besten auf der Insel um, dass alles glattl�uft!
	AI_Output(self, other, "MIL_2102_Volmar_whatNext_Info_07_03"); // Aber keine Alleing�nge gegen Piraten oder S�ldner!
	volmarDay = Wld_GetDay();
};

// **************************************************

instance MIL_2102_Volmar_nextStep (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_nextStep_Condition;
	information		= MIL_2102_Volmar_nextStep_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Du hast einen neuen Auftrag f�r mich?";
};

func int MIL_2102_Volmar_nextStep_Condition()
{
	if (toldNewQuest == TRUE)
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_nextStep_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_nextStep_Info_15_01"); // Du hast einen neuen Auftrag f�r mich?
	AI_Output(self, other, "MIL_2102_Volmar_nextStep_Info_07_02"); // Richtig. Allerdings ist das etwas heikel.
	AI_Output(self, other, "MIL_2102_Volmar_nextStep_Info_07_03"); // Wir m�ssen wissen, was die S�ldner und die Piraten planen. Du wirst das f�r uns herausfinden.
	AI_Output(other, self, "MIL_2102_Volmar_nextStep_Info_15_04"); // Und wie soll ich das machen?
	AI_Output(self, other, "MIL_2102_Volmar_nextStep_Info_07_05"); // Schleich dich an und beobachte. Aber pass auf, dass dich niemand sieht. Von denen ist keiner gut auf uns zu sprechen.
	AI_Output(self, other, "MIL_2102_Volmar_nextStep_Info_07_06"); // Komm in einem St�ck wieder!
	MIS_snitchPirSld = LOG_RUNNING;
	Log_CreateTopic(TOPIC_snitchPirSld, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_snitchPirSld, LOG_RUNNING);
	B_LogEntry(TOPIC_snitchPirSld, "Volmar hat mich losgeschickt, sowohl die Piraten, als auch die S�ldner zu beobachten und herauszufinden, was beide Gruppen planen. Ich soll in einem St�ck zur�ckkommen. Der hat leicht Reden...");
	changeSldRtnPreAttack();
};

// **************************************************

instance MIL_2102_Volmar_shallWeGo (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_shallWeGo_Condition;
	information		= MIL_2102_Volmar_shallWeGo_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Sollten wir den Piraten oder S�ldnern nicht zuvorkommen?";
};

func int MIL_2102_Volmar_shallWeGo_Condition()
{
	if ((Npc_KnowsInfo(hero, MIL_2102_Volmar_nextStep)) && (MIS_snitchPirSld != TRUE))
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_shallWeGo_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_shallWeGo_Info_15_01"); // Sollten wir den Piraten oder S�ldnern nicht zuvorkommen?
	AI_Output(self, other, "MIL_2102_Volmar_shallWeGo_Info_07_02"); // Du meinst, wir sollten sie angreifen? Und damit die Stadt ungesch�tzt?
	AI_Output(self, other, "MIL_2102_Volmar_shallWeGo_Info_07_03"); // Nein, wir bleiben hier. Wenn wir angegriffen werden, dann werden wir uns mit allen Mitteln verteidigen!
	AI_Output(other, self, "MIL_2102_Volmar_shallWeGo_Info_15_04"); // Was soll ich tun?
	AI_Output(self, other, "MIL_2102_Volmar_shallWeGo_Info_07_05"); // Werde st�rker! Trainiere flei�ig und bereite dich vor.
	AI_Output(self, other, "MIL_2102_Volmar_shallWeGo_Info_07_06"); // Ansonsten k�nnen wir nur abwarten. Mehr bleibt uns nicht �brig.
	volmarDay = Wld_GetDay();
};

// **************************************************

instance MIL_2102_Volmar_howToTrain (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_howToTrain_Condition;
	information		= MIL_2102_Volmar_howToTrain_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wo kann ich noch trainieren?";
};

func int MIL_2102_Volmar_howToTrain_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2102_Volmar_shallWeGo))
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_howToTrain_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_howToTrain_Info_15_01"); // Wo kann ich noch trainieren?
	AI_Output(self, other, "MIL_2102_Volmar_howToTrain_Info_07_02"); // Viele hier k�nnen dir etwas beibringen.
	AI_Output(self, other, "MIL_2102_Volmar_howToTrain_Info_07_03"); // Halte dich am Besten an Thalar. Er wird dich im Schertkampf unterrichten.
	AI_Output(other, self, "MIL_2102_Volmar_howToTrain_Info_15_04"); // Gibt es hier eine Arena?
	AI_Output(other, self, "MIL_2102_Volmar_howToTrain_Info_15_05"); // Auf dem Festland sind sie wie Unkraut aus dem Boden geschossen.
	AI_Output(self, other, "MIL_2102_Volmar_howToTrain_Info_07_06"); // Einige der Soldaten haben tats�chlich eine Arena eingerichtet.
	AI_Output(self, other, "MIL_2102_Volmar_howToTrain_Info_07_07"); // Du findest sie an der gro�en Anlegestelle. Kannst sie eigentlich gar nicht verfehlen.
};

// **************************************************

instance MIL_2102_Volmar_cityAttack (C_INFO)
{
	npc			= MIL_2102_Volmar;
	condition		= MIL_2102_Volmar_cityAttack_Condition;
	information		= MIL_2102_Volmar_cityAttack_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was ist los?";
};

func int MIL_2102_Volmar_cityAttack_Condition()
{
	if (toldNewQuest2 == TRUE)
	{
		return TRUE;
	};
};

func void MIL_2102_Volmar_cityAttack_Info()
{
	AI_Output(other, self, "MIL_2102_Volmar_cityAttack_Info_15_01"); // Was ist los?
	AI_Output(self, other, "MIL_2102_Volmar_cityAttack_Info_07_02"); // Die Torwachen berichten, dass die S�ldner sich vor der Stadt postiert haben.
	AI_Output(self, other, "MIL_2102_Volmar_cityAttack_Info_07_03"); // Ich f�rchte...
	AI_Output(self, other, "MIL_2102_Volmar_cityAttack_Info_07_04"); // (lauter L�rm erklingt aus Richtung der Stadttore)
	AI_Output(self, other, "MIL_2102_Volmar_cityAttack_Info_07_05"); // Verdammt, sie greifen an. Wir m�ssen los!
	B_Attack(self, SLD_700_Jareck, AR_Kill, 1);
	AI_StopProcessInfos(self);
};
