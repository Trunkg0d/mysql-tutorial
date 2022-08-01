/*

The SQL BETWEEN Operator
The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.

The BETWEEN operator is inclusive: begin and end values are included. 

BETWEEN Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

*/
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

SELECT * FROM Customers
where CustomerID between 1 and 7
and Country not in ("Germany","France","Norway");

SELECT * FROM Products
WHERE ProductName BETWEEN 'Chais' AND "Chef Anton's Cajun Seasoning"
ORDER BY ProductName;