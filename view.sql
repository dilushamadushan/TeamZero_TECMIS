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

-- Calculate  VIEW  CA_Result_Without_Attendance

CREATE VIEW CA_Result_Without_Attendance AS SELECT mark_id,mark.student_id,course_code,
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
        ELSE 'Not Eligible' END AS Eligibility FROM Mark
        INNER JOIN student ON mark.student_id = student.student_id WHERE state != 'suspended';

-- Calculate  VIEW  CA_Result_With_Attendance  --

CREATE VIEW CA_Result_With_Attendance AS SELECT c.course_code,c.student_id,a.Eligibility AS Attendace_Eligibility,c.Eligibility AS CA_Eligibility,
IF(a.Eligibility='Eligible' AND c.Eligibility='Eligible','Eligible','Not Eligible') AS Eligibility
FROM AttendanceEligibilitySummary a,CA_Result_Without_Attendance c
WHERE a.student_id=c.student_id AND c.course_code=a.course_code
GROUP BY c.student_id,course_code;

--final marks view--

CREATE VIEW final_marks AS
SELECT 
    m.mark_id,
    MIN(m.student_id) AS student_id,  
    MIN(m.course_code) AS course_code,  
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

--Final mark without CA mark -- 

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

----------- Suspend student every mark updated  WH for VIEW -------- 

CREATE  VIEW mark_and_student AS
SELECT 
    student.student_id, 
    student.state,
    mark.course_code,
    CASE 
        WHEN student.state = 'suspended' THEN 'WH'
        ELSE mark.quiz_1
    END AS quiz_1,

    CASE 
        WHEN student.state = 'suspended' THEN 'WH'
        ELSE mark.quiz_2
    END AS quiz_2,

    CASE 
        WHEN student.state = 'suspended' THEN 'WH'
        ELSE mark.quiz_3
    END AS quiz_3,

    CASE 
        WHEN student.state = 'suspended' THEN 'WH'
        ELSE mark.assesment
    END AS assesment,

    CASE 
        WHEN student.state = 'suspended' THEN 'WH'
        ELSE mark.mid_theory
    END AS mid_theory,

    CASE 
        WHEN student.state = 'suspended' THEN 'WH'
        ELSE mark.mid_practical
    END AS mid_practical,

    CASE 
        WHEN student.state = 'suspended' THEN 'WH'
        ELSE mark.end_theory
    END AS end_theory,

    CASE 
        WHEN student.state = 'suspended' THEN 'WH'
        ELSE mark.end_practical
    END AS end_practical
FROM mark
INNER JOIN student ON mark.student_id = student.student_id;

--Grade of students

CREATE VIEW Student_Grade AS 
SELECT 
    a.student_id, 
    a.Course_code,
    f.final_result,
    
    CASE
        WHEN f.final_result >= 85 AND f.final_result <= 100 THEN 'A+'
        WHEN f.final_result >= 80 AND f.final_result < 85 THEN 'A'
        WHEN f.final_result >= 75 AND f.final_result < 80 THEN 'A-'
        WHEN f.final_result >= 70 AND f.final_result < 75 THEN 'B+'
        WHEN f.final_result >= 65 AND f.final_result < 70 THEN 'B'
        WHEN f.final_result >= 60 AND f.final_result < 65 THEN 'B-'
        WHEN f.final_result >= 55 AND f.final_result < 60 THEN 'C+'
        WHEN f.final_result >= 50 AND f.final_result < 55 THEN 'C'
        WHEN f.final_result >= 45 AND f.final_result < 50 THEN 'C-'
        WHEN f.final_result >= 40 AND f.final_result < 45 THEN 'D+'
        WHEN f.final_result >= 35 AND f.final_result < 40 THEN 'D'
        WHEN f.final_result >= 0 AND f.final_result < 35 THEN 'F'
    END AS Grade,

    CASE
        WHEN f.final_result >= 85 AND f.final_result <= 100 THEN 4.0
        WHEN f.final_result >= 80 AND f.final_result < 85 THEN 4.0
        WHEN f.final_result >= 75 AND f.final_result < 80 THEN 3.7
        WHEN f.final_result >= 70 AND f.final_result < 75 THEN 3.3
        WHEN f.final_result >= 65 AND f.final_result < 70 THEN 3.0
        WHEN f.final_result >= 60 AND f.final_result < 65 THEN 2.7
        WHEN f.final_result >= 55 AND f.final_result < 60 THEN 2.3
        WHEN f.final_result >= 50 AND f.final_result < 55 THEN 2.0
        WHEN f.final_result >= 45 AND f.final_result < 50 THEN 1.7
        WHEN f.final_result >= 40 AND f.final_result < 45 THEN 1.3
        WHEN f.final_result >= 35 AND f.final_result < 40 THEN 1.0
        WHEN f.final_result >= 0 AND f.final_result < 35 THEN 0
    END AS Grade_Point,

    c.course_credit  AS Credit

FROM 
    final_marks f
INNER JOIN 
    CA_Result_With_Attendance a ON a.Course_code = f.Course_code AND a.student_id = f.student_id
INNER JOIN 
    course c ON c.course_code = f.Course_code
WHERE 
    a.Eligibility = 'Eligible';

--Grade Credit of students

CREATE VIEW Student_Grade_Credit AS 
SELECT student_id,Credit,Course_code,(Grade_Point * Credit) AS pointCreditvalue FROM 
Student_Grade ;

--Calculate SGPA

CREATE VIEW SGPA AS
SELECT s.student_id,(SUM(s.pointCreditvalue))/ SUM(s.Credit) AS SGPA
FROM Student_Grade_Credit s
INNER JOIN Course c  ON s.course_code = c.course_code 
WHERE c.dep_id='D001' OR c.dep_id='D004'
GROUP BY s.student_id;

--Calculate CGPA

CREATE VIEW CGPA AS
SELECT s.student_id,(SUM(s.pointCreditvalue))/ SUM(s.Credit) AS CGPA
FROM Student_Grade_Credit s
INNER JOIN Course c ON s.course_code = c.course_code 
WHERE c.dep_id='D001' AND c.course_code != 'ENG1212'
GROUP BY s.student_id;

--Calculate GPA
CREATE VIEW ALL_GPA AS 
SELECT s.Student_ID,s.SGPA,c.CGPA FROM SGPA s,CGPA c
WHERE s.Student_ID=c.Student_ID;


