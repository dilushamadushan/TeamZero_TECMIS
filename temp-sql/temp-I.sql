

-- create table admin--

CREATE TABLE Admin
(   
     nic CHAR(12),
     admin_id VARCHAR(10) PRIMARY KEY,
     role  VARCHAR(10)
);

-- create table mark--

CREATE TABLE Mark
(
    mark_id CHAR(10) PRIMARY KEY,
    quiz_1 INT,
    quiz_2 INT,
    quiz_3 INT,
    assesment INT,
    mid_theory INT,
    mid_practical INT,
    end_theory INT,
    end_practical INT,
    student_id VARCHAR(6),
    course_code char(8)
);

-- create table Medical 

CREATE TABLE Medical
(
    medical_id CHAR(10) PRIMARY KEY,
    description  VARCHAR(50),
    s_date DATE,
    e_date DATE,
    student_id VARCHAR(6),
    tech_officer_iD CHAR(10)
);

-- Create table Student_Course

CREATE TABLE Student_Course
(
   student_id VARCHAR(6),
   course_code char(8)

);

-- insert data  to Admin --

INSERT Admin
VALUES
('12345678910V','A1','Administrator');







