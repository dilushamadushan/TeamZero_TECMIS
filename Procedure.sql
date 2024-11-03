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
CALL CA_course_code_and_registration_no('TG-002','ENG1212');


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

------- one student mid exam marks by using student_id -------------

DELIMITER //
CREATE PROCEDURE Mid_Mark(IN  studentm VARCHAR(20) )
BEGIN
select student_id,course_code, Mid_marks from CA_Result_Without_Attendance where student_id= studentm;
END//
DELIMITER ;
CALL Mid_Mark('TG-001');

-------- subjectvise mid marks by using course_code ------------

DELIMITER //
CREATE PROCEDURE subjectMid_Mark(IN coursem VARCHAR(20) )
BEGIN
select student_id,course_code, Mid_marks from CA_Result_Without_Attendance where course_code= coursem;
END//
DELIMITER ;

CALL subjectMid_Mark('ENG1212');

---------- subject CA marks by using courese_code-----------

DELIMITER //
CREATE PROCEDURE SCAmarks(IN coursec VARCHAR(20))
BEGIN
select student_id,course_code,CA_marks from CA_Result_Without_Attendance where course_code=coursec;
END//
DELIMITER ;

CALL SCAmarks('ENG1212');

---------- Student CA marks by using student_id----------

DELIMITER //
CREATE PROCEDURE UCAmarks(IN studentc VARCHAR(20))
BEGIN
select student_id,course_code,CA_marks from CA_Result_Without_Attendance where student_id=studentc;
END//
DELIMITER ;


CALL UCAmarks('TG-011');

-- view final mark by student id -- 

DELIMITER //

CREATE PROCEDURE viewresult_from_id(
    IN id_number VARCHAR(20)
)
BEGIN
    SELECT DISTINCT course_code, final_result
    FROM final_marks
    WHERE student_id = id_number;
END //

DELIMITER ;

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

CALL view_result_from_department('D001');


--view Notice published by Lecturer

DELIMITER //

CREATE PROCEDURE ViewLecturerNotice(IN lecture_id VARCHAR(5))
BEGIN
    SELECT date, description AS 'Notice'
    FROM notice
    WHERE notice.lecture_id = lecture_id; 
END //

DELIMITER ;

CALL ViewLecturerNotice ('LC01');