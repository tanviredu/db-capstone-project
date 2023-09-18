USE LittleLemonDB;

DROP PROCEDURE IF EXISTS AddValidBooking;
DELIMITER //
CREATE PROCEDURE AddValidBooking(booking_date DATE,booking_table_number INT,customer_id INT,staff_id INT)
BEGIN
	DECLARE booking_status INT DEFAULT 0;
    START TRANSACTION;
    SELECT COUNT(*) INTO booking_status FROM Bookings WHERE BookingDate = booking_date AND BookingTableNumber = booking_table_number;
    IF booking_status > 0 THEN
		-- booking already exists
        SELECT CONCAT("Table ",booking_table_number," already booked - booking calcelled" ) AS "Booking status";
        ROLLBACK;
	ELSE
		INSERT INTO Bookings(BookingDate,BookingTableNumber,CustomerID,StaffID)
        VALUES
        (booking_date,booking_table_number,customer_id,staff_id);
        COMMIT;
        SELECT "Booking Added" AS "Booking status";
    END IF;
END //
DELIMITER ;

CALL AddValidBooking("2022-10-10",7,1,2);

