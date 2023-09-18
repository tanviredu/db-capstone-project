DROP PROCEDURE IF EXISTS CheckBooking;
DELIMITER //
CREATE PROCEDURE CheckBooking(booking_date DATETIME,booking_table_number INT)
BEGIN 
	DECLARE booking_exists INT DEFAULT 0;
    SELECT COUNT(*) INTO booking_exists FROM Bookings WHERE BookingDate = booking_date AND BookingTableNumber = booking_table_number;
    IF booking_exists > 0 THEN
		SELECT CONCAT("Table ",booking_table_number," already booked") AS "Booking status";
    ELSE
		SELECT "Table Is Open For booking" AS "Booking status";
    END IF;
    
END //

DELIMITER ;

CALL CheckBooking('2022-12-30',5);