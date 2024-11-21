# Thêm 5 bản ghi trong bảng Address
INSERT INTO address (addressName)
VALUES 
('123 Main Street'),
('456 Maple Avenue'),
('789 Oak Road'),
('101 Pine Lane'),
('202 Birch Boulevard');

# Thêm 5 bản ghi trong bảng Classes
INSERT INTO class (className, language, classDescription)
VALUES
('Math101', 'English', 'Basic Mathematics'),
('Sci101', 'English', 'Basic Science'),
('Hist101', 'English', 'World History'),
('Eng101', 'English', 'English Literature'),
('Comp101', 'English', 'Computer Basics');

#Thêm 10 bản ghi trong bảng Student	
INSERT INTO students (studentFullName, addressId, age, phone, classId)
VALUES
('Alice Johnson', 1, 20, '0987654321', 1),
('Bob Smith', 2, 21, '0987654322', 2),
('Charlie Brown', 3, 22, '0987654323', 3),
('Diana Prince', 4, 23, '0987654324', 4),
('Ethan Hunt', 5, 24, '0987654325', 5),
('Fiona Apple', 1, 25, '0987654326', 1),
('George Miller', 2, 19, '0987654327', 2),
('Hannah Williams', 3, 18, '0987654328', 3),
('Ian Curtis', 4, 20, '0987654329', 4),
('Jane Austen', 5, 22, '0987654330', 5);

# Thêm 15 bản ghi trong bảng Point
INSERT INTO point (courseId, studentId, point)
VALUES
(1, 1, 85),
(1, 2, 90),
(2, 3, 78),
(2, 4, 88),
(3, 5, 92),
(3, 6, 75),
(4, 7, 89),
(4, 8, 95),
(5, 9, 80),
(5, 10, 86),
(1, 6, 88),
(2, 7, 92),
(3, 8, 79),
(4, 9, 84),
(5, 10, 91);

# Thêm 20 bản ghi thuộc bảng Course
INSERT INTO course (courseName, courseDescription)
VALUES
('Algebra', 'Algebra basics'),
('Biology', 'Introduction to Biology'),
('WorldHistory', 'Overview of World History'),
('Literature', 'Understanding Literature'),
('Coding', 'Introduction to Coding'),
('Physics', 'Introduction to Physics'),
('Chemistry', 'Introduction to Chemistry'),
('Economics', 'Introduction to Economics'),
('Psychology', 'Basics of Psychology'),
('Statistics', 'Understanding Statistics'),
('Philosophy', 'Basics of Philosophy'),
('Geography', 'World Geography Overview'),
('Art', 'Art History Basics'),
('Music', 'Music Theory'),
('French', 'Introduction to French'),
('German', 'Introduction to German'),
('Spanish', 'Introduction to Spanish'),
('Calculus', 'Advanced Mathematics'),
('Programming', 'Introduction to Programming'),
('Astronomy', 'Basics of Astronomy');