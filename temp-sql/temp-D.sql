--Crete database

CREATE DATABASE tecmis;

--Create Tables

CREATE TABLE 
    Student(   
        student_id VARCHAR(6) PRIMARY KEY, 
        nic VARCHAR(15),
        state VARCHAR(30),
        dep_id CHAR(5)
    );

CREATE TABLE 
    Lecture(
        lecture_id VARCHAR(6) PRIMARY KEY,
        nic VARCHAR(15),
        position VARCHAR(20),
        dep_id CHAR(5)
    );

CREATE TABLE 
    Course(
        course_code char(10) PRIMARY KEY,
        course_name varchar(20),
        course_credit int,
        course_houre int,
        course_type varchar(15) NOT NULL,
        dep_id char(5)
    );