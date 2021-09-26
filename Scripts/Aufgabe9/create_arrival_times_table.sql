USE vbzdata;
CREATE TABLE ankunftszeiten 
SELECT  
	fsi.halt_punkt_id_nach as haltpunkt_id,
 	fsi.fahrweg_id,
 	fsi.fahrt_id,
	fsi.datumzeit_ist_an_nach AS datumszeit_ist_an,
	fsi.datumzeit_soll_an_nach AS datumzeit_soll_an,
	fsi.datumzeit_soll_ab_nach AS datumzeit_soll_ab,
	TIMESTAMPDIFF (second,datumzeit_soll_an_nach,datumzeit_ist_an_nach) AS delay
FROM 
   fahrzeiten_soll_ist fsi
WHERE
	fsi.linie =6
	
UNION

SELECT 
	fsi.halt_punkt_id_von AS haltpunkt_id,
 	fsi.fahrweg_id,
 	fsi.fahrt_id, 
	fsi.datumzeit_ist_an_von AS datumszeit_ist_an,
	fsi.datumzeit_soll_an_von AS datumzeit_soll_an,
	fsi.datumzeit_soll_ab_von AS datumzeit_soll_ab,
	TIMESTAMPDIFF (second,datumzeit_soll_an_von,datumzeit_ist_an_von) AS DELAY
FROM 
   fahrzeiten_soll_ist fsi
WHERE
	fsi.seq_von=1
	AND fsi.linie =6; 

ALTER table ankunftszeiten ADD id INT PRIMARY KEY auto_increment FIRST;
ALTER TABLE ankunftszeiten ADD CONSTRAINT ankunftszeiten_FK FOREIGN KEY (haltpunkt_id) REFERENCES haltepunkt(halt_punkt_id);
ALTER TABLE ankunftszeiten ADD CONSTRAINT ankunftszeiten_FK_1 FOREIGN KEY (fahrweg_id) REFERENCES linie(fahrweg_id);

