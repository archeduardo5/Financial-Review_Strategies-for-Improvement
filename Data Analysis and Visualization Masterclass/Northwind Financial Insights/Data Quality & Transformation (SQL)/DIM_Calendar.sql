SELECT [orderid],
       [customerid],
       [employeeid],
       [shipperid],
       CONVERT (DATE, [orderdate])           AS Date,
       CASE
         WHEN Datepart(quarter, [orderdate]) = 1 THEN 'Q1'
         WHEN Datepart(quarter, [orderdate]) = 2 THEN 'Q2'
         WHEN Datepart(quarter, [orderdate]) = 3 THEN 'Q3'
         WHEN Datepart(quarter, [orderdate]) = 4 THEN 'Q4'
       END                                   AS QuarterName,
       Datename(weekday, [orderdate])        AS [Day Name],
       Datepart(week, [orderdate])           AS Weeknr,
       LEFT(Datename(month, [orderdate]), 3) AS MonthShort,
       Month([orderdate])                    AS Monthno,
       Datepart(weekday, [orderdate])        AS [Week Day],
       Datepart(year, [orderdate])           AS Year
FROM   [Northwind].[dbo].[orders] 
 



