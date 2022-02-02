
--1a
SELECT *
FROM [Sales].[SalesTerritory]

--1b
SELECT TerritoryID, Name
FROM [Sales].[SalesTerritory]

--1c
SELECT *
FROM [Person].[Person]
WHERE  LastName = 'Norman'

--1d
SELECT *
FROM [Person].[Person]
WHERE EmailPromotion!=2

--4a. example1
SELECT COUNT (DISTINCT PersonType) AS NUMBER
FROM [Person].[Person]
WHERE  LastName LIKE 'M%'
	AND EmailPromotion!=1

--4a.example2
SELECT COUNT (DISTINCT PersonType) AS NUMBER
FROM [Person].[Person]
WHERE  LastName LIKE 'M%'
	AND EmailPromotion NOT LIKE '%1%'

--4b
SELECT TOP 3 *
FROM [Sales].[SpecialOffer]
WHERE  StartDate BETWEEN '2013-01-01' AND '2014-01-01'
ORDER BY DiscountPct DESC

--4c
SELECT MAX(Size) AS MaxSize, MIN(Weight) AS MinWeight
FROM [Production].[Product]

--4d
SELECT ProductSubcategoryID, MAX(Size) AS MaxSize, MIN(Weight) AS MinWeight 
FROM [Production].[Product]
GROUP BY ProductSubcategoryID

--4e
SELECT ProductSubcategoryID, Color, MAX(Size) AS MaxSize, MIN(Weight) AS MinWeight  
FROM [Production].[Product]
WHERE Color IS NOT NULL
GROUP BY ProductSubcategoryID, Color
