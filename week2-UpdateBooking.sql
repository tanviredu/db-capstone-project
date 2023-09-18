USE LittleLemonDB;

DROP PROCEDURE IF EXISTS UpdateBooking;
DELIMITER //
CREATE PROCEDURE UpdateBooking(
	booking_id INT,
    booking_date DATETIME
)
BEGIN
	UPDATE Bookings SET BookingDate = booking_date
    WHERE BookingID = booking_id;
	SELECT CONCAT("Booking ",booking_id," updated");

END //
DELIMITER ;
CALL UpdateBooking(1,"2022-10-20");