USE vbzdata;
CREATE OR replace view aufgabe8_lines_query
AS SELECT DISTINCT 
	fsi.fahrweg_id,
	fsi.linie,
	fsi.richtung,
	fsi.fw_no,
	fsi.fw_lang
FROM
	fahrzeiten_soll_ist fsi
 WHERE fsi.linie =6; 

	
SELECT*FROM aufgabe8_lines_query;

	