/*

SQL Wildcard Characters
A wildcard character is used to substitute one or more characters in a string.

Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.


Symbol	Description	Example
%	Represents zero or more characters	bl% finds bl, black, blue, and blob
_	Represents a single character	h_t finds hot, hat, and hit
[]	Represents any single character within the brackets	h[oa]t finds hot and hat, but not hit
^	Represents any character not in the brackets	h[^oa]t finds hit, but not hot and hat
-	Represents any single character within the specified range	c[a-b]t finds cat and cbt
*/

-- Using the % Wildcard
SELECT * FROM Customers
WHERE ContactName LIKE 'An%';

SELECT * from Customers
WHERE CustomerName LIKE '%no%';

-- Using the _ Wildcard
SELECT * from Customers
where Country like '_exico';

SELECT * FROM Customers
WHERE City regexp '[bsp]';