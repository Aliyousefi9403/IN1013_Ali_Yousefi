-- Task 1: List the dates and bill totals for customer Bob Crow.
SELECT date, bill_total
FROM customers
WHERE first_name = 'Bob' AND last_name = 'Crow';

-- Task 2: List the names of all customers whose last name is Smith. 
-- List each customer only once in reverse lexicographical order.
SELECT DISTINCT first_name, last_name
FROM customers
WHERE last_name = 'Smith'
ORDER BY first_name DESC, last_name DESC;

-- Task 3: List the names of all customers whose second names begin with 'C'. 
-- List each customer only once.
SELECT DISTINCT first_name, last_name
FROM customers
WHERE last_name LIKE 'C%';

-- Task 4: List the names of all the headwaiters.
SELECT DISTINCT first_name, last_name
FROM staff
WHERE position = 'Headwaiter';

-- Task 5: List all the details of bills dated February 2016.
SELECT *
FROM bills
WHERE DATE_FORMAT(date, '%Y-%m') = '2016-02';

-- Task 6: List the dates the restaurant took money in 2015. 
-- List each date only once in sorted order.
SELECT DISTINCT date
FROM bills
WHERE YEAR(date) = 2015
ORDER BY date;
