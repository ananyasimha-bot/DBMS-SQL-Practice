CREATE DATABASE LibraryDB;
USE LibraryDB;
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(50),
    author VARCHAR(50),
    available_copies INT
);
INSERT INTO Books VALUES
(1,'Data Structures','Mark Allen',5),
(2,'Java Programming','James Gosling',3),
(3,'DBMS Concepts','Korth',4);
SELECT * FROM Books;
UPDATE Books
SET available_copies = 2
WHERE book_id = 2;
