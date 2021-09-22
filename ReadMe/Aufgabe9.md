# Aufgabe 9
Es soll aus der fahrzeiten_soll_ist Tabelle eine vereinfachte Tabelle Ankunftszeiten erstellt werden.

Um dies zu lösen wurde mit dem UNION Befhl gearbeitet.

UNION:

Der MySQL UNION-Operator wird verwendet, um die Ergebnismengen von 2 oder mehr SELECT-Anweisungenzu kombinieren. Es entfernt doppelte Zeilen zwischen den verschiedenen SELECT-Anweisungen.

Jede SELECT-Anweisung innerhalb des UNION-Operators muss die gleiche Anzahl von Feldern in den Ergebnismengen mit ähnlichen Datentypen aufweisen.

Erarbeitetes Script:

![script](/Images/Aufgabe9/script.jpg)

Link zum Script:[Script](/Scripts/Aufgabe9/create_arrival_times_table.sql)

Die erzeugte Tabele sieht wie folgt aus:(teil ausschnitt)

![tabelle](/Images/Aufgabe9/tabelle.jpg)

Das ERD sieht wie folgt aus:

![erd](/Images/Aufgabe9/erd.jpg)

Link zum ERD:[erd](/Diagrams/Aufgabe9/Aufgabe9.erd)