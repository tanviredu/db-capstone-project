USE LittleLemonDB;
PREPARE GetOrderDetail
FROM
"SELECT OrderID,Quantity,TotalCost AS 'Cost' FROM Orders WHERE CustomerID = ?";

SET @CustomerID = 1;
EXECUTE GetOrderDetail USING @CustomerID;
deallocate prepare GetOrderDetail;
