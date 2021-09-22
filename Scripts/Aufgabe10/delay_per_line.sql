use vbzdata;

select 
	a.id,
	a.haltpunkt_id ,
	h2.halt_lang,
	h.GPS_Latitude,
	h.GPS_Longitude,
	l.linie,
	a.datumszeit_ist_an,
	a.datumzeit_soll_an,
	a.delay
	
from ankunftszeiten a 
inner join haltepunkt h on
 a.haltpunkt_id =h.halt_punkt_id 
inner join haltestelle h2 on 
h.halt_id =h2.halt_id 
inner join linie l on 
	a.fahrweg_id =l.fahrweg_id 
order by a.delay desc 
limit 20;
