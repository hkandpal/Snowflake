
--THis is a simple script to populate 
-- dates from 1980

create table date_tab as (
select dateadd(day,seq,dt::date) dat ,  year(dat) as "YEAR", quarter(dat) as "QUARTER OF YEAR",
       month(dat) as "MONTH", day(dat) as "DAY", dayofmonth(dat) as "DAY OF MONTH",
       dayofweek(dat) as "DAY OF WEEK",dayname(dat) as dayName,
       dayofyear(dat) as "DAY OF YEAR"
from (
select seq4() as seq,  dateadd(month, 1, '1980-01-01'::date) dt from table(generator(rowcount => 16000))
));