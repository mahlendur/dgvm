// Diese Datei wurde automatisch durch den Miranda Dialog Creator erstellt!
// Sie sollte nicht manuell editiert werden, da Änderungen beim erneuten Aufruf
// des Creators überschrieben werden!


// **************************************************

instance KDF_1402_Sellan_Exit (C_INFO)
{
	npc			= KDF_1402_Sellan;
	condition		= KDF_1402_Sellan_Exit_Condition;
	information		= KDF_1402_Sellan_Exit_Info;
	important		= FALSE;
	permanent		= TRUE;
	nr			= 999;
	description		= DIALOG_ENDE;
};

func int KDF_1402_Sellan_Exit_Condition()
{
	return TRUE;
};

func void KDF_1402_Sellan_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************

instance KDF_1402_Sellan_welcomeToMonastery (C_INFO)
{
	npc			= KDF_1402_Sellan;
	condition		= KDF_1402_Sellan_welcomeToMonastery_Condition;
	information		= KDF_1402_Sellan_welcomeToMonastery_Info;
	important		= TRUE;
	permanent		= FALSE;
};

func int KDF_1402_Sellan_welcomeToMonastery_Condition()
{
	return TRUE;
};

func void KDF_1402_Sellan_welcomeToMonastery_Info()
{
	AI_Output(self, other, "KDF_1402_Sellan_welcomeToMonastery_Info_08_01"); // Willkommen, Reisender!
	AI_Output(self, other, "KDF_1402_Sellan_welcomeToMonastery_Info_08_02"); // Sei herzlich begrüßt im Kloster der Eismagier.
	AI_Output(self, other, "KDF_1402_Sellan_welcomeToMonastery_Info_08_03"); // Mein Name ist Sellan.
	AI_Output(self, other, "KDF_1402_Sellan_welcomeToMonastery_Info_08_04"); // Wie kann ich dir helfen?
};

// **************************************************

instance KDF_1402_Sellan_goIn (C_INFO)
{
	npc			= KDF_1402_Sellan;
	condition		= KDF_1402_Sellan_goIn_Condition;
	information		= KDF_1402_Sellan_goIn_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich würde gerne ins Kloster!";
};

func int KDF_1402_Sellan_goIn_Condition()
{
	return TRUE;
};

func void KDF_1402_Sellan_goIn_Info()
{
	AI_Output(other, self, "KDF_1402_Sellan_goIn_Info_15_01"); // Ich würde gerne ins Kloster!
	AI_Output(self, other, "KDF_1402_Sellan_goIn_Info_08_02"); // Und was möchtest du tun, sobald du im Kloster bist?
	Info_ClearChoices(KDF_1402_Sellan_goIn);
	Info_AddChoice(KDF_1402_Sellan_goIn, "Ich will dem Orden beitreten!", KDF_1402_Sellan_goIn_wannaJoin);
	Info_AddChoice(KDF_1402_Sellan_goIn, "Ich will beten!", KDF_1402_Sellan_goIn_wannaPray);
	Info_AddChoice(KDF_1402_Sellan_goIn, "Ich möchte mit den Magiern sprechen.", KDF_1402_Sellan_goIn_wannaTalk);
};

func void KDF_1402_Sellan_goIn_wannaJoin()
{
	AI_Output(other, self, "KDF_1402_Sellan_goIn_wannaJoin_15_01"); // Ich will dem Orden beitreten!
	AI_Output(self, other, "KDF_1402_Sellan_goIn_wannaJoin_08_02"); // Tut mir leid, leider kann ich dich nicht einlassen.
	AI_Output(self, other, "KDF_1402_Sellan_goIn_wannaJoin_08_03"); // Ich benötige die Zustimmung eines Magiers, um dir den Zutritt zu gewähren.
	Info_ClearChoices(KDF_1402_Sellan_goIn);
};

func void KDF_1402_Sellan_goIn_wannaPray()
{
	AI_Output(other, self, "KDF_1402_Sellan_goIn_wannaPray_15_01"); // Ich will beten!
	AI_Output(self, other, "KDF_1402_Sellan_goIn_wannaPray_08_02"); // Dafür findest du auf der ganzen Insel verteilt Schreine.
	AI_Output(self, other, "KDF_1402_Sellan_goIn_wannaPray_08_03"); // Hier im Kloster widmen sich die Magier ihren Studien.
	AI_Output(self, other, "KDF_1402_Sellan_goIn_wannaPray_08_04"); // Ich kann dich nicht im Kloster beten lassen, solange du dem Orden nicht angehörst.
	Info_ClearChoices(KDF_1402_Sellan_goIn);
};

func void KDF_1402_Sellan_goIn_wannaTalk()
{
	AI_Output(other, self, "KDF_1402_Sellan_goIn_wannaTalk_15_01"); // Ich möchte mit den Magiern sprechen.
	AI_Output(self, other, "KDF_1402_Sellan_goIn_wannaTalk_08_02"); // Die Magier im Kloster sind sehr beschäftigt. Ich glaube nicht, dass sie Zeit haben, sich mit dir zu unterhalten.
	AI_Output(self, other, "KDF_1402_Sellan_goIn_wannaTalk_08_03"); // Geh in die Stadt und suche nach einem Magier. Er wird dir mehr über das Kloster erzählen können.
	Info_ClearChoices(KDF_1402_Sellan_goIn);
};

// **************************************************

instance KDF_1402_Sellan_gotLetter (C_INFO)
{
	npc			= KDF_1402_Sellan;
	condition		= KDF_1402_Sellan_gotLetter_Condition;
	information		= KDF_1402_Sellan_gotLetter_Info;
	important		= FALSE;
	permanent		= FALSE;
	description		= "Ich habe hier einen Brief vom Magier Marius.";
};

func int KDF_1402_Sellan_gotLetter_Condition()
{
	if ((Npc_KnowsInfo(hero, KDF_1402_Sellan_goIn)) && ((Npc_HasItems(hero, ItWr_MariusMessage) >= 1) || (Npc_HasItems(hero, ItWr_MariusMessage_Sealed) >= 1)))
	{
		return TRUE;
	};
};

func void KDF_1402_Sellan_gotLetter_Info()
{
	AI_Output(other, self, "KDF_1402_Sellan_gotLetter_Info_15_01"); // Ich habe hier einen Brief vom Magier Marius.
	AI_Output(self, other, "KDF_1402_Sellan_gotLetter_Info_08_02"); // So, du hast also mit einem Magier gesprochen?
	AI_Output(self, other, "KDF_1402_Sellan_gotLetter_Info_08_03"); // Zeig her den Brief!
	if (Npc_HasItems(hero, ItWr_MariusMessage) >= 1)
	{
		B_GiveInvItems(other, self, ItWr_MariusMessage,  1);
		AI_Output(self, other, "KDF_1402_Sellan_gotLetter_Info_08_04"); // Aber... Der Brief ist ja geöffnet!
		AI_Output(other, self, "KDF_1402_Sellan_gotLetter_Info_15_05"); // Ich war neugierig...
		AI_Output(self, other, "KDF_1402_Sellan_gotLetter_Info_08_06"); // Lass das nicht die anderen Magier hören.
		AI_Output(self, other, "KDF_1402_Sellan_gotLetter_Info_08_07"); // Wenn ein Magier einen Brief versiegelt, so soll er nur von demjenigen geöffnet werden, für den der Brief bestimmt ist.
		AI_Output(self, other, "KDF_1402_Sellan_gotLetter_Info_08_08"); // Ich werde ein Auge zudrücken und dich nicht verpfeifen.
		AI_UseItem(self, ItWr_MariusMessage);
	}
	else
	{
		B_GiveInvItems(other, self, ItWr_MariusMessage_Sealed,  1);
		AI_Output(self, other, "KDF_1402_Sellan_gotLetter_Info_08_09"); // Oh, ein Siegelbrief. Es kommt selten vor, dass ein Magier versiegelte Briefe von einem Fremden überbringen lässt.
		AI_Output(self, other, "KDF_1402_Sellan_gotLetter_Info_08_10"); // Mal sehen, was er schreibt...
		B_UseFakeScroll();
	};
	AI_Output(self, other, "KDF_1402_Sellan_gotLetter_Info_08_11"); // In Ordnung. Marius schreibt, ich soll dich ins Kloster einlassen.
	AI_Output(self, other, "KDF_1402_Sellan_gotLetter_Info_08_12"); // Er sagt, er spüre eine große Macht in dir.
	AI_Output(self, other, "KDF_1402_Sellan_gotLetter_Info_08_13"); // Desweiteren soll ich dich zum hohen Rat schicken.
	AI_Output(self, other, "KDF_1402_Sellan_gotLetter_Info_08_14"); // Hier, nimm den Schlüssel zum Kloster. Damit kannst du die Türe aufschließen.
	CreateInvItems(self, ItKe_Innos_MIS,  1);
	B_GiveInvItems(self, other, ItKe_Innos_MIS,  1);
	AI_Output(self, other, "KDF_1402_Sellan_gotLetter_Info_08_15"); // Geh am Besten direkt zum Hohen Rat. Du findest ihn in der Kirche. Begegne ihnen mit Respekt und überbringe den Brief.
	B_LogEntry(TOPIC_newLife, "Sellan, der Novize vor dem Kloster der Eismagier hat mir den Zutritt zu den heiligen Mauern gewährt. Ich soll zum Hohen Rat gehen und ihnen den Brief von Marius übergeben.");
	CreateInvItems(self, ItWr_MariusMessage,  1);
	B_GiveInvItems(self, other, ItWr_MariusMessage,  1);
	AI_Output(self, other, "KDF_1402_Sellan_gotLetter_Info_08_16"); // Geh mit Adanos Segen!
	AI_StopProcessInfos(self);
};
