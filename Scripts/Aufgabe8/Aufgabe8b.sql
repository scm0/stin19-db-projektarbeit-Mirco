USE vbzdata;
create or replace view aufgabe8_lines_query
AS select distinct 
	fsi.fahrweg_id,
	fsi.linie,
	fsi.richtung,
	fsi.fw_no,
	fsi.fw_lang
FROM
	fahrzeiten_soll_ist fsi
 where fsi.linie =6; 

	
SELECT*FROM aufgabe8_lines_query;

	