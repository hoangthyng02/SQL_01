ex 1:
  select distinct city
from station 
where (ID%2)=0

ex2: 
  select count(city)-count( distinct city)
from station
ex3: 
  select 
ceiling(avg(salary)-avg(replace(salary,'0',''))) as error_amount
from employees

ex4: 
  SELECT 
round(cast(sum(item_count*order_occurrences)/sum(order_occurrences) as DECIMAL),1) as mean
FROM items_per_order;
ex5: 
  SELECT candidate_id
FROM candidates
where skill in ('Python','Tableau','PostgreSQL')
group by candidate_id
having count(skill) = 3

ex6: 
  SELECT user_id,
date(max(post_date)) - date(min(post_date)) as days_between 
FROM posts
where post_date between '01-01-2021' and '01-01-2022'
group by user_id
having count(post_id)>=2
ex7: 
  SELECT card_name,
max(issued_amount)-min(issued_amount) as difference
FROM monthly_cards_issued
group by card_name 
order by difference desc ;

ex8: 
  SELECT manufacturer,
COUNT(DRUG) AS DRUG_COUNT,
ABS(SUM(COGS - TOTAL_SALES)) AS TOTAL_LOSS
FROM pharmacy_sales
WHERE TOTAL_SALES < COGS
GROUP BY manufacturer
ORDER BY TOTAL_LOSS DESC

ex9: 
  select id, movie, description, rating
from Cinema
where (id%2)=1 and description not like 'boring'
order by rating desc

ex10:
  Select distinct teacher_id, count( distinct subject_id ) as cnt
from teacher
group by teacher_id

ex11:
  select user_id, count(follower_id) as followers_count
from Followers
group by user_id
order by user_id 

