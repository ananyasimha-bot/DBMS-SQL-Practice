CREATE DATABASE CompanyDB;
USE CompanyDB;
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);
INSERT INTO Employees VALUES
(101,'Rahul','IT',50000),
(102,'Ananya','HR',45000),
(103,'Karan','Finance',60000);
SELECT * FROM Employees;
SELECT name, salary
FROM Employees
WHERE salary > 50000;
