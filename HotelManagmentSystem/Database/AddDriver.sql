-- Create the database
CREATE DATABASE hotel_management;
USE hotel_management;

-- Create the driver table
CREATE TABLE driver (
    name VARCHAR(100) NOT NULL,
    age INT,
    gender ENUM('Male', 'Female'),
    company VARCHAR(100),
    brand VARCHAR(100),
    available ENUM('Yes', 'No'),
    location VARCHAR(100)
);

-- Example insertion of a driver record
INSERT INTO driver (name, age, gender, company, brand, available, location)
VALUES ('John Doe', 30, 'Male', 'Toyota', 'Corolla', 'Yes', 'Downtown');
