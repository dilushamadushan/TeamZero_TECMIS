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