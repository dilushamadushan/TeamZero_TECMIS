
-- create table user--

CREATE TABLE User
(
  nic CHAR(12) PRIMARY KEY,
  f_name VARCHAR(10),
  l_name VARCHAR(10),
  address VARCHAR(15),
  email VARCHAR (15),
  gender VARCHAR(5),
  bod DATE 
);

-- create table dean--


CREATE TABLE Dean
(
    dean_id CHAR(5) PRIMARY KEY,
    nic CHAR(12) 
    
    
);

-- create table department--


CREATE TABLE Department
(
     dep_id CHAR(4) PRIMARY KEY,
     dep_name VARCHAR(50),
     dean_id CHAR(5),
     admin_id VARCHAR(10)
     
);
-- create table user-contact--


CREATE TABLE User_contact
(
     nic CHAR(12) PRIMARY KEY,
     contact_no CHAR(10)
   
);

INSERT INTO User VALUES
('123456789011', 'Anushka', 'Fernando', '123 Galle Rd', 'anushka@a.lk', 'Female', '1990-01-15'), /*students*/
('123456789012', 'Kamal', 'Perera', '456 Colombo St', 'kamal@my.lk', 'Male', '1988-02-20'),
('123456789013', 'Dilshan', 'Gunawardena', '789 Kandy Rd', 'dilshan@my.lk', 'Male', '1992-03-10'),
('123456789014', 'Saman', 'Rajapaksha', '135 Negombo St', 'saman@my.lk', 'Female', '1991-04-25'),
('123456789015', 'Tharindu', 'Jayasinghe', '246 Matara Rd', 'tharindu@my.lk', 'Male', '1989-05-30'),
('123456789016', 'Nimesha', 'Dissanayake', '357 Jaffna St', 'nimesha@my.lk', 'Female', '1993-06-18'),
('123456789017', 'Pradeep', 'Silva', '468 Batticaloa Rd', 'pradeep@my.lk', 'Male', '1994-07-22'),
('123456789018', 'Shanika', 'Weerasinghe', '579 Trincomalee Rd', 'shanika@my.lk', 'Female', '1995-08-12'),
('12345678901V', 'Ian', 'Ariyadasa', '680 Kegalle St', 'ian@my.lk', 'Male', '1987-09-05'),
('123456789020', 'Shalini', 'Samaranayake', '791 Kurunegala St', 'shalini@my.lk', 'Female', '1986-10-15'),
('123456789021', 'Kanishka', 'Buddhika', '902 Galle St', 'kanishka@my.lk', 'Male', '1992-11-20'),
('123456789022', 'Liam', 'Jayawardena', '113 Puttalam Rd', 'liam@my.lk', 'Male', '1993-12-05'),
('123456789023', 'Mia', 'Kumara', '224 Matale St', 'mia@my.lk', 'Female', '1991-01-30'),
('123456789024', 'Noah', 'Fernando', '335 Ratnapura St', 'noah@my.lk', 'Male', '1994-02-25'),
('123456789025', 'Olivia', 'Samarasinghe', '446 Badulla St', 'olivia@my.lk', 'Female', '1990-03-15'),
('12345678902V', 'Paul', 'Wijesekera', '557 Gampaha Rd', 'paul@my.lk', 'Male', '1988-04-10'),
('123456789027', 'Quinn', 'Perera', '668 Anuradhapura St', 'quinn@my.lk', 'Female', '1992-05-20'),
('123456789028', 'Riley', 'Rathnayake', '779 Polonnaruwa Rd', 'riley@my.lk', 'Female', '1995-06-30'),
('123456789029', 'Sam', 'Hewage', '880 Kandy Rd', 'sam@my.lk', 'Male', '1989-07-15'),
('12345678903V', 'Tina', 'Narangoda', '991 Nuwara Eliya Rd', 'tina@my.lk', 'Female', '1991-08-18'),

('12345678111V', 'Ursula', 'De Silva', '112 Hikkaduwa Rd', 'ursula@my.lk', 'Female', '1994-09-22'), /*Lecture*/
('12345678112V', 'Victor', 'Banda', '223 Ambalangoda Rd', 'victor@my.lk', 'Male', '1993-10-10'),
('12345678113V', 'Wendy', 'Karunaratne', '334 Weligama Rd', 'wendy@my.lk', 'Female', '1987-11-02'),
('12345678114V', 'Xander', 'Kumarasinghe', '445 Beruwala Rd', 'xander@my.lk', 'Male', '1992-12-05'),
('12345678115V', 'Yara', 'Dissanayake', '556 Colombo 7', 'yara@my.lk', 'Female', '1990-01-14'),
('12345678116V', 'Zach', 'Wijeratne', '667 Nugegoda Rd', 'zach@my.lk', 'Male', '1989-02-28'),
('12345678117V', 'Ava', 'Fernando', '778 Colombo 10', 'ava@my.lk', 'Female', '1994-03-21'),
('12345678118V', 'Brian', 'De Alwis', '889 Moratuwa Rd', 'brian@my.lk', 'Male', '1988-04-16'),
('12345678119V', 'Clara', 'Liyanage', '990 Gampaha 11', 'clara@my.lk', 'Female', '1992-05-30'),
('12345678101V', 'Daniel', 'Jayaratne', '101 Negombo 12', 'daniel@my.lk', 'Male', '1991-06-14'),

('12345678910A', 'Eva', 'Perera', '212 Trincomalee 13', 'eva@my.lk', 'Female', '1995-07-10'), /*Admin*/

('123456789V', 'Felix', 'Seneviratne', '323 Kandy 14', 'felix@my.lk', 'Male', '1990-08-22'), /*Technical_officer*/
('987654321X', 'Gina', 'Rajapakse', '434 Matara 15', 'gina@my.lk', 'Female', '1987-09-30'),
('456123789V', 'Henry', 'Kumar', '545 Batticaloa 16', 'henry@my.lk', 'Male', '1992-10-05'),
('789321456V', 'Isla', 'Dissanayake', '656 Jaffna 17', 'isla@my.lk', 'Female', '1993-11-18'),
('159753486X', 'Jack', 'Fernando', '767 Kegalle 18', 'jack@my.lk', 'Male', '1989-12-25'),

('2345678902V', 'Kira', 'Muthumala', '878 Galle 19', 'kira@my.lk', 'Female', '1991-01-02'); /*dean*/


INSERT INTO Dean VALUES
("DE1","2345678902V");

INSERT INTO Department VALUES
("D001"," Department of Information & Communication Technology","DE1","A1"),
("D002"," Department of Engineering Technology","DE1","A1"),
("D003","Department of Biosystems Technology","DE1","A1"),
("D004","Department of Multidisciplinary Studies","DE1","A1");


INSERT INTO User_contact VALUES
('123456789011', '0724567890'),
('123456789012', '0785678901'),
('123456789013', '0716789012'),
('123456789014', '0717890123'),
('123456789015', '0728901234'),
('123456789016', '0789012345'),
('123456789017', '0710123456'),
('123456789018', '0711234567'),
('12345678901V', '0712345678'),
('123456789020', '0713456789'),
('123456789021', '0714567890'),
('123456789022', '0715678901'),
('123456789023', '0746789012'),
('123456789024', '0787890123'),
('123456789025', '0728901234'),
('12345678902V', '0789012345'),
('123456789027', '0710123456'),
('123456789028', '0711234567'),
('123456789029', '0712345678'),
('12345678903V', '0783456789'),
('12345678111V', '0754567890'),
('12345678112V', '0715678901'),
('12345678113V', '0726789012'),
('12345678114V', '0787890123'),
('12345678115V', '0728901234'),
('12345678116V', '0729012345'),
('12345678117V', '0710123456'),
('12345678118V', '0781234567'),
('12345678119V', '0722345678'),
('12345678101V', '0723456789'),
('12345678910A', '0714567890'),
('123456789V', '0715678901'),
('987654321X', '0716789012'),
('456123789V', '0787890123'),
('789321456V', '0788901234'),
('159753486X', '0729012345'),
('2345678902V', '0720123456');


-----Calculate CA Marks VIEW ---------

-- Calculate  VIEW  CA_Result_Without_Attendance


CREATE VIEW CA_Result_Without_Attendance AS SELECT mark_id,student_id,course_code,
    (((quiz_1 + quiz_2 + quiz_3) - LEAST(quiz_1, quiz_2, quiz_3)) / 2) * 0.10 AS Quiz_marks,
    (assesment * 0.05) AS Assesment_marks,
    CASE 
        WHEN mid_practical = 0 THEN (mid_theory * 0.25) 
        ELSE (((mid_theory + mid_practical) / 2) * 0.25) 
    END AS Mid_marks,

    (((((quiz_1 + quiz_2 + quiz_3) - LEAST(quiz_1, quiz_2, quiz_3)) / 2) * 0.10) + (assesment * 0.05) + 
    CASE 
            WHEN mid_practical = 0 THEN (mid_theory * 0.25) 
            ELSE (((mid_theory + mid_practical) / 2) * 0.25) 
        END) AS CA_marks,
    CASE 
        WHEN (((((quiz_1 + quiz_2 + quiz_3) - LEAST(quiz_1, quiz_2, quiz_3)) / 2) * 0.10) + (assesment * 0.05) + CASE 
                   WHEN mid_practical = 0 THEN (mid_theory * 0.25) 
                   ELSE (((mid_theory + mid_practical) / 2) * 0.25) 
               END) >= 20 THEN 'Eligible' 
        ELSE 'Not Eligible' END AS Eligibility FROM Mark;




-- Calculate  VIEW  CA_Result_With_Attendance  



CREATE VIEW CA_Result_With_Attendance AS SELECT c.course_code,c.student_id,a.Eligibility AS Attendace_Eligibility,c.Eligibility AS CA_Eligibility,
IF(a.Eligibility='Eligible' AND c.Eligibility='Eligible','Eligible','Not Eligible') AS Eligibility
FROM AttendanceEligibilitySummary a,CA_Result_Without_Attendance c
WHERE a.student_id=c.student_id AND c.course_code=a.course_code
GROUP BY c.student_id,course_code;


--By giving Registration no as a summery----


DELIMITER //
CREATE PROCEDURE CA_Register_No(r_number VARCHAR(10))
BEGIN
SELECT mark_id,student_id,course_code,CA_marks FROM CA_Result_Without_Attendance 
WHERE Eligibility='Eligible' AND student_id=r_number;
END //
DELIMITER ;
CALL CA_Register_No('TG-001');


--By giving Registration no and corse code ----

DELIMITER //
CREATE PROCEDURE CA_course_code_and_registration_no(IN r_number VARCHAR(10), IN c_code VARCHAR(10))
BEGIN
SELECT mark_id,student_id,CA_marks FROM CA_Result_Without_Attendance 
WHERE Eligibility='Eligible' AND student_id=r_number AND course_code=c_code;
END //
DELIMITER ;
CALL CA_course_code_and_registration_no('TG-002',' ENG1212');



--By giving Corse code summary for whole batch----

DELIMITER //
CREATE PROCEDURE batch_summary(IN c_code VARCHAR(10))
BEGIN
SELECT mark_id,student_id,CA_marks FROM CA_Result_Without_Attendance 
WHERE Eligibility='Eligible' AND course_code=c_code;
END //
DELIMITER ;
CALL batch_summary('ENG1212');


-- check each subject quize marks by using student_id----------



DELIMITER //
CREATE PROCEDURE SubjectQuizemarks (IN stID VARCHAR(20))
BEGIN
select  student_id,course_code,Quiz_marks from CA_Result_Without_Attendance where student_id = stID;
END//
DELIMITER ;
CALL SubjectQuizemarks('TG-014');


----all student quize marks in one subject by using course_code--------




DELIMITER //
CREATE PROCEDURE allstudentQuizemarks (IN subjectq VARCHAR(20))
BEGIN
select  student_id,course_code,Quiz_marks from CA_Result_Without_Attendance where course_code = subjectq ;
END//
DELIMITER ;
CALL allstudentQuizemarks('ICT1233');
