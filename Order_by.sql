/*
The ORDER BY keyword is used to sort the result-set in ascending or descending order.
The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

Syntax:
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;Customers
*/
-- ex:
SELECT * FROM Customers
ORDER BY Country;

SELECT * FROM Customers
ORDER BY Country DESC;

-- ORDER BY Several Columns Example
SELECT * FROM Customers
ORDER BY Country, CustomerName;

-- ex:
SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;