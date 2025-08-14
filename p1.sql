ex1: 
select name
from city
where population >120000 and COUNTRYCODE='USA'
ex2:
SELECT *
FROM CITY
WHERE COUNTRYCODE='JPN'
ex3: 
SELECT CITY, STATE
FROM STATION
ex4: 
  SELECT distinct CITY
FROM STATION
where city like 'a%' or
        city like 'e%' or
        city like 'i%' or
        city like 'o%' or
        city like 'u%'
ex5: 
  SELECT distinct CITY
FROM STATION
where city like '%a' or
        city like '%e' or
        city like '%i' or
        city like '%o' or
        city like '%u'
ex6: 
    SELECT distinct CITY
FROM STATION
where city not like 'A%' and
        city not like 'E%' and
        city not like 'I%' and
        city not like 'O%' and
        city not like 'U%'
ex7: 
  select name
from employee
order by name
ex8:
  select name
from employee
where months <10 and salary >2000
order by  employee_id
Leetcode
ex9: 
  select product_id
from Products
where low_fats='Y' and recyclable='Y'
ex10:
  SELECT name
FROM Customer
WHERE referee_id <> 2 OR referee_id IS NULL
ex11: 
  select name,population,area
from world
where population>=25000000 or area >=3000000
ex12: 
  select distinct author_id as id
from views
where author_id = viewer_id
order by author_id 
Datalemur & StrataScratch
ex13: 
  SELECT part ,assembly_step
FROM parts_assembly
WHERE finish_date is null 
ex14:
  select * from lyft_drivers
    WHERE YEARLY_SALARY <= 30000 
    OR YEARLY_SALARY >=70000;
ex15: 
select advertising_channel from uber_advertising
    WHERE money_spent > 100000
    AND YEAR = 2019;
