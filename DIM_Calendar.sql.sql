--Tratando os dados da tabela DimDate--
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date,
  --,[DayNumberOfWeek] 
  [EnglishDayNameOfWeek] as Day, 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  [WeekNumberOfYear] as WeekNumber, 
  [EnglishMonthName] as Month, 
  LEFT([EnglishMonthName], 3) AS MonthShort, 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  [MonthNumberOfYear] as MonthNumber, 
  [CalendarQuarter] as Quarter, 
  [CalendarYear] as Year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
 WHERE CalendarYear >=2019
