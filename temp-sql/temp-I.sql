

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
('12345678910A','A1','Administrator');


-- insert data to Mark --

INSERT Mark
VALUES
('M01', 0, 62, 48, 79, 67, 82, 44, 91, 'TG-001', 'ICT1233'),
('M02', 61, 78, 40, 85, 74, 0, 39, 0, 'TG-001', 'ICT1213'),
('M03', 71, 65, 49, 80, 66, 84, 36, 89, 'TG-001', 'ICT1253'),
('M04', 0, 76, 38, 87, 64, 0, 45, 0, 'TG-001', 'ICT1242'),
('M05', 69, 73, 43, 84, 70, 0, 45, 0, 'TG-001', 'ICT1212'),
('M06', 63, 72, 37, 81, 0, 81, 40, 90, 'TG-001', 'ICT1222'),
('M07', 64, 79, 35, 78, 73, 0, 32, 0, 'TG-001', 'TCS1212'),
('M10', 66, 77, 42, 83, 69, 0, 41, 0, 'TG-001', 'ENG1212'),

 ('M11', 72, 82, 91, 83, 30, 48, 95, 61, 'TG-002', 'ICT1233'),
('M12', 74, 89, 92, 85, 34, 0, 93, 0, 'TG-002', 'ICT1213'),
('M13', 76, 0, 94, 84, 36, 45, 92, 60, 'TG-002', 'ICT1253'),
('M14', 73, 81, 93, 82, 31, 0, 96, 0, 'TG-002', 'ICT1242'),
('M15', 75, 83, 90, 86, 33, 0, 91, 0, 'TG-002', 'ICT1212'),
('M16', 77, 87, 95, 81, 0, 43, 94, 66, 'TG-002', 'ICT1222'),
('M17', 71, 84, 89, 80, 35, 0, 90, 0, 'TG-002', 'TCS1212'),
('M18', 0, 88, 97, 87, 38, 0, 98, 0, 'TG-002', 'ENG1212'),

 ('M19', 0, 75, 95, 68, 46, 52, 33, 90, 'TG-003', 'ICT1233'),
('M20', 40, 78, 97, 69, 49, 0, 36, 0, 'TG-003', 'ICT1213'),
('M21', 43, 76, 98, 71, 47, 51, 34, 94, 'TG-003', 'ICT1253'),
('M22', 41, 74, 96, 67, 48, 0, 37, 0, 'TG-003', 'ICT1242'),
('M23', 44, 80, 99, 72, 0, 0, 39, 0, 'TG-003', 'ICT1212'),
('M24', 45, 79, 95, 70, 0, 49, 38, 95, 'TG-003', 'ICT1222'),
('M25', 42, 76, 94, 69, 45, 0, 35, 0, 'TG-003', 'TCS1212'),
('M26', 39, 81, 97, 70, 0, 0, 59, 0, 'TG-003', 'ENG1212'),


('M27', 40, 88, 60, 45, 0, 68, 0,0, 'TG-004', 'ICT1233'),
('M28', 36, 90, 59, 49, 61, 0, 60, 0, 'TG-004', 'ICT1213'),
('M29', 37, 87, 55, 48, 64, 70, 62, 82, 'TG-004', 'ICT1253'),
('M30', 39, 86, 0, 50, 63, 0, 64, 0, 'TG-004', 'ICT1242'),
('M31', 41, 90, 58, 46, 65, 0, 65, 0, 'TG-004', 'ICT1212'),
('M32', 38, 85, 56, 47, 0, 70, 66, 84, 'TG-004', 'ICT1222'),
('M33', 36, 89, 57, 44, 62, 0, 60, 0, 'TG-004', 'TCS1212'),
('M34', 39, 88, 55, 45, 61, 0, 62, 0, 'TG-004', 'ENG1212'),
 
 ('M35', 60, 72, 42, 47, 91, 80, 76, 68, 'TG-005', 'TMS2022'),
('M36', 57, 71, 39, 44, 93, 79, 75, 72, 'TG-005', 'TMS4302'),
('M37', 59, 69, 41, 46, 90, 82, 77, 71, 'TG-005', 'TMS6301'),
('M38', 61, 73, 43, 48, 92, 78, 79, 69, 'TG-005', 'TMS6302'),
('M39', 58, 70, 40, 50, 89, 81, 74, 73, 'TG-005', 'TMS7302'),
('M40', 62, 74, 45, 49, 91, 83, 76, 67, 'TG-005', 'TCS1212'),
('M41', 56, 68, 38, 43, 94, 80, 78, 75, 'TG-005', 'ENG1212'),


 ('M42', 82, 86, 54, 68, 77, 93, 38, 53, 'TG-006', 'BST4024'),
('M43', 79, 83, 50, 65, 76, 90, 40, 52, 'TG-006', 'BST3021'),
('M44', 81, 85, 53, 67, 74, 89, 41, 50, 'TG-006', 'BST2343'),
('M45', 78, 82, 51, 64, 73, 88, 37, 54, 'TG-006', 'BST2331'),
('M46', 83, 87, 55, 69, 78, 92, 39, 55, 'TG-006', 'TCS1212'),
('M47', 77, 81, 49, 63, 72, 86, 42, 48, 'TG-006', 'ENG1212'),



 ('M48', 34, 95, 91, 75, 69, 85, 95, 82, 'TG-007', 'BST4024'),
('M49', 30, 98, 92, 76, 70, 86, 96, 80, 'TG-007', 'BST3021'),
('M50', 33, 97, 94, 78, 67, 88, 94, 83, 'TG-007', 'BST2343'),
('M51', 31, 96, 90, 74, 68, 89, 93, 81, 'TG-007', 'BST2331'),
('M52', 35, 100, 95, 79, 66, 87, 98, 85, 'TG-007', 'TCS1212'),
('M53', 29, 99, 92, 73, 71, 84, 97, 78, 'TG-007', 'ENG1212'),


 ('M54', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL,'TG-008', 'ICT1233'),
 ('M55', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL,'TG-008', 'ICT1213'),
 ('M56', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL,'TG-008', 'ICT1253'),
 ('M57', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL,'TG-008', 'ICT1242'),
 ('M58', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL,'TG-008', 'ICT1212'),
 ('M59', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL,'TG-008', 'ICT1222'),
 ('M60', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL,'TG-008', 'TCS1212'),
 ('M61', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL,'TG-008', 'ENG1212'),

 ('M62', 45, 38, 52, 61, 42, 58, 55, 48, 'TG-009', 'ICT1233'),
('M63', 37, 36, 49, 57, 44, 0, 53, 0, 'TG-009', 'ICT1213'),
('M64', 40, 35, 46, 54, 43, 61, 51, 49, 'TG-009', 'ICT1253'),
('M65', 39, 34, 44, 55, 41, 0, 54, 0, 'TG-009', 'ICT1242'),
('M66', 36, 33, 47, 56, 40, 0, 54, 0, 'TG-009', 'ICT1212'),
('M67', 38, 30, 43, 56, 0, 62, 54, 52, 'TG-009', 'ICT1222'),
('M68', 42, 32, 50, 60, 41, 0, 56, 0, 'TG-009', 'TCS1212'),
('M69', 44, 31, 48, 58, 39, 0, 57, 0, 'TG-009', 'ENG1212'),

 
 ('M70', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL,'TG-010', 'ICT1233'),
 ('M71', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL,'TG-010', 'ICT1213'),
 ('M72', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL,'TG-010', 'ICT1253'),
 ('M73', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL,'TG-010', 'ICT1242'),
 ('M74', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL,'TG-010', 'ICT1212'),
 ('M75', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL,'TG-010', 'ICT1222'),
 ('M76', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL,'TG-010', 'TCS1212'),
 ('M77', NULL, NUll, NUll, NULl, NULl, NULL, NULL, NULL,'TG-010', 'ENG1212'),

 ('M78', 85, 41, 76, 32, 70, 48, 93, 51, 'TG-011', 'BST4024'),
('M79', 90, 45, 82, 37, 68, 53, 97, 56, 'TG-011', 'BST3021'),
('M80', 84, 44, 78, 30, 65, 49, 92, 55, 'TG-011', 'BST2343'),
('M81', 87, 42, 75, 34, 67, 52, 94, 58, 'TG-011', 'BST2331'),
('M82', 89, 47, 80, 36, 71, 50, 96, 53, 'TG-011', 'TCS1212'),
('M83', 86, 46, 81, 39, 69, 51, 95, 57, 'TG-011', 'ENG1212'),


 ('M84', 47, 61, 62, 72, 84, 66, 30, 55, 'TG-012', 'BST4024'),
('M85', 43, 58, 57, 68, 88, 64, 31, 56, 'TG-012', 'BST3021'),
('M86', 45, 60, 60, 70, 85, 63, 32, 58, 'TG-012', 'BST2343'),
('M87', 46, 62, 61, 73, 82, 67, 35, 59, 'TG-012', 'BST2331'),
('M88', 42, 57, 58, 67, 89, 68, 34, 54, 'TG-012', 'TCS1212'),
('M89', 49, 64, 63, 75, 81, 69, 36, 60, 'TG-012', 'ENG1212'),

('M90', 82, 50, 88, 58, 42, 93, 75, 0, 'TG-013', 'BST4024'),
('M91', 85, 47, 91, 57, 45, 92, 72, 99, 'TG-013', 'BST3021'),
('M92', 84, 49, 89, 55, 44, 95, 74, 98, 'TG-013', 'BST2343'),
('M93', 81, 46, 87, 59, 41, 91, 70, 100, 'TG-013', 'BST2331'),
('M94', 83, 48, 90, 56, 43, 92, 0, 97, 'TG-013', 'TCS1212'),
('M95', 80, 50, 86, 60, 46, 90, 73, 95, 'TG-013', 'ENG1212'),

('M96', 95, 80, 50, 70, 68, 97, 91, 30, 'TG-014', 'ICT1233'),
('M97', 96, 78, 48, 73, 65, 0, 90, 0, 'TG-014', 'ICT1213'),
('M98', 97, 75, 51, 71, 67, 95, 92, 34, 'TG-014', 'ICT1253'),
('M99', 94, 76, 52, 74, 66, 0, 89, 0, 'TG-014', 'ICT1242'),
('M100', 92, 79, 50, 75, 70, 0, 88, 0, 'TG-014', 'ICT1212'),
('M101', 93, 77, 49, 72, 0, 100, 93, 35, 'TG-014', 'ICT1222'),
('M102', 91, 74, 53, 70, 68, 0, 87, 0, 'TG-014', 'TCS1212'),
('M103', 99, 81, 47, 71, 65, 0, 90, 0, 'TG-014', 'ENG1212'),

('M104', 29, 35, 91, 37, 97, 42, 36, 51, 'TG-015', 'ICT1233'),
('M105', 32, 33, 90, 36, 99, 0, 35, 0, 'TG-015', 'ICT1213'),
('M106', 30, 36, 93, 35, 96, 43, 33, 49, 'TG-015', 'ICT1253'),
('M107', 33, 34, 92, 38, 95, 0, 34, 0, 'TG-015', 'ICT1242'),
('M108', 31, 34, 92, 36, 98, 0, 35, 0, 'TG-015', 'ICT1212'),
('M109', 30, 34, 92, 36, 0, 40, 34, 50, 'TG-015', 'ICT1222'),
('M110', 31, 36, 91, 36, 97, 0, 34, 0, 'TG-015', 'TCS1212'),
('M111', 30, 34, 92, 37, 98, 0, 35, 0, 'TG-015', 'ENG1212'),

('M112', 55, 46, 52, 47, 38, 51, 33, 47, 'TG-016', 'ICT1233'),
('M113', 53, 44, 50, 49, 36, 0, 31, 0, 'TG-016', 'ICT1213'),
('M114', 54, 45, 51, 48, 37, 50, 32, 46, 'TG-016', 'ICT1253'),
('M115', 56, 48, 53, 50, 39, 0, 34, 0, 'TG-016', 'ICT1242'),
('M116', 55, 45, 50, 47, 38, 0, 32, 0, 'TG-016', 'ICT1212'),
('M117', 54, 46, 51, 48, 0, 50, 32, 46, 'TG-016', 'ICT1222'),
('M118', 54, 45, 51, 48, 37, 0, 32, 0, 'TG-016', 'TCS1212'),
('M119', 53, 45, 51, 48, 37, 0, 32, 0, 'TG-016', 'ENG1212'),

('M120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG-017', 'TMS2022'),
('M121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG-017', 'TMS4302'),
('M122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG-017', 'TMS6301'),
('M123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG-017', 'TMS6302'),
('M124', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG-017', 'TMS7302'),
('M125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG-017', 'TCS1212'),
('M126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG-017', 'ENG1212'),

('M127', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG-018', 'TMS2022'),
('M128', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG-018', 'TMS4302'),
('M129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG-018', 'TMS6301'),
('M130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG-018', 'TMS6302'),
('M131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG-018', 'TMS7302'),
('M132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG-018', 'TCS1212'),
('M133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG-018', 'ENG1212'),

('M134', 61, 76, 45, 72, 80, 45, 69, 34, 'TG-019', 'TMS2022'),
('M135', 59, 74, 43, 70, 78, 43, 67, 32, 'TG-019', 'TMS4302'),
('M136', 60, 75, 44, 71, 79, 44, 68, 33, 'TG-019', 'TMS6301'),
('M137', 62, 77, 46, 73, 81, 46, 70, 35, 'TG-019', 'TMS6302'),
('M138', 58, 74, 43, 69, 77, 43, 67, 31, 'TG-019', 'TMS7302'),
('M139', 60, 75, 44, 71, 79, 44, 68, 33, 'TG-019', 'TCS1212'),
('M140', 59, 76, 43, 70, 78, 43, 67, 32, 'TG-019', 'ENG1212'),

('M141', 48, 53, 90, 98, 99, 89, 66, 34, 'TG-020', 'TMS2022'),
('M142', 47, 52, 89, 99, 98, 88, 65, 33, 'TG-020', 'TMS4302'),
('M143', 47, 52, 89, 99, 98, 88, 65, 33, 'TG-020', 'TMS6301'),
('M144', 47, 52, 89, 99, 98, 0, 65, 33, 'TG-020', 'TMS6302'),
('M145', 49, 54, 91, 99, 98, 88, 65, 34, 'TG-020', 'TMS7302'),
('M146', 47, 52, 89, 99, 98, 88, 65, 33, 'TG-020', 'TCS1212'),
('M147', 47, 52, 89, 99, 98, 88, 66, 0, 'TG-020', 'ENG1212');

-- insert data to  medical table--

INSERT Medical
VALUES('MD001','sick','2024-08-05','2024-08-06','TG-004','TO001'),
('MD002','sick','2024-08-05','2024-08-05','TG-015','TO001'),
('MD003','sick','2024-08-05','2024-08-07','TG-011','TO001'),
('MD004','sick','2024-08-07','2024-08-14','TG-005','TO001'),
('MD005','sick','2024-08-15','2024-08-16','TG-014','TO001'),
('MD006','sick','2024-08-16','2024-08-22','TG-016','TO001'),
('MD007','sick','2024-08-22','2024-08-27','TG-011','TO001'),
('MD008','sick','2024-08-28','2024-08-30','TG-002','TO001'),
('MD009','sick','2024-08-30','2024-08-30','TG-007','TO001'),
('MD010','sick','2024-08-30','2024-08-30','TG-019','TO001');


-- insert data to  Student_Course Table --


INSERT Student_Course
VALUES  ('TG-001','ICT1233'),
        ('TG-001','ICT1213'),
        ('TG-001','ICT1253'),
        ('TG-001','ICT1242'),
        ('TG-001','ICT1212'),
        ('TG-001','ICT1222'),
        ('TG-001','TCS1212'),
        ('TG-001','ENG1212'),

        ('TG-002','ICT1233'),
        ('TG-002','ICT1213'),
        ('TG-002','ICT1253'),
        ('TG-002','ICT1242'),
        ('TG-002','ICT1212'),
        ('TG-002','ICT1222'),
        ('TG-002','TCS1212'),
        ('TG-002','ENG1212'),

        ('TG-003','ICT1233'),
        ('TG-003','ICT1213'),
        ('TG-003','ICT1253'),
        ('TG-003','ICT1242'),
        ('TG-003','ICT1212'),
        ('TG-003','ICT1222'),
        ('TG-003','TCS1212'),
        ('TG-003','ENG1212'),

        ('TG-004','ICT1233'),
        ('TG-004','ICT1213'),
        ('TG-004','ICT1253'),
        ('TG-004','ICT1242'),
        ('TG-004','ICT1212'),
        ('TG-004','ICT1222'),
        ('TG-004','TCS1212'),
        ('TG-004','ENG1212'),

        ('TG-005','TMS2022'),
        ('TG-005','TMS4302'),
        ('TG-005','TMS6301'),
        ('TG-005','TMS6302'),
        ('TG-005','TMS2022'),
        ('TG-005','TCS1212'),
        ('TG-005','ENG1212'),

        ('TG-006','BST3021'),
        ('TG-006','BST2343'),
        ('TG-006','BST2331'),
        ('TG-006','TCS1212'),
        ('TG-006','ENG1212'),

        ('TG-007','BST3021'),
        ('TG-007','BST2343'),
        ('TG-007','BST2331'),
        ('TG-007','TCS1212'),
        ('TG-007','ENG1212'),

        ('TG-008','ICT1233'),
        ('TG-008','ICT1213'),
        ('TG-008','ICT1253'),
        ('TG-008','ICT1242'),
        ('TG-008','ICT1212'),
        ('TG-008','ICT1222'),
        ('TG-008','TCS1212'),
        ('TG-008','ENG1212'),

        ('TG-009','ICT1233'),
        ('TG-009','ICT1213'),
        ('TG-009','ICT1253'),
        ('TG-009','ICT1242'),
        ('TG-009','ICT1212'),
        ('TG-009','ICT1222'),
        ('TG-009','TCS1212'),
        ('TG-009','ENG1212'),

        ('TG-010','ICT1233'),
        ('TG-010','ICT1213'),
        ('TG-010','ICT1253'),
        ('TG-010','ICT1242'),
        ('TG-010','ICT1212'),
        ('TG-010','ICT1222'),
        ('TG-010','TCS1212'),
        ('TG-010','ENG1212'),

        ('TG-011','BST3021'),
        ('TG-011','BST2343'),
        ('TG-011','BST2331'),
        ('TG-011','TCS1212'),
        ('TG-011','ENG1212'),

        ('TG-012','BST3021'),
        ('TG-012','BST2343'),
        ('TG-012','BST2331'),
        ('TG-012','TCS1212'),
        ('TG-012','ENG1212'),

        ('TG-013','BST3021'),
        ('TG-013','BST2343'),
        ('TG-013','BST2331'),
        ('TG-013','TCS1212'),
        ('TG-013','ENG1212'),

        ('TG-014','ICT1233'),
        ('TG-014','ICT1213'),
        ('TG-014','ICT1253'),
        ('TG-014','ICT1242'),
        ('TG-014','ICT1212'),
        ('TG-014','ICT1222'),
        ('TG-014','TCS1212'),
        ('TG-014','ENG1212'),

        ('TG-015','ICT1233'),
        ('TG-015','ICT1213'),
        ('TG-015','ICT1253'),
        ('TG-015','ICT1242'),
        ('TG-015','ICT1212'),
        ('TG-015','ICT1222'),
        ('TG-015','TCS1212'),
        ('TG-015','ENG1212'),

        ('TG-016','ICT1233'),
        ('TG-016','ICT1213'),
        ('TG-016','ICT1253'),
        ('TG-016','ICT1242'),
        ('TG-016','ICT1212'),
        ('TG-016','ICT1222'),
        ('TG-016','TCS1212'),
        ('TG-016','ENG1212'),

        ('TG-017','TMS2022'),
        ('TG-017','TMS4302'),
        ('TG-017','TMS6301'),
        ('TG-017','TMS6302'),
        ('TG-017','TMS2022'),
        ('TG-017','TCS1212'),
        ('TG-017','ENG1212'),

        ('TG-018','TMS2022'),
        ('TG-018','TMS4302'),
        ('TG-018','TMS6301'),
        ('TG-018','TMS6302'),
        ('TG-018','TMS2022'),
        ('TG-018','TCS1212'),
        ('TG-018','ENG1212'),

        ('TG-019','TMS2022'),
        ('TG-019','TMS4302'),
        ('TG-019','TMS6301'),
        ('TG-019','TMS6302'),
        ('TG-019','TMS2022'),
        ('TG-019','TCS1212'),
        ('TG-019','ENG1212'),

        ('TG-020','TMS2022'),
        ('TG-020','TMS4302'),
        ('TG-020','TMS6301'),
        ('TG-020','TMS6302'),
        ('TG-020','TMS2022'),
        ('TG-020','TCS1212'),
        ('TG-020','ENG1212');


-- VIEWS--



CREATE VIEW final_marks AS
SELECT 
    m.mark_id,
    MIN(m.student_id) AS student_id,  -- Use MIN to get a single student_id for each mark_id
    MIN(m.course_code) AS course_code,  -- Use MIN to get a single course_code for each mark_id
    CASE
        WHEN (m.end_practical = 0 OR m.mid_practical = 0) 
            THEN ((m.end_theory / 100) * 60) + cwoa.CA_marks
        WHEN (m.end_theory = 0 OR m.mid_theory = 0) 
            THEN ((m.end_practical / 100) * 60) + cwoa.CA_marks
        ELSE 
            (((m.end_practical + m.end_theory) / 200) * 60) + cwoa.CA_marks  
    END AS final_result
FROM 
    mark m
INNER JOIN 
    ca_result_with_attendance cwa ON m.student_id = cwa.student_id
INNER JOIN
    ca_result_without_attendance cwoa ON m.student_id = cwoa.student_id
WHERE 
    cwa.CA_Eligibility = 'Eligible' 
    AND cwa.Eligibility = 'Eligible'
GROUP BY 
    m.mark_id  
ORDER BY 
    student_id ASC;  








CREATE VIEW exam_mark_without_final_mark AS
SELECT
    s.student_id,
    m.course_code,
    m.end_theory,
    m.end_practical,
    CASE
        WHEN m.end_theory = 0 THEN m.end_practical * 0.6
        WHEN m.end_practical = 0 THEN m.end_theory * 0.6
        WHEN m.end_theory IS NOT NULL AND m.end_practical IS NOT NULL THEN ROUND(((end_theory + end_practical) /200)*60)
        ELSE NULL
    END AS final_exam_mark
FROM mark m 
INNER JOIN student s  ON s.student_id = m.student_id
    WHERE s.state != 'suspended';

-----------------------------------------------------------------------


-- PROCEDURE

-- viewresult_from_id

DELIMITER //

CREATE PROCEDURE viewresult_from_id(
    IN id_number VARCHAR(5)
)
BEGIN
    SELECT DISTINCT course_code, final_result
    FROM final_marks
    WHERE student_id = id_number;
END //

DELIMITER ;



-- eg      call viewresult_from_id('TG-002');



-- view_result_from_departmen

DELIMITER //

CREATE PROCEDURE view_result_from_department(
    IN Enter_dept_id CHAR(4)
)
BEGIN
    SELECT 
        course.dep_id,
        final_marks.student_id,
        course.course_code,
        final_marks.final_result
    FROM 
        course
    INNER JOIN 
        final_marks ON course.course_code = final_marks.course_code
    WHERE 
        course.dep_id = Enter_dept_id;
END //

DELIMITER ;

-- call view_result_from_department('D001');







        







        
        





        




 
 








