'https://www.w3schools.com/sql/sql_create_table.asp'

--sample 1
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
--sample 2
SELECT *
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

--required tables and some data
CREATE TABLE IF NOT EXISTS Orders (
    OrderID INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerID int,
    OrderDate REAL
);
INSERT INTO Orders (CustomerID, OrderDate)
VALUES (1, DateTime('now'));


CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerName varchar(255),
    ContactName varchar(255),
    Address varchar(255), 
    City varchar(255), 
    PostalCode varchar(255), 
    Country varchar(255)
);

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

