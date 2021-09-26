# Aufgabe 7

Erstellen Sie eine Abfrage, welche die Zeitdifferenzen anzeigt. Für die Zeitdifferenzen sollen nur die 
von-Zeiten betrachtet werden. 

 

 <table>
  <thead>
    <tr>
      <th>Spaltenname</th>
      <th>Berechnung</th>
      <th>Beschreibung</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>timediff_an </td>
      <td>datumzeit_soll_an_von - datumzeit_ist_an_von </td>
      <td>Differenz der von-an-Zeit Soll zu Ist</td>
    </tr>
    <tr>
      <td>timediff_an_seconds</td>
      <td> datumzeit_soll_an_von - datumzeit_ist_an_von </td>
      <td>Differenz der von - an Zeit Soll zu Ist in Sekunden </td>
    </tr>
     <tr>
      <td>timediff_ab </td>
      <td>datumzeit_soll_ab_von - datumzeit_ist_ab_von</td>
      <td>Differenz der von-ab-Zeit Soll zu Ist </td>
    </tr>
     <tr>
      <td>timediff_ab_seconds </td>
      <td>datumzeit_soll_ab_von - datumzeit_ist_ab_von</td>
      <td>Differenz der von - ab Zeit Soll zu Ist in Sekunden</td>
    </tr>
     <tr>
      <td>halt_soll_time_seconds</td>
      <td>datumzeit_soll_an_von - datumzeit_soll_ab_von </td>
      <td>Haltezeit Soll an einer Station </td>
    </tr> 
    <tr>
      <td>halt_ist_time_seconds </td>
      <td> datumzeit_ist_an_von - datumzeit_ist_ab_von </td>
      <td> Haltezeit Ist an einer Station </td>
    </tr>
    </tbody>
</table>

Es wurde dazu eine View erstellt.

Das auszuführende Script sieht wie folgt aus:

![script](/Images/Aufgabe7/script.jpg)

Link zum Script: [Aufgabe 7](/Scripts/Aufgabe7/Aufgabe7.sql)

Die Anzeige sieht wie folgt aus(Ausschnitt):

![view](/Images/Aufgabe7/view.JPG)