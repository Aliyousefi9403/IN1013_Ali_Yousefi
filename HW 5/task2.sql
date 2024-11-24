-- 1. Total Income with column name as 'Income'
SELECT SUM(amount) AS Income
FROM table_name;

-- 2. Total Income for February 2016 as 'Feb Income'
SELECT SUM(amount) AS "Feb Income"
FROM table_name
WHERE DATE_FORMAT(date_column, '%Y-%m') = '2016-02';

-- 3. Average bill in Table 2
SELECT AVG(bill_amount) AS "Average Bill"
FROM table_2;

-- 4. Min, Max, and Average seats in the Blue room
SELECT 
    MIN(seats) AS Min,
    MAX(seats) AS Max,
    AVG(seats) AS Avg
FROM tables
WHERE room_name = 'Blue room';

-- 5. Count distinct tables served by waiters 004 and 002
SELECT COUNT(DISTINCT table_id) AS "Distinct Tables"
FROM waiter_table_mapping
WHERE waiter_id IN ('004', '002');
