use  AdventureWorks2022
GO

SELECT TOP 1 p.LastName
FROM Person.Person p
JOIN HumanResources.Employee e ON p.BusinessEntityID = e.BusinessEntityID
ORDER BY p.ModifiedDate;
