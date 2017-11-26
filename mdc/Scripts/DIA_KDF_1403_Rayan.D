// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!

var int circle2;
var int knowsMageInfo;

// **************************************************

instance KDF_1403_Rayan_Exit (C_INFO)
{
	npc			= KDF_1403_Rayan;
	condition		= KDF_1403_Rayan_Exit_Condition;
	information		= KDF_1403_Rayan_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int KDF_1403_Rayan_Exit_Condition()
{
	return TRUE;
};

func void KDF_1403_Rayan_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance KDF_1403_Rayan_whoAreYou (C_INFO)
{
	npc			= KDF_1403_Rayan;
	condition		= KDF_1403_Rayan_whoAreYou_Condition;
	information		= KDF_1403_Rayan_whoAreYou_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int KDF_1403_Rayan_whoAreYou_Condition()
{
	return TRUE;
};

func void KDF_1403_Rayan_whoAreYou_Info()
{
	AI_Output(self, other, "KDF_1403_Rayan_whoAreYou_Info_12_01"); // Wer bist du denn? Und vor allem, was tust du hier?
	AI_Output(self, other, "KDF_1403_Rayan_whoAreYou_Info_12_02"); // Wer hat dich hier reingelassen?
};

// **************************************************

instance KDF_1403_Rayan_gotLetter (C_INFO)
{
	npc			= KDF_1403_Rayan;
	condition		= KDF_1403_Rayan_gotLetter_Condition;
	information		= KDF_1403_Rayan_gotLetter_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Sellan hat mir den Schlüssel gegeben.";
};

func int KDF_1403_Rayan_gotLetter_Condition()
{
	if (Npc_HasItems(other, ItWr_MariusMessage) >= 1)
	{
		return TRUE;
	};
};

func void KDF_1403_Rayan_gotLetter_Info()
{
	AI_Output(other, self, "KDF_1403_Rayan_gotLetter_Info_15_01"); // Sellan hat mir den Schlüssel gegeben.
	AI_Output(other, self, "KDF_1403_Rayan_gotLetter_Info_15_02"); // Außerdem habe ich hier einen Brief vom Magier Marius.
	AI_Output(self, other, "KDF_1403_Rayan_gotLetter_Info_12_03"); // Von Marius? Gib mir den Brief!
	B_GiveInvItems(other, self, ItWr_MariusMessage,  1);
	AI_Output(self, other, "KDF_1403_Rayan_gotLetter_Info_12_04"); // Es ist lange her, dass Marius einen neuen Novizen geschickt hat.
	AI_Output(self, other, "KDF_1403_Rayan_gotLetter_Info_12_05"); // Wollen wir doch einmal sehen, was er schreibt.
	AI_StandUp(self);
	AI_TurnToNpc(self, hero);
	B_UseFakeScroll();
	AI_TurnToNpc(self, hero);
	AI_Output(self, other, "KDF_1403_Rayan_gotLetter_Info_12_06"); // Aah, Marius schickt tatsächlich einen neuen Novizen.
	AI_Output(self, other, "KDF_1403_Rayan_gotLetter_Info_12_07"); // Er schreibt, er spüre große Macht in dir. (leiser) Und du könntest unser aller Retter sein.
	AI_Output(self, other, "KDF_1403_Rayan_gotLetter_Info_12_08"); // Gut, wir werden dich auf die Probe stellen.
	AI_Output(self, other, "KDF_1403_Rayan_gotLetter_Info_12_09"); // Wenn es dein Wunsch ist unserem Orden beizutreten, dann sprich mit Uysal.
	AI_Output(self, other, "KDF_1403_Rayan_gotLetter_Info_12_10"); // Er soll dich prüfen und dann werden wir entscheiden, ob du würdig bist, die Robe eines Novizen zu tragen.
	B_LogEntry(TOPIC_newLife, "Rayan, einer der drei Räte des Eisordens hat mich in Empfang genommen. Nachdem er den Brief gelesen hat, sagte er mir, ich solle mit Uysal sprechen, wenn ich dem Orden beitreten wolle. Er würde mir eine Prüfung stellen. Da bin ich ja mal gespannt...");
};

// **************************************************

instance KDF_1403_Rayan_whatTest (C_INFO)
{
	npc			= KDF_1403_Rayan;
	condition		= KDF_1403_Rayan_whatTest_Condition;
	information		= KDF_1403_Rayan_whatTest_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was für eine Prüfung erwartet mich?";
};

func int KDF_1403_Rayan_whatTest_Condition()
{
	if (Npc_KnowsInfo(hero, KDF_1403_Rayan_gotLetter))
	{
		return TRUE;
	};
};

func void KDF_1403_Rayan_whatTest_Info()
{
	AI_Output(other, self, "KDF_1403_Rayan_whatTest_Info_15_01"); // Was für eine Prüfung erwartet mich?
	AI_Output(self, other, "KDF_1403_Rayan_whatTest_Info_12_02"); // Sprich mit Uysal. Er alleine bestimmt über Form und Größe der Prüfung.
	AI_Output(self, other, "KDF_1403_Rayan_whatTest_Info_12_03"); // Ich kann dir dazu nichts sagen.
};

// **************************************************

instance KDF_1403_Rayan_whatNovice (C_INFO)
{
	npc			= KDF_1403_Rayan;
	condition		= KDF_1403_Rayan_whatNovice_Condition;
	information		= KDF_1403_Rayan_whatNovice_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was erwartet mich als Novize?";
};

func int KDF_1403_Rayan_whatNovice_Condition()
{
	if (Npc_KnowsInfo(hero, KDF_1403_Rayan_gotLetter))
	{
		return TRUE;
	};
};

func void KDF_1403_Rayan_whatNovice_Info()
{
	AI_Output(other, self, "KDF_1403_Rayan_whatNovice_Info_15_01"); // Was erwartet mich als Novize?
	AI_Output(self, other, "KDF_1403_Rayan_whatNovice_Info_12_02"); // Als Novize wirst du in die Kunst der Magie eingeführt.
	AI_Output(self, other, "KDF_1403_Rayan_whatNovice_Info_12_03"); // Wir werden dich unterrichten, deine magischen Energien zu bündeln und freizusetzen.
	AI_Output(self, other, "KDF_1403_Rayan_whatNovice_Info_12_04"); // Zusätzlich wirst du Arbeit für die Gemeinschaft verrichten.
	AI_Output(self, other, "KDF_1403_Rayan_whatNovice_Info_12_05"); // Aber dazu später mehr.
	AI_Output(self, other, "KDF_1403_Rayan_whatNovice_Info_12_06"); // Bestehe zuerst die Prüfung, dann sehen wir weiter.
};

// **************************************************

instance KDF_1403_Rayan_joinMages (C_INFO)
{
	npc			= KDF_1403_Rayan;
	condition		= KDF_1403_Rayan_joinMages_Condition;
	information		= KDF_1403_Rayan_joinMages_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Ich habe die Prüfung bestanden.";
};

func int KDF_1403_Rayan_joinMages_Condition()
{
	if ((Npc_KnowsInfo(hero, KDF_1405_Ulian_yourYes)) && (Npc_KnowsInfo(hero, KDF_1404_Uysal_gotThem)) && (kapitel == 1) && (Npc_GetTrueGuild(hero) == GIL_NONE))
	{
		return TRUE;
	};
};

func void KDF_1403_Rayan_joinMages_Info()
{
	AI_Output(other, self, "KDF_1403_Rayan_joinMages_Info_15_01"); // Ich habe die Prüfung bestanden.
	AI_Output(self, other, "KDF_1403_Rayan_joinMages_Info_12_02"); // Ich merke es. Der Schatten, der das Kloster befallen hat, ist verschwunden.
	AI_Output(self, other, "KDF_1403_Rayan_joinMages_Info_12_03"); // Hast du auch mit Ulian gesprochen?
	AI_Output(other, self, "KDF_1403_Rayan_joinMages_Info_15_04"); // Habe ich. Er dankte mir für meinen Einsatz und gab mir seinen Segen.
	AI_Output(self, other, "KDF_1403_Rayan_joinMages_Info_12_05"); // Dann liegt die Entscheidung nun bei dir.
	AI_Output(self, other, "KDF_1403_Rayan_joinMages_Info_12_06"); // Ist es immer noch dein Wunsch unserem Orden beizutreten und verpflichtest du dich, den Glauben Adanos zu leben und in die Welt zu tragen?
	Info_ClearChoices(KDF_1403_Rayan_joinMages);
	Info_AddChoice(KDF_1403_Rayan_joinMages, "Ehrlich gesagt, ist das eine schwere Entscheidung...", KDF_1403_Rayan_joinMages_noMage);
	Info_AddChoice(KDF_1403_Rayan_joinMages, "Ja, ich möchte dem Orden beitreten!", KDF_1403_Rayan_joinMages_yesMage);
};

func void KDF_1403_Rayan_joinMages_noMage()
{
	AI_Output(other, self, "KDF_1403_Rayan_joinMages_noMage_15_01"); // Ehrlich gesagt, ist das eine schwere Entscheidung...
	AI_Output(self, other, "KDF_1403_Rayan_joinMages_noMage_12_02"); // Das verstehe ich gut.
	AI_Output(self, other, "KDF_1403_Rayan_joinMages_noMage_12_03"); // Es ist eine Entscheidung, die man nicht leichtfertig treffen solle.
	AI_Output(self, other, "KDF_1403_Rayan_joinMages_noMage_12_04"); // In Ordnung, ich gebe dir noch etwas Bedenkzeit. Wenn du dich entschieden hast, komm zu mir.
	Info_ClearChoices(KDF_1403_Rayan_joinMages);
};

func void KDF_1403_Rayan_joinMages_yesMage()
{
	AI_Output(other, self, "KDF_1403_Rayan_joinMages_yesMage_15_01"); // Ja, ich möchte dem Orden beitreten!
	AI_Output(self, other, "KDF_1403_Rayan_joinMages_yesMage_12_02"); // Wenn dies dein eigener und freier Wille ist, so gehe mit dem Segen Adanos.
	AI_Output(self, other, "KDF_1403_Rayan_joinMages_yesMage_12_03"); // Lege die Robe eines Novizen an und trage sie mit Ehrfurcht.
	AI_Output(self, other, "KDF_1403_Rayan_joinMages_yesMage_12_04"); // Sie soll dich schützen und dich leiten, auf allen Wegen, die du in dieser Welt beschreiten wirst.
	AI_Output(self, other, "KDF_1403_Rayan_joinMages_yesMage_12_05"); // Und nun genug des zeremoniellen: Herzlichen Glückwunsch und Willkommen im Orden!
	kapitel = 2;
	IntroduceChapter (KapWechsel_2,KapWechsel_2_Text,"chapter2.tga","chapterchange.wav", 6000);
	B_LogEntry(TOPIC_newLife, "Rayan, Uysal und Ulian haben mich in die Reihen der Magier aufgenommen. Ich kann mich nun Novize des Eises nennen! Herzlich willkommen in einem magischen Leben...");
	MIS_newLife = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_newLife, LOG_SUCCESS);
	B_GivePlayerXP(XP_becomeMiliz);
	Npc_SetTrueGuild(hero, GIL_MIL);
	Spine_UnlockAchievement(0);
	CreateInvItems(self, ItAr_Nov_L,  1);
	B_GiveInvItems(self, other, ItAr_Nov_L,  1);
	Info_ClearChoices(KDF_1403_Rayan_joinMages);
};

// **************************************************

instance KDF_1403_Rayan_whatToDo (C_INFO)
{
	npc			= KDF_1403_Rayan;
	condition		= KDF_1403_Rayan_whatToDo_Condition;
	information		= KDF_1403_Rayan_whatToDo_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Hast du eine Aufgabe für mich?";
};

func int KDF_1403_Rayan_whatToDo_Condition()
{
	if (kapitel == 2)
	{
		return TRUE;
	};
};

func void KDF_1403_Rayan_whatToDo_Info()
{
	AI_Output(other, self, "KDF_1403_Rayan_whatToDo_Info_15_01"); // Hast du eine Aufgabe für mich?
	AI_Output(self, other, "KDF_1403_Rayan_whatToDo_Info_12_02"); // Ich gebe dir eine Daueraufgabe.
	AI_Output(other, self, "KDF_1403_Rayan_whatToDo_Info_15_03"); // Okay?
	AI_Output(self, other, "KDF_1403_Rayan_whatToDo_Info_12_04"); // Lerne!
	AI_Output(self, other, "KDF_1403_Rayan_whatToDo_Info_12_05"); // Als Novize und im übrigen auch als ausgebildeter Magier ist es deine Aufgabe zu lernen.
	AI_Output(self, other, "KDF_1403_Rayan_whatToDo_Info_12_06"); // Denn nur wer lernt, der kann stärker werden.
	AI_Output(self, other, "KDF_1403_Rayan_whatToDo_Info_12_07"); // Einiges können dir die anderen Magier beibringen.
	AI_Output(other, self, "KDF_1403_Rayan_whatToDo_Info_15_08"); // Zum Beispiel?
	AI_Output(self, other, "KDF_1403_Rayan_whatToDo_Info_12_09"); // Ulian wird dir dabei helfen, deine magische Kraft zu steigern.
	AI_Output(self, other, "KDF_1403_Rayan_whatToDo_Info_12_10"); // Uysal kann dich lehren, deine eigenen Runen herzustellen.
	AI_Output(self, other, "KDF_1403_Rayan_whatToDo_Info_12_11"); // Doch bevor du sie nutzen kannst, musst du zuerst den ersten Kreis der Magie erlernen.
	AI_Output(self, other, "KDF_1403_Rayan_whatToDo_Info_12_12"); // Und damit kommt meine erste Aufgabe.
	AI_Output(other, self, "KDF_1403_Rayan_whatToDo_Info_15_13"); // Und die wäre?
	AI_Output(self, other, "KDF_1403_Rayan_whatToDo_Info_12_14"); // In der Bibliothek im Keller ist ein Buch versteckt, welches dem Leser in einem Selbststudium den ersten Kreis der Magie beibringt.
	AI_Output(self, other, "KDF_1403_Rayan_whatToDo_Info_12_15"); // Finde es und lerne!
	AI_Output(self, other, "KDF_1403_Rayan_whatToDo_Info_12_16"); // Weitere Magiekreise kannst du danach bei mir lernen.
	MIS_findBookIce = LOG_RUNNING;
	Log_CreateTopic(TOPIC_findBookIce, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_findBookIce, LOG_RUNNING);
	B_LogEntry(TOPIC_findBookIce, "Rayan hat mir meine erste Aufgabe gegeben. Ich soll in der Bibliothek ein Buch finden, mit welchem ich den ersten Kreis der Magie erlernen kann. Hoffentlich sind da unten nicht noch mehr Dämonen...");
};

// **************************************************

instance KDF_1403_Rayan_foundBook (C_INFO)
{
	npc			= KDF_1403_Rayan;
	condition		= KDF_1403_Rayan_foundBook_Condition;
	information		= KDF_1403_Rayan_foundBook_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich habe das Buch der Magie gefunden!";
};

func int KDF_1403_Rayan_foundBook_Condition()
{
	if ((Npc_KnowsInfo(hero, KDF_1403_Rayan_whatToDo)) && (Npc_HasItems(other, ItWr_Kreis1) >= 1) && (Npc_GetTalentSkill(hero, NPC_TALENT_MAGE) >= 1))
	{
		return TRUE;
	};
};

func void KDF_1403_Rayan_foundBook_Info()
{
	AI_Output(other, self, "KDF_1403_Rayan_foundBook_Info_15_01"); // Ich habe das Buch der Magie gefunden!
	AI_Output(self, other, "KDF_1403_Rayan_foundBook_Info_12_02"); // Und hast du es gelesen?
	AI_Output(other, self, "KDF_1403_Rayan_foundBook_Info_15_03"); // Habe ich. Es war sehr aufschlussreich.
	AI_Output(self, other, "KDF_1403_Rayan_foundBook_Info_12_04"); // Dann gib es mir, damit ich es wieder in die Bibliothek zurück bringen kann. Andere Novizen nach dir werden auch noch danach suchen.
	B_GiveInvItems(other, self, ItWr_Kreis1,  1);
	B_LogEntry(TOPIC_findBookIce, "Ich habe Rayan von meinem Erfolg berichtet und das Buch zurückgebracht.");
	MIS_findBookIce = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_findBookIce, LOG_SUCCESS);
	B_GivePlayerXP(350);
	AI_Output(self, other, "KDF_1403_Rayan_foundBook_Info_12_05"); // Dann bist du nun bereit, deine erste Rune herzustellen.
	AI_Output(self, other, "KDF_1403_Rayan_foundBook_Info_12_06"); // Geh zu Uysal und lerne die Herstellung der Rune "Licht". Sie wird dir in vielen Situationen nützlich sein.
	AI_Output(self, other, "KDF_1403_Rayan_foundBook_Info_12_07"); // Wenn du alle Runen des ersten Kreises verinnerlicht hast, werde ich dich den zweiten Kreis der Magie lehren.
	MIS_buildRunes = LOG_RUNNING;
	Log_CreateTopic(TOPIC_buildRunes, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_buildRunes, LOG_RUNNING);
	Log_AddEntry(TOPIC_buildRunes, "Für meine erste Aufgabe als Novize soll ich eine Rune bauen. Eine Lichtrune. Sie wird nützlich sein, sagt Rayan. Uysal könne mir beibringen, wie ich die Rune herstelle. Da bin ich ja gespannt...");
};

// **************************************************

instance KDF_1403_Rayan_secondCircle (C_INFO)
{
	npc			= KDF_1403_Rayan;
	condition		= KDF_1403_Rayan_secondCircle_Condition;
	information		= KDF_1403_Rayan_secondCircle_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Lehre mich den zweiten Kreis der Magie (10 Lernpunkte)";
};

func int KDF_1403_Rayan_secondCircle_Condition()
{
	if ((Npc_KnowsInfo(hero, KDF_1404_Uysal_gotRune)) && (circle2 == FALSE))
	{
		return TRUE;
	};
};

func void KDF_1403_Rayan_secondCircle_Info()
{
	AI_Output(other, self, "KDF_1403_Rayan_secondCircle_Info_15_01"); // Lehre mich den zweiten Kreis der Magie!
	if (PLAYER_TALENT_RUNES[SPL_Firebolt] == TRUE && PLAYER_TALENT_RUNES[SPL_Zap] == TRUE && PLAYER_TALENT_RUNES[SPL_LightHeal] == TRUE && PLAYER_TALENT_RUNES[SPL_SummonGoblinSkeleton] == TRUE && hero.lp >= 10)
	{
		AI_Output(self, other, "KDF_1403_Rayan_secondCircle_Info_12_02"); // In Ordnung.
		AI_Output(self, other, "KDF_1403_Rayan_secondCircle_Info_12_03"); // Du hast gelernt dich in die Magie einzufühlen.
		AI_Output(self, other, "KDF_1403_Rayan_secondCircle_Info_12_04"); // Die ersten Schritte hast du bereits unternommen, um diese Kraft nach deinem Willen zu formen.
		AI_Output(self, other, "KDF_1403_Rayan_secondCircle_Info_12_05"); // Die nächsten Runen bündeln mächtigere Magie. Es ist schwieriger, den Fokus zu halten.
		AI_Output(self, other, "KDF_1403_Rayan_secondCircle_Info_12_06"); // Daher lehren wir sie nicht jedem. Aber du hast Potenzial.
		AI_Output(self, other, "KDF_1403_Rayan_secondCircle_Info_12_07"); // Jetzt kannst du zu Uysal gehen. Er wird dich weitere Runen zeigen.
		Npc_SetTalentSkill(hero, NPC_TALENT_MAGE, 2);
		PrintS("Gelernt: Zweiter Kreis der Magie!");
		Snd_Play ("LevelUp");
		circle2 = TRUE;
		hero.lp = hero.lp - 10;
	}
	else if (PLAYER_TALENT_RUNES[SPL_Firebolt] == TRUE && PLAYER_TALENT_RUNES[SPL_Zap] == TRUE && PLAYER_TALENT_RUNES[SPL_LightHeal] == TRUE && PLAYER_TALENT_RUNES[SPL_SummonGoblinSkeleton] == TRUE && hero.lp << 10)
	{
		AI_Output(self, other, "KDF_1403_Rayan_secondCircle_Info_12_08"); // Mir scheint, als wärest du nicht erfahren genug.
		AI_Output(self, other, "KDF_1403_Rayan_secondCircle_Info_12_09"); // Komm wieder, wenn du reifer bist!
	}
	else
	{
		AI_Output(self, other, "KDF_1403_Rayan_secondCircle_Info_12_10"); // Nein! Du bist noch nicht gefestigt genug.
		AI_Output(self, other, "KDF_1403_Rayan_secondCircle_Info_12_11"); // Lerne und wir sehen weiter!
	};
};

// **************************************************

instance KDF_1403_Rayan_thirdCircle (C_INFO)
{
	npc			= KDF_1403_Rayan;
	condition		= KDF_1403_Rayan_thirdCircle_Condition;
	information		= KDF_1403_Rayan_thirdCircle_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Lehre mich den dritten Kreis der Magie! (15 Lernpunkte)";
};

func int KDF_1403_Rayan_thirdCircle_Condition()
{
	if ((Npc_KnowsInfo(hero, KDF_1403_Rayan_secondCircle)) && (Npc_GetTalentSkill(hero, NPC_TALENT_MAGE) == 2))
	{
		return TRUE;
	};
};

func void KDF_1403_Rayan_thirdCircle_Info()
{
	AI_Output(other, self, "KDF_1403_Rayan_thirdCircle_Info_15_01"); // Lehre mich den dritten Kreis der Magie!
	if (kapitel << 3 || Npc_GetTrueGuild(hero) != GIL_KDF)
	{
		AI_Output(self, other, "KDF_1403_Rayan_thirdCircle_Info_12_02"); // Nein! Du hast zwar Potenzial, aber in die höheren Kreise der Magie führen wir nur vollwertige Magier ein.
		AI_Output(self, other, "KDF_1403_Rayan_thirdCircle_Info_12_03"); // Trainiere weiter und wir werden dir vielleicht die Chance geben.
	}
	else if (kapitel >= 3 && Npc_GetTrueGuild(hero) == GIL_KDF && hero.lp >= 15)
	{
		AI_Output(self, other, "KDF_1403_Rayan_thirdCircle_Info_12_04"); // In Ordnung. Du kennst nun bereits die Grundlagen der Magie.
		AI_Output(self, other, "KDF_1403_Rayan_thirdCircle_Info_12_05"); // Doch die wirklich  mächtigen Zauber liegen noch vor dir.
		AI_Output(self, other, "KDF_1403_Rayan_thirdCircle_Info_12_06"); // Du wirst die Möglichkeit bekommen, auf Magie zurückzugreifen, die ohne große Anstrengung vielen Menschen großes Leid zufügen kann.
		AI_Output(self, other, "KDF_1403_Rayan_thirdCircle_Info_12_07"); // Du hast dich bewiesen. Ich schätze, wir können dir diese Macht gewähren.
		AI_Output(self, other, "KDF_1403_Rayan_thirdCircle_Info_12_08"); // Du wirst bemerken, dass die neuen Runen weitaus schwieriger zu fokussieren sind. Du wirst deine ganze Konzentration benötigen.
		AI_Output(self, other, "KDF_1403_Rayan_thirdCircle_Info_12_09"); // Aber dafür wirst du auch belohnt.
		AI_Output(self, other, "KDF_1403_Rayan_thirdCircle_Info_12_10"); // Jetzt geh hin und lerne! Uysal wird dir erklären, wie du die nächsten Runen herstellen kannst.
		Npc_SetTalentSkill(hero, NPC_TALENT_MAGE, 3);
		PrintS("Gelernt: Dritter Kreis der Magie!");
		Snd_Play ("LevelUp");
		circle2 = TRUE;
		hero.lp = hero.lp - 15;
	}
	else if (kapitel >= 3 && Npc_GetTrueGuild(hero) == GIL_KDF && hero.lp << 15)
	{
		AI_Output(self, other, "KDF_1403_Rayan_thirdCircle_Info_12_11"); // Du kennst bereits die Grundlagen. Aber mir scheint, du hast dein Wissen noch nicht genug gefestigt.
		AI_Output(self, other, "KDF_1403_Rayan_thirdCircle_Info_12_12"); // Komm wieder, wenn du mehr Erfahrung hast!
	};
};
