#UC1 : ability to create database
CREATE DATABASE payroll_service;
use payroll_service;
SELECT DATABASE();

#UC2 : ability to create employee payroll table
 
CREATE TABLE employee_payroll(id INT unsigned NOT NULL AUTO_INCREMENT,
							  name VARCHAR(150) NOT NULL,
                              salary Double NOT NULL,
                              start DATE NOT NULL,
                              PRIMARY KEY (id));
# DROP TABLE employee_payroll;                            
DESCRIBE employee_payroll;
