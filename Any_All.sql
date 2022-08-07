/*
Câu lệnh SQL sau đây liệt kê tên sản phẩm nếu tìm thấy bất kỳ bản ghi nào trong bảng ORDERDETAILS có số lượng bằng 10 
(điều này sẽ trả về đúng vì cột số lượng có một số giá trị là 10):
*/
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);
/*
Câu lệnh SQL sau đây liệt kê tên sản phẩm nếu tìm thấy bất kỳ bản ghi nào trong bảng ORDERDETAILS có số lượng lớn hơn 99 
(điều này sẽ trả về đúng vì cột số lượng có một số giá trị lớn hơn 99):
*/

SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity > 99);
  
/*
Câu lệnh SQL sau đây liệt kê tên sản phẩm nếu tìm thấy bất kỳ bản ghi nào trong bảng ORDERDETAILS có số lượng lớn hơn 1000 
(điều này sẽ trả về sai vì cột số lượng không có giá trị lớn hơn 1000):
*/
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity > 1000);
  
-- -------------------------- ALL STATEMENTS -----------------------------
/*
Câu lệnh SQL sau đây liệt kê tên sản phẩm nếu tất cả các bản ghi trong bảng OrderDetails có số lượng bằng 10. 
Điều này tất nhiên sẽ trả về sai vì cột số lượng có nhiều giá trị khác nhau (không chỉ giá trị của 10):
*/
SELECT ProductName
FROM Products
WHERE ProductID = ALL
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);
  
select CustomerName 
from Customers
where City = any(
select City from Customers 
where City = "My Tho"
)