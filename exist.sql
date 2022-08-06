select SupplierName from Suppliers
where exists
(
select * from Products where Products.ProductID = Suppliers.SupplierID and Products.Price < 19
)