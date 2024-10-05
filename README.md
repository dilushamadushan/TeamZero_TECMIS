# TECLMS-TECMIS System
***

<p>This project is a Student Management System designed for the Faculty of Technology. It allows administrators, deans, lecturers, technical officers, and students to manage and view student details, course information, attendance, and exam results.</p>

### 🤖 Project Overview

- Student details, including proper and repeat students
- Course units data
- Attendance tracking for both theory and practical sessions
- Marks recording for assessments, quizzes, mid-semester exams, and final exams
- Eligibility checking based on attendance and continuous assessment (CA) marks
- Grading system based on faculty bylaws
- Viewing student grades, SGPA, and CGPA

***

# SQL Table Structure

This repository contains the SQL table structure for a TECLMS-TECMIS System. The database consists of seventeen tables: `Students`, `lecture`, `Course`, `Mark`, `user`,'Admin','Mark','Medical' and `Attendance`,

## Table Definitions

### Students

The `Students` table stores information about the students.

| Field      | Data Type   | Null | Key | Default |
|------------|-------------|------|-----|---------|
| student_id | varchar(6)  | NO   | PRI | NULL    |
| nic        | char(12)    | YES  |     | NULL    |
| state      | varchar(30) | YES  |     | NULL    |
| dep_id     | char(4)     | YES  |     | NULL    |

### Admin

The `Admin` table store information about admin data 


| Field    | Type        | Null | Key | Default | 
|----------|-------------|------|-----|---------|
| nic      | char(12)    | YES  |     | NULL    |       
| admin_id | varchar(10) | NO   | PRI | NULL    |       
| role     | varchar(10) | YES  |     | NULL    |  

### Mark

The `Mark` table stores marks of the all os student .


| Field         | Type       | Null | Key | Default | 
|---------------|------------|------|-----|---------|
| mark_id       | char(10)   | NO   | PRI | NULL    |       
| quiz_1        | int(11)    | YES  |     | NULL    |       
| quiz_2        | int(11)    | YES  |     | NULL    |       
| quiz_3        | int(11)    | YES  |     | NULL    |       
| assesment     | int(11)    | YES  |     | NULL    |       
| mid_theory    | int(11)    | YES  |     | NULL    |       
| mid_practical | int(11)    | YES  |     | NULL    |       
| end_theory    | int(11)    | YES  |     | NULL    |       
| end_practical | int(11)    | YES  |     | NULL    |       
| student_id    | varchar(6) | YES  |     | NULL    |       
| course_code   | char(8)    | YES  |     | NULL    |       

### Medical

The `Medical` table stores about mediacal information  os All Student.


| Field           | Type        | Null | Key | Default | 
|-----------------|-------------|------|-----|---------|
| medical_id      | char(10)    | NO   | PRI | NULL    |       
| description     | varchar(50) | YES  |     | NULL    |       
| s_date          | date        | YES  |     | NULL    |       
| e_date          | date        | YES  |     | NULL    |       
| student_id      | varchar(6)  | YES  |     | NULL    |       
| tech_officer_iD | char(10)    | YES  |     | NULL    |       






