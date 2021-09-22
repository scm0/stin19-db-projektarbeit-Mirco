use vbzdata;
create table ankunftszeiten 
SELECT  
	fsi.halt_punkt_id_nach as haltpunkt_id,
 	fsi.fahrweg_id,
 	fsi.fahrt_id,
	fsi.datumzeit_ist_an_nach AS datumszeit_ist_an,
	fsi.datumzeit_soll_an_nach as datumzeit_soll_an,
	fsi.datumzeit_soll_ab_nach as datumzeit_soll_ab,
	TIMESTAMPDIFF (second,datumzeit_soll_an_nach,datumzeit_ist_an_nach) as delay
FROM 
   fahrzeiten_soll_ist fsi
where
	fsi.linie =6
	
union

SELECT 
	fsi.halt_punkt_id_von as haltpunkt_id,
 	fsi.fahrweg_id,
 	fsi.fahrt_id, 
	fsi.datumzeit_ist_an_von AS datumszeit_ist_an,
	fsi.datumzeit_soll_an_von as datumzeit_soll_an,
	fsi.datumzeit_soll_ab_von as datumzeit_soll_ab,
	TIMESTAMPDIFF (second,datumzeit_soll_an_von,datumzeit_ist_an_von) as delay
FROM 
   fahrzeiten_soll_ist fsi
where
	fsi.seq_von=1
	and fsi.linie =6; 

ALTER table ankunftszeiten add id int primary key auto_increment first;
ALTER TABLE ankunftszeiten ADD CONSTRAINT ankunftszeiten_FK FOREIGN KEY (haltpunkt_id) REFERENCES haltepunkt(halt_punkt_id);
ALTER TABLE ankunftszeiten ADD CONSTRAINT ankunftszeiten_FK_1 FOREIGN KEY (fahrweg_id) REFERENCES linie(fahrweg_id);

