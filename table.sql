CREATE TABLE User(
  nic CHAR(12) PRIMARY KEY,
  f_name VARCHAR(10),
  l_name VARCHAR(10),
  address VARCHAR(15),
  email VARCHAR (15),
  gender VARCHAR(5),
  bod DATE 
    );

CREATE TABLE Admin(   
     nic CHAR(12),
     admin_id VARCHAR(10) PRIMARY KEY,
     role  VARCHAR(10)
    );

CREATE TABLE Dean(
    dean_id CHAR(5) PRIMARY KEY,
    nic CHAR(12) 
    );

CREATE TABLE Student(   
    student_id VARCHAR(6) PRIMARY KEY, 
    nic CHAR(12),
    state VARCHAR(30),
    dep_id CHAR(4)
    );

CREATE TABLE Lecture(
    lecture_id VARCHAR(5) PRIMARY KEY,
    nic CHAR(12),
    position VARCHAR(20),
    dep_id CHAR(4)
    );

CREATE TABLE Technical_officer(
    tech_officer_id VARCHAR(6) PRIMARY KEY,
    nic CHAR(12),
    role VARCHAR(30)
    );

CREATE TABLE Course(
    course_code char(8) PRIMARY KEY,
    course_name varchar(20),
    course_creD001 INT,
    course_houre INT,
    course_type varchar(15) NOT NULL,
    dep_id CHAR(4)
    );

CREATE TABLE Department(
    dep_id CHAR(4) PRIMARY KEY,
    dep_name VARCHAR(50),
    dean_id CHAR(5),
    admin_id VARCHAR(10) 
    );

CREATE TABLE Mark(
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

CREATE TABLE Medical(
    medical_id CHAR(10) PRIMARY KEY,
    description  VARCHAR(50),
    s_date DATE,
    e_date DATE,
    student_id VARCHAR(6),
    tech_officer_iD CHAR(10)
    );

CREATE TABLE Attendence(
    date DATE,
    att_state VARCHAR(20),
    session_type VARCHAR(25),
    student_id VARCHAR(6),
    medical_id CHAR(10),
    tech_officer_id VARCHAR(6),
    course_code CHAR(8)
    );

CREATE TABLE Notice(
    notice_id VARCHAR(6) PRIMARY KEY,
    description VARCHAR(100),
    date DATE,
    lecture_id VARCHAR(5)
    );

CREATE TABLE Lecture_student(
    lecture_id VARCHAR(5),
    student_id VARCHAR(6)
    );

CREATE TABLE Student_notice(
    student_id VARCHAR(6),
    notice_id VARCHAR(6)
    );

CREATE TABLE User_contact(
    nic CHAR(12) PRIMARY KEY,
    contact_no CHAR(10)
    );

CREATE TABLE Lecture_Course(
    lecture_id VARCHAR(5),
    course_code CHAR(8)
    );

CREATE TABLE Student_Course(
   student_id VARCHAR(6),
   course_code char(8)
    );

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

ALTER TABLE Attendence ADD FOREIGN KEY (medical_id) REFERENCES Medical(medical_id);

ALTER TABLE Lecture ADD FOREIGN KEY (dep_id) REFERENCES Department(dep_id);
ALTER TABLE Student ADD FOREIGN KEY (dep_id) REFERENCES Department(dep_id);
ALTER TABLE Course ADD FOREIGN KEY (dep_id) REFERENCES Department(dep_id);

ALTER TABLE Lecture_Course ADD FOREIGN KEY (course_code) REFERENCES Course(course_code);
ALTER TABLE Student_Course ADD FOREIGN KEY (course_code) REFERENCES Course(course_code);
ALTER TABLE Mark ADD FOREIGN KEY (course_code) REFERENCES Course(course_code);
ALTER TABLE Attendence ADD FOREIGN KEY (course_code) REFERENCES Course(course_code);

ALTER TABLE Student_notice ADD FOREIGN KEY (student_id) REFERENCES Student(student_id);
ALTER TABLE Student_notice ADD FOREIGN KEY (notice_id) REFERENCES Notice(notice_id);