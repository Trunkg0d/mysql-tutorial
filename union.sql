select Customers.City from Customers
union
select Suppliers.City from Suppliers
order by City;

select Suppliers.ContactName from Suppliers
union
select Customers.City from Customers
union
select Customers.ContactName from Customers
order by ContactName;