// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!


// **************************************************

instance SLD_702_Kilian_Exit (C_INFO)
{
	npc			= SLD_702_Kilian;
	condition		= SLD_702_Kilian_Exit_Condition;
	information		= SLD_702_Kilian_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int SLD_702_Kilian_Exit_Condition()
{
	return TRUE;
};

func void SLD_702_Kilian_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance SLD_702_Kilian_attention (C_INFO)
{
	npc			= SLD_702_Kilian;
	condition		= SLD_702_Kilian_attention_Condition;
	information		= SLD_702_Kilian_attention_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int SLD_702_Kilian_attention_Condition()
{
	return TRUE;
};

func void SLD_702_Kilian_attention_Info()
{
	AI_Output(self, other, "SLD_702_Kilian_attention_Info_09_01"); // Hey du, pass doch auf!
	AI_Output(self, other, "SLD_702_Kilian_attention_Info_09_02"); // Siehst du nicht, dass ich hier trainiere?
	AI_Output(self, other, "SLD_702_Kilian_attention_Info_09_03"); // Fast hätte ich dich verletzt. Was machst du überhautp hier?
};

// **************************************************

instance SLD_702_Kilian_wannaJoin (C_INFO)
{
	npc			= SLD_702_Kilian;
	condition		= SLD_702_Kilian_wannaJoin_Condition;
	information		= SLD_702_Kilian_wannaJoin_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich will bei euch mitmachen!";
};

func int SLD_702_Kilian_wannaJoin_Condition()
{
	if (Npc_KnowsInfo(hero, SLD_702_Kilian_attention))
	{
		return TRUE;
	};
};

func void SLD_702_Kilian_wannaJoin_Info()
{
	AI_Output(other, self, "SLD_702_Kilian_wannaJoin_Info_15_01"); // Ich will bei euch mitmachen!
	AI_Output(self, other, "SLD_702_Kilian_wannaJoin_Info_09_02"); // Dann sieh zu und lerne. Wer nicht mit dem Schwert umgehen kann, der hat bei uns nichts verloren.
	AI_Output(self, other, "SLD_702_Kilian_wannaJoin_Info_09_03"); // Ich bin Kilian, ich kann dir beibringen, wie du besser mit dem Schwert wirst.
};

// **************************************************

instance SLD_702_Kilian_canTeach (C_INFO)
{
	npc			= SLD_702_Kilian;
	condition		= SLD_702_Kilian_canTeach_Condition;
	information		= SLD_702_Kilian_canTeach_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Hilf mir, meinen Kampfstil zu verbessern!";
};

func int SLD_702_Kilian_canTeach_Condition()
{
	if (Npc_KnowsInfo(hero, SLD_702_Kilian_wannaJoin))
	{
		return TRUE;
	};
};

func void SLD_702_Kilian_canTeach_Info()
{
	AI_Output(other, self, "SLD_702_Kilian_canTeach_Info_15_01"); // Hilf mir, meinen Kampfstil zu verbessern!
	AI_Output(self, other, "SLD_702_Kilian_canTeach_Info_09_02"); // Sprich erst mit Rodar und Jareck. Wenn die beiden dich bei uns Söldnern aufnehmen, werde ich dir alles beibringen, was ich weiß.
};

// **************************************************

instance SLD_702_Kilian_yourHint (C_INFO)
{
	npc			= SLD_702_Kilian;
	condition		= SLD_702_Kilian_yourHint_Condition;
	information		= SLD_702_Kilian_yourHint_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Hast du einen Hinweis für mich, wer euer Informant bei der Stadtwache ist?";
};

func int SLD_702_Kilian_yourHint_Condition()
{
	if ((Npc_KnowsInfo(hero, SLD_702_Kilian_wannaJoin)) && (MIS_newInfos == LOG_RUNNING))
	{
		return TRUE;
	};
};

func void SLD_702_Kilian_yourHint_Info()
{
	AI_Output(other, self, "SLD_702_Kilian_yourHint_Info_15_01"); // Hast du einen Hinweis für mich, wer euer Informant bei der Stadtwache ist?
	AI_Output(self, other, "SLD_702_Kilian_yourHint_Info_09_02"); // Warum sollte ich dir was sagen?
	AI_Output(other, self, "SLD_702_Kilian_yourHint_Info_15_03"); // Jareck schickt mich, seinen Bericht zu holen. Aber er vertraut mir noch nicht genug, um mir den Namen zu nennen.
	AI_Output(other, self, "SLD_702_Kilian_yourHint_Info_15_04"); // Ich soll Hinweise holen und selber nachdenken, wer der Informant ist.
	AI_Output(self, other, "SLD_702_Kilian_yourHint_Info_09_05"); // Kluge Entscheidung. Hör zu: Unser Informant wird sich zu erkennen geben, wenn du ihm folgendes sagst:
	AI_Output(self, other, "SLD_702_Kilian_yourHint_Info_09_06"); // "Eine Rose für Epona"
	AI_Output(self, other, "SLD_702_Kilian_yourHint_Info_09_07"); // Dann wird er dir seine Informationen geben.
	var int s; s = SB_New();
	SB("Hinweise: ");
	SBi(hintCounter);
	SB("/4");
	AI_PrintS(self, SB_ToString());
	SB_Destroy();
	hintcounter += 1;
	B_LogEntry(TOPIC_newInfos, "Das Codewort der Söldner für ihren Informanten lautet 'Eine Rose für Epona'.");
	AI_Output(other, self, "SLD_702_Kilian_yourHint_Info_15_08"); // Ist das nicht etwas klischeebehaftet?
	AI_Output(self, other, "SLD_702_Kilian_yourHint_Info_09_09"); // Mag sein, aber es funktioniert.
	AI_Output(self, other, "SLD_702_Kilian_yourHint_Info_09_10"); // Bisher ist er nicht aufgeflogen.
	AI_Output(self, other, "SLD_702_Kilian_yourHint_Info_09_11"); // Also hüte dich, dem Falschen diesen Satz zu sagen.
};
