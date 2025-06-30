show databases;

create database KD_UniversityDB;

use KD_UniversityDB;

create table Departments(
DeptID int PRIMARY KEY AUTO_INCREMENT ,
Dept_Name varchar(20),
Building varchar(20)
);

create table Courses(
CourseID int PRIMARY KEY auto_increment,
CName varchar(40),
DeptID int, 
FOREIGN KEY (DeptID) REFERENCES departments(DeptID), 
Credits int
);

create table Enrollments(
EnrollID varchar(20) primary key,
SName varchar(50),
DeptID int, 
FOREIGN KEY (DeptID) REFERENCES departments(DeptID), 
Address varchar(60),
Sex char,
DOB Date ,
Age INT GENERATED ALWAYS AS (EXTRACT(YEAR FROM DOB)) STORED
);

create table Professors(
ProfID int primary key ,
Prof_Name varchar (60),
Dept_Name varchar(40),
CourseID int,
foreign key (CourseID) references courses(CourseID)
);











