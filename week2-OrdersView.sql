use LittleLemonDB;
CREATE VIEW `OrdersView`
AS
	SELECT 
		OrderID,
		Quantity,
		TotalCost AS "Cost" 
	FROM Orders;   

Select * from OrdersView;