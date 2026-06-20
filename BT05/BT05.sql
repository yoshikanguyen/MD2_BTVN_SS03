create schema BT05;
use BT05;

create table students (
studentId int primary key,
studentName varchar (255) not null,
studentEmail varchar (255) not null
);

create table teachers (
teacherId int primary key,
teacherName varchar (255) not null,
teacherEmail varchar (255) not null
);

create table courses (
courseId int primary key,
courseName varchar (255) not null,
courseDiscription varchar (255),
coursePrice decimal (12, 2)
);

create table enrollments (
courseId int,
studentId int,
primary key (courseId, studentId),
foreign key (courseId) references courses(courseId),
foreign key (studentId) references students(studentId)
);

alter table courses
add teacherId int;

alter table courses
add foreign key (teacherId) references teachers(teacherId);

alter table courses
modify coursePrice decimal (12, 2) check (coursePrice > 0);

-- drop table enrollments;