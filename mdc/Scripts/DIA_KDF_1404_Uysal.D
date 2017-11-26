// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!


// **************************************************

instance KDF_1404_Uysal_Exit (C_INFO)
{
	npc			= KDF_1404_Uysal;
	condition		= KDF_1404_Uysal_Exit_Condition;
	information		= KDF_1404_Uysal_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int KDF_1404_Uysal_Exit_Condition()
{
	return TRUE;
};

func void KDF_1404_Uysal_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance KDF_1404_Uysal_greetingsMage (C_INFO)
{
	npc			= KDF_1404_Uysal;
	condition		= KDF_1404_Uysal_greetingsMage_Condition;
	information		= KDF_1404_Uysal_greetingsMage_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich grüße euch, hoher Magier!";
};

func int KDF_1404_Uysal_greetingsMage_Condition()
{
	return TRUE;
};

func void KDF_1404_Uysal_greetingsMage_Info()
{
	AI_Output(other, self, "KDF_1404_Uysal_greetingsMage_Info_15_01"); // Ich grüße euch, hoher Magier!
	AI_Output(self, other, "KDF_1404_Uysal_greetingsMage_Info_01_02"); // Sei gegrüßt. Du musst der neue Anwärter sein.
};

// **************************************************

instance KDF_1404_Uysal_testMe (C_INFO)
{
	npc			= KDF_1404_Uysal;
	condition		= KDF_1404_Uysal_testMe_Condition;
	information		= KDF_1404_Uysal_testMe_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Stellt mich auf die Probe!";
};

func int KDF_1404_Uysal_testMe_Condition()
{
	if ((Npc_KnowsInfo(hero, KDF_1404_Uysal_greetingsMage)) && (Npc_KnowsInfo(hero, KDF_1403_Rayan_gotLetter)))
	{
		return TRUE;
	};
};

func void KDF_1404_Uysal_testMe_Info()
{
	AI_Output(other, self, "KDF_1404_Uysal_testMe_Info_15_01"); // Stellt mich auf die Probe!
	AI_Output(self, other, "KDF_1404_Uysal_testMe_Info_01_02"); // Schickt Rayan dich?
	AI_Output(other, self, "KDF_1404_Uysal_testMe_Info_15_03"); // Ja, er sagt, Ihr sollt mich prüfen.
	AI_Output(self, other, "KDF_1404_Uysal_testMe_Info_01_04"); // In Ordnung. Deine Prüfung ist bereits vorbereitet.
	AI_Output(other, self, "KDF_1404_Uysal_testMe_Info_15_05"); // So schnell?
	AI_Output(self, other, "KDF_1404_Uysal_testMe_Info_01_06"); // Sie ist schon länger vorbereitet.
	AI_Output(self, other, "KDF_1404_Uysal_testMe_Info_01_07"); // Wie du vielleicht weißt, haben wir einige Probleme mit einer anderen Magiergruppierung auf der Insel.
	AI_Output(self, other, "KDF_1404_Uysal_testMe_Info_01_08"); // Die Schwarzmagier machen uns immer wieder das Leben schwer.
	AI_Output(self, other, "KDF_1404_Uysal_testMe_Info_01_09"); // Zwar greifen sie nicht direkt an, doch sorgen sie immer wieder dafür, dass unser Ordensleben gestört wird.
	AI_Output(self, other, "KDF_1404_Uysal_testMe_Info_01_10"); // Meistens sind es Kleinigkeiten. Schafe die krank werden, oder Vorräte die vermodern. Ab und an wurde unser Trinkwasser ungenießbar.
	AI_Output(self, other, "KDF_1404_Uysal_testMe_Info_01_11"); // Das haben wir alles in den Griff bekommen.
	AI_Output(self, other, "KDF_1404_Uysal_testMe_Info_01_12"); // Jetzt sind aber weitere Probleme aufgetaucht. Eine kleine Gruppe Schwarzmagier hat es geschafft, eine Gruppe Untote in unserem Keller zu beschwören.
	AI_Output(self, other, "KDF_1404_Uysal_testMe_Info_01_13"); // Da wir den Teil des Kellers derzeit nicht benötigen, haben wir die Türe verschlossen. Interessanterweise lassen sich die Untoten dadurch aufhalten.
	AI_Output(self, other, "KDF_1404_Uysal_testMe_Info_01_14"); // Aber sie sind immer noch im Keller und ich muss zugeben, ich habe kein gutes Gefühl dabei.
	AI_Output(self, other, "KDF_1404_Uysal_testMe_Info_01_15"); // Daher stelle ich dir nun deine Prüfung:
	AI_Output(self, other, "KDF_1404_Uysal_testMe_Info_01_16"); // Geh hin und vernichte die Kreaturen der Dunkelheit!
	AI_Output(self, other, "KDF_1404_Uysal_testMe_Info_01_17"); // Du bekommst von mir den Schlüssel, sowie einige Spruchrollen. Dazu noch ein paar Manatränke.
	AI_Output(self, other, "KDF_1404_Uysal_testMe_Info_01_18"); // Außerdem werde ich einen Stärkungszauber auf dich wirken, damit deine magische Kraft für kurze Zeit gestärkt wird.
	AI_Output(self, other, "KDF_1404_Uysal_testMe_Info_01_19"); // Wenn du immer noch bereit bist uns beizutreten und deine Prüfung abzulegen, so sprich wieder mit mir.
	MIS_iceTest = LOG_RUNNING;
	Log_CreateTopic(TOPIC_iceTest, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_iceTest, LOG_RUNNING);
	B_LogEntry(TOPIC_iceTest, "Uysal, einer der Magier des Hohen Rates im Kloster der Eismagier hat mir eine Prüfung gestellt. Wenn ich sie bestehe, kann ich als Novize im Orden aufgenommen werden. Um mich zu beweisen, soll ich einige Untote vernichten, welche im Keller des Klosters beschworen wurden. Dazu werde ich von ihm mit Spruchrollen, Manatränken und einem Stärkungszauber ausgestattet.");
};

// **************************************************

instance KDF_1404_Uysal_goOn (C_INFO)
{
	npc			= KDF_1404_Uysal;
	condition		= KDF_1404_Uysal_goOn_Condition;
	information		= KDF_1404_Uysal_goOn_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich bin bereit für meine Prüfung!";
};

func int KDF_1404_Uysal_goOn_Condition()
{
	if (Npc_KnowsInfo(hero, KDF_1404_Uysal_testMe))
	{
		return TRUE;
	};
};

func void KDF_1404_Uysal_goOn_Info()
{
	AI_Output(other, self, "KDF_1404_Uysal_goOn_Info_15_01"); // Ich bin bereit für meine Prüfung!
	AI_Output(self, other, "KDF_1404_Uysal_goOn_Info_01_02"); // In Ordnung. Hier ist als erstes der Schlüssel zum Keller.
	CreateInvItems(self, ItKe_KlosterSchatz,  1);
	B_GiveInvItems(self, other, ItKe_KlosterSchatz,  1);
	AI_Output(self, other, "KDF_1404_Uysal_goOn_Info_01_03"); // Der Raum befindet sich, wenn du die Treppen heruntergehst und dich rechts hälst, auf der rechten Seite.
	AI_Output(self, other, "KDF_1404_Uysal_goOn_Info_01_04"); // Und hier sind deine Spruchrollen. Setze sie weise ein!
	CreateInvItems(self, ItSc_Windfist,  2);
	B_GiveInvItems(self, other, ItSc_Windfist,  2);
	CreateInvItems(self, ItSc_Zap,  2);
	B_GiveInvItems(self, other, ItSc_Zap,  2);
	CreateInvItems(self, ItSc_LightningFlash, 1);
	B_GiveInvItems(self, other, ItSc_LightningFlash, 1);
	CreateInvItems(self, ItSc_ChargeFireball, 1);
	B_GiveInvItems(self, other, ItSc_ChargeFireball, 1);
	CreateInvItems(self, ItSc_HarmUndead, 1);
	B_GiveInvItems(self, other, ItSc_HarmUndead, 1);
	AI_Output(self, other, "KDF_1404_Uysal_goOn_Info_01_05"); // Und deine Manatränke!
	CreateInvItems(self, ItPo_Mana_01,  4);
	B_GiveInvItems(self, other, ItPo_Mana_01,  4);
	AI_Output(self, other, "KDF_1404_Uysal_goOn_Info_01_06"); // Und nun werde ich dich stärken!
	AI_TurnToNpc(self, hero);
	AI_PlayAni(self, "T_PRACTICEMAGIC2");
	AI_TurnToNpc(self, hero);
	AI_Function(self, playBuffAni_Mana);
	Buff_Apply(hero, maxManaBuff);
	AI_StandUp(self);
	AI_Output(self, other, "KDF_1404_Uysal_goOn_Info_01_07"); // Du bist nun bereit. Gehe hin und befreie uns vom Übel der Untoten!
	B_LogEntry(TOPIC_iceTest, "Ich bin bereit! Töten wir diese Untoten!");
};

// **************************************************

instance KDF_1404_Uysal_gotThem (C_INFO)
{
	npc			= KDF_1404_Uysal;
	condition		= KDF_1404_Uysal_gotThem_Condition;
	information		= KDF_1404_Uysal_gotThem_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich habe die Dämonen zur Strecke gebracht!";
};

func int KDF_1404_Uysal_gotThem_Condition()
{
	if (Npc_IsDead(Monastery_Zombie))
	{
		return TRUE;
	};
};

func void KDF_1404_Uysal_gotThem_Info()
{
	AI_Output(other, self, "KDF_1404_Uysal_gotThem_Info_15_01"); // Ich habe die Dämonen zur Strecke gebracht!
	AI_Output(self, other, "KDF_1404_Uysal_gotThem_Info_01_02"); // Ja, ich spüre, dass eine Last von mir abgefallen ist.
	AI_Output(self, other, "KDF_1404_Uysal_gotThem_Info_01_03"); // Ich merke gerade, wie sehr mir die reine Anwesenheit dieser Kreaturen zugesetzt hat.
	AI_Output(self, other, "KDF_1404_Uysal_gotThem_Info_01_04"); // Wie auch immer, ich bin stolz auf dich!
	AI_Output(self, other, "KDF_1404_Uysal_gotThem_Info_01_05"); // Von meiner Seite aus gibt es nichts, dass dagegen spricht, dass du uns beitrittst. Sprich aber zuerst noch mit Ulian.
	AI_Output(self, other, "KDF_1404_Uysal_gotThem_Info_01_06"); // Wenn er keine Einwände hat, sprich mit Rayan. Er wird dich in den Orden aufnehmen.
	AI_Output(self, other, "KDF_1404_Uysal_gotThem_Info_01_07"); // Meine Glückwünsche, Novize!
	MIS_iceTest = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_iceTest, LOG_SUCCESS);
	B_LogEntry(TOPIC_iceTest, "Ich habe die Dämonen im Kloster getötet. Uysal ist bereit, mich in den Orden aufzunehmen, solange Ulian keine Einwände hat.");
	B_GivePlayerXP(450);
};

// **************************************************

instance KDF_1404_Uysal_teachRune (C_INFO)
{
	npc			= KDF_1404_Uysal;
	condition		= KDF_1404_Uysal_teachRune_Condition;
	information		= KDF_1404_Uysal_teachRune_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Rayan sagte, du könntest mir etwas beibringen!";
};

func int KDF_1404_Uysal_teachRune_Condition()
{
	if (Npc_KnowsInfo(hero, KDF_1403_Rayan_foundBook))
	{
		return TRUE;
	};
};

func void KDF_1404_Uysal_teachRune_Info()
{
	AI_Output(other, self, "KDF_1404_Uysal_teachRune_Info_15_01"); // Rayan sagte, du könntest mir etwas beibringen!
	AI_Output(self, other, "KDF_1404_Uysal_teachRune_Info_01_02"); // Dann hast du also den ersten Kreis der Magie verinnerlicht?
	AI_Output(other, self, "KDF_1404_Uysal_teachRune_Info_15_03"); // Habe ich.
	AI_Output(self, other, "KDF_1404_Uysal_teachRune_Info_01_04"); // In Ordnung. Ich werde dir beibringen, wie du Runen herstellst. Wir fangen mit einer einfachen Rune an.
	AI_Output(self, other, "KDF_1404_Uysal_teachRune_Info_01_05"); // Wir fangen mit der Lichtrune an.
	AI_Output(self, other, "KDF_1404_Uysal_teachRune_Info_01_06"); // Für diese einfache, aber sehr nützliche Rune brauchst du, außer einem Runenstein, noch eine passende Spruchrolle und fünf Goldmünzen.
	AI_Output(other, self, "KDF_1404_Uysal_teachRune_Info_15_07"); // Goldmünzen?
	AI_Output(self, other, "KDF_1404_Uysal_teachRune_Info_01_08"); // Ganz richtig! Gold ist nichts anderes, als mithilfe natürlicher Magie verdichtetes Licht.
	AI_Output(self, other, "KDF_1404_Uysal_teachRune_Info_01_09"); // Und durch Magie kann die Energie des Lichts wieder freigegeben und im Runenstein gebündelt werden.
	AI_Output(self, other, "KDF_1404_Uysal_teachRune_Info_01_10"); // Und natürlich benötigst du die passende Spruchrolle. Sie wird die Energie der Magie verdichten und auf den Stein übertragen.
	AI_Output(self, other, "KDF_1404_Uysal_teachRune_Info_01_11"); // Sprich mit Kelsava. Er kann dir einen Runenstein geben und dir die praktische Anwendung näher bringen.
	B_LogEntry(TOPIC_buildRunes, "Uysal kann mir beibringen, wie ich Runen herstelle. Zuerst hat er mir erklärt, was ich für eine Lichtrune brauche. Kelsava kann mir erklären, wie ich diese Rune herstelle und kann mir einen Runenstein geben.");
	PLAYER_TALENT_RUNES[SPL_LIGHT] = TRUE;
	Log_CreateTopic(TOPIC_runes, LOG_NOTE);
	Log_AddEntry(TOPIC_runes, "Rune 'Licht': 5 Goldmünzen (Kreis 1)");
};

// **************************************************

instance KDF_1404_Uysal_gotRune (C_INFO)
{
	npc			= KDF_1404_Uysal;
	condition		= KDF_1404_Uysal_gotRune_Condition;
	information		= KDF_1404_Uysal_gotRune_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich habe die Rune hergestellt!";
};

func int KDF_1404_Uysal_gotRune_Condition()
{
	if (Npc_HasItems(other, ItRu_Light) >= 1)
	{
		return TRUE;
	};
};

func void KDF_1404_Uysal_gotRune_Info()
{
	AI_Output(other, self, "KDF_1404_Uysal_gotRune_Info_15_01"); // Ich habe die Rune hergestellt!
	AI_Output(self, other, "KDF_1404_Uysal_gotRune_Info_01_02"); // Sehr gut! Dann scheinst du die Grundlagen der Runenherstellung gelernt zu haben.
	AI_Output(self, other, "KDF_1404_Uysal_gotRune_Info_01_03"); // Ab sofort werde ich dir die weiteren Runen beibringen.
	AI_Output(self, other, "KDF_1404_Uysal_gotRune_Info_01_04"); // Wenn du alle gelernt hast, wird Rayan dich den nächsten Kreis der Magie lehren!
	Log_CreateTopic(TOPIC_buildRunes, LOG_NOTE);
	B_LogEntry(TOPIC_buildRunes, "Uysal war zufrieden mit mir und wird mir jetzt die weiteren Runen des ersten Kreises beibringen.");
	MIS_buildRunes = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_buildRunes, LOG_SUCCESS);
	B_GivePlayerXP(350);
};
