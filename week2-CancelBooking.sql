USE LittleLemonDB;

DROP PROCEDURE IF EXISTS CancelBooking;
DELIMITER //
CREATE PROCEDURE CancelBooking(
	booking_id INT
)
BEGIN
	DELETE FROM Bookings 
    WHERE BookingID = booking_id;
	SELECT CONCAT("Booking ",booking_id," canceled");

END //
DELIMITER ;
CALL CancelBooking(1);
