/*
MySQL CREATE VIEW Statement
In SQL, a view is a virtual table based on the result-set of an SQL statement.

A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.

You can add SQL statements and functions to a view and present the data as if the data were coming from one single table.

A view is created with the CREATE VIEW statement.

CREATE VIEW Syntax
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
Note: A view always shows up-to-date data! The database engine recreates the view, every time a user queries it.
*/

-- CREATE VIEW Brazil_Customers AS
-- SELECT CustomerName, ContactName
-- FROM Customers
-- WHERE Country = 'Brazil';

SELECT * FROM Brazil_Customers;