// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da �nderungen beim erneuten Aufruf
// des Creators �berschrieben werden!

var int canBecomeSld;
var int jareckStressedOut;

// **************************************************

instance SLD_700_Jareck_Exit (C_INFO)
{
	npc			= SLD_700_Jareck;
	condition		= SLD_700_Jareck_Exit_Condition;
	information		= SLD_700_Jareck_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int SLD_700_Jareck_Exit_Condition()
{
	return TRUE;
};

func void SLD_700_Jareck_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance SLD_700_Jareck_youMerc (C_INFO)
{
	npc			= SLD_700_Jareck;
	condition		= SLD_700_Jareck_youMerc_Condition;
	information		= SLD_700_Jareck_youMerc_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Bist du Jareck?";
};

func int SLD_700_Jareck_youMerc_Condition()
{
	return TRUE;
};

func void SLD_700_Jareck_youMerc_Info()
{
	AI_Output(other, self, "SLD_700_Jareck_youMerc_Info_15_01"); // Bist du Jareck?
	AI_Output(self, other, "SLD_700_Jareck_youMerc_Info_04_02"); // Kommt darauf an... Wer will das wissen?
	AI_Output(other, self, "SLD_700_Jareck_youMerc_Info_15_03"); // Ich bin...
	AI_Output(self, other, "SLD_700_Jareck_youMerc_Info_04_04"); // Ach wei�t du, ist mir eigentlich auch egal.
	AI_Output(self, other, "SLD_700_Jareck_youMerc_Info_04_05"); // Ja, ich bin Jareck, Anf�hrer der S�ldner auf diesem g�tterverdammten Hof.
	AI_Output(self, other, "SLD_700_Jareck_youMerc_Info_04_06"); // Was willst du?
};

// **************************************************

instance SLD_700_Jareck_wannaJoin (C_INFO)
{
	npc			= SLD_700_Jareck;
	condition		= SLD_700_Jareck_wannaJoin_Condition;
	information		= SLD_700_Jareck_wannaJoin_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich will bei euch mitmachen!";
};

func int SLD_700_Jareck_wannaJoin_Condition()
{
	if (Npc_KnowsInfo(hero, SLD_700_Jareck_youMerc))
	{
		return TRUE;
	};
};

func void SLD_700_Jareck_wannaJoin_Info()
{
	AI_Output(other, self, "SLD_700_Jareck_wannaJoin_Info_15_01"); // Ich will bei euch mitmachen!
	AI_Output(self, other, "SLD_700_Jareck_wannaJoin_Info_04_02"); // Mitmachen, soso (lacht)
	AI_Output(self, other, "SLD_700_Jareck_wannaJoin_Info_04_03"); // Bei uns wird nicht einfach "mitgemacht", Kleiner.
	AI_Output(self, other, "SLD_700_Jareck_wannaJoin_Info_04_04"); // Das Leben als S�ldner ist harte Arbeit, gef�hrlich und nicht selten k�rzer als du denkst.
	AI_Output(self, other, "SLD_700_Jareck_wannaJoin_Info_04_05"); // Wei�t du �berhaupt, worauf du dich einl�sst?
	Info_ClearChoices(SLD_700_Jareck_wannaJoin);
	Info_AddChoice(SLD_700_Jareck_wannaJoin, "Ich dachte, S�ldner sitzen den ganzen Tag am Lagerfeuer und singen Liedchen.", SLD_700_Jareck_wannaJoin_thoughtCampfire);
	Info_AddChoice(SLD_700_Jareck_wannaJoin, "Ich dachte, ihr schaukelt den ganzen Tag eure Eier.", SLD_700_Jareck_wannaJoin_thougtDanglingEggs);
	Info_AddChoice(SLD_700_Jareck_wannaJoin, "Erst dachte ich an strahlende R�stungen, aber jetzt sehe ich, dass ihr doch ziemlich cool seid.", SLD_700_Jareck_wannaJoin_thoughtShinyClothes);
};

func void SLD_700_Jareck_wannaJoin_thoughtCampfire()
{
	AI_Output(other, self, "SLD_700_Jareck_wannaJoin_thoughtCampfire_15_01"); // Ich dachte, S�ldner sitzen den ganzen Tag am Lagerfeuer und singen Liedchen.
	AI_Output(self, other, "SLD_700_Jareck_wannaJoin_thoughtCampfire_04_02"); // Sag mal, willst du mich verarschen?
	AI_Output(self, other, "SLD_700_Jareck_wannaJoin_thoughtCampfire_04_03"); // So einen Kuschelkurs kannst du vielleicht bei der Stadtwache erwarten.
	AI_Output(self, other, "SLD_700_Jareck_wannaJoin_thoughtCampfire_04_04"); // Aber nicht hier bei uns! Vergiss es.
	AI_Output(self, other, "SLD_700_Jareck_wannaJoin_thoughtCampfire_04_05"); // So einer wie du wird niemals S�ldner!
	B_LogEntry(TOPIC_newLife, "Die Aufnahme bei den S�ldnern habe ich wohl verbockt. Na gut, dann werde ich wohl wo anders anheuern m�ssen.");
	jareckStressedOut = TRUE;
	Info_ClearChoices(SLD_700_Jareck_wannaJoin);
};

func void SLD_700_Jareck_wannaJoin_thougtDanglingEggs()
{
	AI_Output(other, self, "SLD_700_Jareck_wannaJoin_thougtDanglingEggs_15_01"); // Ich dachte, ihr schaukelt den ganzen Tag eure Eier.
	AI_Output(self, other, "SLD_700_Jareck_wannaJoin_thougtDanglingEggs_04_02"); // (lacht) Haha, das ist k�stlich.
	AI_Output(self, other, "SLD_700_Jareck_wannaJoin_thougtDanglingEggs_04_03"); // Normalerweise w�rde man so etwas beim B�rgermeister und seinen 'Mitarbeitern' erwarten.
	AI_Output(self, other, "SLD_700_Jareck_wannaJoin_thougtDanglingEggs_04_04"); // Aber...
	AI_Output(self, other, "SLD_700_Jareck_wannaJoin_thougtDanglingEggs_04_05"); // Naja, ein wenig sieht es schon so aus, da hast du recht.
	AI_Output(self, other, "SLD_700_Jareck_wannaJoin_thougtDanglingEggs_04_06"); // Gut, wenn es dir ernst ist, f�hre einen Auftrag f�r mich aus und du bist dabei.
	B_LogEntry(TOPIC_newLife, "Jareck, der Anf�hrer der S�ldner scheint mir nicht abgeneigt zu sein. Ich soll f�r ihn arbeiten, dann nimmt er mich vielleicht bei den S�ldnern auf.");
	Info_ClearChoices(SLD_700_Jareck_wannaJoin);
};

func void SLD_700_Jareck_wannaJoin_thoughtShinyClothes()
{
	AI_Output(other, self, "SLD_700_Jareck_wannaJoin_thoughtShinyClothes_15_01"); // Erst dachte ich an strahlende R�stungen, aber jetzt sehe ich, dass ihr doch ziemlich cool seid.
	AI_Output(self, other, "SLD_700_Jareck_wannaJoin_thoughtShinyClothes_04_02"); // Hey, meine R�stung ist doch...
	AI_Output(self, other, "SLD_700_Jareck_wannaJoin_thoughtShinyClothes_04_03"); // Ach, schon gut. (grinst)
	AI_Output(self, other, "SLD_700_Jareck_wannaJoin_thoughtShinyClothes_04_04"); // Du hast Recht. Die R�stung bleibt nicht lange sauber. Das hei�t aber nichts, denn nur eine schmutzige R�stung ist eine gebraucht R�stung.
	AI_Output(self, other, "SLD_700_Jareck_wannaJoin_thoughtShinyClothes_04_05"); // Dein Humor gef�llt mir. Arbeite ein wenig f�r mich, dann sehen wir weiter.
	B_LogEntry(TOPIC_newLife, "Jareck, der Anf�hrer der S�ldner scheint mir nicht abgeneigt zu sein. Ich soll f�r ihn arbeiten, dann nimmt er mich vielleicht bei den S�ldnern auf.");
	Info_ClearChoices(SLD_700_Jareck_wannaJoin);
};

// **************************************************

instance SLD_700_Jareck_whatToDo (C_INFO)
{
	npc			= SLD_700_Jareck;
	condition		= SLD_700_Jareck_whatToDo_Condition;
	information		= SLD_700_Jareck_whatToDo_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was soll ich f�r dich tun?";
};

func int SLD_700_Jareck_whatToDo_Condition()
{
	if ((Npc_KnowsInfo(hero, SLD_700_Jareck_wannaJoin)) && (jareckStressedOut == FALSE))
	{
		return TRUE;
	};
};

func void SLD_700_Jareck_whatToDo_Info()
{
	AI_Output(other, self, "SLD_700_Jareck_whatToDo_Info_15_01"); // Was soll ich f�r dich tun?
	AI_Output(self, other, "SLD_700_Jareck_whatToDo_Info_04_02"); // Die Sache ist etwas heikel.
	AI_Output(other, self, "SLD_700_Jareck_whatToDo_Info_15_03"); // Heikel klingt spannender als einfach.
	AI_Output(self, other, "SLD_700_Jareck_whatToDo_Info_04_04"); // Das ist die richtige Einstellung!
	AI_Output(self, other, "SLD_700_Jareck_whatToDo_Info_04_05"); // Gut, h�r mir zu! Auch wenn das jetzt vielleicht merkw�rdig klingt, als S�ldner brauchst du nicht nur Muskeln, sondern auch K�pfchen.
	AI_Output(self, other, "SLD_700_Jareck_whatToDo_Info_04_06"); // Schau dich aber besser nicht zu sehr bei den Jungs um. Es gab eine Zeit, da war ich nicht sehr w�hlerisch.
	AI_Output(self, other, "SLD_700_Jareck_whatToDo_Info_04_07"); // Wie auch immer. Wir haben in der Stadt einen Informanten.
	AI_Output(self, other, "SLD_700_Jareck_whatToDo_Info_04_08"); // Er gibt uns Hinweise, wenn die Stadtwache �berf�lle, oder wie sie es nennen, "Befreiungsaktionen" plant.
	AI_Output(self, other, "SLD_700_Jareck_whatToDo_Info_04_09"); // Er ist etwas �berf�llig mit seinem Bericht. Das hat aber nichts zu bedeuten, schlie�lich kann er nicht einfach zu uns marschieren.
	AI_Output(self, other, "SLD_700_Jareck_whatToDo_Info_04_10"); // Und da kommst du ins Spiel. Geh in die Stadt und finde ihn. Bring mir den Bericht und dann werde ich mir �berlegen, was ich mit dir anfange.
	MIS_newInfos = LOG_RUNNING;
	Log_CreateTopic(TOPIC_newInfos, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_newInfos, LOG_RUNNING);
	B_LogEntry(TOPIC_newInfos, "Jareck hat mir eine Aufgabe gegeben, mit der ich K�pfchen beweisen soll. Die S�ldner haben einen Informanten bei der Stadtwache. Scheinbar konnte er noch nicht unbemerkt aus der Stadt verschwinden, da sein Bericht �berf�llig ist. Ich soll nun jenen Bericht f�r Jareck abholen.");
};

// **************************************************

instance SLD_700_Jareck_whyKopf (C_INFO)
{
	npc			= SLD_700_Jareck;
	condition		= SLD_700_Jareck_whyKopf_Condition;
	information		= SLD_700_Jareck_whyKopf_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wer ist euer Informant?";
};

func int SLD_700_Jareck_whyKopf_Condition()
{
	if (Npc_KnowsInfo(hero, SLD_700_Jareck_whatToDo))
	{
		return TRUE;
	};
};

func void SLD_700_Jareck_whyKopf_Info()
{
	AI_Output(other, self, "SLD_700_Jareck_whyKopf_Info_15_01"); // Wer ist euer Informant?
	AI_Output(self, other, "SLD_700_Jareck_whyKopf_Info_04_02"); // Und genau da kommt die Sache mit dem K�pfchen.
	AI_Output(self, other, "SLD_700_Jareck_whyKopf_Info_04_03"); // Ich kenne dich nicht. Zwar bist du mir sympathischer als der gr��te Teil der Menschen auf dieser Insel, aber trotzdem...
	AI_Output(self, other, "SLD_700_Jareck_whyKopf_Info_04_04"); // Ich werde dir nicht sagen, wer der Informant ist. Aber ich und die anderen S�ldner werden dir Hinweise geben.
	AI_Output(self, other, "SLD_700_Jareck_whyKopf_Info_04_05"); // Wenn es dir wichtig ist, bei uns aufgenommen zu werden, dann denk nach und kombiniere klug.
	AI_Output(self, other, "SLD_700_Jareck_whyKopf_Info_04_06"); // Wenn du gut bist, wirst du herausfinden, wer der Spitzel ist.
	FF_Apply(countRoses);
	B_LogEntry(TOPIC_newInfos, "Jareck wird mir allerdings nicht sagen, wer der Informant ist. Verst�ndlich, schlie�lich bin ich neu und er wei� nicht, ob er mir vertrauen kann. Er und die anderen S�ldner werden mir Hinweise geben, herausfinden, wer der Spitzel ist, muss ich selber.");
};

// **************************************************

instance SLD_700_Jareck_yourHint (C_INFO)
{
	npc			= SLD_700_Jareck;
	condition		= SLD_700_Jareck_yourHint_Condition;
	information		= SLD_700_Jareck_yourHint_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Welchen Hinweis kannst du mir geben?";
};

func int SLD_700_Jareck_yourHint_Condition()
{
	if (Npc_KnowsInfo(hero, SLD_700_Jareck_whyKopf))
	{
		return TRUE;
	};
};

func void SLD_700_Jareck_yourHint_Info()
{
	AI_Output(other, self, "SLD_700_Jareck_yourHint_Info_15_01"); // Welchen Hinweis kannst du mir geben?
	AI_Output(self, other, "SLD_700_Jareck_yourHint_Info_04_02"); // Unser Informant ist bei der Stadtwache t�tig, aber das war dir vermutlich klar.
	AI_Output(self, other, "SLD_700_Jareck_yourHint_Info_04_03"); // Er bekleidet keine sehr hohe Position, bekommt aber doch vieles mit, was geplant ist.
	var int s; s = SB_New();
	hintcounter += 1;
	SB("Hinweise: ");
	SBi(hintCounter);
	SB("/4");
	AI_PrintS(self, SB_ToString());
	SB_Destroy();
	B_LogEntry(TOPIC_newInfos, "Jareck hab mir den Hinweis, dass der Informant keine hohe Position bekleidet, aber trotzdem vieles mitbekommt.");
	AI_Output(other, self, "SLD_700_Jareck_yourHint_Info_15_04"); // Das ist ja irgendwie... nichtssagend.
	AI_Output(self, other, "SLD_700_Jareck_yourHint_Info_04_05"); // Erst in der F�lle erschlei�en sich die Informationen.
	AI_Output(self, other, "SLD_700_Jareck_yourHint_Info_04_06"); // Geh und sprich mit den anderen S�ldnern. Sie werden dir weitere Hinweise geben.
};

// **************************************************

instance SLD_700_Jareck_canIJoin (C_INFO)
{
	npc			= SLD_700_Jareck;
	condition		= SLD_700_Jareck_canIJoin_Condition;
	information		= SLD_700_Jareck_canIJoin_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kann ich jetzt bei euch mitmachen?";
};

func int SLD_700_Jareck_canIJoin_Condition()
{
	if ((Npc_KnowsInfo(hero, SLD_700_Jareck_wannaJoin)) && (jareckStressedOut == TRUE))
	{
		return TRUE;
	};
};

func void SLD_700_Jareck_canIJoin_Info()
{
	AI_Output(other, self, "SLD_700_Jareck_canIJoin_Info_15_01"); // Kann ich jetzt bei euch mitmachen?
	AI_Output(self, other, "SLD_700_Jareck_canIJoin_Info_04_02"); // Hab ich mich unklar ausgedr�ckt?
	AI_Output(self, other, "SLD_700_Jareck_canIJoin_Info_04_03"); // Vergiss es!
	AI_Output(self, other, "SLD_700_Jareck_canIJoin_Info_04_04"); // Geh und setz dich zu den anderen Bauern ans Lagerfeuer, da kannst du deine Liedchen singen!
};

// **************************************************

instance SLD_700_Jareck_youFailed (C_INFO)
{
	npc			= SLD_700_Jareck;
	condition		= SLD_700_Jareck_youFailed_Condition;
	information		= SLD_700_Jareck_youFailed_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int SLD_700_Jareck_youFailed_Condition()
{
	if (MIS_newLife == LOG_FAILED)
	{
		return TRUE;
	};
};

func void SLD_700_Jareck_youFailed_Info()
{
	AI_Output(self, other, "SLD_700_Jareck_youFailed_Info_04_01"); // Du Idiot! Musstest du in der ganzen Stadt jeden Mann mit einer Waffe fragen?
	AI_Output(other, self, "SLD_700_Jareck_youFailed_Info_15_02"); // Ich...
	AI_Output(self, other, "SLD_700_Jareck_youFailed_Info_04_03"); // Genau, Du! DU hast es vermasselt! Unser Informant musste aus der Stadt fliehen.
	AI_Output(other, self, "SLD_700_Jareck_youFailed_Info_15_04"); // Aber...
	AI_Output(self, other, "SLD_700_Jareck_youFailed_Info_04_05"); // Kein Aber! Du wirst garantiert kein Mitglied der S�ldner!
	AI_Output(self, other, "SLD_700_Jareck_youFailed_Info_04_06"); // Nur �ber meine Leiche!
	Info_ClearChoices(SLD_700_Jareck_youFailed);
	Info_AddChoice(SLD_700_Jareck_youFailed, "Das l�sst sich einrichten...", SLD_700_Jareck_youFailed_gotIt);
	Info_AddChoice(SLD_700_Jareck_youFailed, "(Nichts sagen)", SLD_700_Jareck_youFailed_sayNothing);
};

func void SLD_700_Jareck_youFailed_gotIt()
{
	AI_Output(other, self, "SLD_700_Jareck_youFailed_gotIt_15_01"); // Das l�sst sich einrichten...
	AI_Output(self, other, "SLD_700_Jareck_youFailed_gotIt_04_02"); // Ach, auch noch frech werden?
	AI_Output(self, other, "SLD_700_Jareck_youFailed_gotIt_04_03"); // Na, warte Freundchen...
	FF_Remove(countRoses);
	B_Attack (self, other, AR_KILL, 0);
	Info_ClearChoices(SLD_700_Jareck_youFailed);
};

func void SLD_700_Jareck_youFailed_sayNothing()
{
	AI_StopProcessInfos(self);
	Info_ClearChoices(SLD_700_Jareck_youFailed);
};

// **************************************************

instance SLD_700_Jareck_gotInfos (C_INFO)
{
	npc			= SLD_700_Jareck;
	condition		= SLD_700_Jareck_gotInfos_Condition;
	information		= SLD_700_Jareck_gotInfos_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich bringe Infos von Marco!";
};

func int SLD_700_Jareck_gotInfos_Condition()
{
	if (Npc_KnowsInfo(hero, MIL_2104_Marco_getInfos))
	{
		return TRUE;
	};
};

func void SLD_700_Jareck_gotInfos_Info()
{
	AI_Output(other, self, "SLD_700_Jareck_gotInfos_Info_15_01"); // Ich bringe Infos von Marco!
	AI_Output(self, other, "SLD_700_Jareck_gotInfos_Info_04_02"); // Sehr gut. Du hast unseren Informanten also gefunden.
	AI_Output(self, other, "SLD_700_Jareck_gotInfos_Info_04_03"); // Du scheinst was zu taugen... Was sagt er?
	AI_Output(other, self, "SLD_700_Jareck_gotInfos_Info_15_04"); // Ihr sollt euch vorbereiten! Die Stadtwache r�stet auf und zwar gewaltig. Deswegen konnte er auch nicht aus der Stadt weg.
	AI_Output(self, other, "SLD_700_Jareck_gotInfos_Info_04_05"); // Und wof�r r�sten sie auf?
	AI_Output(other, self, "SLD_700_Jareck_gotInfos_Info_15_06"); // Das konnte er mir nicht sagen. Scheinbar ist er nicht in alles eingeweiht.
	AI_Output(self, other, "SLD_700_Jareck_gotInfos_Info_04_07"); // Nat�rlich nicht... W�re ja auch zu sch�n, einen der hochrangigen Speichellecker als Spitzel zu haben.
	AI_Output(self, other, "SLD_700_Jareck_gotInfos_Info_04_08"); // Aber gut. Was immer die Stadtwache plant. Wir werden vorbereitet sein.
	AI_Output(self, other, "SLD_700_Jareck_gotInfos_Info_04_09"); // Ich danke dir! Jetzt kann ich wenigstens etwas ruhiger schlafen.
	MIS_newInfos = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_newInfos, LOG_SUCCESS);
	B_LogEntry(TOPIC_newInfos, "Ich habe Jareck Marcos Informationen �berbracht. Er sagt, was immer die Stadtwache plant, die S�ldner sind vorbereitet. Na, da bin ich ja mal gespannt...");
};

// **************************************************

instance SLD_700_Jareck_wannaBecomeSld (C_INFO)
{
	npc			= SLD_700_Jareck;
	condition		= SLD_700_Jareck_wannaBecomeSld_Condition;
	information		= SLD_700_Jareck_wannaBecomeSld_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Kann ich euch jetzt beitreten?";
};

func int SLD_700_Jareck_wannaBecomeSld_Condition()
{
	if ((Npc_KnowsInfo(hero, SLD_700_Jareck_gotInfos)) && (Npc_GetTrueGuild(hero) == GIL_NONE) && (canBecomeSld == FALSE))
	{
		return TRUE;
	};
};

func void SLD_700_Jareck_wannaBecomeSld_Info()
{
	AI_Output(other, self, "SLD_700_Jareck_wannaBecomeSld_Info_15_01"); // Kann ich euch jetzt beitreten?
	AI_Output(self, other, "SLD_700_Jareck_wannaBecomeSld_Info_04_02"); // Lass mich �berlegen.
	AI_Output(self, other, "SLD_700_Jareck_wannaBecomeSld_Info_04_03"); // Du hast f�r uns die Infos besorgt. Das bringt uns schonmal ein St�ck weiter.
	if (MIS_pestControl == LOG_SUCCESS)
	{
		AI_Output(self, other, "SLD_700_Jareck_wannaBecomeSld_Info_04_04"); // Und bei Rodar warst du auch schon.
		AI_Output(self, other, "SLD_700_Jareck_wannaBecomeSld_Info_04_05"); // Seine Aufgabe war vielleicht einfach, aber du hast daf�r gesorgt, dass du in seinen Augen wichtig bist.
		AI_Output(self, other, "SLD_700_Jareck_wannaBecomeSld_Info_04_06"); // Zumindest wichtiger als ein paar der Jungs.
		AI_Output(self, other, "SLD_700_Jareck_wannaBecomeSld_Info_04_07"); // Und immerhin hast du alle Viecher get�tet. Das ist sehr gut.
		AI_Output(self, other, "SLD_700_Jareck_wannaBecomeSld_Info_04_08"); // Ja, wenn du willst, nehme ich dich bei uns auf!
		canBecomeSld = TRUE;
	}
	else if (MIS_pestControl == LOG_RUNNING)
	{
		AI_Output(self, other, "SLD_700_Jareck_wannaBecomeSld_Info_04_09"); // Und bei Rodar warst du auch schon.
		AI_Output(self, other, "SLD_700_Jareck_wannaBecomeSld_Info_04_10"); // Aber ich habe noch nichts von ihm geh�rt.
		AI_Output(self, other, "SLD_700_Jareck_wannaBecomeSld_Info_04_11"); // Hast du seine Aufgabe schon erledigt?
		AI_Output(other, self, "SLD_700_Jareck_wannaBecomeSld_Info_15_12"); // Naja...
		AI_Output(self, other, "SLD_700_Jareck_wannaBecomeSld_Info_04_13"); // Dachte ich mir. Tu, was immer er von dir verlangt, dann werde ich dich aufnehmen!
	}
	else
	{
		AI_Output(self, other, "SLD_700_Jareck_wannaBecomeSld_Info_04_14"); // Aber Rodar kennt dich noch gar nicht.
		AI_Output(self, other, "SLD_700_Jareck_wannaBecomeSld_Info_04_15"); // Geh am Besten gleich zu ihm und tu, was immer er von dir verlangt!
		AI_Output(self, other, "SLD_700_Jareck_wannaBecomeSld_Info_04_16"); // Dann sehen wir weiter.
	};
};

// **************************************************

instance SLD_700_Jareck_becomeSld (C_INFO)
{
	npc			= SLD_700_Jareck;
	condition		= SLD_700_Jareck_becomeSld_Condition;
	information		= SLD_700_Jareck_becomeSld_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Ich will bei euch mitmachen!";
};

func int SLD_700_Jareck_becomeSld_Condition()
{
	if ((kapitel == 1) && (canBecomeSld == TRUE))
	{
		return TRUE;
	};
};

func void SLD_700_Jareck_becomeSld_Info()
{
	AI_Output(other, self, "SLD_700_Jareck_becomeSld_Info_15_01"); // Ich will bei euch mitmachen!
	AI_Output(self, other, "SLD_700_Jareck_becomeSld_Info_04_02"); // Bist du dir sicher?
	AI_Output(self, other, "SLD_700_Jareck_becomeSld_Info_04_03"); // Hast du einmal die R�stung eines S�ldners angelegt, wirst du sie nicht mehr so einfach los.
	AI_Output(self, other, "SLD_700_Jareck_becomeSld_Info_04_04"); // Diese Entscheidung will gut �berlegt sein!
	Info_ClearChoices(SLD_700_Jareck_becomeSld);
	Info_AddChoice(SLD_700_Jareck_becomeSld, "Nein, ich brauche noch Bedenkzeit!", SLD_700_Jareck_becomeSld_notReady);
	Info_AddChoice(SLD_700_Jareck_becomeSld, "Ja, ich bin mir sicher!", SLD_700_Jareck_becomeSld_yesSure);
};

func void SLD_700_Jareck_becomeSld_notReady()
{
	AI_Output(other, self, "SLD_700_Jareck_becomeSld_notReady_15_01"); // Nein, ich brauche noch Bedenkzeit!
	AI_Output(self, other, "SLD_700_Jareck_becomeSld_notReady_04_02"); // Gut. Wenn du es dir �berlegt hast: Du wei�t, wo du mich findest!
	Info_ClearChoices(SLD_700_Jareck_becomeSld);
};

func void SLD_700_Jareck_becomeSld_yesSure()
{
	AI_Output(other, self, "SLD_700_Jareck_becomeSld_yesSure_15_01"); // Ja, ich bin mir sicher!
	AI_Output(self, other, "SLD_700_Jareck_becomeSld_yesSure_04_02"); // Dann trage diese R�stung mit Stolz!
	CreateInvItems(self, ItAr_Sld_L, 1);
	B_GiveInvItems(self, other, ItAr_Sld_L, 1);
	AI_Output(self, other, "SLD_700_Jareck_becomeSld_yesSure_04_03"); // Lege sie an und vor allem: Mach uns keine Schande!
	AI_Output(self, other, "SLD_700_Jareck_becomeSld_yesSure_04_04"); // Aber sei vorsichtig: Auch wenn dich niemand offen angreifen w�rde, wenn du die R�stung tr�gst, wird die Stadtwache dir immer misstrauen.
	AI_Output(self, other, "SLD_700_Jareck_becomeSld_yesSure_04_05"); // Genauso die Magier aus dem Kloster. Sag hinterher nicht, ich h�tte dich nicht gewarnt! (lacht)
	AI_Output(self, other, "SLD_700_Jareck_becomeSld_yesSure_04_06"); // Wie auch immer. Willkommen, S�ldner!
	kapitel = 2;
	IntroduceChapter (KapWechsel_2,KapWechsel_2_Text,"chapter2.tga","chapterchange.wav", 6000);
	Spine_UnlockAchievement(0);
	Npc_SetTrueGuild(hero, GIL_SLD);
};

// **************************************************

instance SLD_700_Jareck_findFriends (C_INFO)
{
	npc			= SLD_700_Jareck;
	condition		= SLD_700_Jareck_findFriends_Condition;
	information		= SLD_700_Jareck_findFriends_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Du als Anf�hrer der S�ldner...";
};

func int SLD_700_Jareck_findFriends_Condition()
{
	if (MIS_findFriends == LOG_RUNNING)
	{
		return TRUE;
	};
};

func void SLD_700_Jareck_findFriends_Info()
{
	AI_Output(other, self, "SLD_700_Jareck_findFriends_Info_15_01"); // Du als Anf�hrer der S�ldner...
	AI_Output(self, other, "SLD_700_Jareck_findFriends_Info_04_02"); // (grummelt) Was willst du? Willst du doch lieber f�r mich arbeiten als f�r die Fischer bei euch? (lacht)
	AI_Output(other, self, "SLD_700_Jareck_findFriends_Info_15_03"); // Nein, eher ganz im Gegenteil.
	AI_Output(self, other, "SLD_700_Jareck_findFriends_Info_04_04"); // (erstaunt) Im Gegenteil?
	AI_Output(self, other, "SLD_700_Jareck_findFriends_Info_04_05"); // Jetzt bin ich mal gespannt...
};

// **************************************************

instance SLD_700_Jareck_findFriends2 (C_INFO)
{
	npc			= SLD_700_Jareck;
	condition		= SLD_700_Jareck_findFriends2_Condition;
	information		= SLD_700_Jareck_findFriends2_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wir brauchen M�nner!";
};

func int SLD_700_Jareck_findFriends2_Condition()
{
	if (Npc_KnowsInfo(hero, SLD_700_Jareck_findFriends))
	{
		return TRUE;
	};
};

func void SLD_700_Jareck_findFriends2_Info()
{
	AI_Output(other, self, "SLD_700_Jareck_findFriends2_Info_15_01"); // Wir brauchen M�nner!
	AI_Output(self, other, "SLD_700_Jareck_findFriends2_Info_04_02"); // Pah, die brauche ich auch! Die verdammten Stadtwachen r�cken immer n�her.
	AI_Output(self, other, "SLD_700_Jareck_findFriends2_Info_04_03"); // Und wof�r brauchst du M�nner?
	AI_Output(other, self, "SLD_700_Jareck_findFriends2_Info_15_04"); // Wir haben das gleiche Problem. Auch uns kommt die Stadtwache langsam zu nahe.
	AI_Output(other, self, "SLD_700_Jareck_findFriends2_Info_15_05"); // Wir sind allerdings zu wenige, um uns wirksam zu verteidigen.
	AI_Output(self, other, "SLD_700_Jareck_findFriends2_Info_04_06"); // Scheint als st�nden wir vor demselben Berg.
	AI_Output(self, other, "SLD_700_Jareck_findFriends2_Info_04_07"); // Ich kann wirklich niemanden einfach so er�brigen.
	AI_Output(self, other, "SLD_700_Jareck_findFriends2_Info_04_08"); // Mach mir einen guten Vorschlag, wie das funktionieren soll und wir sehen weiter!
};

// **************************************************

instance SLD_700_Jareck_newFriends (C_INFO)
{
	npc			= SLD_700_Jareck;
	condition		= SLD_700_Jareck_newFriends_Condition;
	information		= SLD_700_Jareck_newFriends_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wir k�nnten gemeinsame Sache machen.";
};

func int SLD_700_Jareck_newFriends_Condition()
{
	if (Npc_KnowsInfo(hero, SLD_700_Jareck_findFriends2))
	{
		return TRUE;
	};
};

func void SLD_700_Jareck_newFriends_Info()
{
	AI_Output(other, self, "SLD_700_Jareck_newFriends_Info_15_01"); // Wir k�nnten gemeinsame Sache machen.
	AI_Output(self, other, "SLD_700_Jareck_newFriends_Info_04_02"); // Was meinst du?
	AI_Output(other, self, "SLD_700_Jareck_newFriends_Info_15_03"); // Es reicht langsam. Wir m�ssen in die Offensive gehen!
	AI_Output(self, other, "SLD_700_Jareck_newFriends_Info_04_04"); // (erschrocken) In die Offensive? Was meinst du?
	AI_Output(other, self, "SLD_700_Jareck_newFriends_Info_15_05"); // Wir werden immer offener bedroht. Von uns Piraten kann keiner mehr einen Fu� in die Stadt setzen, ohne ein Schwert am Hals zu haben.
	AI_Output(other, self, "SLD_700_Jareck_newFriends_Info_15_06"); // Ich sch�tze mal, bei euch sieht das nicht anders aus.
	AI_Output(self, other, "SLD_700_Jareck_newFriends_Info_04_07"); // Das stimmt wohl. Unsere R�stung erkennen die auf hunderte Meter.
	AI_Output(self, other, "SLD_700_Jareck_newFriends_Info_04_08"); // W�re nicht das erste Mal, dass ein Bolzen uns nur knapp verfehlt, obwohl wir noch weit von der Stadt weg sind.
	AI_Output(self, other, "SLD_700_Jareck_newFriends_Info_04_09"); // Was schl�gst du also vor?
	AI_Output(other, self, "SLD_700_Jareck_newFriends_Info_15_10"); // Du verst�rkst unsere Mannschaft mit einigen von deinen Jungs. Und dann machen wir N�gel mit K�pfen!
	AI_Output(other, self, "SLD_700_Jareck_newFriends_Info_15_11"); // Wir greifen die Stadtwache an.
	AI_Output(self, other, "SLD_700_Jareck_newFriends_Info_04_12"); // Ha, du bist ein Saukerl!
	AI_Output(self, other, "SLD_700_Jareck_newFriends_Info_04_13"); // Okay, ich werde meine besten M�nner vorbereiten.
	AI_Output(self, other, "SLD_700_Jareck_newFriends_Info_04_14"); // Trotzdem m�chte ich mir sicher sein.
	AI_Output(self, other, "SLD_700_Jareck_newFriends_Info_04_15"); // Schick mir deinen Kommandanten vorbei. Irgendwie muss ich mir sicher sein, dass ihr mir nicht in den R�cken fallt.
	AI_Output(self, other, "SLD_700_Jareck_newFriends_Info_04_16"); // Au�erdem wollte ich mit ihm schon immer mal ein Bier trinken.
	B_LogEntry(TOPIC_newFriends, "Ich habe zumindest einen kleinen Erfolg erzielt. Jareck, der Anf�hrer der S�ldner ist bereit uns zu unterst�tzen, daf�r musste ich versprechen, dass wir die Stadtwache angreifen werden. Jareck m�chte sich mit Henry treffen f�r ein pers�nliches Gespr�ch. Ich sollte ihn darauf vorbereiten...");
};
