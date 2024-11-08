-- Use the HotelManagement database
USE HotelManagement;

-- Table to store room details
CREATE TABLE Room (
    room_number INT PRIMARY KEY,
    availability ENUM('Available', 'Occupied') DEFAULT 'Available',
    price DOUBLE,
    type ENUM('Single', 'Double', 'Suite'),
    status ENUM('Cleaned', 'Occupied', 'Needs Cleaning') DEFAULT 'Cleaned'
);

-- Table to store customer details
CREATE TABLE Customer (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender ENUM('Male', 'Female'),
    checkin DATE,
    checkout DATE,
    room_number INT,
    payment_status ENUM('Pending', 'Paid'),
    number INT UNIQUE,  -- Unique identifier, used in CheckOut and UpdateCheck
    FOREIGN KEY (room_number) REFERENCES Room(room_number)…