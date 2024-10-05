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
        course_credit INT,
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
    ('ICT1233', 'Server Side Web Development', 3, 45, 'GPA', 'DIT'),
    ('ICT1213', 'Descrete Mathamatics', 3, 60, 'GPA', 'DIT'),
    ('ICT1253', 'Computer Networkig', 3, 45, 'GPA', 'DIT'),
    ('ICT1242', 'Computer Architecher', 2, 45, 'GPA', 'DIT'),
    ('ICT1212', 'DBMS', 2, 45, 'GPA', 'DIT'),
    ('ICT1222', 'DBMS practicum', 2, 45, 'GPA', 'DIT'),

    ('TMS2022', 'Physics', 4, 60, 'GPA', 'DET'),
    ('TMS4302', 'Calculus', 3, 45, 'GPA', 'DET'),
    ('TMS6301', 'Wrokshop', 3, 45, 'GPA', 'DET'),
    ('TMS6302', 'Electricity and Magnatisam', 3, 45, 'GPA', 'DET'),
    ('TMS7302', 'Properties Of Matters', 3, 45, 'GPA', 'DET'),

    ('BST4024', 'Fisheries', 3, 45, 'GPA', 'DBT'),
    ('BST3021', 'Micro Biology', 3, 45, 'GPA', 'DBT'),
    ('BST2343', 'Genetics', 3, 45, 'GPA', 'DBT'),
    ('BST2331', 'Electronic', 3, 45, 'GPA', 'DBT'),

    ('TCS1212', 'Fundamentals of Management',2,'45','GPA','DML'),
    ('ENG1212', 'English', 2, 45, 'Non GPA', 'DML');
