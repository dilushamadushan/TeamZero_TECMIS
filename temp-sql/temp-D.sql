--Crete database

CREATE DATABASE teamZero;

--Create Tables

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
        course_credit INT,
        course_houre INT,
        course_type varchar(15) NOT NULL,
        dep_id CHAR(4)
    );

CREATE TABLE 
    Lecture_Course(
        lecture_id VARCHAR(5),
        course_code CHAR(8)
    );

