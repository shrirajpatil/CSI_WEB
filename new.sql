-- SQL script to create a database for event details and user login

-- Create a database (if it doesn't exist already)
CREATE DATABASE IF NOT EXISTS EventManagement;

-- Use the database
USE EventManagement;

-- Create a table for user login credentials
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Create a table for event details
CREATE TABLE Events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(100) NOT NULL,
    event_date DATE NOT NULL,
    event_location VARCHAR(100),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Insert some sample data for users
INSERT INTO Users (username, password) 
VALUES 
('shriraj', 'password123'), 
('johnDoe', 'mysecurepass');

-- Insert some sample data for events
INSERT INTO Events (event_name, event_date, event_location, user_id)
VALUES
('Tech Conference', '2024-11-15', 'Mumbai', 1),
('AI Workshop', '2024-12-10', 'Pune', 2);

-- Retrieve data
SELECT * FROM Users;
SELECT * FROM Events;
