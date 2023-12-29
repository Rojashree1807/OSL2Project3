create database Schoolmanagement
use Schoolmanagement

CREATE TABLE Students (
    StudentId INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10)
)

INSERT INTO Students (StudentId, FirstName, LastName, DateOfBirth, Gender)
VALUES
    (1, 'John', 'Doe', '2000-01-15', 'Male'),
    (2, 'Jane', 'Smith', '1999-05-20', 'Female'),
    (3, 'Bob', 'Johnson', '2001-08-10', 'Male')


CREATE TABLE Teachers (
    TeacherId INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    SubjectTaught VARCHAR(50)
)

INSERT INTO Teachers (TeacherId, FirstName, LastName, DateOfBirth, Gender, SubjectTaught)
VALUES
    (1, 'Mary', 'Williams', '1980-03-25', 'Female', 'Mathematics'),
    (2, 'James', 'Anderson', '1975-11-12', 'Male', 'English'),
    (3, 'Emily', 'Taylor', '1982-06-08', 'Female', 'Science')


CREATE TABLE Courses (
    CourseId INT PRIMARY KEY,
    CourseName VARCHAR(100),
    CourseCode VARCHAR(20),
    CreditHours INT
)

INSERT INTO Courses (CourseId, CourseName, CourseCode, CreditHours)
VALUES
    (1, 'Introduction to Computer Science', 'CS101', 3),
    (2, 'History 101', 'HIS101', 4),
    (3, 'Chemistry Basics', 'CHEM101', 3)


select * from Students
select * from Teachers
select * from Courses
