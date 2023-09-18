USE LittleLemonDB;

DROP PROCEDURE IF EXISTS AddBooking;
DELIMITER //
CREATE PROCEDURE AddBooking(
	customer_id INT,
    booking_date DATETIME,
    table_number INT,
    staff_id INT
)
BEGIN
	INSERT INTO Bookings(CustomerID,BookingDate,BookingTableNumber,StaffID)
    VALUES
    (customer_id,booking_date,table_number,staff_id);
    SELECT "Booking added successfully" AS "Message";
END //
DELIMITER ;

CALL AddBooking(3,"2022-12-30",3,3);
