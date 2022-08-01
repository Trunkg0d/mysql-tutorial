/*

The SQL MIN() and MAX() Functions
The MIN() function returns the smallest value of the selected column.

The MAX() function returns the largest value of the selected column.

MIN() Syntax
SELECT MIN(column_name)
FROM table_name
WHERE condition;

*/

-- SELECT MAX(Price)
-- From Products
-- where Price>19

SELECT MIN(Price)
From Products
where Price>19

