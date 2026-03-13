CREATE DATABASE CollegeDB;
USE CollegeDB;
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);
CREATE TABLE Enrollment (
    student_id INT,
    course_id INT,
    PRIMARY KEY(student_id, course_id),
    FOREIGN KEY(student_id) REFERENCES Students(student_id),
    FOREIGN KEY(course_id) REFERENCES Courses(course_id)
);
INSERT INTO Students VALUES
(1,'Ananya'),
(2,'Riya');
INSERT INTO Courses VALUES
(101,'DBMS'),
(102,'Data Structures');
INSERT INTO Enrollment VALUES
(1,101),
(2,102);
//Query
SELECT Students.name, Courses.course_name
FROM Students
JOIN Enrollment ON Students.student_id = Enrollment.student_id
JOIN Courses ON Courses.course_id = Enrollment.course_id;
