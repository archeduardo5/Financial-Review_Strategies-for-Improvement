SELECT [orderid],
       [customerid],
       [employeeid],
       CONVERT(DATE, [orderdate]) AS Date,
       [shipperid]
FROM   [Northwind].[dbo].[orders] 