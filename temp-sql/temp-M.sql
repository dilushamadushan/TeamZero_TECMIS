-- create table user--

CREATE TABLE User
(
  nic CHAR(12) PRIMARY KEY,
  f_name VARCHAR(10),
  l_name VARCHAR(10),
  address VARCHAR(15),
  email VARCHAR (15),
  gender VARCHAR(5),
  bod DATE 
);

-- create table dean--


CREATE TABLE Dean
(
    dean_id CHAR(5) PRIMARY KEY,
    nic CHAR(12) 
    
    
);

-- create table department--


CREATE TABLE Department
(
     dep_id CHAR(4) PRIMARY KEY,
     dep_name VARCHAR(15),
     dean_id CHAR(5),
     admin_id VARCHAR(10)
     
);
-- create table user-contact--


CREATE TABLE User-contact
(
     nic CHAR(12) PRIMARY KEY,
     contact_no CHAR(10)
   
);