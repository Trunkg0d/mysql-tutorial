-- alter table Customers change column CustomerID type int not null auto_increment;
-- alter table Customers auto_increment = 1000;

INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers;

select * from Customers;

delete from Customers where ContactName is null;
select * from Customers;

