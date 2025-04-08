--- EX 1
select name from city where countrycode = 'USA' and population > 120000
--- Ex 2
select * from city where countrycode = 'JPN'
--- Ex 3
select city, state from station
--- Ex 4
select DISTINCT city from station
    WHERE CITY LIKE 'A%'
    OR CITY LIKE 'E%'
    OR CITY LIKE 'I%'
    OR CITY LIKE 'O%'
    OR CITY LIKE 'U%'
--- EX 5
select DISTINCT city from station
    WHERE CITY LIKE '%A'
    OR CITY LIKE '%E'
    OR CITY LIKE '%I'
    OR CITY LIKE '%O'
    OR CITY LIKE '%U'
--- EX 6
select DISTINCT city from station
    WHERE CITY NOT LIKE 'A%'
    AND CITY NOT LIKE 'E%'
    AND CITY NOT LIKE 'I%'
    AND CITY NOT LIKE 'O%'
    AND CITY NOT LIKE 'U%'
--- EX 7
SELECT NAME FROM EMPLOYEE
ORDER BY NAME
--- EX 8
SELECT NAME FROM EMPLOYEE
    WHERE SALARY > 2000 AND MONTHS < 10
    ORDER BY EMPLOYEE_ID
--- EX 9
SELECT product_id FROM PRODUCTS WHERE low_fats = 'Y' AND recyclable = 'Y'
--- EX 10
SELECT NAME FROM CUSTOMER WHERE id NOT IN (
    SELECT id 
    FROM CUSTOMER 
    WHERE referee_id = 2
);
--- EX 11
SELECT NAME, population, area 
    FROM WORLD 
    WHERE AREA >= 3000000
    OR  POPULATION >= 25000000;
--- EX 12
SELECT DISTINCT author_id AS id FROM VIEWS WHERE author_id = viewer_id ORDER BY author_id;
--- EX 13
SELECT PART, ASSEMBLY_STEP FROM parts_assembly
  WHERE FINISH_DATE IS NULL
--- EX 14
select * from lyft_drivers
    WHERE YEARLY_SALARY <= 30000 
    OR YEARLY_SALARY >=70000;
--- EX 15
select advertising_channel from uber_advertising
    WHERE money_spent > 100000
    AND YEAR = 2019;













