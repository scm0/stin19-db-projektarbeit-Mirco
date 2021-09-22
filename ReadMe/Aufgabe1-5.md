# Aufgabe 1-5
## Aufgabe 1 Aufgabenstellung

Mit den Daten im folgenden Link lassen sich die Soll und Ist Zeiten der Verkehrsbetriebe Zürich vergleichen.
https://data.stadt-zuerich.ch/dataset/vbz_fahrzeiten_ogd_2020  

Das Datenmodell besteht aus drei Tabellen:
- fahrzeiten_soll_ist
- haltepunkte
- haltestellen

Die beiden Tabellen «Haltestelle.csv» und «Haltepunkt.csv» dienen als Matchingtabellen. 
Als Fremdschlüssel dienen dabei die Attribute «halt_punkt_id_von» und 
«halt_punkt_id_nach». 

Die Datenquelle enthält die Fahrt eines Trams oder Bus von einer von zu einer nach Haltestelle.

![grafik_fahrt](/Images/Aufgabe1-5/grafik_fahrt.JPG)

Anbei ein Auszug der Information aus der Tabelle fahrzeiten_soll_ist. Die Tabelle zeigt, die Tram Linie 
2 am 30.12.2018 

![auszug_linie2](/Images/Aufgabe1-5/auszug_linie2.JPG)

Bezirksgebäude - Stauffacher - Sihlstrasse - Paradeplatz - Kantonalbank - Bürkliplatz - Bellevue - 
Opernhaus - Kreuzstrasse - Feldeggstrasse - Höschgasse - Fröhlichstrasse - Wildbachstrasse – (BTIE) 
Bahnhof Tiefenbrunnen. 

## Aufgabe 2 Datenquellen einrichten

### Download der Daten

Für diese Aufgaben werden die CSV Daten von der VBZ und ein MYSQL8 Schema vbzdata.

Es sind folgende Daten zu Downloaden und in einem Ordner zu Speichern:
- Haltestellen.csv
- Haltepunkte.csv
- Fahrzeiten_SOLL_IST_20201227_20210101.csv

Unter dem Link: https://data.stadt-zuerich.ch/dataset/vbz_fahrzeiten_ogd_2020 

### CSV Datenquellen in DBeaver einrichten

Unter new Database Connection CSV auswählen.

![connection_csv](/Images/Aufgabe1-5/connection_csv.jpg)

Erstellter Ordner in Pfad einfügen.

![pfad_csv](/Images/Aufgabe1-5/csv_pfad.jpg)

Resultat:

![resultat_csv](/Images/Aufgabe1-5/csv_resultat.jpg)

## Aufgabe 3 Migration Haltepunkte

Die csv Datei haltepunkte muss nun in die Datenbank vbzdata migriert werden.

Dies geschieht über den Export Assistenten

Schritt 1:
- ![schritt1](/Images/Aufgabe1-5/mig_export.jpg)

Schritt 2:
- ![schritt2](/Images/Aufgabe1-5/mig_target_database.jpg)

Schritt 3:
- ![schritt3](/Images/Aufgabe1-5/mig_ziel_db.jpg)

Schritt 4:
- ![schritt4](/Images/Aufgabe1-5/mig_ziel_db.jpg)

Schritt 5:
- ![schritt5](/Images/Aufgabe1-5/mig_mapping_hp.jpg)

Schritt 6:
- ![schritt6](/Images/Aufgabe1-5/mig_datensätze.jpg)

Schritt 7:
- ![schritt7](/Images/Aufgabe1-5/mig_save_task.jpg)

Anschliessend müssen in der Tabele unter Columns die Primarey Key gesetzt werden.

## Aufgabe 4 Migration Haltestelle

Hier muss das selbe gemacht werden mit der csv Datei haltestelle wie bei Aufgabe 3.

Das Mapping für diese Aufgabe sieht wie folgt aus:

![mapping](/Images/Aufgabe1-5/mig_mapping_hs.jpg)

## Aufgabe 5 Migration Fahrzeiten soll ist

Hier muss das selbe gemacht werden mit der csv Datei fahrzeiten_soll_ist wie bei Aufgabe 3.

Das Mapping für diese Aufgabe sieht wie folgt aus:

![mapping](/Images/Aufgabe1-5/mig_mapping_fsi.jpg)

Nach dem laden der Tabelle kann ein Renaming durchgeführt werden.








