/*

The SQL IN Operator
The IN operator allows you to specify multiple values in a WHERE clause.

The IN operator is a shorthand for multiple OR conditions.

IN Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);
or:

SELECT column_name(s)
FROM table_name
WHERE column_name IN (SELECT STATEMENT);

*/

SELECT * FROM Customers
where Country in ("Germany","France");

SELECT * From Customers
where Country not in ("Germany","France");