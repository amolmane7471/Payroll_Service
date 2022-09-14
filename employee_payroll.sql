#UC1 : ability to create database
CREATE DATABASE payroll_service;
use payroll_service;
SELECT DATABASE();

#UC2 : ability to create table

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

#UC4 : ability to retrieve all tha data from table

SELECT * FROM employee_payroll;

#UC5 : ability to retrieve salary data for particular employee

select salary FROM employee_payroll WHERE name = "Bill";
select salary FROM employee_payroll WHERE start BETWEEN CAST("2018-05-13" AS DATE) AND DATE(NOW());
