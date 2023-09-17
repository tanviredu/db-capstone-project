DELIMITER //

CREATE PROCEDURE CancelOrder(order_id INT)
BEGIN
	DELETE FROM Orders WHERE OrderID = order_id;
	SELECT CONCAT("Order ", OrderID, " is cancelled") as Confirmation;
END //

DELIMITER ;

CALL CancelOrder(50);
