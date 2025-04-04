use  AdventureWorks2022
GO

SELECT d.Name AS Departamento,
       STRING_AGG(p.LastName + ', ' + p.FirstName, ' | ') AS Empleados
FROM HumanResources.Department d
JOIN HumanResources.Employee e ON d.DepartmentID = e.BusinessEntityID
JOIN Person.Person p ON e.BusinessEntityID = p.BusinessEntityID
GROUP BY d.Name
HAVING COUNT(e.BusinessEntityID) < 4;
