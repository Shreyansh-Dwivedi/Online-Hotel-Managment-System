-- Using the HotelManagement database
USE HotelManagement;

-- Customer Table
CREATE TABLE Customer (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender ENUM('Male', 'Female'),
    checkin DATE,
    checkout DATE,
    room_number INT,
    payment_status ENUM('Pending', 'Paid'),
    number INT UNIQUE, -- Unique identifier, referenced in CustomerInfo
    FOREIGN KEY (room_number) REFERENCES Room(room_number)
);