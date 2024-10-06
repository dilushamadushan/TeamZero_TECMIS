

-- create table admin--

CREATE TABLE Technical_officer(
    tech_officer_id VARCHAR(6) PRIMARY KEY,
    nic CHAR(12),
    role VARCHAR(20),
);

-- create table Attendence--

CREATE TABLE Attendence(
    data DATE,
    att_state VARCHAR(20),
    session_type VARCHAR(25),
    student_id VARCHAR(6),
    medical_id CHAR(10),
    tech_officer_id VARCHAR(6),
    course_code CHAR(8)
);