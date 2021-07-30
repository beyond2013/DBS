show databases;
use world;
show tables;

select * from city;

select name, population from city;

select name, population 
from city
where population > 2000000 and population < 400000;

select count(*) from city;

select name, population 
from city
where name like 'am%' and population > 200000;

select name, population 
from city
where name = 'amsterdam';

select Name, population, CountryCode
from city
where CountryCode in ('AFG', 'PAK', 'IND');

select Name, population 
from city
where population between 200000 and 400000;

select Name, population 
from city
where population between 200000 and 400000
order by name desc;

select Name, population 
from city
where population between 200000 and 400000
order by population;

select * from city where name ='Quetta';


update city
set population = 1001205
where name = 'Quetta';

delete from city
where id=2830;


select name , min(population) from city;

