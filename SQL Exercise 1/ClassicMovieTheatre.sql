--Which employee does know German?

SELECT FirstName || ' ' || LastName AS FullNameOfGermanSpeakers, Notes
FROM Employees
WHERE Notes IN (SELECT Notes
FROM Employees
WHERE Notes LIKE '%German%');

--What are the products that have prices between 50 and 80?

SELECT ProductName, Price
FROM Products
WHERE (Price > 50 AND Price < 80);

--What are the products that are sold within bottles?

SELECT ProductName, Unit
FROM Products
WHERE Unit IN (SELECT Unit
FROM Products
WHERE Unit LIKE '%bottle%');

--Who are the customers that bought products in 'Seafood' category?

SELECT CustomerName AS CustomersThatBoughtSeafood
FROM Customers
WHERE CustomerID IN (SELECT CustomerID
FROM Orders
WHERE OrderID IN (SELECT OrderID
FROM OrderDetails
WHERE ProductID IN (SELECT ProductID
FROM Products
WHERE CategoryID IN (SELECT CategoryID
FROM Categories
WHERE CategoryName = 'Seafood'))));

--How much payment has been done to the each shipper? Assume that they ship each order for $2.

SELECT S.ShipperName, SUM(OD.Quantity) * 2 AS TotalPayment
FROM Orders O
JOIN OrderDetails OD 
ON O.OrderID = OD.OrderID
JOIN Shippers S 
ON O.ShipperID = S.ShipperID
WHERE S.ShipperName 
IN ('Speedy Express', 'United Package', 'Federal Shipping')
GROUP BY S.ShipperName
ORDER BY TotalPayment DESC;

--How many orders were sent from which country each year?

SELECT C.Country, COUNT(*) AS TotalShipments
FROM Orders O
JOIN Customers C
ON O.CustomerID = C.CustomerID
WHERE C.Country
IN (SELECT DISTINCT Country
FROM Customers)
GROUP BY C.Country
ORDER BY TotalShipments DESC;

--Which customers made fewer than four orders?

SELECT C.CustomerName, COUNT (*) AS TotalOrder
FROM Orders O
JOIN Customers C
ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerName
HAVING COUNT(*) < 4;
