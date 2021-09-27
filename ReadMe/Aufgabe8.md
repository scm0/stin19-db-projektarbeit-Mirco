# Aufgabe 8
## Aufgabe a
Die Abfrage soll  fahrweg_id, linie, richtung, Fahrwegnummer (fw_no) und die Fahrwegbezeichnung 
(fw_lang) enthalten. Die View soll die verschiedenen Varianten anzeigen, welche es pro Richtung gibt.

Für die Abfrage muss **SELECT DISTINCT** verwendet werden, dass eine Linie nur einmal erscheint.

Das Script sieht wie folgt aus:

![script](/Images/Aufgabe8/script8a.JPG)

Das Resultat sieht folgendermase aus:

![script](/Images/Aufgabe8/resultat8a.jpg)

Link zum Script:[Script](/Scripts/Aufgabe8/Aufgabe8a.sql)

## Aufgabe b
Erstellen Sie aus der Abfrage eine View query_line 

Dazu wurde der Befehl in das Script eingefügt:
- create or replace view aufgabe8_lines_query

Das Script sieht wie folgt aus:

![script](/Images/Aufgabe8/script8b.JPG)

Das Resultat sieht folgendermase aus:

![script](/Images/Aufgabe8/resultat8b.JPG)

Link zum Script:[Script](/Scripts/Aufgabe8/Aufgabe8b.sql)

## Aufgabe c
Erstellen Sie ein Skript mit einer Tabellenerstellungsabfrage create_line_table. 

Hilfestellung unter folgendem Link: https://dev.mysql.com/doc/refman/8.0/en/create-table-select.html  

Die zu erzeugende Tabelle soll linie heissen der Primary Key soll mit der Spalte fahrweg_id umgesetzt werden.

Dazu wurden folgende Befehle benutzt:
- DROP TABLE IF EXISTS linie;
- CREATE TABLE linie (PRIMARY KEY (fahrweg_id))

Das Script sieht wie folgt aus:

![script](/Images/Aufgabe8/script8c.JPG)

Das Resultat sieht folgendermase aus:

![script](/Images/Aufgabe8/resultat8c.JPG)

Link zum Script:[Script](/Scripts/Aufgabe8/create_line_table.sql)