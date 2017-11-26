// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!


// **************************************************

instance SLD_701_Silvan_Exit (C_INFO)
{
	npc			= SLD_701_Silvan;
	condition		= SLD_701_Silvan_Exit_Condition;
	information		= SLD_701_Silvan_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int SLD_701_Silvan_Exit_Condition()
{
	return TRUE;
};

func void SLD_701_Silvan_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance SLD_701_Silvan_heyYou (C_INFO)
{
	npc			= SLD_701_Silvan;
	condition		= SLD_701_Silvan_heyYou_Condition;
	information		= SLD_701_Silvan_heyYou_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int SLD_701_Silvan_heyYou_Condition()
{
	return TRUE;
};

func void SLD_701_Silvan_heyYou_Info()
{
	AI_Output(self, other, "SLD_701_Silvan_heyYou_Info_02_01"); // Hey, wo willst du denn hin?
	AI_Output(other, self, "SLD_701_Silvan_heyYou_Info_15_02"); // Da rein! Oder was dachtest du?
	AI_Output(self, other, "SLD_701_Silvan_heyYou_Info_02_03"); // Werd' jetzt nicht frech!
	AI_Output(self, other, "SLD_701_Silvan_heyYou_Info_02_04"); // Was willst du?
};

// **************************************************

instance SLD_701_Silvan_whoAreYou (C_INFO)
{
	npc			= SLD_701_Silvan;
	condition		= SLD_701_Silvan_whoAreYou_Condition;
	information		= SLD_701_Silvan_whoAreYou_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wer bist du?";
};

func int SLD_701_Silvan_whoAreYou_Condition()
{
	if (Npc_KnowsInfo(hero, SLD_701_Silvan_heyYou))
	{
		return TRUE;
	};
};

func void SLD_701_Silvan_whoAreYou_Info()
{
	AI_Output(other, self, "SLD_701_Silvan_whoAreYou_Info_15_01"); // Wer bist du?
	AI_Output(self, other, "SLD_701_Silvan_whoAreYou_Info_02_02"); // Ich bin Silvan, rechte Hand von Jareck und Söldner auf Rodars Hof.
	AI_Output(self, other, "SLD_701_Silvan_whoAreYou_Info_02_03"); // Also, machst du hier Ärger, bekommst du es mit mir zu tun.
};

// **************************************************

instance SLD_701_Silvan_wannaJoin (C_INFO)
{
	npc			= SLD_701_Silvan;
	condition		= SLD_701_Silvan_wannaJoin_Condition;
	information		= SLD_701_Silvan_wannaJoin_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich will mich euch anschließen!";
};

func int SLD_701_Silvan_wannaJoin_Condition()
{
	if (Npc_KnowsInfo(hero, SLD_701_Silvan_heyYou))
	{
		return TRUE;
	};
};

func void SLD_701_Silvan_wannaJoin_Info()
{
	AI_Output(other, self, "SLD_701_Silvan_wannaJoin_Info_15_01"); // Ich will mich euch anschließen!
	AI_Output(self, other, "SLD_701_Silvan_wannaJoin_Info_02_02"); // Du halbe Portion? (lacht) Haha, da bin bin ich ja mal gespannt.
	AI_Output(self, other, "SLD_701_Silvan_wannaJoin_Info_02_03"); // Wie du willst.
	AI_Output(self, other, "SLD_701_Silvan_wannaJoin_Info_02_04"); // Geh ruhig rein und sprich mit Rodar und Jareck. Die beiden entscheiden, ob du dabei bist.
};

// **************************************************

instance SLD_701_Silvan_whereRodar (C_INFO)
{
	npc			= SLD_701_Silvan;
	condition		= SLD_701_Silvan_whereRodar_Condition;
	information		= SLD_701_Silvan_whereRodar_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wo finde ich Rodar?";
};

func int SLD_701_Silvan_whereRodar_Condition()
{
	if (Npc_KnowsInfo(hero, SLD_701_Silvan_wannaJoin))
	{
		return TRUE;
	};
};

func void SLD_701_Silvan_whereRodar_Info()
{
	AI_Output(other, self, "SLD_701_Silvan_whereRodar_Info_15_01"); // Wo finde ich Rodar?
	AI_Output(self, other, "SLD_701_Silvan_whereRodar_Info_02_02"); // Wenn du hier durch die Türe gehst, wende dich nach links.
	AI_Output(self, other, "SLD_701_Silvan_whereRodar_Info_02_03"); // Der Bauer thront in seinem Wohnzimmer auf dem Sessel.
	AI_Output(self, other, "SLD_701_Silvan_whereRodar_Info_02_04"); // Du kannst ihn eigentlich nicht verfehlen.
};

// **************************************************

instance SLD_701_Silvan_whereJareck (C_INFO)
{
	npc			= SLD_701_Silvan;
	condition		= SLD_701_Silvan_whereJareck_Condition;
	information		= SLD_701_Silvan_whereJareck_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Wo ist Jareck?";
};

func int SLD_701_Silvan_whereJareck_Condition()
{
	if (Npc_KnowsInfo(hero, SLD_701_Silvan_wannaJoin))
	{
		return TRUE;
	};
};

func void SLD_701_Silvan_whereJareck_Info()
{
	AI_Output(other, self, "SLD_701_Silvan_whereJareck_Info_15_01"); // Wo ist Jareck?
	AI_Output(self, other, "SLD_701_Silvan_whereJareck_Info_02_02"); // Geh hoch und dann rechts. Dort findest du unser Hauptquartier.
	AI_Output(self, other, "SLD_701_Silvan_whereJareck_Info_02_03"); // Jareck hält sich die meiste Zeit des Tages dort auf.
	AI_Output(self, other, "SLD_701_Silvan_whereJareck_Info_02_04"); // Wenn nicht, sieh dich auf dem Hof um. Er wird dann irgendwo bei den Jungs sein.
};

// **************************************************

instance SLD_701_Silvan_yourHint (C_INFO)
{
	npc			= SLD_701_Silvan;
	condition		= SLD_701_Silvan_yourHint_Condition;
	information		= SLD_701_Silvan_yourHint_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Kannst du mir sagen, wer euer Informant in der Stadt ist?";
};

func int SLD_701_Silvan_yourHint_Condition()
{
	if (MIS_newInfos == LOG_RUNNING)
	{
		return TRUE;
	};
};

func void SLD_701_Silvan_yourHint_Info()
{
	AI_Output(other, self, "SLD_701_Silvan_yourHint_Info_15_01"); // Kannst du mir sagen, wer euer Informant in der Stadt ist?
	AI_Output(self, other, "SLD_701_Silvan_yourHint_Info_02_02"); // Wie bitte? Wieso sollte ich das tun?
	AI_Output(other, self, "SLD_701_Silvan_yourHint_Info_15_03"); // Jareck hat mir den Auftrag gegeben, neue Informationen zu holen. Dazu muss ich aber wissen, wer euer Informant ist.
	AI_Output(self, other, "SLD_701_Silvan_yourHint_Info_02_04"); // Und du glaubst, ich sage dir, wer es ist? Dann kann ich ihm auch selber das Schwert in die Brust stecken.
	AI_Output(self, other, "SLD_701_Silvan_yourHint_Info_02_05"); // Der neue Kommandant der Stadtwache fackelt nicht lange, wenn es um Verräter geht.
	AI_Output(self, other, "SLD_701_Silvan_yourHint_Info_02_06"); // Jareck hat sicher NICHT gesagt, dass ich dir den Namen einfach sagen soll!
	AI_Output(other, self, "SLD_701_Silvan_yourHint_Info_15_07"); // Naja, er...
	AI_Output(self, other, "SLD_701_Silvan_yourHint_Info_02_08"); // Aha. Hör zu, ich gebe dir einen Tipp, dann findest du ihn bestimmt selber.
	AI_Output(other, self, "SLD_701_Silvan_yourHint_Info_15_09"); // Genau das wollte Jareck.
	AI_Output(self, other, "SLD_701_Silvan_yourHint_Info_02_10"); // Und warum sagst du das nicht gleich?
	AI_Output(self, other, "SLD_701_Silvan_yourHint_Info_02_11"); // Gut, hör zu: Unser Informant hat sehr viel mit Waffen zu tun.
	var int s; s = SB_New();
	hintcounter += 1;
	SB("Hinweise: ");
	SBi(hintCounter);
	SB("/4");
	AI_PrintS(self, SB_ToString());
	SB_Destroy();
	B_LogEntry(TOPIC_newInfos, "Silvan, Jarecks rechte Hand gab mir den Hinweis, dass der Söldnerspitzel viel mit Waffen zu tun hat.");
	AI_Output(other, self, "SLD_701_Silvan_yourHint_Info_15_12"); // Also wie so ziemlich jedes Mitglied der Stadtwache?
	AI_Output(self, other, "SLD_701_Silvan_yourHint_Info_02_13"); // Mehr als andere, glaub es mir.
	AI_Output(self, other, "SLD_701_Silvan_yourHint_Info_02_14"); // Und nun: Such!
};
