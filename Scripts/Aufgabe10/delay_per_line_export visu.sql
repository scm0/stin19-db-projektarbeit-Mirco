USE vbzdata;

CREATE TABLE linie_6_timedelay_expot_visu 
select 
	
	h.GPS_Latitude as lat,
	h.GPS_Longitude as lng,
	h2.halt_lang as name,
	'#ffff00'as color,
	a.delay as note
	
from ankunftszeiten a 
INNER join haltepunkt h on
 a.haltpunkt_id =h.halt_punkt_id 
inner join haltestelle h2 on 
h.halt_id =h2.halt_id 
inner join linie l on 
	a.fahrweg_id =l.fahrweg_id 
order by a.delay desc 
limit 20;