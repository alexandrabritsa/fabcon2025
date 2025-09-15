 
CREATE VIEW SalesLT.vw_MostSoldProduct AS
SELECT TOP 1 p.Name AS ProductName, SUM(sod.OrderQty) AS TotalSold
FROM SalesLT.Product p
JOIN SalesLT.SalesOrderDetail sod ON p.ProductID = sod.ProductID
GROUP BY p.Name
ORDER BY TotalSold DESC;

GO

