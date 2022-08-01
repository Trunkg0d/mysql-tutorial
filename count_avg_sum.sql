/*

The SQL COUNT(), AVG() and SUM() Functions
The COUNT() function returns the number of rows that matches a specified criterion.

COUNT() Syntax
SELECT COUNT(column_name)
FROM table_name
WHERE condition;

AVG() Syntax
SELECT AVG(column_name)
FROM table_name
WHERE condition;

SUM() Syntax
SELECT SUM(column_name)
FROM table_name
WHERE condition;

*/
SELECT COUNT(*)
FROM Exercise1
Where Status=1;

SELECT * FROM Exercise1;