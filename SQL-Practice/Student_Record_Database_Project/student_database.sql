-- Create Database
CREATE DATABASE StudentDB;

-- Use Database
USE StudentDB;

-- Create Students Table
CREATE TABLE Students (
    roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    semester INT,
    cgpa DECIMAL(3,2)
);

-- Insert Records
INSERT INTO Students VALUES
(101, 'Ananya', 'CSE', 2, 8.5),
(102, 'Riya', 'ECE', 2, 8.2),
(103, 'Rahul', 'CSE', 3, 7.9),
(104, 'Arjun', 'ME', 4, 8.1),
(105, 'Ameya', 'IT', 4, 9.2);

-- Retrieve Data
SELECT * FROM Students;

-- Retrieve Specific Columns
SELECT name, cgpa FROM Students;

-- Update Student Data
UPDATE Students
SET cgpa = 8.7
WHERE roll_no = 101;

-- Delete Record (optional)
DELETE FROM Students
WHERE roll_no = 104;
