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

Task-2 :  UPDATE Booking

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
    SELECT CONCAT("Booking ",booking_id," ipdated");

END //
DELIMITER ;
CALL UpdateBooking(1,"2022-10-20");