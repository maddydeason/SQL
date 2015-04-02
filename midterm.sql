-- 772 midterm, Madeleine Deason --

use exercises;

-- Part 1 --
select *
from md_discipline;

select fullname
from md_discipline
where action_brief = "Permanent Surrender" and SPECIALTY="psychiatry";

select licno, actiondate
from md_discipline
where citystate = "Towson, MD"
order by actiondate desc;

select SPECIALTY, count(*)
from md_discipline
group by specialty;

select licno
from md_discipline
where licno like "R0%";

select actiontext, action_brief
from md_discipline
where citystate = "Baltimore, MD" and actiontext like "%moral turpitude%";

select actiontext
from md_discipline
where actiontext like "%addicted%";

-- Part 2 --
select *
from irs_balt_financial;

select name, ruling_year
from irs_baltimore
where activity1 = "animal-related";

select name, assets
from irs_baltimore
group by assets desc;

select ruling_year, count(*)
from irs_baltimore
group by ruling_year;

select activity1, sum(assets)
from irs_baltimore
where revenue > 50000
group by activity1;

select name, netincgaming
from irs_baltimore a 
	join irs_balt_financial b
    on a.ein = b.EIN
order by netincgaming desc;

-- Part 3 --
select state, month(date), count(*)
from tornados
group by state, month(date) with rollup;

select state, fscale, sum(injuries)
from tornados
group by state, fscale with rollup;

select if(length>1, "long", "short") as len, count(*)
from tornados
where fatalities > 1
group by len;
