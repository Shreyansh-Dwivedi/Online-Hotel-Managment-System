-- Use the HotelManagement database
USE HotelManagement;

-- Room Table: Room management including availability, price, type, and cleaning status
CREATE TABLE Room (
    room_number INT PRIMARY KEY,
    availability ENUM('Available', 'Occupied') DEFAULT 'Available',
    price DOUBLE,
    type ENUM('Single', 'Double', 'Suite'),
    status ENUM('Cleaned', 'Occupied', 'Needs Cleaning') DEFAULT 'Cleaned'
);

-- Sample query to check the status and availability of a room
SELECT * FROM Room WHERE availability = 'Available';

-- Sample query to update room availability
UPDATE Room 
SET availability = 'Occupied' 
WHERE room_number = 101;

UPDATE Room 
SET availability = 'Available' 
WHERE room_number = 101;

-- Sample query to update room type
UPDATE Room 
SET type …