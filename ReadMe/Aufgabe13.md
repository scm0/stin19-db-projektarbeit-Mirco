# Aufgabe 13
Es soll eine Geo-Koordinate in Zürich gewählt werden. Ich habe mich für den Hauptbahnhof in Zürich entschieden. lat:47.377220 long: 8.539902
Von diesem Punkt aus sollen die nächsten 4 Stationen der Linie 6 angezeigt werden.

Dazu wurde ein Script erstellt, das eine Select generiert, die man als Export verwenden kann. Für die Berechnung wurde die Funktion ST_Distance_Sphere verwendet.

![script](/Images/Aufgabe13/script.JPG)

![view](/Images/Aufgabe13/view.JPG)

Link zum Script:[Script](/Scripts/Aufgabe13/next_4_Station.sql)

Die Spalte distance wurde im Export auf note umbennent.

Link zur Tabelle:[Tabelle](/csv.files/maps.linie6.next4station.csv)

Das Ergebnis auf der Karte sieht wie folgt aus:

![mapping](/Images/Aufgabe13/mapping.JPG)