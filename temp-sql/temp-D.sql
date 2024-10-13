--Crete database--

CREATE DATABASE teamZero;

--Create Tables--

CREATE TABLE 
    Student(   
        student_id VARCHAR(6) PRIMARY KEY, 
        nic CHAR(12),
        state VARCHAR(30),
        dep_id CHAR(4)
    );

CREATE TABLE 
    Lecture(
        lecture_id VARCHAR(5) PRIMARY KEY,
        nic CHAR(12),
        position VARCHAR(20),
        dep_id CHAR(4)
    );

CREATE TABLE 
    Course(
        course_code char(8) PRIMARY KEY,
        course_name varchar(20),
        course_creD001 INT,
        course_houre INT,
        course_type varchar(15) NOT NULL,
        dep_id CHAR(4)
    );

CREATE TABLE 
    Lecture_Course(
        lecture_id VARCHAR(5),
        course_code CHAR(8)
    );

-- INSERT VALUE --

INSERT INTO Course VALUES
    ('ICT1233', 'Server Side Web Development', 3, 45, 'GPA', 'D001'),
    ('ICT1213', 'Descrete Mathamatics', 3, 60, 'GPA', 'D001'),
    ('ICT1253', 'Computer Networkig', 3, 45, 'GPA', 'D001'),
    ('ICT1242', 'Computer Architecher', 2, 45, 'GPA', 'D001'),
    ('ICT1212', 'DBMS', 2, 45, 'GPA', 'D001'),
    ('ICT1222', 'DBMS practicum', 2, 45, 'GPA', 'D001'),

    ('TMS2022', 'Physics', 4, 60, 'GPA', 'D002'),
    ('TMS4302', 'Calculus', 3, 45, 'GPA', 'D002'),
    ('TMS6301', 'Wrokshop', 3, 45, 'GPA', 'D002'),
    ('TMS6302', 'Electricity and Magnatisam', 3, 45, 'GPA', 'D002'),
    ('TMS7302', 'Activeties Of Matters', 3, 45, 'GPA', 'D002'),

    ('BST4024', 'Fisheries', 3, 45, 'GPA', 'D003'),
    ('BST3021', 'Micro Biology', 3, 45, 'GPA', 'D003'),
    ('BST2343', 'Genetics', 3, 45, 'GPA', 'D003'),
    ('BST2331', 'Electronic', 3, 45, 'GPA', 'D003'),

    ('TCS1212', 'Fundamentals of Management',2,'45','GPA','D004'),
    ('ENG1212', 'English', 2, 45, 'Non GPA', 'D004');


INSERT INTO Student VALUES
    ('TG-001', '123456789011', 'Active', 'D001'),
    ('TG-002', '123456789012', 'Active', 'D001'),
    ('TG-003', '123456789013', 'Active', 'D001'),
    ('TG-004', '123456789014', 'Active', 'D001'),
    ('TG-005', '123456789015', 'Active', 'D002'),
    ('TG-006', '123456789016', 'Active', 'D003'),
    ('TG-007', '123456789017', 'Active', 'D003'),
    ('TG-008', '123456789018', 'suspended','D001'),
    ('TG-009', '12345678901V', 'Active', 'D001'),
    ('TG-010', '123456789020', 'suspended', 'D001'),
    ('TG-011', '123456789021', 'Active', 'D003'),
    ('TG-012', '123456789022', 'Active', 'D003'),
    ('TG-013', '123456789023', 'Active', 'D003'),
    ('TG-014', '123456789024', 'Active', 'D001'),
    ('TG-015', '123456789025', 'Active', 'D001'),
    ('TG-016', '12345678902V', 'Active', 'D001'),
    ('TG-017', '123456789027', 'suspended', 'D002'),
    ('TG-018', '123456789028', 'suspended', 'D002'),
    ('TG-019', '123456789029', 'Active', 'D002'),
    ('TG-020', '12345678903V', 'Active', 'D002');

INSERT INTO Lecture VALUES
    ('LC01', '12345678111V', 'Lecture', 'D001'),
    ('LC02', '12345678112V', 'professor', 'D001'),
    ('LC03', '12345678113V', 'Lecture', 'D001'),
    ('LC04', '12345678114V', 'professor', 'D001'),
    ('LC05', '12345678115V', 'Lecture', 'D001'),
    ('LC06', '12345678116V', 'Assistant Lecturer', 'D002'),
    ('LC07', '12345678117V', 'Lecture', 'D004'),
    ('LC08', '12345678118V', 'Lecture', 'D004'),
    ('LC09', '12345678119V', 'Senior Lecturer', 'D004'),

INSERT INTO Lecture_Course VALUES
    ('LC01','ICT1233'),
    ('LC02','ICT1213'),
    ('LC03','ICT1213'),
    ('LC04','ICT1242'),
    ('LC05','ICT1212'),
    ('LC05','ICT1222'),
    ('LC06','TMS2022'),
    ('LC06','TMS4302'),
    ('LC07','ENG1212'),
    ('LC08','ENG1212'),
    ('LC09','TCS1212'),
    ('LC10','BST4024'),
    ('LC10','BST2331');

-- Create User Account --

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin123';
CREATE USER 'dean'@'localhost' IDENTIFIED BY 'dean123';
CREATE USER 'lecture'@'localhost' IDENTIFIED BY 'lecture123';
CREATE USER 'techofficer'@'localhost' IDENTIFIED BY 'techofficer123';
CREATE USER 'student'@'localhost' IDENTIFIED BY 'student123';

-- PRIVILAGES AND GRANT OPTION --

GRANT ALL PRIVILEGES ON teamZero.* TO 'admin'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES ON teamZero.* TO 'dean'@'localhost';
FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES ON teamZero.* TO 'lecturer'@'localhost';
FLUSH PRIVILEGES;

GRANT SELECT,INSERT,UPDATE ON teamZero.attendence TO 'techofficer'@'localhost';
FLUSH PRIVILEGES;
GRANT SELECT,INSERT,UPDATE ON teamZero.medical TO 'techofficer'@'localhost';
FLUSH PRIVILEGES;

GRANT SELECT ON teamZero.attendence TO 'student'@'localhost';
FLUSH PRIVILEGES;
GRANT SELECT ON teamZero.mark TO 'student'@'localhost';
FLUSH PRIVILEGES;
