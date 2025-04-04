use  AdventureWorks2022
GO

SELECT COUNT(*) as cantidad
FROM HumanResources.Employee
WHERE DATEDIFF(YEAR, HireDate, GETDATE()) > 17;
