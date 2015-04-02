use exercises;
/* summary function */
select sum(amount)
from softmoney100k;

select sum(amount) as total_amount
from softmoney100k;

select min(amount) as min_amount
from softmoney100k;

select max(amount) as max_amount
from softmoney100k;

select avg(AMOUNT)as avg_amount
from softmoney100k;

select min(amount) as min_amount, max(amount) as max_amount
from softmoney100k;

select count(AMOUNT) as count_contributions
from softmoney100k;

/* grouping */
select Party
from softmoney100k
group by party;

select party, sum(AMOUNT) as total_amount
from softmoney100k
group by party;

select party, sum(amount) as total_amount 
from softmoney100k
group by party
order by total_amount desc;

select party, count(*) as contributions
from softmoney100k
group by Party
order by contributions desc;
	/* this count technique is how we will always do counting */

Select party, count(*) as contributions,
sum(amount) as total_amount,
min(amount) as min_amount,
max(amount) as max_amount,
avg(amount) as avg_amount
from softmoney100k
group by Party
order by total_amount desc;

select party, sum(amount) as total
from softmoney100k
where Industry = 'Insurance'
group by party
order by total desc;
	/* order of commands matters */
    /* group by should match select */

select party, sum(amount) as total
from softmoney100k
where state in ('FL','GA')
group by party
order by total desc;

select party, Sector,
sum(amount) as total, count(*) as contributions
from softmoney100k
group by party, Sector
order by sector, total desc;

select party, Sector,
sum(amount) as total, count(*) as contributions
from softmoney100k
where party = 'D' or party = 'R'
group by party, Sector
order by sector, total desc;



