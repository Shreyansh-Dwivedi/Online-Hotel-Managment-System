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
    number INT, -- Unique identifier used in CheckOut class
    FOREIGN KEY (room_number) REFERENCES Room(room_number)
);

-- Room Table
CREATE TABLE Room (
    room_number INT PRIMARY KEY,
    availability ENUM('Yes', 'No') DEFAULT 'Yes',
    price DOUBLE,
    type ENUM('Single', 'Double', 'Suite'),
    status ENUM('Cleaned', 'Occupied', 'Needs Cleaning') DEFAULT 'Cleaned'
);