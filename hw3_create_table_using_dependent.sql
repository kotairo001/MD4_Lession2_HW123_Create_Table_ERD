create database students_management;
create table class (
classID int				not null primary key auto_increment,
className varchar(60)	not null,
startDate datetime		not null,
status bit		
);

create table students (
studentID int			not null primary key auto_increment,
studentName varchar(30)	not null,
address varchar(50),
phone varchar(20),
status bit,
classID int				not null
);

create table subject (
subID int 				not null primary key auto_increment,
subName varchar (30)	not null,
credit tinyint			not null default(1) check (credit>=1),
status bit 				default(1)
);

create table mark (
markID int				not null primary key auto_increment,
subID int 				not null unique,
studentID int			not null unique,
mark float				default(0) check (mark between 0 and 100),
examTimes tinyint 		default(1)
);