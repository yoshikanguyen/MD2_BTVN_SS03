create schema BT01;
use BT01;

CREATE TABLE classes (
classId INT PRIMARY KEY NOT NULL,
className VARCHAR (20) not null
);

CREATE TABLE students (
studentId INT NOT NULL PRIMARY KEY UNIQUE,
studentName CHAR(20) not null,
classId int not null,
foreign key (classId) references classes (classId)
);