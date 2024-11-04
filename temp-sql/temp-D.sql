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

--D001 > Department of Information & Communication Technology --
--D002 >  Department of Engineering Technology --
--D003 >  Department of Biosystems Technology--
--D004 >  Department of Multidisciplinary Studies--

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
    ('TG-004', '123456789014', 'repeat', 'D001'),
    ('TG-005', '123456789015', 'Active', 'D002'),
    ('TG-006', '123456789016', 'Active', 'D003'),
    ('TG-007', '123456789017', 'Active', 'D003'),
    ('TG-008', '123456789018', 'suspended','D001'),
    ('TG-009', '12345678901V', 'Active', 'D001'),
    ('TG-010', '123456789020', 'suspended', 'D001'),
    ('TG-011', '123456789021', 'Active', 'D003'),
    ('TG-012', '123456789022', 'Active', 'D003'),
    ('TG-013', '123456789023', 'repeat', 'D003'),
    ('TG-014', '123456789024', 'Active', 'D001'),
    ('TG-015', '123456789025', 'Active', 'D001'),
    ('TG-016', '12345678902V', 'Active', 'D001'),
    ('TG-017', '123456789027', 'suspended', 'D002'),
    ('TG-018', '123456789028', 'suspended', 'D002'),
    ('TG-019', '123456789029', 'Active', 'D002'),
    ('TG-020', '12345678903V', 'Active', 'D002');

INSERT INTO Lecture VALUES
    ('LC01', '12345678111V', 'Lecture', 'D001'),  -- sever side --
    ('LC02', '12345678112V', 'professor', 'D001'), --descreate maths --
    ('LC03', '12345678113V', 'Lecture', 'D001'), -- computer networking --
    ('LC04', '12345678114V', 'professor', 'D001'), --Computer Architecher--
    ('LC05', '12345678115V', 'Lecture', 'D001'), --dbms --
    ('LC06', '12345678116V', 'Assistant Lecturer', 'D002'), --Physics & Calculus--
    ('LC07', '12345678117V', 'Lecture', 'D004'), --English--
    ('LC08', '12345678118V', 'Lecture', 'D004'), --English--
    ('LC09', '12345678119V', 'Senior Lecturer', 'D004'), --Fundamentals of Management--
    ('LC10', '12345678101V', 'Lecturer', 'D003'); --Fisheries--

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
    ('LC10','BST4024');

-- Create User Account --

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin123';
CREATE USER 'dean'@'localhost' IDENTIFIED BY 'dean123';
CREATE USER 'lecturer'@'localhost' IDENTIFIED BY 'lecture123';
CREATE USER 'techofficer'@'localhost' IDENTIFIED BY 'techofficer123';
CREATE USER 'student'@'localhost' IDENTIFIED BY 'student123';

-- PRIVILAGES AND GRANT OPTION --

GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES ON *.* TO 'dean'@'localhost';
FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES ON *.* TO 'lecturer'@'localhost';
FLUSH PRIVILEGES;

GRANT SELECT,INSERT,UPDATE ON teamZero.attendence TO 'techofficer'@'localhost';
FLUSH PRIVILEGES;
GRANT SELECT,INSERT,UPDATE ON teamZero.medical TO 'techofficer'@'localhost';
FLUSH PRIVILEGES;

GRANT SELECT ON teamZero.attendence TO 'student'@'localhost';
FLUSH PRIVILEGES;
GRANT SELECT ON teamZero.mark TO 'student'@'localhost';
FLUSH PRIVILEGES;

-- Adding Foriegn keys --

ALTER TABLE Dean ADD FOREIGN KEY (nic) REFERENCES User(nic);
ALTER TABLE Student ADD FOREIGN KEY (nic) REFERENCES User(nic);
ALTER TABLE Lecture ADD FOREIGN KEY (nic) REFERENCES User(nic);
ALTER TABLE Admin ADD FOREIGN KEY (nic) REFERENCES User(nic);
ALTER TABLE Technical_officer ADD FOREIGN KEY (nic) REFERENCES User(nic);
ALTER TABLE User_contact ADD FOREIGN KEY (nic) REFERENCES User(nic);

ALTER TABLE Lecture_student ADD FOREIGN KEY (student_id) REFERENCES Student(student_id);
ALTER TABLE Attendence ADD FOREIGN KEY (student_id) REFERENCES Student(student_id);
ALTER TABLE Student_Course ADD FOREIGN KEY (student_id) REFERENCES Student(student_id);
ALTER TABLE Mark ADD FOREIGN KEY (student_id) REFERENCES Student(student_id);
ALTER TABLE Medical ADD FOREIGN KEY (student_id) REFERENCES Student(student_id);

ALTER TABLE Notice ADD FOREIGN KEY (lecture_id) REFERENCES  Lecture(lecture_id);
ALTER TABLE Lecture_student ADD FOREIGN KEY (lecture_id) REFERENCES Lecture(lecture_id);
ALTER TABLE Lecture_Course ADD FOREIGN KEY (lecture_id) REFERENCES Lecture(lecture_id);

ALTER TABLE Department ADD FOREIGN KEY (dean_id) REFERENCES Dean(dean_id);

ALTER TABLE Medical ADD FOREIGN KEY (tech_officer_iD) REFERENCES Technical_officer(tech_officer_id);
ALTER TABLE Attendence ADD FOREIGN KEY (tech_officer_id) REFERENCES Technical_officer(tech_officer_id);

ALTER TABLE Department ADD FOREIGN KEY (admin_id) REFERENCES Admin(admin_id);

ALTER TABLE Student_notice ADD FOREIGN KEY (notice_id) REFERENCES Notice(notice_id);

ALTER TABLE Attendence ADD FOREIGN KEY (medical_id) REFERENCES Medical(medical_id);

ALTER TABLE Lecture ADD FOREIGN KEY (dep_id) REFERENCES Department(dep_id);
ALTER TABLE Student ADD FOREIGN KEY (dep_id) REFERENCES Department(dep_id);
ALTER TABLE Course ADD FOREIGN KEY (dep_id) REFERENCES Department(dep_id);

ALTER TABLE Lecture_Course ADD FOREIGN KEY (course_code) REFERENCES Course(course_code);
ALTER TABLE Student_Course ADD FOREIGN KEY (course_code) REFERENCES Course(course_code);
ALTER TABLE Mark ADD FOREIGN KEY (course_code) REFERENCES Course(course_code);
ALTER TABLE Attendence ADD FOREIGN KEY (course_code) REFERENCES Course(course_code);

ALTER TABLE Student_notice ADD FOREIGN KEY (student_id) REFERENCES Student(student_id);

--  ATTENDANCE DETAILS --

-- All calculate attendance percentage excluding medical (80%) --

SELECT
     student_id,
     course_code,
     ROUND(COUNT(CASE WHEN att_state = 'Present' THEN 1 END) * 100.0 / 15,2) AS Attendance_Percentage
FROM
     Attendence
GROUP BY
     student_id, course_code;

--All calculate attendance percentage including medical records (80%) --

CREATE VIEW All_Attendence AS
SELECT
     student_id,
     course_code,
     ROUND(COUNT(CASE WHEN att_state = 'Present' OR medical_id IS NOT NULL THEN 1 END) * 100.0 / 15,2)AS Attendance_Percentage
 FROM
     Attendence
 GROUP BY
     student_id, course_code;

SELECT * FROM All_Attendence;

-- Eligibility check without medical (80%) --

SELECT
     student_id,
     course_code,
     ROUND(COUNT(CASE WHEN att_state = 'Present' THEN 1 END) * 100.0 / 15,2) AS Attendance_Percentage,
     IF(COUNT(CASE WHEN att_state = 'Present' THEN 1 END) * 100.0 / 15 >= 80, 'Eligible', 'Not Eligible') AS Eligibility
 FROM
     Attendence
 GROUP BY
     student_id, course_code;

-- Summarize attendance and eligibility with medical  (80%) --

CREATE VIEW AttendanceEligibilitySummary AS
    SELECT
     student_id,
     course_code,
        ROUND(COUNT(CASE WHEN att_state = 'Present' OR medical_id IS NOT NULL THEN 1 END) * 100.0 / 15,2) AS Attendance_Percentage,
        IF(COUNT(CASE WHEN att_state = 'Present' OR medical_id IS NOT NULL THEN 1 END) * 100.0 / 15 >= 80, 'Eligible', 'Not Eligible') AS Eligibility
    FROM
        Attendence
    GROUP BY
        student_id, course_code;


SELECT * FROM AttendanceEligibilitySummary ;

-- Stored Procedure: Retrieve attendance summary by course code --

DELIMITER //

CREATE PROCEDURE GetAttendanceByCourse(IN courseCode CHAR(8))
    BEGIN
        SELECT
            student_id,
            course_code,
            Attendance_Percentage,
            Eligibility
        FROM
          AttendanceEligibilitySummary
        WHERE
            course_code = courseCode
        GROUP BY
            student_id, course_code;
    END // 
DELIMITER ;

CALL GetAttendanceByCourse('ICT1212');

-- Stored Procedure: Retrieve daily attendance for a specific student and course --

DELIMITER //

CREATE PROCEDURE GetDailyAttendance(IN stuID VARCHAR(6),IN cCode char(8))
BEGIN
	SELECT 
        student_id,
        course_code,
        date,
        att_state
    FROM Attendence
    WHERE student_id = stuID AND course_code = cCode;
END //

DELIMITER ;

CALL GetDailyAttendance('TG-004','ICT1212');

-- Stored Procedure: Retrieve overall attendance summary for a specific student using student id--

DELIMITER //
CREATE PROCEDURE GetAttendanceByStudent(IN stuId VARCHAR(6))
BEGIN
    SELECT
        course_code,
        Attendance_Percentage,
        Eligibility
    FROM
        AttendanceEligibilitySummary
    WHERE
        student_id = stuId
    GROUP BY
        course_code;
END //

DELIMITER ;

CALL GetAttendanceByStudent('TG-001');

-- Stored Procedure: Retrieve attendance and eligibility by student and course using course-code and student id--

DELIMITER //
CREATE PROCEDURE CheckAtt_ByStuId_CourseCode(IN stuId VARCHAR(6),IN cCode char(8))
BEGIN
    SELECT
        course_code,
        Attendance_Percentage,
        Eligibility
    FROM
         AttendanceEligibilitySummary
    WHERE
        student_id = stuId AND course_code = cCode
    GROUP BY
        course_code;
END //

DELIMITER ;

CALL CheckAtt_ByStuId_CourseCode('TG-001','ICT1212');

--View User Datails -- 

SELECT 
    d.dean_id AS "Dean ID",CONCAT(u.f_name," ",u.l_name) AS "Name",
    u.nic AS "NIC Number",u.address AS "Address",u.email AS "Email",
    u.gender AS "Gender",u.bod AS "Born Date"
FROM User u INNER JOIN Dean d ON d.nic = u.nic;

SELECT 
    s.student_id AS "Student ID",CONCAT(u.f_name," ",u.l_name) AS "Name",
    u.nic AS "NIC Number",u.address AS "Address",u.email AS "Email",
    u.gender AS "Gender",s.state AS "Type",u.bod AS "Born Date",
    d.dep_name AS "Department"
FROM User u INNER JOIN Student s ON s.nic = u.nic
INNER JOIN Department d ON d.dep_id = s.dep_id;

SELECT 
    l.lecture_id AS "Lecture ID",CONCAT(u.f_name," ",u.l_name) AS "Name",
    u.nic AS "NIC Number",u.address AS "Address",u.email AS "Email",
    u.gender AS "Gender",l.position AS "Type",u.bod AS "Born Date",
    d.dep_name AS "Department"
FROM User u INNER JOIN lecture l ON l.nic = u.nic
INNER JOIN Department d ON d.dep_id = l.dep_id;

SELECT 
    t.tech_officer_id AS "Tech-Officer ID",CONCAT(u.f_name," ",u.l_name) AS "Name",
    u.nic AS "NIC Number",t.role AS "Role",u.address AS "Address",u.email AS "Email",
    u.gender AS "Gender",u.bod AS "Born Date"
FROM User u INNER JOIN Technical_officer t ON t.nic = u.nic;

SELECT 
    a.Admin_id AS "Admin ID",CONCAT(u.f_name," ",u.l_name) AS "Name",
    u.nic AS "NIC Number",a.role AS "Role",u.address AS "Address",u.email AS "Email",
    u.gender AS "Gender",u.bod AS "Born Date"
FROM User u INNER JOIN admin a ON a.nic = u.nic;