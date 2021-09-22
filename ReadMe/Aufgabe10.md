# Aufgabe 10
Für die Linie 6 wurden die 20 grösten Verspätungen ermittelt. Dazu sollte eine Liste erzeugt werden mit folgenden Spalten:
- id (PK) int 
- haltepunkt_id int (FK zu Haltepunkt) 
- halt_lang varchar 
- GPS_Latitude double 
- GPS_Longitude double 
- fahrweg_id int (FK zu Linie) 
- linie int 
- datumzeit_ist_an  DateTime 
- datumzeit_soll_an DateTime  
- delay int (timediff_an_seconds: Zeitdifferenz der IST zur SOLL Ankunftszeit) 

Das Script für die Liste sieht wie folgt aus:

![script_liste](/Images/Aufgabe10/script_liste.jpg)

Link zum Script:[Script](/Scripts/Aufgabe10/delay_per_line.sql)

Es wurde mit **order by delay** nach den grössten Verspätungen sortiert und mit **limit 20** auf 20 begrenzt.

Für die Visualisierung wurde ein Script erstellt das eine Tabelle erzeugt die man als CSV file kann exportieren:

![script_export](/Images/Aufgabe10/script_export.jpg)

Link zum Script:[Script](/Scripts/Aufgabe10/delay_per_line_export.sql)

Die rzeugte CSV Datei sieht wie folgt aus
 <table>
  <thead>
    <tr>
      <td>"lat","lng","name","color","note" </td>
    </tr>
    </tbody>
    <tr>
      <td>47.397786,8.482057,"Zürich Werdhölzli",#ffff00,446 </td>
    </tr>
    </tbody>
    <tr>
      <td>47.396483,8.484853,"Zürich Bändliweg",#ffff00,430</td>
    </tr>
    </tbody>
    <tr>
      <td>47.395199,8.48957,"Zürich Grünaustrasse",#ffff00,406</td>
    </tr>
    </tbody>
    <tr>
      <td>...</td>
    </tr>
    </tbody>
    <tr>
      <td>...</td>
    </tr>
    </tbody>
      <td>...</td>
    </tr>
    </tbody>
</table>

Link zur Tabelle:[Tabelle](/csv.files/maps.timedelay.csv)

Das Ergebniss auf der Seite https://maps.co/gis/ sieht wie folgt aus:

![mapping.visu](/Images/Aufgabe10/mapping.jpg)

