# Aufgabe 6 Bereinigung der Tabellen und Constraints

Bei der Bereinigung der Tabellen geht es um das Hinzufügen von Primärschlüsseln und die 
Verwendung der korrekten Datentypen (zum Beispiel für Daten). 

## Schritt 1

Es soll eine neue Spalte id in der Tabelle fahrzeiten_soll_ist als Primary Key angelegt werden.

Befehl: ALTER TABLE fahrzeiten_soll_ist ADD id INT PRIMARY KEY AUTO_INCREMENT FIRST;

## Schritt 2

Die Foreign Key Constraints von fahrzeiten_soll_ist nach haltepunkt sollen eingefügt werden.
Der Erste geht von halt_punkt_id_von zu halt_punkt_id und der Zweite geht von halt_punkt_id_nach zu haltpunkt_id.

Befehl: 
- ALTER TABLE fahrzeiten_soll_ist ADD CONSTRAINT fahrzeiten_soll_ist_FK FOREIGN KEY (halt_punkt_id_von) REFERENCES haltepunkt(halt_punkt_id); 
- ALTER TABLE fahrzeiten_soll_ist ADD CONSTRAINT fahrzeiten_soll_ist_FK_1 FOREIGN KEY (halt_punkt_id_nach) REFERENCES haltepunkt(halt_punkt_id); 

## Schritt 3

Der Foreign Key haltepunkt nach haltestelle wird eingefügt.

Befehl: ALTER TABLE haltepunkt ADD CONSTRAINT haltepunkt_FK FOREIGN KEY (halt_id) REFERENCES haltestelle(halt_id);

Das ERD sieht wie folgt aus:

![erd_aufgabe6.3](/Images/Aufgabe6/erd_aufgabe6.3.jpg)

Link zum ERD:[ERD](/Diagrams/Aufgabe06_3.erd)

## Schritt 4:

Die vorhandenen Datum-Zeit-Angaben liegen in Datum-String-Form und Sekunden ab 00.00.00 vor. 
Aus diesen Angaben soll ein DateTime bzw Date Datentyp erstellt werden: 

<table>
   <tbody>
    <tr>
      <td>betriebsdatum </td>
      <td>-> betriebs_datum </td>
      <td>Date</td>
    </tr>
    <tr>
      <td>datum_von und soll_an_von</td>
      <td> -> datumzeit_soll_an_von </td>
      <td>DateTime</td>
    </tr>
     <tr>
      <td>datum_von und ist_an_von </td>
      <td>-> datumzeit_ist_an_von</td>
      <td>DateTime</td>
    </tr>
     <tr>
      <td>datum_von und soll_ab_von</td>
      <td>-> datumzeit_soll_ab_von</td>
      <td>DateTime</td>
    </tr>
     <tr>
      <td>datum_von und ist_ab_von</td>
      <td>-> datumzeit_ist_ab_von</td>
      <td>DateTime</td>
    </tr> 
    <tr>
      <td>datum_nach</td>
      <td>-> datum_nach</td>
      <td>Date</td>
    </tr>
    </tbody>
</table>

Die dazugehörigen Befehle lauten wie folgt:
- ALTER TABLE fahrzeiten_soll_ist ADD betriebs_datum DATE NULL; 
- ALTER TABLE fahrzeiten_soll_ist ADD datumzeit_soll_an_von DATETIME NULL; 
- ALTER TABLE fahrzeiten_soll_ist ADD datumzeit_ist_an_von DATETIME NULL; 
- ALTER TABLE fahrzeiten_soll_ist ADD datumzeit_soll_ab_von DATETIME NULL; 
- ALTER TABLE fahrzeiten_soll_ist ADD datumzeit_ist_ab_von DATETIME NULL; 
- ALTER TABLE fahrzeiten_soll_ist ADD datum__nach DATE NULL; 

## Schritt 5:

Gewisse Datentypen werden nun konvertiert. Die Spalten die wir in Schritt 4 erstellt haben, werden nun befüllt.
Züsätzlich werden weitere Spalten erstellt.

<table>
   <tbody>
    <tr>
      <td>datum_nach und soll_an_nach </td>
      <td>-> datumzeit_soll_an_nach </td>
      <td>DateTime</td>
    </tr>
    <tr>
      <td>datum_nach und ist_an_nach </td>
      <td> -> datumzeit_ist_an_nach </td>
      <td>DateTime</td>
    </tr>
     <tr>
      <td>datum_nach und soll_ab_nach </td>
      <td>-> datumzeit_soll_ab_nach</td>
      <td>DateTime</td>
    </tr>
     <tr>
      <td>datum_nach und ist_ab_nach</td>
      <td>-> datumzeit_ist_ab_nach</td>
      <td>DateTime</td>
    </tr>
</table>

Für die Konventierung werden die Befehle benötigt:
- UPDATE fahrzeiten_soll_ist SET betriebs_datum = STR_TO_DATE(betriebsdatum ,'%d.%m.%Y');  
- UPDATE fahrzeiten_soll_ist SET datumzeit_soll_an_von = DATE_ADD(STR_TO_DATE(datum_von ,'%d.%m.%Y'), INTERVAL soll_an_von SECOND); 
- UPDATE fahrzeiten_soll_ist SET datumzeit_ist_an_von = DATE_ADD(STR_TO_DATE(datum_von ,'%d.%m.%Y'), INTERVAL ist_an_von SECOND); 
- UPDATE fahrzeiten_soll_ist SET datumzeit_soll_ab_von = DATE_ADD(STR_TO_DATE(datum_von ,'%d.%m.%Y'), INTERVAL soll_ab_von SECOND); 
- UPDATE fahrzeiten_soll_ist SET datumzeit_ist_ab_von = DATE_ADD(STR_TO_DATE(datum_von ,'%d.%m.%Y'), INTERVAL ist_ab_von SECOND); 
- UPDATE fahrzeiten_soll_ist SET datum__nach =STR_TO_DATE(datum_nach ,'%d.%m.%Y'); 

Für all diese Schritte erhält man am Schluss dieses Script:

![script](/Images/Aufgabe6/script.jpg)

Link zum Script:[Script](/Scripts/Aufgabe6/Aufgabe6.sql)
