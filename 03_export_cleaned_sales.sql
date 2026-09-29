USE SalesDB;
GO

-- Export query sorted chronologically
SELECT 
    OrderID, SourceData, ProductID, Product, Category, Price,
    CustomerID, CustomerName, Country, SalesPersonID, OrderDate,
    ShipDate, DeliveryDays, OrderStatus, Quantity, Revenue
FROM Sales.v_CleanedEcommerceOrders
ORDER BY OrderDate ASC;