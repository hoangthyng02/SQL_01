ex1: 
  SELECT
count (*) filter( where device_type = 'laptop') as laptop_views,
count (*) filter(where device_type in ('tablet', 'phone') )as mobile_views
from viewership

ex2: 
  select x,y,z,
case
when x+y >z and x+z >y and z+y >x then 'Yes'
else 'No'
end triangle
from triangle

ex3:
  WITH uncategorised_callers AS (
  SELECT COUNT(case_id) AS uncategorised_calls
  FROM callers
  WHERE call_category IS NULL
    OR call_category = 'n/a'
)

SELECT 
  ROUND(100.0 * uncategorised_calls 
    / (SELECT COUNT(*) FROM callers), 1) AS uncategorised_call_pct
FROM uncategorised_callers;

ex 4
  SELECT name
FROM Customer
WHERE referee_id <> 2 OR referee_id IS NULL
ex 5
SELECT survived,
       sum(CASE
               WHEN pclass = 1 THEN 1
               ELSE 0
           END) AS first_class,
       sum(CASE
               WHEN pclass = 2 THEN 1
               ELSE 0
           END) AS second_class,
       sum(CASE
               WHEN pclass = 3 THEN 1
               ELSE 0
           END) AS third_class
FROM titanic
GROUP BY survived
