

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

-- insert data  to Attendence --

-- CREATE TABLE Attendence(
--    date DATE,
 --   att_state VARCHAR(20),
 --   session_type VARCHAR(25),
 --   student_id VARCHAR(6),
 --   medical_id CHAR(10),
--    tech_officer_id VARCHAR(6),
--    course_code CHAR(8)
--);

INSERT INTO Attendence
VALUES
------------------------------------------------------------------------------------
                             -- 1 week --
------------------------------------------------------------------------------------
                            -- ICT Department --
    ('2024-08-05', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1233'),
    ('2024-08-05', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1233'),
    ('2024-08-05', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1233'),
    ('2024-08-05', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1233'),
    ('2024-08-05', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1233'),
    ('2024-08-05', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1233'),
    ('2024-08-05', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1233'),
    ('2024-08-05', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1233'),
    ('2024-08-05', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1233'),
    ('2024-08-05', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1233'),

                            -- ET Department -- 
    ('2024-08-05', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TMS2022'),
    ('2024-08-05', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TMS2022'),
    ('2024-08-05', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TMS2022'),
    ('2024-08-05', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TMS2022'),
    ('2024-08-05', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TMS2022'),

                            -- BST Department --
    ('2024-08-05', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'BST4024'),
    ('2024-08-05', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'BST4024'),
    ('2024-08-05', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'BST4024'),
    ('2024-08-05', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'BST4024'),
    ('2024-08-05', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'BST4024'),

------------------------------------------------------------------------------------  

                            -- ICT Department --
    ('2024-08-06', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1212'),
    ('2024-08-06', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1212'),
    ('2024-08-06', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1212'),
    ('2024-08-06', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1212'),
    ('2024-08-06', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1212'),
    ('2024-08-06', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1212'),
    ('2024-08-06', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1212'),
    ('2024-08-06', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1212'),
    ('2024-08-06', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1212'),
    ('2024-08-06', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1212'),
    ('2024-08-06', 'Present', 'Practical', 'TG-001', NULL, 'TO001', 'ICT1222'),
    ('2024-08-06', 'Present', 'Practical', 'TG-002', NULL, 'TO001', 'ICT1222'),
    ('2024-08-06', 'Present', 'Practical', 'TG-003', NULL, 'TO001', 'ICT1222'),
    ('2024-08-06', 'Present', 'Practical', 'TG-004', NULL, 'TO001', 'ICT1222'),
    ('2024-08-06', 'Present', 'Practical', 'TG-008', NULL, 'TO001', 'ICT1222'),
    ('2024-08-06', 'Present', 'Practical', 'TG-009', NULL, 'TO001', 'ICT1222'),
    ('2024-08-06', 'Present', 'Practical', 'TG-010', NULL, 'TO001', 'ICT1222'),
    ('2024-08-06', 'Present', 'Practical', 'TG-014', NULL, 'TO001', 'ICT1222'),
    ('2024-08-06', 'Present', 'Practical', 'TG-015', NULL, 'TO001', 'ICT1222'),
    ('2024-08-06', 'Present', 'Practical', 'TG-016', NULL, 'TO001', 'ICT1222'),

                            -- ET Department -- 
    ('2024-08-06', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TMS4302'),
    ('2024-08-06', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TMS4302'),
    ('2024-08-06', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TMS4302'),
    ('2024-08-06', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TMS4302'),
    ('2024-08-06', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TMS4302'),

                            -- BST Department --
    ('2024-08-06', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'BST3021'),
    ('2024-08-06', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'BST3021'),
    ('2024-08-06', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'BST3021'),
    ('2024-08-06', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'BST3021'),
    ('2024-08-06', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'BST3021'),

------------------------------------------------------------------------------------ 

                            -- ICT Department --
    ('2024-08-07', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1213'),
    ('2024-08-07', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1213'),
    ('2024-08-07', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1213'),
    ('2024-08-07', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1213'),
    ('2024-08-07', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1213'),
    ('2024-08-07', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1213'),
    ('2024-08-07', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1213'),
    ('2024-08-07', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1213'),
    ('2024-08-07', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1213'),
    ('2024-08-07', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1213'),

                            -- ET Department -- 
    ('2024-08-07', 'Present', 'Practical', 'TG-005', NULL, 'TO001', 'TMS6301'),
    ('2024-08-07', 'Present', 'Practical', 'TG-017', NULL, 'TO001', 'TMS6301'),
    ('2024-08-07', 'Present', 'Practical', 'TG-018', NULL, 'TO001', 'TMS6301'),
    ('2024-08-07', 'Present', 'Practical', 'TG-019', NULL, 'TO001', 'TMS6301'),
    ('2024-08-07', 'Present', 'Practical', 'TG-020', NULL, 'TO001', 'TMS6301'),

                            -- BST Department --
    ('2024-08-07', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'BST2343'),
    ('2024-08-07', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'BST2343'),
    ('2024-08-07', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'BST2343'),
    ('2024-08-07', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'BST2343'),
    ('2024-08-07', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'BST2343'),

------------------------------------------------------------------------------------ 

                            -- ICT Department --
    ('2024-08-08', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1242'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1242'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1242'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1242'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1242'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1242'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1242'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1242'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1242'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1242'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1253'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1253'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1253'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1253'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1253'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1253'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1253'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1253'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1253'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1253'),

                            -- ET Department -- 
    ('2024-08-08', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TMS6302'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TMS6302'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TMS6302'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TMS6302'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TMS6302'),
                -- Department of Multidisciplinary Studies --
    ('2024-08-08', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TCS1212'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TCS1212'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TCS1212'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TCS1212'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TCS1212'),

                            -- BST Department --
    ('2024-08-08', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'BST2331'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'BST2331'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'BST2331'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'BST2331'),
    ('2024-08-08', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'BST2331'),

------------------------------------------------------------------------------------ 

                -- Department of Multidisciplinary Studies --
    ('2024-08-09', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ENG1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ENG1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ENG1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ENG1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ENG1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ENG1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ENG1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ENG1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ENG1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ENG1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'TCS1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'TCS1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'TCS1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'TCS1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'TCS1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'TCS1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'TCS1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'TCS1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'TCS1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'TCS1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'TCS1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'TCS1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'TCS1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'TCS1212'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'TCS1212'),

                            -- ET Department -- 
    ('2024-08-09', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TMS7302'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TMS7302'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TMS7302'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TMS7302'),
    ('2024-08-09', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TMS7302'),

------------------------------------------------------------------------------------ 
                               -- 2 week --
------------------------------------------------------------------------------------ 

                            -- ICT Department --
    ('2024-08-12', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1233'),
    ('2024-08-12', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1233'),
    ('2024-08-12', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1233'),
    ('2024-08-12', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1233'),
    ('2024-08-12', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1233'),
    ('2024-08-12', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1233'),
    ('2024-08-12', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1233'),
    ('2024-08-12', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1233'),
    ('2024-08-12', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1233'),
    ('2024-08-12', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1233'),

                            -- ET Department -- 
    ('2024-08-12', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TMS2022'),
    ('2024-08-12', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TMS2022'),
    ('2024-08-12', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TMS2022'),
    ('2024-08-12', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TMS2022'),
    ('2024-08-12', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TMS2022'),

                            -- BST Department --
    ('2024-08-12', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'BST4024'),
    ('2024-08-12', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'BST4024'),
    ('2024-08-12', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'BST4024'),
    ('2024-08-12', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'BST4024'),
    ('2024-08-12', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'BST4024'),

------------------------------------------------------------------------------------  

                            -- ICT Department --
    ('2024-08-13', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1212'),
    ('2024-08-13', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1212'),
    ('2024-08-13', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1212'),
    ('2024-08-13', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1212'),
    ('2024-08-13', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1212'),
    ('2024-08-13', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1212'),
    ('2024-08-13', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1212'),
    ('2024-08-13', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1212'),
    ('2024-08-13', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1212'),
    ('2024-08-13', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1212'),
    ('2024-08-13', 'Present', 'Practical', 'TG-001', NULL, 'TO001', 'ICT1222'),
    ('2024-08-13', 'Present', 'Practical', 'TG-002', NULL, 'TO001', 'ICT1222'),
    ('2024-08-13', 'Present', 'Practical', 'TG-003', NULL, 'TO001', 'ICT1222'),
    ('2024-08-13', 'Present', 'Practical', 'TG-004', NULL, 'TO001', 'ICT1222'),
    ('2024-08-13', 'Present', 'Practical', 'TG-008', NULL, 'TO001', 'ICT1222'),
    ('2024-08-13', 'Present', 'Practical', 'TG-009', NULL, 'TO001', 'ICT1222'),
    ('2024-08-13', 'Present', 'Practical', 'TG-010', NULL, 'TO001', 'ICT1222'),
    ('2024-08-13', 'Present', 'Practical', 'TG-014', NULL, 'TO001', 'ICT1222'),
    ('2024-08-13', 'Present', 'Practical', 'TG-015', NULL, 'TO001', 'ICT1222'),
    ('2024-08-13', 'Present', 'Practical', 'TG-016', NULL, 'TO001', 'ICT1222'),

                            -- ET Department -- 
    ('2024-08-13', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TMS4302'),
    ('2024-08-13', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TMS4302'),
    ('2024-08-13', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TMS4302'),
    ('2024-08-13', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TMS4302'),
    ('2024-08-13', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TMS4302'),

                            -- BST Department --
    ('2024-08-13', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'BST3021'),
    ('2024-08-13', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'BST3021'),
    ('2024-08-13', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'BST3021'),
    ('2024-08-13', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'BST3021'),
    ('2024-08-13', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'BST3021'),

------------------------------------------------------------------------------------ 

                            -- ICT Department --
    ('2024-08-14', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1213'),
    ('2024-08-14', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1213'),
    ('2024-08-14', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1213'),
    ('2024-08-14', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1213'),
    ('2024-08-14', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1213'),
    ('2024-08-14', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1213'),
    ('2024-08-14', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1213'),
    ('2024-08-14', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1213'),
    ('2024-08-14', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1213'),
    ('2024-08-14', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1213'),

                            -- ET Department -- 
    ('2024-08-14', 'Present', 'Practical', 'TG-005', NULL, 'TO001', 'TMS6301'),
    ('2024-08-14', 'Present', 'Practical', 'TG-017', NULL, 'TO001', 'TMS6301'),
    ('2024-08-14', 'Present', 'Practical', 'TG-018', NULL, 'TO001', 'TMS6301'),
    ('2024-08-14', 'Present', 'Practical', 'TG-019', NULL, 'TO001', 'TMS6301'),
    ('2024-08-14', 'Present', 'Practical', 'TG-020', NULL, 'TO001', 'TMS6301'),

                            -- BST Department --
    ('2024-08-14', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'BST2343'),
    ('2024-08-14', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'BST2343'),
    ('2024-08-14', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'BST2343'),
    ('2024-08-14', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'BST2343'),
    ('2024-08-14', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'BST2343'),

------------------------------------------------------------------------------------ 

                            -- ICT Department --
    ('2024-08-15', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1242'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1242'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1242'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1242'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1242'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1242'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1242'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1242'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1242'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1242'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1253'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1253'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1253'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1253'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1253'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1253'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1253'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1253'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1253'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1253'),

                            -- ET Department -- 
    ('2024-08-15', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TMS6302'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TMS6302'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TMS6302'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TMS6302'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TMS6302'),
                -- Department of Multidisciplinary Studies --
    ('2024-08-15', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TCS1212'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TCS1212'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TCS1212'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TCS1212'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TCS1212'),

                            -- BST Department --
    ('2024-08-15', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'BST2331'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'BST2331'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'BST2331'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'BST2331'),
    ('2024-08-15', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'BST2331'),

------------------------------------------------------------------------------------ 

                -- Department of Multidisciplinary Studies --
    ('2024-08-16', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ENG1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ENG1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ENG1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ENG1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ENG1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ENG1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ENG1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ENG1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ENG1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ENG1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'TCS1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'TCS1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'TCS1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'TCS1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'TCS1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'TCS1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'TCS1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'TCS1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'TCS1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'TCS1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'TCS1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'TCS1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'TCS1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'TCS1212'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'TCS1212'),

                            -- ET Department -- 
    ('2024-08-16', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TMS7302'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TMS7302'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TMS7302'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TMS7302'),
    ('2024-08-16', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TMS7302'),

------------------------------------------------------------------------------------ 
                                -- 3 week --
------------------------------------------------------------------------------------ 
 

                            -- ICT Department --
    ('2024-08-20', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1212'),
    ('2024-08-20', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1212'),
    ('2024-08-20', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1212'),
    ('2024-08-20', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1212'),
    ('2024-08-20', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1212'),
    ('2024-08-20', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1212'),
    ('2024-08-20', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1212'),
    ('2024-08-20', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1212'),
    ('2024-08-20', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1212'),
    ('2024-08-20', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1212'),
    ('2024-08-20', 'Present', 'Practical', 'TG-001', NULL, 'TO001', 'ICT1222'),
    ('2024-08-20', 'Present', 'Practical', 'TG-002', NULL, 'TO001', 'ICT1222'),
    ('2024-08-20', 'Present', 'Practical', 'TG-003', NULL, 'TO001', 'ICT1222'),
    ('2024-08-20', 'Present', 'Practical', 'TG-004', NULL, 'TO001', 'ICT1222'),
    ('2024-08-20', 'Present', 'Practical', 'TG-008', NULL, 'TO001', 'ICT1222'),
    ('2024-08-20', 'Present', 'Practical', 'TG-009', NULL, 'TO001', 'ICT1222'),
    ('2024-08-20', 'Present', 'Practical', 'TG-010', NULL, 'TO001', 'ICT1222'),
    ('2024-08-20', 'Present', 'Practical', 'TG-014', NULL, 'TO001', 'ICT1222'),
    ('2024-08-20', 'Present', 'Practical', 'TG-015', NULL, 'TO001', 'ICT1222'),
    ('2024-08-20', 'Present', 'Practical', 'TG-016', NULL, 'TO001', 'ICT1222'),

                            -- ET Department -- 
    ('2024-08-20', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TMS4302'),
    ('2024-08-20', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TMS4302'),
    ('2024-08-20', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TMS4302'),
    ('2024-08-20', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TMS4302'),
    ('2024-08-20', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TMS4302'),

                            -- BST Department --
    ('2024-08-20', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'BST3021'),
    ('2024-08-20', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'BST3021'),
    ('2024-08-20', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'BST3021'),
    ('2024-08-20', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'BST3021'),
    ('2024-08-20', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'BST3021'),

------------------------------------------------------------------------------------ 

                            -- ICT Department --
    ('2024-08-21', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1213'),
    ('2024-08-21', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1213'),
    ('2024-08-21', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1213'),
    ('2024-08-21', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1213'),
    ('2024-08-21', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1213'),
    ('2024-08-21', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1213'),
    ('2024-08-21', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1213'),
    ('2024-08-21', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1213'),
    ('2024-08-21', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1213'),
    ('2024-08-21', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1213'),

                            -- ET Department -- 
    ('2024-08-21', 'Present', 'Practical', 'TG-005', NULL, 'TO001', 'TMS6301'),
    ('2024-08-21', 'Present', 'Practical', 'TG-017', NULL, 'TO001', 'TMS6301'),
    ('2024-08-21', 'Present', 'Practical', 'TG-018', NULL, 'TO001', 'TMS6301'),
    ('2024-08-21', 'Present', 'Practical', 'TG-019', NULL, 'TO001', 'TMS6301'),
    ('2024-08-21', 'Present', 'Practical', 'TG-020', NULL, 'TO001', 'TMS6301'),

                            -- BST Department --
    ('2024-08-21', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'BST2343'),
    ('2024-08-21', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'BST2343'),
    ('2024-08-21', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'BST2343'),
    ('2024-08-21', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'BST2343'),
    ('2024-08-21', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'BST2343'),

------------------------------------------------------------------------------------ 

                            -- ICT Department --
    ('2024-08-22', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1242'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1242'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1242'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1242'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1242'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1242'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1242'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1242'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1242'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1242'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1253'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1253'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1253'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1253'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1253'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1253'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1253'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1253'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1253'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1253'),

                            -- ET Department -- 
    ('2024-08-22', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TMS6302'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TMS6302'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TMS6302'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TMS6302'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TMS6302'),
                -- Department of Multidisciplinary Studies --
    ('2024-08-22', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TCS1212'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TCS1212'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TCS1212'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TCS1212'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TCS1212'),

                            -- BST Department --
    ('2024-08-22', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'BST2331'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'BST2331'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'BST2331'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'BST2331'),
    ('2024-08-22', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'BST2331'),

------------------------------------------------------------------------------------ 

                -- Department of Multidisciplinary Studies --
    ('2024-08-23', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ENG1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ENG1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ENG1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ENG1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ENG1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ENG1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ENG1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ENG1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ENG1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ENG1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'TCS1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'TCS1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'TCS1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'TCS1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'TCS1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'TCS1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'TCS1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'TCS1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'TCS1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'TCS1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'TCS1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'TCS1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'TCS1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'TCS1212'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'TCS1212'),

                            -- ET Department -- 
    ('2024-08-23', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TMS7302'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TMS7302'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TMS7302'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TMS7302'),
    ('2024-08-23', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TMS7302'),

------------------------------------------------------------------------------------ 
                                -- 4 week --
------------------------------------------------------------------------------------


                            -- ICT Department --
    ('2024-08-26', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1233'),
    ('2024-08-26', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1233'),
    ('2024-08-26', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1233'),
    ('2024-08-26', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1233'),
    ('2024-08-26', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1233'),
    ('2024-08-26', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1233'),
    ('2024-08-26', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1233'),
    ('2024-08-26', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1233'),
    ('2024-08-26', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1233'),
    ('2024-08-26', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1233'),

                            -- ET Department -- 
    ('2024-08-26', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TMS2022'),
    ('2024-08-26', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TMS2022'),
    ('2024-08-26', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TMS2022'),
    ('2024-08-26', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TMS2022'),
    ('2024-08-26', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TMS2022'),

                            -- BST Department --
    ('2024-08-26', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'BST4024'),
    ('2024-08-26', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'BST4024'),
    ('2024-08-26', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'BST4024'),
    ('2024-08-26', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'BST4024'),
    ('2024-08-26', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'BST4024'),

------------------------------------------------------------------------------------  

                            -- ICT Department --
    ('2024-08-27', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1212'),
    ('2024-08-27', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1212'),
    ('2024-08-27', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1212'),
    ('2024-08-27', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1212'),
    ('2024-08-27', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1212'),
    ('2024-08-27', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1212'),
    ('2024-08-27', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1212'),
    ('2024-08-27', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1212'),
    ('2024-08-27', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1212'),
    ('2024-08-27', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1212'),
    ('2024-08-27', 'Present', 'Practical', 'TG-001', NULL, 'TO001', 'ICT1222'),
    ('2024-08-27', 'Present', 'Practical', 'TG-002', NULL, 'TO001', 'ICT1222'),
    ('2024-08-27', 'Present', 'Practical', 'TG-003', NULL, 'TO001', 'ICT1222'),
    ('2024-08-27', 'Present', 'Practical', 'TG-004', NULL, 'TO001', 'ICT1222'),
    ('2024-08-27', 'Present', 'Practical', 'TG-008', NULL, 'TO001', 'ICT1222'),
    ('2024-08-27', 'Present', 'Practical', 'TG-009', NULL, 'TO001', 'ICT1222'),
    ('2024-08-27', 'Present', 'Practical', 'TG-010', NULL, 'TO001', 'ICT1222'),
    ('2024-08-27', 'Present', 'Practical', 'TG-014', NULL, 'TO001', 'ICT1222'),
    ('2024-08-27', 'Present', 'Practical', 'TG-015', NULL, 'TO001', 'ICT1222'),
    ('2024-08-27', 'Present', 'Practical', 'TG-016', NULL, 'TO001', 'ICT1222'),

                            -- ET Department -- 
    ('2024-08-27', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TMS4302'),
    ('2024-08-27', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TMS4302'),
    ('2024-08-27', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TMS4302'),
    ('2024-08-27', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TMS4302'),
    ('2024-08-27', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TMS4302'),

                            -- BST Department --
    ('2024-08-27', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'BST3021'),
    ('2024-08-27', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'BST3021'),
    ('2024-08-27', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'BST3021'),
    ('2024-08-27', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'BST3021'),
    ('2024-08-27', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'BST3021'),

------------------------------------------------------------------------------------ 

                            -- ICT Department --
    ('2024-08-28', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1213'),
    ('2024-08-28', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1213'),
    ('2024-08-28', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1213'),
    ('2024-08-28', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1213'),
    ('2024-08-28', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1213'),
    ('2024-08-28', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1213'),
    ('2024-08-28', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1213'),
    ('2024-08-28', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1213'),
    ('2024-08-28', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1213'),
    ('2024-08-28', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1213'),

                            -- ET Department -- 
    ('2024-08-28', 'Present', 'Practical', 'TG-005', NULL, 'TO001', 'TMS6301'),
    ('2024-08-28', 'Present', 'Practical', 'TG-017', NULL, 'TO001', 'TMS6301'),
    ('2024-08-28', 'Present', 'Practical', 'TG-018', NULL, 'TO001', 'TMS6301'),
    ('2024-08-28', 'Present', 'Practical', 'TG-019', NULL, 'TO001', 'TMS6301'),
    ('2024-08-28', 'Present', 'Practical', 'TG-020', NULL, 'TO001', 'TMS6301'),

                            -- BST Department --
    ('2024-08-28', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'BST2343'),
    ('2024-08-28', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'BST2343'),
    ('2024-08-28', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'BST2343'),
    ('2024-08-28', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'BST2343'),
    ('2024-08-28', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'BST2343'),

------------------------------------------------------------------------------------ 

                            -- ICT Department --
    ('2024-08-29', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1242'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1242'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1242'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1242'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1242'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1242'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1242'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1242'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1242'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1242'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ICT1253'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ICT1253'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ICT1253'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ICT1253'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ICT1253'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ICT1253'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ICT1253'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ICT1253'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ICT1253'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ICT1253'),

                            -- ET Department -- 
    ('2024-08-29', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TMS6302'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TMS6302'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TMS6302'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TMS6302'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TMS6302'),
                -- Department of Multidisciplinary Studies --
    ('2024-08-29', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TCS1212'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TCS1212'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TCS1212'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TCS1212'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TCS1212'),

                            -- BST Department --
    ('2024-08-29', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'BST2331'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'BST2331'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'BST2331'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'BST2331'),
    ('2024-08-29', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'BST2331'),

------------------------------------------------------------------------------------ 

                -- Department of Multidisciplinary Studies --
    ('2024-08-30', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'ENG1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'ENG1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'ENG1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'ENG1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'ENG1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'ENG1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'ENG1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'ENG1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'ENG1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'ENG1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-001', NULL, 'TO001', 'TCS1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-002', NULL, 'TO001', 'TCS1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-003', NULL, 'TO001', 'TCS1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-004', NULL, 'TO001', 'TCS1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-008', NULL, 'TO001', 'TCS1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-009', NULL, 'TO001', 'TCS1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-010', NULL, 'TO001', 'TCS1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-014', NULL, 'TO001', 'TCS1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-015', NULL, 'TO001', 'TCS1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-016', NULL, 'TO001', 'TCS1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-006', NULL, 'TO001', 'TCS1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-007', NULL, 'TO001', 'TCS1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-011', NULL, 'TO001', 'TCS1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-012', NULL, 'TO001', 'TCS1212'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-013', NULL, 'TO001', 'TCS1212'),

                            -- ET Department -- 
    ('2024-08-30', 'Present', 'Lecture', 'TG-005', NULL, 'TO001', 'TMS7302'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-017', NULL, 'TO001', 'TMS7302'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-018', NULL, 'TO001', 'TMS7302'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-019', NULL, 'TO001', 'TMS7302'),
    ('2024-08-30', 'Present', 'Lecture', 'TG-020', NULL, 'TO001', 'TMS7302');
    

-- INSERT VALUE --

-- insert data  to Notice --

INSERT INTO Notice
VALUES
    ('N001','Faculty meeting on August 15th at 3:00 PM.','2024-08-10','LC01'),
    ('N002','Class Cancellation on August 19th due to holiday','2024-08-15','LC05'),
    ('N003','Library closure on September 20th for maintenance','2024-08-16','LC05'),
    ('N004','Upcoming Midterm Exam Schedule', '2024-10-12','LC09'),                
    ('N005','Guest Lecture on November 2st in the auditorium','2024-10-29','LC02'),
    ('N006','Final exam schedule for the current semester','2024-11-11','LC03'),
    ('N007','Graduation ceremony details for this year','2024-11-1','LC01');

