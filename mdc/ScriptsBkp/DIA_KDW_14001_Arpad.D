// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!


// **************************************************

instance KDW_14001_Arpad_Exit (C_INFO)
{
	npc			= KDW_14001_Arpad;
	condition		= KDW_14001_Arpad_Exit_Condition;
	information		= KDW_14001_Arpad_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int KDW_14001_Arpad_Exit_Condition()
{
	return TRUE;
};

func void KDW_14001_Arpad_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance KDW_14001_Arpad_whoAreYou (C_INFO)
{
	npc			= KDW_14001_Arpad;
	condition		= KDW_14001_Arpad_whoAreYou_Condition;
	information		= KDW_14001_Arpad_whoAreYou_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int KDW_14001_Arpad_whoAreYou_Condition()
{
	return TRUE;
};

func void KDW_14001_Arpad_whoAreYou_Info()
{
	AI_Output(self, other, "KDW_14001_Arpad_whoAreYou_Info_05_01"); // Wo kommst du denn her?
	AI_Output(self, other, "KDW_14001_Arpad_whoAreYou_Info_05_02"); // Wie hast du es geschafft, durch die Barriere zu gelangen?
	AI_Output(other, self, "KDW_14001_Arpad_whoAreYou_Info_15_03"); // Barriere? Welche Barriere?
	AI_Output(self, other, "KDW_14001_Arpad_whoAreYou_Info_05_04"); // Hast du es nicht bemerkt?
	AI_Output(other, self, "KDW_14001_Arpad_whoAreYou_Info_15_05"); // Was denn?
	AI_Output(self, other, "KDW_14001_Arpad_whoAreYou_Info_05_06"); // Das gesamte nähere Umland ist von einer magischen Barriere umgeben.
	AI_Output(self, other, "KDW_14001_Arpad_whoAreYou_Info_05_07"); // Sie wirkt sich auf die Psyche desjenigen aus, der versucht sie zu durchbrechen.
	AI_Output(self, other, "KDW_14001_Arpad_whoAreYou_Info_05_08"); // (neugierig) Also erzähl: Wie hast du es durchgeschafft?
	Info_ClearChoices(KDW_14001_Arpad_whoAreYou);
	Info_AddChoice(KDW_14001_Arpad_whoAreYou, "Ich bin einfach durchgelaufen!", KDW_14001_Arpad_whoAreYou_justWalked);
	Info_AddChoice(KDW_14001_Arpad_whoAreYou, "Ich habe keine Ahnung, was ich getan habe!", KDW_14001_Arpad_whoAreYou_noClue);
};

func void KDW_14001_Arpad_whoAreYou_justWalked()
{
	AI_Output(other, self, "KDW_14001_Arpad_whoAreYou_justWalked_15_01"); // Ich bin einfach durchgelaufen!
	AI_Output(self, other, "KDW_14001_Arpad_whoAreYou_justWalked_05_02"); // Echt? Dann musst du eine stark ausgeprägte Affinität zur Magie haben.
	AI_Output(self, other, "KDW_14001_Arpad_whoAreYou_justWalked_05_03"); // Denn nur Magier und solche, die eine magische Veranlagung in sich tragen können die Barriere unbeschadet passieren.
	AI_Output(self, other, "KDW_14001_Arpad_whoAreYou_justWalked_05_04"); // Du solltest schnellstens in den Turm gehen und mit unserem Meister sprechen.
	AI_Output(self, other, "KDW_14001_Arpad_whoAreYou_justWalked_05_05"); // Er wird sich bestimmt brennend für dich interessieren.
	B_LogEntry(TOPIC_newLife, "Ein Novize der schwarzen Magie hat sich darüber gewundert, dass ich es bis zum schwarzen Turm geschafft habe. Scheinbar habe ich eine starke magische Veranlagung. Der Novize sagte, ich solle schnellstmöglich mit seinem Meister im Turm sprechen. Vielleicht nehmen sie mich ja in ihrem Kreis auf?");
	Info_ClearChoices(KDW_14001_Arpad_whoAreYou);
};

func void KDW_14001_Arpad_whoAreYou_noClue()
{
	AI_Output(other, self, "KDW_14001_Arpad_whoAreYou_noClue_15_01"); // Ich habe keine Ahnung, was ich getan habe!
	AI_Output(self, other, "KDW_14001_Arpad_whoAreYou_noClue_05_02"); // Wahnsinn. Normalerweise brauchen selbst wir eine ganze Menge Konzentration um hierher zu gelangen.
	AI_Output(self, other, "KDW_14001_Arpad_whoAreYou_noClue_05_03"); // Du solltest schnellstens in den Turm gehen und mit unserem Meister sprechen.
	AI_Output(self, other, "KDW_14001_Arpad_whoAreYou_noClue_05_04"); // Er wird sich bestimmt brennend für dich interessieren.
	B_LogEntry(TOPIC_newLife, "Ein Novize der schwarzen Magie hat sich darüber gewundert, dass ich es bis zum schwarzen Turm geschafft habe. Scheinbar habe ich eine starke magische Veranlagung. Der Novize sagte, ich solle schnellstmöglich mit seinem Meister im Turm sprechen. Vielleicht nehmen sie mich ja in ihrem Kreis auf?");
	Info_ClearChoices(KDW_14001_Arpad_whoAreYou);
};

// **************************************************

instance KDW_14001_Arpad_whatBarrier (C_INFO)
{
	npc			= KDW_14001_Arpad;
	condition		= KDW_14001_Arpad_whatBarrier_Condition;
	information		= KDW_14001_Arpad_whatBarrier_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Was macht die Barriere genau?";
};

func int KDW_14001_Arpad_whatBarrier_Condition()
{
	if (Npc_KnowsInfo(hero, KDW_14001_Arpad_whoAreYou))
	{
		return TRUE;
	};
};

func void KDW_14001_Arpad_whatBarrier_Info()
{
	AI_Output(other, self, "KDW_14001_Arpad_whatBarrier_Info_15_01"); // Was macht die Barriere genau?
	AI_Output(other, self, "KDW_14001_Arpad_whatBarrier_Info_15_02"); // Ich hörte einmal Gerüchte über eine magische Barriere, die Menschen hinein, aber nicht mehr herauslässt.
	AI_Output(self, other, "KDW_14001_Arpad_whatBarrier_Info_05_03"); // Das wäre ja ziemlich dämlich in unserer Situation.
	AI_Output(self, other, "KDW_14001_Arpad_whatBarrier_Info_05_04"); // Nein, unsere Barriere wirkt wie gesagt psychisch. Wenn du dich ihr näherst, merkst du zuerst leichte Kopfschmerzen.
	AI_Output(self, other, "KDW_14001_Arpad_whatBarrier_Info_05_05"); // Wer magisch begabt ist, merkt wenig bis gar nichts davon. Und nach einer Zeit hast du dich sowieso daran gewöhnt.
	AI_Output(self, other, "KDW_14001_Arpad_whatBarrier_Info_05_06"); // Und hier im inneren Bereich sind keine Auswirkungen mehr spürbar. Sonst wäre die Hälfte von uns wahrscheinlich verrückt.
};
