/*
MySQL IFNULL() and COALESCE() Functions
Look at the following "Products" table:

P_Id	ProductName	UnitPrice	UnitsInStock	UnitsOnOrder
1		Jarlsberg	10.45			16				15
2		Mascarpone	32.56			23	 
3		Gorgonzola	15.67			9				20
Suppose that the "UnitsOnOrder" column is optional, and may contain NULL values.

Look at the following SELECT statement:

SELECT ProductName, UnitPrice * (UnitsInStock + UnitsOnOrder)
FROM Products;
In the example above, if any of the "UnitsOnOrder" values are NULL, the result will be NULL.

MySQL IFNULL() Function
The MySQL IFNULL() function lets you return an alternative value if an expression is NULL.

The example below returns 0 if the value is NULL:

SELECT ProductName, UnitPrice * (UnitsInStock + IFNULL(UnitsOnOrder, 0))
FROM Products;

it same with coalesce function
SELECT ProductName, UnitPrice * (UnitsInStock + coalesce(UnitsOnOrder, 0))
FROM Products;
*/