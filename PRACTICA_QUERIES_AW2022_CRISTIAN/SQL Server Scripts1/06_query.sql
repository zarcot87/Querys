use  AdventureWorks2022
GO

SELECT SUM(RejectedQty * UnitPrice) AS CosteTotalRechazado
FROM Purchasing.PurchaseOrderDetail
WHERE RejectedQty > 0;
