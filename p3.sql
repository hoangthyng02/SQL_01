ex1: 
  select name
from students
where marks >75
order by right(name,3), id 

Leetcode

ex2: 
  SELECT user_id,
       UPPER(LEFT(name, 1)) || LOWER(RIGHT(name, LENGTH(name) - 1)) AS name
FROM users
ORDER BY user_id
ex3: 
  SELECT manufacturer,
  '$' || round(sum(total_sales)/1000000,0) ||' '|| 'million' as sale
FROM pharmacy_sales
group by manufacturer
order by sum(total_sales) desc, manufacturer;

ex4: 
  SELECT 
extract( month from submit_date) as mth, 
product_id as product, 
round(avg(stars),2) as avg_stars
FROM reviews
group by mth,product_id
order by mth, product_id;

ex5: 
  SELECT 
sender_id, count(message_id) as message_count
FROM messages
where sent_date between '08-01-2022' and '09-01-2022'
group by sender_id
order by message_count DESC
limit 2
ex6:
  select tweet_id
from Tweets
where length(content) >15
ex7: 
  SELECT 
    activity_date as day, 
    COUNT(DISTINCT user_id) AS active_users
FROM 
    Activity
WHERE 
    activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY 
    activity_date
ORDER BY 
    activity_date

ex8: 
  select count(id)
from employees
where joining_date between '01-01-2022' and '08-01-2022'

ex9:
  select position('a' in first_name) as position_a
from worker
where first_name = 'Amitah'
ex 10:
select substring( title, length(winery)+2,4)
from winemag_p2
where country='Macedonia';
