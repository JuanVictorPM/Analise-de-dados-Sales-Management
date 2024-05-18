SELECT 
  c.customerkey AS CustomerKey, 
  --[GeographyKey]
  --[CustomerAlternateKey]
  --,[Title]
  c.firstname AS [FirstName] --,[MiddleName]
  , 
  c.lastname AS [LastName], 
  c.firstname + ' ' + LastName AS [Full Name] --[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  , 
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.datefirstpurchase AS DateFirstPurchase, 
  --,[CommuteDistance]
  g.city AS [CustomerCity] --join in Customer City from Geography Table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  left join [dbo].[DimGeography] AS g ON c.geographykey = g.geographykey
ORDER BY
  CustomerKey ASC
