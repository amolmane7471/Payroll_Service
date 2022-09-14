#UC1 : ability to create a database
CREATE DATABASE payroll_service;
use payroll_service;
SELECT DATABASE();

#UC2 : ability to create employee_payroll table

CREATE TABLE employee_payroll(id INT unsigned NOT NULL AUTO_INCREMENT,
							  name VARCHAR(150) NOT NULL,
                              salary Double NOT NULL,
                              start DATE NOT NULL,
                              PRIMARY KEY (id));
# DROP TABLE employee_payroll;                            
DESCRIBE employee_payroll;

#UC3 : ability to insert data into table

INSERT INTO employee_payroll (name,salary,start) VALUES("Bill",100000.0,"2018-5-10"),
													   ("Terica",200000.0,"2019-11-15"),
                                                       ("Charlie",300000.0,"2020-06-24");
