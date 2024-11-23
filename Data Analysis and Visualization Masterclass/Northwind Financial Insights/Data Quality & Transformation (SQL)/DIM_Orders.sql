SELECT orders.[orderid],
       CONVERT(DATE, [orderdate]) AS Date,
       orderdetails.quantity      AS Quantity,
       --,Orders.[CustomerID]
       --,[EmployeeID]
       --,[ShipperID]
       --,OrderDetails.ProductID
       --,Products.CategoryID
       categories.categoryname    AS [Category Name],
       products.productname       AS [Product Name],
       customers.city             AS City
FROM   [Northwind].[dbo].[orders] AS Orders
       LEFT JOIN [Northwind].[dbo].[orderdetails] AS OrderDetails
              ON orders.orderid = orderdetails.orderid
       LEFT JOIN [Northwind].[dbo].[products] AS Products
              ON orderdetails.productid = products.productid
       LEFT JOIN [Northwind].[dbo].[categories] AS Categories
              ON products.categoryid = categories.categoryid
       LEFT JOIN [Northwind].[dbo].[customers] AS Customers
              ON orders.customerid = customers.customerid 