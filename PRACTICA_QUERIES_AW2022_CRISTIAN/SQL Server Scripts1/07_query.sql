use  AdventureWorks2022
GO

SELECT AVG(UnitPrice) AS PrecioPromedio2012
FROM Purchasing.PurchaseOrderDetail
WHERE YEAR(DueDate) = 2012;
