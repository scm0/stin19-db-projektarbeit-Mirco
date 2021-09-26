use vbzdata;
set @lat=47.377220;
set @lon=8.539902;

 select
   h2.GPS_Latitude as lat,
   h2.GPS_Longitude as lng,
   h.halt_lang as  name,
   '#ffff00'as color,
    Round(ST_Distance_Sphere( point( @lon,@lat),point(h2.GPS_Longitude,h2.GPS_Latitude)),2) as distance
     
from
    vbzdata.haltestelle h
inner join vbzdata.haltepunkt h2 on
    h.halt_id = h2.halt_id
inner join vbzdata.fahrzeiten_soll_ist fsi on
    h2.halt_punkt_id = fsi.halt_punkt_id_von


where fsi.fahrt_id = 26808 and date(fsi.betriebs_datum)='2020-12-28'
order by distance
limit 4;


