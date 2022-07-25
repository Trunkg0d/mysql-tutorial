/*
The SQL UPDATE Statement
The UPDATE statement is used to modify the existing records in a table.

UPDATE Syntax:
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
*/
-- Update people with CustomerID=1 the ContactName and City
UPDATE Customers 
SET ContactName="Trung Le", City="HCM city"
WHERE CustomerID=1;

-- Be careful when updating records. If you omit the WHERE clause, ALL records will be updated!, if you want to do this, check the safe update and turn off it

SELECT * FROM aliconcon.Customers