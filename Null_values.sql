/*
How to Test for NULL Values?
It is not possible to test for NULL values with comparison operators, such as =, <, or <>.

We will have to use the IS NULL and IS NOT NULL operators instead.

IS NULL Syntax:

SELECT column_names
FROM table_name
WHERE column_name IS NULL;
----------------------------
IS NOT NULL Syntax

SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;
*/

-- ex:
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;
-- Tip: Always use IS NULL to look for NULL values.

SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;