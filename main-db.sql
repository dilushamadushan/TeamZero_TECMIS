--Crete database--

CREATE DATABASE teamZero;

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

--view all notice
SELECT date,description AS 'Notice'
FROM notice 
ORDER BY Date ;
