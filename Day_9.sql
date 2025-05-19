--- ex1
SELECT 
  SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) AS laptop_views, 
  SUM(CASE WHEN device_type IN ('tablet', 'phone') THEN 1 ELSE 0 END) AS mobile_views 
FROM viewership
--- ex 2
select x,y,z,
case
when x+y > z then 'Yes'
else 'No'
end triangle
from triangle
--- ex 3
WITH uncategorised_callers AS (
  SELECT COUNT(case_id) AS uncategorised_calls
  FROM callers
  WHERE call_category IS NULL
    OR call_category = 'n/a'
)

SELECT 
  ROUND(100.0 * uncategorised_calls 
    / (SELECT COUNT(*) FROM callers), 1) AS uncategorised_call_pct
FROM uncategorised_callers
--- ex 4
SELECT name
FROM Customer
WHERE referee_id <> 2 OR referee_id IS NULL
--- ex 5
SELECT 
    pclass,
    SUM(CASE WHEN survived = 1 THEN 1 ELSE 0 END) AS num_survivors,
    SUM(CASE WHEN survived = 0 THEN 1 ELSE 0 END) AS num_non_survivors
from titanic
group by pclass


