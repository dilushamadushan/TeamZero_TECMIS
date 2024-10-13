

-- create table admin--

CREATE TABLE Technical_officer(
    tech_officer_id VARCHAR(6) PRIMARY KEY,
    nic CHAR(12),
    role VARCHAR(20),
);

-- create table Attendence--

CREATE TABLE Attendence(
    date DATE,
    att_state VARCHAR(20),
    session_type VARCHAR(25),
    student_id VARCHAR(6),
    medical_id CHAR(10),
    tech_officer_id VARCHAR(6),
    course_code CHAR(8)
);

-- create table Lecture_student--

CREATE TABLE Lecture_student(
    lecture_id VARCHAR(5),
    student_id VARCHAR(6)
);

-- create table notice--

CREATE TABLE Notice(
    notice_id VARCHAR(6),
    description VARCHAR(30),
    date DATE,
    lecture_id VARCHAR(5)
);

-- create table Student_notice--

CREATE TABLE Student_notice(
    student_id VARCHAR(6),
    notice_id VARCHAR(6)
);


-- INSERT VALUE --

-- insert data  to Technical_officer --

INSERT INTO Technical_officer
VALUES
   ('TO001', '123456789V', 'Network Engineer'),
   ('TO002', '987654321X', 'System Administrator'),
   ('TO003', '456123789V', 'Technical Support'),
   ('TO004', '789321456V', 'Software Developer'),
   ('TO005', '159753486X', 'Security Analyst');