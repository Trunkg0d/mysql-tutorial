-- The INSERT INTO statement is used to insert new records in a table.
/*
Syntax
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
*/
-- ex:
INSERT INTO Customers (CustomerID,CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (8,'Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');