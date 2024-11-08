-- Using the HotelManagement database
USE HotelManagement;

-- Create the Employee table
CREATE TABLE Employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender ENUM('Male', 'Female'),
    job VARCHAR(100),
    salary DOUBLE,
    phone VARCHAR(15),
    nid VARCHAR(20), -- National ID
    email VARCHAR(100)
);