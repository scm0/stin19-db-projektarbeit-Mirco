USE vbzdata;

create or replace view aufgabe12_driving_plan_line6
as select
   h2.halt_lang as VEHRKEHRSHINWEIS,
   time(a.datumzeit_soll_ab)
from vbzdata.ankunftszeiten a
    
inner join vbzdata.haltepunkt h on
    a.haltpunkt_id = h.halt_punkt_id
inner join vbzdata.haltestelle h2 on
    h.halt_id = h2.halt_id

where a.fahrt_id = 26808 and date (a.datumszeit_ist_an)='2021-01-01'
    order by a.datumszeit_ist_an;
    
select*from aufgabe12_driving_plan_line6;