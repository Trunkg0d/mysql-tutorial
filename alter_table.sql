/*
ALTER TABLE - ADD Column
To add a column in a table, use the following syntax:

ALTER TABLE table_name
ADD column_name datatype;
The following SQL adds an "Email" column to the "Customers" table:

Example
ALTER TABLE Customers
ADD Email varchar(255);
ALTER TABLE - DROP COLUMN
To delete a column in a table, use the following syntax (notice that some database systems don't allow deleting a column):

ALTER TABLE table_name
DROP COLUMN column_name;
The following SQL deletes the "Email" column from the "Customers" table:

Example
ALTER TABLE Customers
DROP COLUMN Email;
ALTER TABLE - MODIFY COLUMN
To change the data type of a column in a table, use the following syntax:

ALTER TABLE table_name
MODIFY COLUMN column_name datatype;
*/