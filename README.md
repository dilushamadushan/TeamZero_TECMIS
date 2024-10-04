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

This repository contains the SQL table structure for a TECLMS-TECMIS System. The database consists of seventeen tables: `Students`, `lecture`, `Course`, `Mark`, `user`, and `Attendance`.

## Table Definitions

### Students

The `Students` table stores information about the students.

| Field      | Data Type   | Null | Key | Default |
|------------|-------------|------|-----|---------|
| student_id | varchar(6)  | NO   | PRI | NULL    |
| nic        | char(12)    | YES  |     | NULL    |
| state      | varchar(30) | YES  |     | NULL    |
| dep_id     | char(4)     | YES  |     | NULL    |


