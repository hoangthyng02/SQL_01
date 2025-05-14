--- ex 1
select name
from students 
where marks>75
order by right(name, 3), ID
--- ex 2
select user_id,
concat(Upper(left(name,1)),lower(right(name, length(name)-1))) as name
from Users
order by user_id
--- ex 3
SELECT manufacturer,
'$'||round(sum(total_sales)/1000000,0)||' million'
FROM pharmacy_sales
group by manufacturer
order by sum(total_sales) DESC,manufacturer
--- ex 4
SELECT extract( month from submit_date) as mth,
product_id,
round(avg(stars),2)
FROM reviews
group by mth,product_id
order by extract( month from submit_date), product_id
--- EX 5
SELECT sender_id,
       COUNT(message_id) AS count_messages
FROM messages
WHERE EXTRACT(MONTH FROM sent_date) = 8
  AND EXTRACT(YEAR FROM sent_date) = 2022
GROUP BY sender_id 
ORDER BY count_messages DESC
LIMIT 2;
--- EX 6
SELECT tweet_id
from Tweets
where length(content) > 15
---
ex 7
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
--- ex 8
select 
count(id) as number_employee
from employees
where extract( month from joining_date) between 1 and 7
and extract( year from joining_date) = 2022
--- ex 9 
select position('a' in first_name) as position_a
from worker
where first_name = 'Amitah'
--- ex 10
select substring( title, length(winery)+2,4)
from winemag_p2
where country='Macedonia';


