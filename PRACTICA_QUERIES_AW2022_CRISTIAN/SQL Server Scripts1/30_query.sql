use  AdventureWorks2022
GO

WITH TotalProductos AS (
    SELECT COUNT(*) AS Total
    FROM Production.Product
)
SELECT pc.Name AS Categoria
FROM Production.ProductCategory pc
JOIN Production.ProductSubcategory ps ON pc.ProductCategoryID = ps.ProductCategoryID
JOIN Production.Product p ON ps.ProductSubcategoryID = p.ProductSubcategoryID
CROSS JOIN TotalProductos
GROUP BY pc.Name
HAVING (COUNT(p.ProductID) * 100.0 / (SELECT Total from TotalProductos)) = 0.79;
