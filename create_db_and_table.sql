-- Tạo cơ sở dữ liệu và sử dụng
CREATE DATABASE quanlyhocvien;
USE quanlyhocvien;

-- Tạo bảng Students
CREATE TABLE students (
                          studentId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                          studentFullName VARCHAR(100),
                          addressId INT,
                          age INT,
                          phone VARCHAR(10) UNIQUE,
                          classId INT,
                          FOREIGN KEY (classId) REFERENCES class(classId),
                          FOREIGN KEY (addressId) REFERENCES address(addressId)
);

-- Tạo bảng Class
CREATE TABLE class (
                       classId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                       className VARCHAR(20),
                       language VARCHAR(10),
                       classDescription VARCHAR(100)
);

-- Tạo bảng Point
CREATE TABLE point (
                       pointId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                       courseId INT,
                       studentId INT,
                       point INT,
                       FOREIGN KEY (courseId) REFERENCES course(courseId)
);

-- Tạo bảng Course
CREATE TABLE course (
                        courseId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                        courseName VARCHAR(20),
                        courseDescription VARCHAR(100)
);

-- Tạo bảng Address
CREATE TABLE address (
                         addressId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                         addressName VARCHAR(50)
);
