use exercises;
select *
from deer;

select wound, count(*)
from deer
group by WOUND;

select wound, count(*)
from deer
where wound = 'ankle' or WOUND = 'foot' or wound = 'toe'
group by WOUND;

select type, count(*)
from deer
where sage > 49 and type = 'si';

select *
from deer
where COUNTY = 'Jackson'
group by vage;

select county, count(*)
from deer
group by county;

select cause, count(*)
from deer
group by cause;

select gunbrnd, count(*)
from deer
group by GUNBRND;

select avg(sage)
from deer;

select avg(vage)
from deer;

select avg(sage), INJURY, count(*) as total
from deer
group by injury
order by total desc;

select weather, count(*) as total
from deer
group by weather
order by total desc;

select wound, injury, count(*)
from deer
where injury = 'fatal'
group by WOUND;

select wound, injury, cause, count(*)
from deer
where injury = 'fatal'
group by WOUND;

select type, count(*)
from deer
where injury = 'fatal'
group by type;