# Aufgabe 13
Es soll eine Geo-Koordinate in Zürich Gewäht werden. Ich habe mich für den Hauptbahnhof in Zürich entschieden. lat:47.377220 long: 8.539902
Von diesem Punkt aus sollen die nächsten 4 Stationen von der Linie 6 angezeigt werden.

Dazu wurde ein Script erstellt das eine Select generiert das man als Export verwenden kann. Für die Berechnung wurde die Funktion ST_Distance_Sphere verwendet.

![script](/Images/Aufgabe13/script.jpg)

![view](/Images/Aufgabe13/view.jpg)

Link zum Script:[Script](/Scripts/Aufgabe13/next_4_Station.sql)

Der Export wurde in der Spalte distance umbennent auf note.

Link zur Tabelle:[Tabelle](/csv.files/maps.line6.next4station.csv)

Das Ergebniss auf der Karte sieht wie folgt aus:

![mapping](/Images/Aufgabe13/mapping.jpg)