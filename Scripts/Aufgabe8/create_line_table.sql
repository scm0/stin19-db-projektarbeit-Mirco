USE vbzdata;
DROP TABLE IF EXISTS linie;
CREATE TABLE linie (PRIMARY KEY (fahrweg_id))
SELECT DISTINCT 
	fsi.fahrweg_id,
 	fsi.linie,
	fsi.richtung,
	fsi.fw_no,
	fsi.fw_lang
FROM 
   fahrzeiten_soll_ist fsi
    WHERE fsi.linie =6; 