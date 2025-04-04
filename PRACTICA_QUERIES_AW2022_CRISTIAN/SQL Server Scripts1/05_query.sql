use  AdventureWorks2022
GO

SELECT TOP 2 p.LastName
FROM Person.Person p
JOIN HumanResources.Employee e ON p.BusinessEntityID = e.BusinessEntityID
JOIN HumanResources.EmployeePayHistory eph ON e.BusinessEntityID = eph.BusinessEntityID
ORDER BY eph.Rate DESC;
