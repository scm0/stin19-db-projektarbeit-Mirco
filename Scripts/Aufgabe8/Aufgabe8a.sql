USE vbzdata;
select distinct 
	fsi.fahrweg_id,
	fsi.linie,
	fsi.richtung,
	fsi.fw_no,
	fsi.fw_lang
FROM
	fahrzeiten_soll_ist fsi
 where fsi.linie =6; 

	
