person: SLD_702_Kilian, 9

info: Exit

info: attention
flags: important
<Hey du, pass doch auf!
<Siehst du nicht, dass ich hier trainiere?
<Fast h�tte ich dich verletzt. Was machst du �berhautp hier?

info: wannaJoin
conddia: attention
>Ich will bei euch mitmachen!
<Dann sieh zu und lerne. Wer nicht mit dem Schwert umgehen kann, der hat bei uns nichts verloren.
<Ich bin Kilian, ich kann dir beibringen, wie du besser mit dem Schwert wirst.

info: canTeach
conddia: wannaJoin
>Hilf mir, meinen Kampfstil zu verbessern!
<Sprich erst mit Rodar und Jareck. Wenn die beiden dich bei uns S�ldnern aufnehmen, werde ich dir alles beibringen, was ich wei�.

info: yourHint
conddia: wannaJoin
condcode: MIS_newInfos == LOG_RUNNING
>Hast du einen Hinweis f�r mich, wer euer Informant bei der Stadtwache ist?
<Warum sollte ich dir was sagen?
>Jareck schickt mich, seinen Bericht zu holen. Aber er vertraut mir noch nicht genug, um mir den Namen zu nennen.
>Ich soll Hinweise holen und selber nachdenken, wer der Informant ist.
<Kluge Entscheidung. H�r zu: Unser Informant wird sich zu erkennen geben, wenn du ihm folgendes sagst:
<"Eine Rose f�r Epona"
<Dann wird er dir seine Informationen geben.
!var int s; s = SB_New();
!hintcounter += 1;
!SB("Hinweise: ");
!SBi(hintCounter);
!SB("/4");
!AI_PrintS(SB_ToString);
!SB_Destroy;
$LOGMISS newInfos, Das Codewort der S�ldner f�r ihren Informanten lautet "Eine Rose f�r Epona".
>Ist das nicht etwas klischeebehaftet?
<Mag sein, aber es funktioniert.
<Bisher ist er nicht aufgeflogen.
<Also h�te dich, dem Falschen diesen Satz zu sagen.

