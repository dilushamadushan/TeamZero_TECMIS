

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

