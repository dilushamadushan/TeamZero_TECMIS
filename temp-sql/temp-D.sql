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