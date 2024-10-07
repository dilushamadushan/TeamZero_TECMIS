

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


-- insert data to Mark --

INSERT Mark
VALUES
('M01', 74, 75, 39, 88, 68, 86, 37, 93, 'TG-001', 'ICT1233'),
('M02', 74, 75, 39, 88, 68, 86, 37, 93, 'TG-001', 'ICT1213'),
('M03', 74, 75, 39, 88, 68, 86, 37, 93, 'TG-001', 'ICT1253'),
('M04', 74, 75, 39, 88, 68, 86, 37, 93, 'TG-001', 'ICT1242'),
('M05', 74, 75, 39, 88, 68, 86, 37, 93, 'TG-001', 'ICT1212'),
('M06', 74, 75, 39, 88, 68, 86, 37, 93, 'TG-001', 'ICT1222'),
('M07', 74, 75, 39, 88, 68, 86, 37, 93, 'TG-001', 'TCS1212'),
('M08', 74, 75, 39, 88, 68, 86, 37, 93, 'TG-001', 'ENG1212'),

 ('M02', 75, 85, 96, 86, 32, 44, 97, 65, 'TG-002', 'ICT1233'),
 ('M02', 75, 85, 96, 86, 32, 44, 97, 65, 'TG-002', 'ICT1213'),
 ('M02', 75, 85, 96, 86, 32, 44, 97, 65, 'TG-002', 'ICT1253'),
 ('M02', 75, 85, 96, 86, 32, 44, 97, 65, 'TG-002', 'ICT1242'),
 ('M02', 75, 85, 96, 86, 32, 44, 97, 65, 'TG-002', 'ICT1212'),
 ('M02', 75, 85, 96, 86, 32, 44, 97, 65, 'TG-002', 'ICT1222'),
 ('M02', 75, 85, 96, 86, 32, 44, 97, 65, 'TG-002', 'TCS1212'),
 ('M02', 75, 85, 96, 86, 32, 44, 97, 65, 'TG-002', 'ENG1212'),

 ('M03', 42, 77, 99, 70, 48, 49, 35, 92, 'TG-003', 'ICT1242'),
 ('M04', 38, 89, 57, 47, 60, 69, 61, 84, 'TG-004', 'ICT1212'),
 ('M05', 58, 70, 40, 45, 92, 81, 78, 70, 'TG-005', 'ICT1212'),
 ('M06', 80, 84, 52, 66, 75, 91, 39, 51, 'TG-006', 'TMS2022'),
 ('M07', 32, 99, 93, 77, 68, 87, 97, 84, 'TG-007', 'TMS4302'),
 ('M08', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL,'TG-008', 'ICT1233'),
 ('M09', 38, 30, 43, 56, 40, 62, 54, 52, 'TG-009', 'TMS6301'),
 ('M10', NULL, NUll, NUll, NULl, NULl, NULL, NULL,NULL,'TG-010', 'ICT1233'),
 ('M11', 88, 43, 79, 35, 66, 50, 95, 54, 'TG-011', 'TMS6302'),
 ('M12', 44, 59, 59, 69, 86, 65, 33, 57, 'TG-012', 'TMS7302'),
 ('M13', 83, 48, 90, 56, 43, 94, 73, 100, 'TG-013', 'BST4024'),
 ('M14', 98, 77, 49, 72, 66, 100, 93, 33, 'TG-014', 'BST3021'),
 ('M15', 31, 34, 92, 36, 98, 41, 34, 50, 'TG-015', 'BST2343'),
 ('M16', 54, 45, 51, 48, 37, 50, 32, 46, 'TG-016', 'BST2331'),
 ('M17', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL, 'TG-017', 'ICT1233'),
 ('M18', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL, 'ICT1233'),
 ('M19', 60, 75, 44, 71, 79, 44, 68, 33, 'TG-019', 'TCS1212'),
 ('M20', 47, 52, 89, 99, 98, 88, 65, 33, 'TG-020', 'TCS1213');
 








