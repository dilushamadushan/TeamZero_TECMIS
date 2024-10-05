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


INSERT INTO Student VALUES
    ('TG-001', '123456789011', 'proper', 'DIT'),
    ('TG-002', '123456789012', 'proper', 'DIT'),
    ('TG-003', '123456789013', 'proper', 'DIT'),
    ('TG-004', '123456789014', 'proper', 'DIT'),
    ('TG-005', '123456789015', 'proper', 'DET'),
    ('TG-006', '123456789016', 'proper', 'DBT'),
    ('TG-007', '123456789017', 'proper', 'DBT'),
    ('TG-008', '123456789018', 'suspended','DIT'),
    ('TG-009', '12345678901V', 'proper', 'DIT'),
    ('TG-010', '123456789020', 'suspended', 'DIT'),
    ('TG-011', '123456789021', 'proper', 'DBT'),
    ('TG-012', '123456789022', 'proper', 'DBT'),
    ('TG-013', '123456789023', 'proper', 'DBT'),
    ('TG-014', '123456789024', 'proper', 'DIT'),
    ('TG-015', '123456789025', 'proper', 'DIT'),
    ('TG-016', '12345678902V', 'proper', 'DIT'),
    ('TG-017', '123456789027', 'suspended', 'DET'),
    ('TG-018', '123456789028', 'suspended', 'DET'),
    ('TG-019', '123456789029', 'proper', 'DET'),
    ('TG-020', '12345678903V', 'proper', 'DET');