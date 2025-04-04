use  AdventureWorks2022
GO

SELECT YEAR(HireDate) AS Año, MONTH(HireDate) AS Mes, Gender, COUNT(*) AS TotalContratados
FROM HumanResources.Employee
GROUP BY YEAR(HireDate), MONTH(HireDate), Gender
ORDER BY YEAR(HireDate), MONTH(HireDate), Gender;
