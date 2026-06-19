-- Create Database

CREATE DATABASE StudentDB;


-- Select Database

USE StudentDB;



-- Create Student Table

CREATE TABLE Student(

Id INT PRIMARY KEY,

Name VARCHAR(50),

Age INT,

Course VARCHAR(50)

);



-- Insert Data

INSERT INTO Student VALUES

(1,'Kumar Raja',20,'Angular'),

(2,'Rahul',21,'Java'),

(3,'Anil',22,'Python');



-- View All Records

SELECT * FROM Student;



-- Select Specific Columns

SELECT Name,Course
FROM Student;



-- WHERE Condition

SELECT *
FROM Student
WHERE Age > 20;



-- Update Record

UPDATE Student

SET Course='DotNet'

WHERE Id=1;



-- Delete Record

DELETE FROM Student

WHERE Id=3;

-- Order By

SELECT *

FROM Student

ORDER BY Age DESC;

-- Aggregate Functions

SELECT COUNT(*) AS TotalStudents

FROM Student;

SELECT AVG(Age)

FROM Student;

-- Create Second Table

CREATE TABLE Course(

CourseId INT PRIMARY KEY,

CourseName VARCHAR(50)

);

-- Insert Course Data

INSERT INTO Course VALUES

(1,'Angular'),

(2,'Java');



-- INNER JOIN Example

SELECT Student.Name, Course.CourseName

FROM Student

INNER JOIN Course

ON Student.Course = Course.CourseName;

-- Create View

CREATE VIEW StudentView AS

SELECT Name,Course

FROM Student;
-- View Data

SELECT *

FROM StudentView;