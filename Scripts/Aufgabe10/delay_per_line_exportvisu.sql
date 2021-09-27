USE vbzdata;

CREATE TABLE linie_6_timedelay_expot_visu 
SELECT 
	
	h.GPS_Latitude AS lat,
	h.GPS_Longitude AS lng,
	h2.halt_lang AS name,
	'#ffff00'AS color,
	a.delay AS note
	
FROM ankunftszeiten a 
INNER JOIN haltepunkt h ON
 a.haltpunkt_id =h.halt_punkt_id 
INNER JOIN haltestelle h2 ON 
h.halt_id =h2.halt_id 
INNER JOIN linie l ON 
	a.fahrweg_id =l.fahrweg_id 
ORDER BY a.delay DESC 
LIMIT 20;