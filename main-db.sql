--Crete database--

CREATE DATABASE teamZero;

-- Create User Account --

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin123';
CREATE USER 'dean'@'localhost' IDENTIFIED BY 'dean123';
CREATE USER 'lecture'@'localhost' IDENTIFIED BY 'lecture123';
CREATE USER 'techofficer'@'localhost' IDENTIFIED BY 'techofficer123';
CREATE USER 'student'@'localhost' IDENTIFIED BY 'student123';

-- PRIVILAGES AND GRANT OPTION --

GRANT ALL PRIVILEGES ON teamZero.* TO 'admin'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES ON teamZero.* TO 'dean'@'localhost';
FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES ON teamZero.* TO 'lecturer'@'localhost';
FLUSH PRIVILEGES;

GRANT SELECT,INSERT,UPDATE ON teamZero.attendence TO 'techofficer'@'localhost';
FLUSH PRIVILEGES;
GRANT SELECT,INSERT,UPDATE ON teamZero.medical TO 'techofficer'@'localhost';
FLUSH PRIVILEGES;

GRANT SELECT ON teamZero.attendence TO 'student'@'localhost';
FLUSH PRIVILEGES;
GRANT SELECT ON teamZero.mark TO 'student'@'localhost';
FLUSH PRIVILEGES;