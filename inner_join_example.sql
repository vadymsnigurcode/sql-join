'https://www.w3schools.com/sql/sql_create_table.asp'

--sample 1
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
--sample 2
SELECT *
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;