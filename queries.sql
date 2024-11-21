-- Tạo cơ sở dữ liệu và sử dụng
CREATE DATABASE quanlyhocvien;
USE quanlyhocvien;

-- Xem dữ liệu trong các bảng
SELECT * FROM address;
SELECT * FROM class;
SELECT * FROM students;
SELECT * FROM point;
SELECT * FROM course;

-- Tìm kiếm HV có họ Nguyen
SELECT studentFullName
FROM students
WHERE studentFullName LIKE '%Nguyen';

-- Tìm kiếm HV có tên Anh
SELECT studentFullName
FROM students
WHERE studentFullName LIKE 'Anh%';

-- Tìm kiếm HV có độ tuổi từ 18-25
SELECT studentFullName, age
FROM students
WHERE age >= 18 AND age <= 25
ORDER BY age ASC;

-- Tìm kiếm HV có ID là 12 hoặc 13
SELECT studentId, studentFullName
FROM students
WHERE studentId = 12 OR studentId = 13;

-- Thống kê số lượng học viên các lớp (COUNT)
SELECT COUNT(studentId) AS 'So luong hoc vien'
FROM students;

-- Thống kê số lượng học viên tại các tỉnh (COUNT)
SELECT a.addressName, COUNT(s.studentId) AS 'Slg hv cac tinh'
FROM students s
         JOIN address a
              ON s.addressId = a.addressId
GROUP BY a.addressName;

-- Tính điểm trung bình của các khóa học (AVG)
SELECT c.courseName, AVG(p.point) AS 'Trung binh'
FROM course c
         JOIN point p
              ON c.courseId = p.courseId
GROUP BY p.courseId;

-- Lấy ra điểm cao nhất, thấp nhất
SELECT MAX(point)
FROM point;

SELECT s.studentFullName, MAX(p.point) AS 'Diem cao nhat'
FROM point p
         JOIN students s
              ON p.studentId = s.studentId
GROUP BY s.studentFullName
HAVING MAX(p.point) >= ALL (
    SELECT MAX(point)
    FROM point
    GROUP BY pointId
);

-- Lấy ra danh sách HS, chuyển đổi tên HS thành chữ hoa
SELECT UCASE(studentFullname) AS 'Ten HV viet hoa'
FROM students;

-- Đưa ra khóa học có điểm trung bình cao nhất
SELECT c.courseName, AVG(p.point)
FROM course c
         JOIN point p
              ON c.courseId = p.courseId
GROUP BY c.courseName
HAVING AVG(p.point) >= ALL (
    SELECT AVG(point)
    FROM point
    GROUP BY point.courseId
);
