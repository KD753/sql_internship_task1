CREATE DATABASE UniversityDB;
USE UniversityDB;

CREATE TABLE Departments(
	DeptID INT PRIMARY KEY AUTO_INCREMENT ,
    DeptName VARCHAR(50) NOT NULL,
    Building VARCHAR(50)
);

CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    BirthDate DATE,
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100) NOT NULL,
    Credits INT DEFAULT 3,
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    EnrollmentDate DATE DEFAULT (CURRENT_DATE),
    Grade CHAR(1),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Professors (
    ProfessorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DeptID INT,
    Office VARCHAR(20),
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);