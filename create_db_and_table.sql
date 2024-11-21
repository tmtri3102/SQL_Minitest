create database quanlyhocvien;
use quanlyhocvien;
create table students(
	studentId int not null primary key auto_increment,
    studentFullName varchar(100),
    addressId int,
    age int,
    phone varchar(10) unique,
    classId int,
    foreign key(classId) references class(classId),
    foreign key(addressId) references address(addressId)
);
create table class(
	classId int not null primary key auto_increment,
    className varchar(20),
    language varchar(10),
    classDescription varchar(100)
);
create table point(
	pointId int not null primary key auto_increment,
    courseId int,
    studentId int,
    point int,
    foreign key (courseId) references course(courseId)
);
create table course(
	courseId int not null primary key auto_increment,
    courseName varchar(20),
    courseDescription varchar(100)
);
create table address(
	addressId int not null primary key auto_increment,
    addressName varchar(50)
);