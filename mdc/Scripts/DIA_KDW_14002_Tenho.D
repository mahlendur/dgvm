// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!

var int buchTag;

// **************************************************

instance KDW_14002_Tenho_Exit (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_Exit_Condition;
	information		= KDW_14002_Tenho_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int KDW_14002_Tenho_Exit_Condition()
{
	return TRUE;
};

func void KDW_14002_Tenho_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance KDW_14002_Tenho_youNew (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_youNew_Condition;
	information		= KDW_14002_Tenho_youNew_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int KDW_14002_Tenho_youNew_Condition()
{
	return TRUE;
};

func void KDW_14002_Tenho_youNew_Info()
{
	AI_Output(self, other, "KDW_14002_Tenho_youNew_Info_03_01"); // Soso, du bist also der Neuankömmling.
	AI_Output(self, other, "KDW_14002_Tenho_youNew_Info_03_02"); // Man berichtete mir schon, dass jemand mit starken magischen Fähigkeiten unser Reich betreten hat.
	AI_Output(self, other, "KDW_14002_Tenho_youNew_Info_03_03"); // Sprich, warum bist du hier?
};

// **************************************************

instance KDW_14002_Tenho_wannaJoin (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_wannaJoin_Condition;
	information		= KDW_14002_Tenho_wannaJoin_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich will mich euch anschließen!";
};

func int KDW_14002_Tenho_wannaJoin_Condition()
{
	if (Npc_KnowsInfo(hero, KDW_14002_Tenho_youNew))
	{
		return TRUE;
	};
};

func void KDW_14002_Tenho_wannaJoin_Info()
{
	AI_Output(other, self, "KDW_14002_Tenho_wannaJoin_Info_15_01"); // Ich will mich euch anschließen!
	AI_Output(self, other, "KDW_14002_Tenho_wannaJoin_Info_03_02"); // Anschließen? Das habe ich schon lange nicht mehr gehört.
	AI_Output(self, other, "KDW_14002_Tenho_wannaJoin_Info_03_03"); // Aber gut, wenn es dir ernst ist, werde ich dich prüfen.
};

// **************************************************

instance KDW_14002_Tenho_whyHere (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_whyHere_Condition;
	information		= KDW_14002_Tenho_whyHere_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Warum seid ihr hier?";
};

func int KDW_14002_Tenho_whyHere_Condition()
{
	if (Npc_KnowsInfo(hero, KDW_14002_Tenho_youNew))
	{
		return TRUE;
	};
};

func void KDW_14002_Tenho_whyHere_Info()
{
	AI_Output(other, self, "KDW_14002_Tenho_whyHere_Info_15_01"); // Warum seid ihr hier?
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_02"); // Der Krieg, Junge. Was sonst sollte einen magischen Zirkel wie unseren aus seiner Heimat vertreiben?
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_03"); // Die Orks waren auf dem Vormarsch.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_04"); // Zwar war unser Heim auch auf dem Festland von einer ähnlichen Barriere geschützt gewesen, doch wirkt sie bei Orks anders als bei Menschen.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_05"); // Die magisch begabten Schamanen der Orks wurden aufgehalten, ihre Krieger jedoch nur noch rasender.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_06"); // Du siehst, unsere Schutzzauber waren im Endeffekt wirkungslos.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_07"); // Als wir die Barriere aufgehoben hatten, wurde der Ansturm der Orks immer stärker. Sie waren uns zahlenmäßig einfach überlegen.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_08"); // In einem großen Zauber bündelten wir unsere Energie und vertrieben sie vorläufig. Doch sie erholten sich schnell und rückten wieder vor.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_09"); // Schließlich zogen wir den letzten Ausweg in Betracht, packten unsere Sachen und flohen.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_10"); // Ohne geeignete Karten irtten wir mehrere Tage auf See umher, bis wir diese Insel fanden. Wir hatten schon häufiger von ihr gehört.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_11"); // Angeblich sollte ein großer Teil des magischen Erzes, das zum Schmieden der Waffen verwendet wird, hier abgebaut werden.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_12"); // Als wir das große Schiff der Paladine sahen, wussten wir, dass wir nicht einfach in die Stadt gehen können.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_13"); // Denn dummerweise stehen wir auf unterschiedlichen Seiten der Götter. Innos und Beliar vertragen sich nicht unbedingt gut.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_14"); // Wir nutzten einen unbeobachteten Moment, brachten unsere Ladung an Land, zerstörten das Schiff und liefen an der Stadt vorbei.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_15"); // Vor einigen Wochen kamen wir dann hier an und bauten diesen Turm.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_16"); // Leider brauchen auch wir eine grundlegende Versorgung, denn der Boden hier eignet sich nicht gut zum Anbauen von Getreide.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_17"); // Anfangs versuchten wir noch mit den Bauern zu handeln.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_18"); // Bis wir eines Tages einer Patrouille der Stadtwache in die Arme liefen, funktionierte das auch.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_19"); // Die Milizen gingen sofort davon aus, wir würden Nahrungsmittel stehlen. Wir flohen zurück zum Turm und sie verfolgten uns.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_20"); // Nur dank unserer Barriere haben sie es bisher nicht geschafft uns anzugreifen.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_21"); // Sie rücken immer wieder vor, doch selbst die stärksten Paladine haben Probleme.
	AI_Output(self, other, "KDW_14002_Tenho_whyHere_Info_03_22"); // Du bist seit langer Zeit der erste, der es geschafft hat, unsere Barriere unbeschadet zu durchbrechen!
};

// **************************************************

instance KDW_14002_Tenho_whyIce (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_whyIce_Condition;
	information		= KDW_14002_Tenho_whyIce_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Warum bekämpft ihr die Eismagier?";
};

func int KDW_14002_Tenho_whyIce_Condition()
{
	if (Npc_KnowsInfo(hero, KDW_14002_Tenho_youNew))
	{
		return TRUE;
	};
};

func void KDW_14002_Tenho_whyIce_Info()
{
	AI_Output(other, self, "KDW_14002_Tenho_whyIce_Info_15_01"); // Warum bekämpft ihr die Eismagier?
	AI_Output(self, other, "KDW_14002_Tenho_whyIce_Info_03_02"); // Wie bitte? Ich glaube, dabei handelt es sich um eine Verwechslung.
	AI_Output(self, other, "KDW_14002_Tenho_whyIce_Info_03_03"); // Wobei... Nein, du hast Recht! Wir bekämpfen die Eismagier.
	AI_Output(self, other, "KDW_14002_Tenho_whyIce_Info_03_04"); // Wie du vielleicht weißt, arbeiten Stadt und Kloster eng zusammen. Nach dem Vorfall mit den Stadtwachen suchten die Paladine Hilfe bei den Eismagiern.
	AI_Output(self, other, "KDW_14002_Tenho_whyIce_Info_03_05"); // Seitdem greifen sie uns immer wieder an, denn auch sie sind in der Lage, die Barriere zu umgehen.
	AI_Output(self, other, "KDW_14002_Tenho_whyIce_Info_03_06"); // Meistens beschränken sie sich allerdings auf kleinere Sticheleien.
	AI_Output(self, other, "KDW_14002_Tenho_whyIce_Info_03_07"); // Und wir tun im Gegenzug dasselbe. Wir haben nicht die Absicht, die Eismagier auszulöschen. Wir wollen eigentlich nur unsere Ruhe haben.
	AI_Output(self, other, "KDW_14002_Tenho_whyIce_Info_03_08"); // Aber ich befürchte, die letzte große Auseinandersetzung ist unvermeidbar.
};

// **************************************************

instance KDW_14002_Tenho_whatToDo (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_whatToDo_Condition;
	information		= KDW_14002_Tenho_whatToDo_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Prüfe mich, Meister!";
};

func int KDW_14002_Tenho_whatToDo_Condition()
{
	if (Npc_KnowsInfo(hero, KDW_14002_Tenho_wannaJoin))
	{
		return TRUE;
	};
};

func void KDW_14002_Tenho_whatToDo_Info()
{
	AI_Output(other, self, "KDW_14002_Tenho_whatToDo_Info_15_01"); // Prüfe mich, Meister!
	AI_Output(self, other, "KDW_14002_Tenho_whatToDo_Info_03_02"); // Meister, pah! Den hochgestochenen Quatsch kannst du im Kloster loswerden. Ich bin Tenho, nichts weiter.
	AI_Output(self, other, "KDW_14002_Tenho_whatToDo_Info_03_03"); // Ich bin genauso ein Magier wie alle anderen hier.
	AI_Output(self, other, "KDW_14002_Tenho_whatToDo_Info_03_04"); // Zwar bin ich etwas älter und habe etwas mehr Erfahrung, aber das macht mich noch lange nicht zu etwas Besserem.
	AI_Output(self, other, "KDW_14002_Tenho_whatToDo_Info_03_05"); // Aber gut, ich will dich prüfen. Aber bitte, hör auf mit dem Meister!
	AI_Output(self, other, "KDW_14002_Tenho_whatToDo_Info_03_06"); // Also gut, deine Prüfung sieht wie folgt aus: Berge ein Artefakt!
	AI_Output(other, self, "KDW_14002_Tenho_whatToDo_Info_15_07"); // Ein Artefakt?
	AI_Output(self, other, "KDW_14002_Tenho_whatToDo_Info_03_08"); // Sehr richtig.
	AI_Output(other, self, "KDW_14002_Tenho_whatToDo_Info_15_09"); // Wo finde ich das Artefakt?
	AI_Output(self, other, "KDW_14002_Tenho_whatToDo_Info_03_10"); // Na, wo wäre denn der Witz an der Sache, wenn ich dir alles verrate? (lacht)
	AI_Output(self, other, "KDW_14002_Tenho_whatToDo_Info_03_11"); // Ich gebe dir eine Richtung vor: Lauf den Weg zur Stadt zurück und achte auf den Wasserfall. In seiner Nähe befindet sich eine Höhle.
	AI_Output(self, other, "KDW_14002_Tenho_whatToDo_Info_03_12"); // Durchquere sie und du wirst hoffentlich suchen, was wir haben wollen!
	MIS_blackTest = LOG_RUNNING;
	Log_CreateTopic(TOPIC_blackTest, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_blackTest, LOG_RUNNING);
	B_LogEntry(TOPIC_blackTest, "Tolle Prüfung. Tenho, der Anführer des schwarzen Zirkels hat mich beauftragt, ein Artefakt zu holen. Dafür soll ich eine Höhle durchqueren und danach würde ich es schon finden. Sehr spannend. Mal sehen, wie er mich auf die Probe stellen will.");
};

// **************************************************

instance KDW_14002_Tenho_shallIGo (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_shallIGo_Condition;
	information		= KDW_14002_Tenho_shallIGo_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Soll ich so gehen?";
};

func int KDW_14002_Tenho_shallIGo_Condition()
{
	if (Npc_KnowsInfo(hero, KDW_14002_Tenho_whatToDo))
	{
		return TRUE;
	};
};

func void KDW_14002_Tenho_shallIGo_Info()
{
	AI_Output(other, self, "KDW_14002_Tenho_shallIGo_Info_15_01"); // Soll ich so gehen?
	AI_Output(self, other, "KDW_14002_Tenho_shallIGo_Info_03_02"); // Wie denn sonst?
	AI_Output(other, self, "KDW_14002_Tenho_shallIGo_Info_15_03"); // Naja, ich dachte, ich bekomme vielleicht etwas Ausrüstung oder so...
	AI_Output(self, other, "KDW_14002_Tenho_shallIGo_Info_03_04"); // Deine Robe musst du dir erst verdienen! Aber ich gebe dir ein paar Spruchrollen mit.
	CreateInvItems(self, ItSc_BreathOfDeath,  2);
	B_GiveInvItems(self, other, ItSc_BreathOfDeath,  2);
	CreateInvItems(self, ItSc_HarmUndead,  2);
	B_GiveInvItems(self, other, ItSc_HarmUndead,  2);
	CreateInvItems(self, ItSc_ChargeFireball,  4);
	B_GiveInvItems(self, other, ItSc_ChargeFireball,  4);
	AI_Output(self, other, "KDW_14002_Tenho_shallIGo_Info_03_05"); // Wenn du mehr brauchst, musst du sie dir kaufen.
	AI_Output(self, other, "KDW_14002_Tenho_shallIGo_Info_03_06"); // Sprich mit den anderen Magiern. Einer wird schon mit dir handeln.
	AI_Output(self, other, "KDW_14002_Tenho_shallIGo_Info_03_07"); // Und hier: Damit du sie auch benutzen kannst.
	Buff_Apply(hero, maxManaBuff);
	AI_Output(self, other, "KDW_14002_Tenho_shallIGo_Info_03_08"); // Und jetzt geh! Finde das Artefakt und beweise, dass du es wert bist das Schwarz anzulegen!
};

// **************************************************

instance KDW_14002_Tenho_gotThem (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_gotThem_Condition;
	information		= KDW_14002_Tenho_gotThem_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich habe dein 'Artefakt'!";
};

func int KDW_14002_Tenho_gotThem_Condition()
{
	if ((Npc_KnowsInfo(hero, KDW_14002_Tenho_whatToDo)) && (Npc_HasItems(other, ItWr_Kreis1_BM) >= 1) && (Npc_IsDead(GOBBO_SKELETON_BM1) == TRUE) && (Npc_IsDead(GOBBO_SKELETON_BM2) == TRUE) && (Npc_IsDead(GOBBO_SKELETON_BM3) == TRUE))
	{
		return TRUE;
	};
};

func void KDW_14002_Tenho_gotThem_Info()
{
	AI_Output(other, self, "KDW_14002_Tenho_gotThem_Info_15_01"); // Ich habe dein 'Artefakt'!
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_Info_03_02"); // Sehr gut. Bist du auf Schwierigkeiten gestoßen?
	Info_ClearChoices(KDW_14002_Tenho_gotThem);
	Info_AddChoice(KDW_14002_Tenho_gotThem, "Du Arsch hast mich in eine Höhle mit Goblin-Skeletten geschickt!", KDW_14002_Tenho_gotThem_youBastard);
	Info_AddChoice(KDW_14002_Tenho_gotThem, "Ein wenig Probleme, ja.", KDW_14002_Tenho_gotThem_aLittle);
	Info_AddChoice(KDW_14002_Tenho_gotThem, "Keine nennenswerten!", KDW_14002_Tenho_gotThem_noProblems);
};

func void KDW_14002_Tenho_gotThem_youBastard()
{
	AI_Output(other, self, "KDW_14002_Tenho_gotThem_youBastard_15_01"); // Du Arsch hast mich in eine Höhle mit Goblin-Skeletten geschickt!
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_youBastard_03_02"); // (aufbrausend) Was? Wie wagst du es mit mir zu sprechen?
	AI_Output(other, self, "KDW_14002_Tenho_gotThem_youBastard_15_03"); // Moment, du sagtest, ich solle dieses hochtrabende Geschwafel sein lassen.
	AI_Output(other, self, "KDW_14002_Tenho_gotThem_youBastard_15_04"); // Also, jetzt rede ich mit dir, wie mit jedem anderen auch.
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_youBastard_03_05"); // (grummelt) Na gut...
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_youBastard_03_06"); // Hast du das Artefekt?
	AI_Output(other, self, "KDW_14002_Tenho_gotThem_youBastard_15_07"); // Du meinst dieses Buch hier?
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_youBastard_03_08"); // Genau das. Gib es mir! Es hat eine starke magische Aura, die ich bis hier oben gespürt habe.
	B_GiveInvItems(other, self, ItWr_Kreis1_BM, 1);
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_youBastard_03_09"); // In Ordnung. Du sollst Teil unseres Zirkels werden, wenn du immer noch entschlossen bist.
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_youBastard_03_10"); // Sprich mit mir, wenn du das Schwarz tragen willst!
	Info_ClearChoices(KDW_14002_Tenho_gotThem);
};

func void KDW_14002_Tenho_gotThem_aLittle()
{
	AI_Output(other, self, "KDW_14002_Tenho_gotThem_aLittle_15_01"); // Ein wenig Probleme, ja.
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_aLittle_03_02"); // Wirklich? Das hatte ich nicht erwartet.
	AI_Output(other, self, "KDW_14002_Tenho_gotThem_aLittle_15_03"); // Naja, einige Goblin-Skelette wollten mir das Leben schwer machen.
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_aLittle_03_04"); // Aber du bist ja in einem Stück zurückgekehrt.
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_aLittle_03_05"); // Das ist ein gutes Zeichen.
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_aLittle_03_06"); // Wie steht es mit dem Artefakt?
	AI_Output(other, self, "KDW_14002_Tenho_gotThem_aLittle_15_07"); // Meinst du dieses Buch?
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_aLittle_03_08"); // Genau das. Gib es mir! Es hat eine starke magische Aura, die ich bis hier oben gespürt habe.
	B_GiveInvItems(other, self, ItWr_Kreis1_BM, 1);
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_aLittle_03_09"); // In Ordnung. Du sollst Teil unseres Zirkels werden, wenn du immer noch entschlossen bist.
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_aLittle_03_10"); // Sprich mit mir, wenn du das Schwarz tragen willst!
	Info_ClearChoices(KDW_14002_Tenho_gotThem);
};

func void KDW_14002_Tenho_gotThem_noProblems()
{
	AI_Output(other, self, "KDW_14002_Tenho_gotThem_noProblems_15_01"); // Keine nennenswerten!
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_noProblems_03_02"); // (lacht) Haha, damit habe ich gerechnet, du Draufgänger!
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_noProblems_03_03"); // In Ordnung. Wie sieht es aus? Hast du das Artefakt gefunden?
	AI_Output(other, self, "KDW_14002_Tenho_gotThem_noProblems_15_04"); // Naja, ich habe hier ein Buch.
	AI_Output(other, self, "KDW_14002_Tenho_gotThem_noProblems_15_05"); // Meinst du das?
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_noProblems_03_06"); // Genau das. Gib es mir! Es hat eine starke magische Aura, die ich bis hier oben gespürt habe.
	B_GiveInvItems(other, self, ItWr_Kreis1_BM, 1);
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_noProblems_03_07"); // In Ordnung. Du sollst Teil unseres Zirkels werden, wenn du immer noch entschlossen bist.
	AI_Output(self, other, "KDW_14002_Tenho_gotThem_noProblems_03_08"); // Sprich mit mir, wenn du das Schwarz tragen willst!
	Info_ClearChoices(KDW_14002_Tenho_gotThem);
};

// **************************************************

instance KDW_14002_Tenho_nowJoin (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_nowJoin_Condition;
	information		= KDW_14002_Tenho_nowJoin_Info;
	important		= FALSE;
	permanent		= TRUE;
	description		= "Ich will dem Zirkel beitreten!";
};

func int KDW_14002_Tenho_nowJoin_Condition()
{
	if ((Npc_KnowsInfo(hero, KDW_14002_Tenho_gotThem)) && (kapitel == 1))
	{
		return TRUE;
	};
};

func void KDW_14002_Tenho_nowJoin_Info()
{
	AI_Output(other, self, "KDW_14002_Tenho_nowJoin_Info_15_01"); // Ich will dem Zirkel beitreten!
	AI_Output(self, other, "KDW_14002_Tenho_nowJoin_Info_03_02"); // Ist das deine endgültige Entscheidung? Bedenke, du kannst sie nicht mehr ändern!
	Info_ClearChoices(KDW_14002_Tenho_nowJoin);
	Info_AddChoice(KDW_14002_Tenho_nowJoin, "Ich brauche noch Bedenkzeit.", KDW_14002_Tenho_nowJoin_no);
	Info_AddChoice(KDW_14002_Tenho_nowJoin, "Ich bin bereit!", KDW_14002_Tenho_nowJoin_yes);
};

func void KDW_14002_Tenho_nowJoin_no()
{
	AI_Output(other, self, "KDW_14002_Tenho_nowJoin_no_15_01"); // Ich brauche noch Bedenkzeit.
	AI_Output(self, other, "KDW_14002_Tenho_nowJoin_no_03_02"); // In Ordnung. Ich bin hier, falls du eine Entscheidung getroffen hast.
	Info_ClearChoices(KDW_14002_Tenho_nowJoin);
};

func void KDW_14002_Tenho_nowJoin_yes()
{
	AI_Output(other, self, "KDW_14002_Tenho_nowJoin_yes_15_01"); // Ich bin bereit!
	AI_Output(self, other, "KDW_14002_Tenho_nowJoin_yes_03_02"); // Gut, dann darfst du dich ab heute als Mitglied des schwarzen Zirkels bezeichnen.
	CreateInvItems(self, ItAr_Nov_Dark,  1);
	B_GiveInvItems(self, other, ItAr_Nov_Dark,  1);
	AI_Output(self, other, "KDW_14002_Tenho_nowJoin_yes_03_03"); // Trage die schwarze Novizenrobe mit Stolz und Würde.
	AI_Output(self, other, "KDW_14002_Tenho_nowJoin_yes_03_04"); // Und mach' dem Kreis ja keinen Ärger!
	kapitel = 2;
	IntroduceChapter (KapWechsel_2,KapWechsel_2_Text,"chapter2.tga","chapterchange.wav", 6000);
	Npc_SetTrueGuild(hero, GIL_NOV);
	B_LogEntry(TOPIC_newLife, "Tenho hat mich in den schwarzen Zirkel aufgenommen. Mich erwartet ein Leben voller Magie. Mal sehen, was die Zukunft bringt.");
	MIS_newLife = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_newLife, LOG_SUCCESS);
	B_GivePlayerXP(XP_becomeMiliz);
	Spine_UnlockAchievement(0);
	Info_ClearChoices(KDW_14002_Tenho_nowJoin);
};

// **************************************************

instance KDW_14002_Tenho_whatMyQuests (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_whatMyQuests_Condition;
	information		= KDW_14002_Tenho_whatMyQuests_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was sind meine Aufgaben als Novize?";
};

func int KDW_14002_Tenho_whatMyQuests_Condition()
{
	if (kapitel == 2)
	{
		return TRUE;
	};
};

func void KDW_14002_Tenho_whatMyQuests_Info()
{
	AI_Output(other, self, "KDW_14002_Tenho_whatMyQuests_Info_15_01"); // Was sind meine Aufgaben als Novize?
	AI_Output(self, other, "KDW_14002_Tenho_whatMyQuests_Info_03_02"); // Du wirst vor allem deine magischen Fähigkeiten trainieren.
	AI_Output(self, other, "KDW_14002_Tenho_whatMyQuests_Info_03_03"); // Außerdem wirst du Aufgaben für den Zirkel übernehmen.
	AI_Output(self, other, "KDW_14002_Tenho_whatMyQuests_Info_03_04"); // Meistens werden es Botengänge oder Besorgungen werden. Du bist dafür perfekt geeignet, da du neu bist.
	AI_Output(self, other, "KDW_14002_Tenho_whatMyQuests_Info_03_05"); // Außerdem trägst du nur unsere Novizenrobe. Mit der Magierrobe könntest du nicht einen Fuß in die Stadt setzen.
	AI_Output(self, other, "KDW_14002_Tenho_whatMyQuests_Info_03_06"); // Lass dich nicht beirren. Gerade in der Stadt wird man versuchen, dich zu überzeugen, den Zirkel zu verlassen.
	AI_Output(self, other, "KDW_14002_Tenho_whatMyQuests_Info_03_07"); // Angeblich sei es nicht gut für junge Menschen auf einen derart falschen Weg geführt zu werden.
	AI_Output(self, other, "KDW_14002_Tenho_whatMyQuests_Info_03_08"); // Aber vergiss nicht: Unser Weg ist der Richtige! Er ist genauso richtig, wie die Wege der anderen Magier.
	AI_Output(self, other, "KDW_14002_Tenho_whatMyQuests_Info_03_09"); // Nur beziehen wir unsere Macht von einem anderen Gott.
};

// **************************************************

instance KDW_14002_Tenho_whatAboutTraining (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_whatAboutTraining_Condition;
	information		= KDW_14002_Tenho_whatAboutTraining_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wie kann ich meine magischen Kräfte steigern?";
};

func int KDW_14002_Tenho_whatAboutTraining_Condition()
{
	if (Npc_KnowsInfo(hero, KDW_14002_Tenho_whatMyQuests))
	{
		return TRUE;
	};
};

func void KDW_14002_Tenho_whatAboutTraining_Info()
{
	AI_Output(other, self, "KDW_14002_Tenho_whatAboutTraining_Info_15_01"); // Wie kann ich meine magischen Kräfte steigern?
	AI_Output(self, other, "KDW_14002_Tenho_whatAboutTraining_Info_03_02"); // Magie an sich kann jeder wirken. Du hast es ja an den Spruchrollen gesehen. Selbst ein Bauer könnte mit Spruchrollen erheblichen Schaden anrichten.
	AI_Output(self, other, "KDW_14002_Tenho_whatAboutTraining_Info_03_03"); // Die wahre Magie aber liegt in den Runensteinen. Sie verbrauchen sich nicht und funktionieren anders als Spruchrollen.
	AI_Output(self, other, "KDW_14002_Tenho_whatAboutTraining_Info_03_04"); // In einer Spruchrolle steckt die Magie des Zaubers. Eine Rune jedoch wirkt nur als Fokus für deine magischen Kräfte.
	AI_Output(self, other, "KDW_14002_Tenho_whatAboutTraining_Info_03_05"); // Daher vrabraucht sie sich auch nicht.
	AI_Output(self, other, "KDW_14002_Tenho_whatAboutTraining_Info_03_06"); // Um einen Runenzauber zu wirken musst du deine magischen Kräfte durch den Runenstein kanalisieren.
	AI_Output(self, other, "KDW_14002_Tenho_whatAboutTraining_Info_03_07"); // Und vor allem musst du fest überzeugt sein, dass du diesen Zauber wirken möchtest.
	AI_Output(self, other, "KDW_14002_Tenho_whatAboutTraining_Info_03_08"); // Du darfst keine Sekunde zögern und musst dir bewusst sein, was der Zauber auslöst. Nur dann wird er gelingen.
	AI_Output(self, other, "KDW_14002_Tenho_whatAboutTraining_Info_03_09"); // Bist du unkonzentriert, wird er fehlschlagen und dich im schlimmsten Fall verletzen oder sogar töten.
	AI_Output(self, other, "KDW_14002_Tenho_whatAboutTraining_Info_03_10"); // Deshalb sind die Runen in verschiedene Magiekreise aufgeteilt. Im ersten Kreis findest du einfache Zauber, die eigentlich nicht schiefgehen können.
	AI_Output(self, other, "KDW_14002_Tenho_whatAboutTraining_Info_03_11"); // Je höher du in den Kreisen gelangst, desto anspruchsvoller und zerstörerischer werden die Zauber.
	AI_Output(self, other, "KDW_14002_Tenho_whatAboutTraining_Info_03_12"); // Für den letzten Kreis benötigst du aber die Zustimmung unseres Gottes!
	AI_Output(self, other, "KDW_14002_Tenho_whatAboutTraining_Info_03_13"); // Den ersten Kreis der Magie kannst du schnell und einfach erlernen. Lies das Buch, dass du mir gebracht hast. Diesmal aber spüre die Kraft der Magie.
	CreateInvItems(self, ItWr_Kreis1_BM,  1);
	B_GiveInvItems(self, other, ItWr_Kreis1_BM,  1);
	AI_Output(self, other, "KDW_14002_Tenho_whatAboutTraining_Info_03_14"); // Lass dich von ihr durchströmen. Sie wird dir den Weg weisen und dir ermöglichen, einfache Runen zu fokussieren.
	AI_Output(self, other, "KDW_14002_Tenho_whatAboutTraining_Info_03_15"); // Die nächsten Zirkel kannst du nach etwas praktischer Übung bei mir lernen.
	Log_CreateTopic(TOPIC_teacherTower, LOG_NOTE);
	B_LogEntry(TOPIC_teacherTower, "Tenho kann mir, wenn ich entsprechend geübt bin die nächsten magischen Zirkel beibringen.");
};

// **************************************************

instance KDW_14002_Tenho_whatAboutAtts (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_whatAboutAtts_Condition;
	information		= KDW_14002_Tenho_whatAboutAtts_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kann ich meine magische Kraft steigern?";
};

func int KDW_14002_Tenho_whatAboutAtts_Condition()
{
	if (Npc_KnowsInfo(hero, KDW_14002_Tenho_whatMyQuests))
	{
		return TRUE;
	};
};

func void KDW_14002_Tenho_whatAboutAtts_Info()
{
	AI_Output(other, self, "KDW_14002_Tenho_whatAboutAtts_Info_15_01"); // Kann ich meine magische Kraft steigern?
	AI_Output(self, other, "KDW_14002_Tenho_whatAboutAtts_Info_03_02"); // Du kannst deine Kraftreserven steigern. Wir nennen diese Reserven Mana.
	AI_Output(self, other, "KDW_14002_Tenho_whatAboutAtts_Info_03_03"); // Es ist alles nur eine Frage der Konzentration und der Belastbarkeit deines Körpers.
	AI_Output(self, other, "KDW_14002_Tenho_whatAboutAtts_Info_03_04"); // Sprich mit den anderen Magiern. Einer von ihnen wird dir beibringen können, dein Mana zu erweitern.
};

// **************************************************

instance KDW_14002_Tenho_toDoForMe (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_toDoForMe_Condition;
	information		= KDW_14002_Tenho_toDoForMe_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Hast du etwas zu tun für mich?";
};

func int KDW_14002_Tenho_toDoForMe_Condition()
{
	if (Npc_KnowsInfo(hero, KDW_14002_Tenho_whatMyQuests))
	{
		return TRUE;
	};
};

func void KDW_14002_Tenho_toDoForMe_Info()
{
	AI_Output(other, self, "KDW_14002_Tenho_toDoForMe_Info_15_01"); // Hast du etwas zu tun für mich?
	AI_Output(self, other, "KDW_14002_Tenho_toDoForMe_Info_03_02"); // Gut, dass du fragst. Ich hätte tatsächliche eine Aufgabe für dich.
	AI_Output(self, other, "KDW_14002_Tenho_toDoForMe_Info_03_03"); // Bramor, der Kartenzeichner in der Stadt handelt auch mit anderen Schriftstücken.
	AI_Output(self, other, "KDW_14002_Tenho_toDoForMe_Info_03_04"); // Ich habe vor einiger Zeit ein Buch bei ihm bestellt. Geh zu ihm und sieh nach, ob er es mittlerweile auftreiben konnte.
	CreateInvItems(self, ItMi_Gold,  100);
	B_GiveInvItems(self, other, ItMi_Gold,  100);
	AI_Output(self, other, "KDW_14002_Tenho_toDoForMe_Info_03_05"); // Hier sind 100 Goldstücke. Schließlich will er das Buch bezahlt haben.
	MIS_getBook = LOG_RUNNING;
	Log_CreateTopic(TOPIC_getBook, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_getBook, LOG_RUNNING);
	B_LogEntry(TOPIC_getBook, "Tenho gab mir den Auftrag, ihm ein Buch zu besorgen. Er hat es vor einiger Zeit beim Kartenzeichner Bramor in der Stadt in Auftrag gegeben. Ich soll zu ihm gehen und das Buch abholen.");
};

// **************************************************

instance KDW_14002_Tenho_gotBook (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_gotBook_Condition;
	information		= KDW_14002_Tenho_gotBook_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich hab das Buch!";
};

func int KDW_14002_Tenho_gotBook_Condition()
{
	if (Npc_HasItems(other, ItMi_BookPaket) >= 1)
	{
		return TRUE;
	};
};

func void KDW_14002_Tenho_gotBook_Info()
{
	AI_Output(other, self, "KDW_14002_Tenho_gotBook_Info_15_01"); // Ich hab das Buch!
	AI_Output(self, other, "KDW_14002_Tenho_gotBook_Info_03_02"); // Sehr gut. Hast du das Paket geöffnet?
	AI_Output(other, self, "KDW_14002_Tenho_gotBook_Info_15_03"); // Nein. Das Paket lässt sich nicht öffnen.
	B_GiveInvItems(other, self, ItMi_BookPaket,  1);
	AI_Output(self, other, "KDW_14002_Tenho_gotBook_Info_03_04"); // (lacht) Gut. Dann scheint der Zauber zu wirken.
	AI_Output(self, other, "KDW_14002_Tenho_gotBook_Info_03_05"); // Wird das Buch eingepackt, kann es nur noch von einem mächtigen Zauberer ausgepackt werden.
	AI_Output(self, other, "KDW_14002_Tenho_gotBook_Info_03_06"); // Hier, für deinen Botengang!
	CreateInvItems(self, ItMi_Gold,  50);
	B_GiveInvItems(self, other, ItMi_Gold,  50);
	buchTag = Wld_GetDay();
	B_LogEntry(TOPIC_getBook, "Tenho hat sein Buch bekommen. Er sagte, es könne nur von einem mächtigen Magier ausgepackt werden. Was das wohl für ein Zauber ist?");
	MIS_getBook = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_getBook, LOG_SUCCESS);
};

// **************************************************

instance KDW_14002_Tenho_whatNext (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_whatNext_Condition;
	information		= KDW_14002_Tenho_whatNext_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int KDW_14002_Tenho_whatNext_Condition()
{
	if ((Npc_KnowsInfo(hero, KDW_14002_Tenho_gotBook)) && (Wld_GetDay() == buchTag + 2))
	{
		return TRUE;
	};
};

func void KDW_14002_Tenho_whatNext_Info()
{
	AI_Output(self, other, "KDW_14002_Tenho_whatNext_Info_03_01"); // Du, komm mal her!
	AI_Output(self, other, "KDW_14002_Tenho_whatNext_Info_03_02"); // Wir haben ein Problem!
	AI_Output(other, self, "KDW_14002_Tenho_whatNext_Info_15_03"); // Was gibt es?
	AI_Output(self, other, "KDW_14002_Tenho_whatNext_Info_03_04"); // Die anderen Magier in ihrem Kloster, werden langsam lästig.
	AI_Output(self, other, "KDW_14002_Tenho_whatNext_Info_03_05"); // Erst gestern waren sie wieder hier in der Nähe und haben uns Probleme bereitet.
	AI_Output(self, other, "KDW_14002_Tenho_whatNext_Info_03_06"); // Es war nichts Wildes, aber trotzdem. Langsam reicht es mir.
	AI_Output(other, self, "KDW_14002_Tenho_whatNext_Info_15_07"); // Und was willst du dagegen tun?
	AI_Output(self, other, "KDW_14002_Tenho_whatNext_Info_03_08"); // Wir haben nicht viele Möglichkeiten. Entweder wir harren hier aus, oder wir werden endlich aktiv.
	AI_Output(self, other, "KDW_14002_Tenho_whatNext_Info_03_09"); // Und für dich habe ich eine Spezialaufgabe!
};

// **************************************************

instance KDW_14002_Tenho_whatNext2 (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_whatNext2_Condition;
	information		= KDW_14002_Tenho_whatNext2_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was habe ich zu tun?";
};

func int KDW_14002_Tenho_whatNext2_Condition()
{
	if (Npc_KnowsInfo(hero, KDW_14002_Tenho_whatNext))
	{
		return TRUE;
	};
};

func void KDW_14002_Tenho_whatNext2_Info()
{
	AI_Output(other, self, "KDW_14002_Tenho_whatNext2_Info_15_01"); // Was habe ich zu tun?
	AI_Output(self, other, "KDW_14002_Tenho_whatNext2_Info_03_02"); // Du wirst für uns ins Kloster gehen und Informationen beschaffen.
	AI_Output(other, self, "KDW_14002_Tenho_whatNext2_Info_15_03"); // Wie bitte? Bist du wahnsinnig? Die machen mich doch sofort kalt!
	AI_Output(other, self, "KDW_14002_Tenho_whatNext2_Info_15_04"); // Und wie soll ich überhaupt ins Kloster kommen? Dir ist schon bewusst, dass wir...
	AI_Output(self, other, "KDW_14002_Tenho_whatNext2_Info_03_05"); // ... uns nicht sonderlich gut verstehen, ja. Glaub mir, das vergesse ich nicht.
	AI_Output(self, other, "KDW_14002_Tenho_whatNext2_Info_03_06"); // Sonst würde ich dich ja gar nicht losschicken!
	AI_Output(self, other, "KDW_14002_Tenho_whatNext2_Info_03_07"); // Deswegen sollst du für uns einen neuen Zauber testen.
	AI_Output(other, self, "KDW_14002_Tenho_whatNext2_Info_15_08"); // Neuer Zauber? Was habt ihr denn jetzt gemacht?
	AI_Output(self, other, "KDW_14002_Tenho_whatNext2_Info_03_09"); // Wir haben einen vollkommen neuen Zauber entwickelt.
	AI_Output(self, other, "KDW_14002_Tenho_whatNext2_Info_03_10"); // Wirnennen ihn 'Blinzeln'! Das mag vielleicht unspektakulär klingen, aber er ist mächtig.
	AI_Output(other, self, "KDW_14002_Tenho_whatNext2_Info_15_11"); // Inwiefern?
	AI_Output(self, other, "KDW_14002_Tenho_whatNext2_Info_03_12"); // Innerhalb eines Wimpernschlags bringt er dich an einen anderen Ort.
	AI_Output(other, self, "KDW_14002_Tenho_whatNext2_Info_15_13"); // Also wie eine Teleportrune?
	AI_Output(self, other, "KDW_14002_Tenho_whatNext2_Info_03_14"); // Fast. Du wirst zwar teleportiert, aber nur an einen Ort, den du selbst sehen kannst.
	AI_Output(self, other, "KDW_14002_Tenho_whatNext2_Info_03_15"); // Das heißt, eine Teleportation über die halbe Insel ist nicht möglich.
	AI_Output(self, other, "KDW_14002_Tenho_whatNext2_Info_03_16"); // Dafür kannst du, wenn alles gut geht, zum Beispiel auf ein Dach gelangen, das vorher außer Reichweite war.
	AI_Output(self, other, "KDW_14002_Tenho_whatNext2_Info_03_17"); // Ich gebe dir einige Spruchrollen mit. Wir haben die Essenz des Zaubers darin verarbeitet.
	CreateInvItems(self, ItSc_Blink,  5);
	B_GiveInvItems(self, other, ItSc_Blink,  5);
	AI_Output(self, other, "KDW_14002_Tenho_whatNext2_Info_03_18"); // Haushalte mit ihnen, mehr gibt es noch nicht.
	AI_Output(self, other, "KDW_14002_Tenho_whatNext2_Info_03_19"); // Und jetzt geh! Bring uns diese Informationen. Wir brauchen sie!
};

// **************************************************

instance KDW_14002_Tenho_writeMore (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_writeMore_Condition;
	information		= KDW_14002_Tenho_writeMore_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Könnt ihr nicht mehr Spruchrollen schreiben?";
};

func int KDW_14002_Tenho_writeMore_Condition()
{
	if (Npc_KnowsInfo(hero, KDW_14002_Tenho_whatNext2))
	{
		return TRUE;
	};
};

func void KDW_14002_Tenho_writeMore_Info()
{
	AI_Output(other, self, "KDW_14002_Tenho_writeMore_Info_15_01"); // Könnt ihr nicht mehr Spruchrollen schreiben?
	AI_Output(self, other, "KDW_14002_Tenho_writeMore_Info_03_02"); // Das tun wir gerade. Aber bei einem neu entwickelten Zauber ist das nicht so einfach.
	AI_Output(self, other, "KDW_14002_Tenho_writeMore_Info_03_03"); // Der Kern eines jeden Zaubers, egal ob Spruchrolle oder Rune, ist seine Essenz.
	AI_Output(self, other, "KDW_14002_Tenho_writeMore_Info_03_04"); // Erinnerst du dich noch, was du für deine erste Rune verwendet hast, außer einem Runenstein?
	AI_Output(other, self, "KDW_14002_Tenho_writeMore_Info_15_05"); // Schwefel!
	AI_Output(self, other, "KDW_14002_Tenho_writeMore_Info_03_06"); // Genau. Der Schwefel beinhaltet die Essenz des Zaubers. Zumindest kann unser Runentisch diese Essenz extrahieren.
	AI_Output(self, other, "KDW_14002_Tenho_writeMore_Info_03_07"); // Beim Schreiben von Rollen ist es ähnlich. Durch eine Essenz wird das Material aufgelöst und damit die Essenz des Zaubers in eine Tinte gebannt.
	AI_Output(self, other, "KDW_14002_Tenho_writeMore_Info_03_08"); // Das ist auch der Grund, warum Spruchrollen genauso wirken wie eine Rune.
	AI_Output(self, other, "KDW_14002_Tenho_writeMore_Info_03_09"); // Nur ist die Essenz nach der Benutzung verbraucht und zersetzt das Papier der Rolle.
	AI_Output(self, other, "KDW_14002_Tenho_writeMore_Info_03_10"); // Beim Blinzelzauber ist es allerdings etwas komplizierter.
	AI_Output(self, other, "KDW_14002_Tenho_writeMore_Info_03_11"); // Die Essenz besteht nicht aus einem einfachen Gegenstand, sondern muss in einem komplizierten Verfahren von einem Alchemisten hergestellt werden.
	AI_Output(self, other, "KDW_14002_Tenho_writeMore_Info_03_12"); // Im Moment ist Sengor der Einzige, der diese Essenz herstellen kann. Du siehst, es ist schwierig, diese Sprüche zu produzieren.
};

// **************************************************

instance KDW_14002_Tenho_canLearnScrolls (C_INFO)
{
	npc			= KDW_14002_Tenho;
	condition		= KDW_14002_Tenho_canLearnScrolls_Condition;
	information		= KDW_14002_Tenho_canLearnScrolls_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kann ich auch Lernen Spruchrollen zu schreiben?";
};

func int KDW_14002_Tenho_canLearnScrolls_Condition()
{
	if (Npc_KnowsInfo(hero, KDW_14002_Tenho_writeMore))
	{
		return TRUE;
	};
};

func void KDW_14002_Tenho_canLearnScrolls_Info()
{
	AI_Output(other, self, "KDW_14002_Tenho_canLearnScrolls_Info_15_01"); // Kann ich auch Lernen Spruchrollen zu schreiben?
	AI_Output(self, other, "KDW_14002_Tenho_canLearnScrolls_Info_03_02"); // Wenn du das unbedingt möchtest.
	AI_Output(self, other, "KDW_14002_Tenho_canLearnScrolls_Info_03_03"); // Geh zu Goran. Er wird dich unterweisen.
};
