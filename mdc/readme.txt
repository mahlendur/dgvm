Der Miranda Dialog Creator wurde erstellt von Frederic "Fizzban" Weymann. 

Die offizielle Homepage ist http://www.fizzban.net/creator.html

Der Creator ist in JAVA geschrieben, sie benötigen also zum Starten eine aktuelle Version der J2SE (http://java.sun.com/).

Nach der Installation kann einfach die MirandaDialogCreator.jar mittels Doppelclick gestartet werden. 
Danach werden sie zuerst aufgefordert, die von ihnen erstellte Dialogdatei (Dateiendung .DIA) und danach ein Zielverzeichnis
für die generierten Skripte auszuwählen. Anstelle einer DIA-Datei können sie auch ein Verzeichnis angeben. Der Creator
bearbeitet dann alle *.DIA-Datei in diesem Verzeichnis.

VORSICHT: Der Creator überschreibt eventuelle Skriptdateien im Zielverzeichnis! Daher ist es am besten, wenn man ein
eigenes Verzeichnis für generierte Skriptdateien anlegt, in dem man keine Änderungen per Hand vornimmt.

Alternativ kann der Creator mittels

java -jar MirandaDialogCreator.jar

gestartet werden. In diesem Fall können auch direkt DIA-Datei und Zielverzeichnis als Parameter angegeben werden, z.B.

java -jar MirandaDialogCreator.jar example.dia scripts
java -jar MirandaDialogCreator.jar VerzeichnisMitDIADateien scripts

Es können im zweiten Fall noch zwei Feature per Option aktiviert werden:

java -jar -x MirandaDialogCreator.jar example.dia scripts

erzeugt eine Datei alllines.txt im "scripts"-Verzeichnis, welches sämtliche Dialogzeile und ihre automatisch generierten IDs 
auflistet. Zeilen des Heldes werden speziell markiert.

java -jar -c MirandaDialogCreator.jar example.dia scripts

führt dazu, dass der MDC versucht, die Anzahl der Untertitelboxen zu reduzieren. Dazu werden alle aufeinanderfolgendenen 
Zeilen eines Charakters zunächst zusammengefasst und dann so auf die Boxen verteilt, dass keine Sätze zerrissen werden
(d.h. Anfang eines Satz in einer Box und Ende des Satzes erst in der nächsten) und alle Boxen möglichst voll sind.

java -jar -x -c MirandaDialogCreator.jar example.dia scripts

aktiviert beides.

Version History:

1.0: 

- Erste veröffentlichte Version

1.1: 

- Beschränkungen bei der Verwendung von % und %% aufgehoben
- Unterstützung von Parsen aller DIA-Dateien in einem Verzeichnis
- Neuer Befehle $ELSEIF

1.2

- Neuer Flag neben important und permanent: trade, was den Dialog zu einem Handeldialog macht
- Neue Option NUM:, welche es erlaubt, die Reihenfolge der Dialoge zu beeinflussen
- Spezielle Taschendiebstahl-Dialoge eingefügt
- Setzt man ein Ausrufezeichen vor eine Beschreibung, wird der folgende String als Daedalus-Konstante aufgefasst (z.B. !DIALOG_ENDE)
- Dialogoptionen eines anderen Dialoges können % eingefügt werden
- Neuer Befehl $EXP: Vergibt Erfahrungspunkte an den Spieler
- Neuer Befehl $STARTMIS: Startet eine Quest und trägt sie unter "Aktuelle Missionen" ins Tagebuch ein
- Neuer Befehl $LOGMISS/$LOGNOTE: Schreibt eine neue Zeile ins Tagebuch und erzeugt die Ausgabe "Neuer Tagebucheintrag"
- Neuer Befehl $MISSUCC, $MISFAIL, $MISOBSO: Markiert eine Quest als erfolgreich, fehlgeschlagen oder veraltert und passt das Tagebuch an
- Auf Wunsch versucht der MDC, aufeinanderfolgende Zeilen des selben Charakters so zusammenzufassen, dass die Untertitelboxen möglichst voll werden.
- Auf Wunsch werden alle erstellten Dialogzeilen mit ID ausgegeben. Kann praktisch sein bei der Aufnahme von der Sprachausgabe
