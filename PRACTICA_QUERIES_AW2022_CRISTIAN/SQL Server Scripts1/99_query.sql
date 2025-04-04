use  AdventureWorks2022
GO

SELECT TOP 1 FirstName, COUNT(*) AS Frecuencia
FROM Person.Person
WHERE LEN(FirstName) = 10
GROUP BY FirstName
ORDER BY Frecuencia DESC;
