
-- 1. Create Database
CREATE DATABASE practice_db;
USE practice_db;

-- 2. Create Tables
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    branch VARCHAR(20),
    marks INT,
    gender VARCHAR(10)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    credits INT
);

CREATE TABLE enrollments (
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY(student_id) REFERENCES students(id),
    FOREIGN KEY(course_id) REFERENCES courses(course_id)
);

-- 3. Insert Data
INSERT INTO students VALUES
(1, 'Akhila', 'CSE', 88, 'Female'),
(2, 'Ravi', 'ECE', 75, 'Male'),
(3, 'Sneha', 'IT', 92, 'Female'),
(4, 'Kiran', 'EEE', 67, 'Male');

INSERT INTO courses VALUES
(101, 'DBMS', 4),
(102, 'Algorithms', 3),
(103, 'Operating Systems', 3);

INSERT INTO enrollments VALUES
(1, 1, 101),
(2, 1, 102),
(3, 2, 101),
(4, 3, 103);

-- 4. Basic Queries
SELECT * FROM students;
SELECT name, marks FROM students ORDER BY marks DESC;

-- 5. Update & Delete
UPDATE students SET marks = 90 WHERE id = 1;
DELETE FROM students WHERE id = 4;

-- 6. JOINS
SELECT s.name, c.course_name
FROM students s
JOIN enrollments e ON s.id = e.student_id
JOIN courses c ON c.course_id = e.course_id;

-- 7. GROUP BY & HAVING
SELECT branch, AVG(marks) AS avg_marks
FROM students
GROUP BY branch
HAVING avg_marks > 80;

-- 8. FUNCTIONS
SELECT name, UPPER(name) AS upper_name FROM students;
SELECT name, LENGTH(name) AS length_of_name FROM students;

-- 9. Create VIEW
CREATE VIEW student_marks AS
SELECT name, branch, marks FROM students;

-- 10. INDEX
CREATE INDEX idx_branch ON students(branch);

-- 11. STORED PROCEDURE
DELIMITER //
CREATE PROCEDURE GetStudent(IN sid INT)
BEGIN
    SELECT * FROM students WHERE id = sid;
END //
DELIMITER ;

-- 12. TRIGGER
DELIMITER //
CREATE TRIGGER marks_check
BEFORE INSERT ON students
FOR EACH ROW
BEGIN
    IF NEW.marks < 0 THEN
        SET NEW.marks = 0;
    END IF;
END //
DELIMITER ;
