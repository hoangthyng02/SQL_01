--- EX 1
select distinct city
  from station
  where (ID%2)=0;
--- EX 2
SELECT 
  COUNT(CITY) - COUNT(DISTINCT CITY)
  FROM STATION
--- EX 3
SELECT 
    CEILING(AVG(SALARY) - AVG(CAST(REPLACE(SALARY, '0', '') AS DECIMAL))) AS error_amount
FROM 
    EMPLOYEES;
--- EX 4
SELECT 
    ROUND(CAST(SUM(item_count * order_occurrences) / SUM(order_occurrences) AS DECIMAL), 1) AS mean
FROM 
    items_per_order;
--- EX 5
SELECT DISTINCT candidate_id
FROM candidates 
WHERE SKILL IN ('Python','Tableau','PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(SKILL)=3
---EX 6
SELECT USER_ID,
DATE(MAX(POST_DATE)) - DATE(MIN(POST_DATE)) AS DAY_BETWEEN
FROM posts WHERE POST_DATE >='2021-01-01'AND POST_DATE <'2022-01-01'
GROUP BY USER_ID
HAVING COUNT(POST_ID)>=2
--- EX 7
SELECT CARD_NAME,
MAX(ISSUED_AMOUNT) - MIN(ISSUED_AMOUNT) AS dIFF_AMOUNT
FROM monthly_cards_issued
GROUP BY CARD_NAME
ORDER BY dIFF_AMOUNT DESC;
--- EX 8
SELECT manufacturer,
COUNT(DRUG) AS DRUG_COUNT,
ABS(SUM(COGS - TOTAL_SALES)) AS TOTAL_LOSS
FROM pharmacy_sales
WHERE TOTAL_SALES < COGS
GROUP BY manufacturer
ORDER BY TOTAL_LOSS DESC
--- EX 9
# Write your MySQL query statement below
SELECT 
* FROM CINEMA
WHERE (ID % 2) =1 AND DESCRIPTION != 'boring'
order by rating desc
--- ex 10
select distinct teacher_id,
count( distinct subject_id) as cnt
from Teacher
group by teacher_id
--- ex 11
select user_id,
count(follower_id) as followers_count
from Followers
group by user_id
order by user_id
--- ex 12
select class
from Courses
group by class
having count(student) >= 5






