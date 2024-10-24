

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
   ('TO001', '123456789V', 'Medical Administrator'),
   ('TO002', '987654321X', 'Attendence Administrator'),
   ('TO003', '456123789V', 'Technical Support'),
   ('TO004', '789321456V', 'System Administrator'),
   ('TO005', '159753486X', 'Security Analyst');

-- INSERT VALUE --

-- insert data  to Notice --

INSERT INTO Notice
VALUES
    ('N001','Faculty meeting on August 15th at 3:00 PM.','2024-08-10','LC01'),
    ('N002','Library closure on September 20th for maintenance','2024-08-16','LC05'),
    ('N003','Upcoming Midterm Exam Schedule', '2024-10-12','LC09'),                
    ('N004','Class Cancellation on October 31th due to holiday','2024-10-27','LC05'),
    ('N005','Guest Lecture on November 2st in the auditorium','2024-10-29','LC02'),
    ('N006','Final exam schedule for the current semester','2024-11-11','LC03'),
    ('N007','Graduation ceremony details for this year','2024-11-1','LC01');