use mydatabase;

SHOW tables;

SELECT* FROM customers;

SELECT* FROM orders;

SELECT first_name,country,score FROM customers;

SELECT * FROM customers WHERE score !=0;
-- != same as <> --

SELECT * FROM customers WHERE country ='GERMANY';

SELECT first_name,country  FROM customers WHERE country ='GERMANY';

SELECT * FROM customers ORDER BY score DESC;

SELECT * FROM customers ORDER BY score ASC;

SELECT * FROM customers ORDER BY country DESC;

SELECT * FROM customers ORDER BY country ASC;

SELECT * FROM customers ORDER BY country Asc, score DESC;

SELECT first_name,country,score FROM customers WHERE score !=0 ORDER BY score DESC;

SELECT count(*) AS No_Of_Customers FROM customers;

SELECT DISTINCT(country) FROM customers;

SELECT count(DISTINCT country) FROM customers;
-- Diff countries --

SELECT sum(score) AS Total FROM customers;

SELECT sum(country) AS Total_Country FROM customers;

SELECT max(score) AS Max FROM customers;

SELECT min(score) AS Min FROM customers;

SELECT country,sum(score) AS Total_Germany_Score FROM customers GROUP BY country;

SELECT country, avg(score) FROM customers GROUP BY country ;

SELECT country, sum(score) AS Total_Score, count(id) AS Total_customers FROM customers GROUP BY country ;

SELECT country, avg(score) AS Avg_Score FROM customers GROUP BY country HAVING avg(score) >430 ;

SELECT country, SUM(score) AS Sum_Score FROM customers WHERE score > 400 GROUP BY country HAVING sum(score) >430;

--- Where BEFORE AGGREGATE and Having AFTER AGGREGATE ---

SELECT * FROM customers LIMIT 3;

SELECT * FROM customers ORDER BY score DESC LIMIT 3;

SELECT * FROM customers ORDER BY score ASC LIMIT 2;

SELECT * FROM orders ORDER BY order_date DESC LIMIT 2;

SELECT country, avg(score) AS Avg_Score
FROM customers
WHERE score!=0 
GROUP BY country
HAVING avg(score) >430
ORDER BY avg(score) DESC ;