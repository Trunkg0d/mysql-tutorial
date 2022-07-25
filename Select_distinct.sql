/* The SELECT DISTINCT statement is used to return only distinct (different) values.
Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.
SELECT DISTINCT Syntax:
SELECT DISTINCT column1, column2, ...
FROM table_name;
*/

-- ex: The following SQL statement selects all (including the duplicates) values from the "Country" column in the "Customers" table:
SELECT Country FROM Customers;
-- Now, let us use the SELECT DISTINCT statement and see the result.
SELECT DISTINCT Country FROM Customers;
-- or can count it:
SELECT COUNT(DISTINCT Country) AS COUNT FROM Customers;
