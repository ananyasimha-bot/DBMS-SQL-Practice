CREATE DATABASE CompanyDB;
USE CompanyDB;
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);
INSERT INTO Employees VALUES
(101,'Ananya','IT',50000),
(102,'Ameya','HR',45000),
(103,'Ritu','Finance',60000),
(104,'Jahnavi','R&D',120000);
SELECT * FROM Employees;
SELECT name, salary
FROM Employees
WHERE salary > 50000;
