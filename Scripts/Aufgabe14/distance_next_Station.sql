USE vbzdata;
select
	h.halt_lang as haltestelle_von,
    h2.GPS_Latitude , 
    h2.GPS_Longitude,
    h4.halt_lang as haltestelle_zu,
    h3.GPS_Latitude,
    h3.GPS_Longitude,
    Round(ST_Distance_Sphere( point( h2.GPS_Longitude,h2.GPS_Latitude),point(h3.GPS_Longitude,h3.GPS_Latitude)),2) as distance
from
    vbzdata.haltestelle h
left join vbzdata.haltepunkt h2 on
    h.halt_id = h2.halt_id
inner join vbzdata.fahrzeiten_soll_ist fsi on
    h2.halt_punkt_id = fsi.halt_punkt_id_von
inner join vbzdata.haltepunkt h3 on
     h3.halt_punkt_id = fsi.halt_punkt_id_nach
left join vbzdata.haltestelle h4 on
    h4.halt_id = h3.halt_id

where fsi.fahrt_id = 26808 and date(fsi.betriebs_datum)='2020-12-28'
order by distance;
	