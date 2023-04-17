create database lession2_demo;
create table students (
studentID varchar(20) primary key,
studentName varchar(50),
birthday datetime,
class varchar(20),
teacher varchar(20)
);
create table subjects (
subjectID varchar(20) primary key,
subjectName varchar(50)
);
create table score (
studentID varchar(20),
subjectID varchar(20),
score int,
testDay datetime,
primary key (studentID, subjectID),
foreign key (studentID) references students(studentID),
foreign key (subjectID) references subjects(subjectID)
);
create table teachers (
teacherID varchar(20) primary key,
teacherName varchar (20),
phoneNumber varchar(10)
);
alter table subjects add teacherID varchar(20);
alter table subjects add constraint FK_teacherID foreign key (teacherID) references teachers(teacherID);
select * from subjects;
