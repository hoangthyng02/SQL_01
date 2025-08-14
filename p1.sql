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
ex12: leetcode-article-views: https://leetcode.com/problems/article-views-i/?envId=top-sql-50
Datalemur & StrataScratch
ex13: datalemur-tesla-unfinished-part: https://datalemur.com/questions/tesla-unfinished-parts
ex14: datalemur-lyft-driver-wages: https://platform.stratascratch.com/coding/10003-lyft-driver-wages?code_type=1
ex15: datalemur-find-the-advertising-channel: https://platform.stratascratch.com/coding/10002-find-the-advertising-channel-where-uber-spent-more-than-100k-usd-in-2019?code_type=1
