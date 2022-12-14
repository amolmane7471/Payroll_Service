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

#UC6 : Ability To add gender to employee payroll table 

ALTER TABLE employee_payroll ADD gender CHAR(1) AFTER name;
UPDATE employee_payroll set gender = "F" WHERE name = "Terica";
UPDATE employee_payroll set gender = "M" WHERE name = "Bill" or name = "Charlie";
UPDATE employee_payroll set salry = 400000.0 WHERE name = "Terica";

#UC 7 : Ability to find sum, average, min, max and number of male and female employees

select AVG(salary) FROM employee_payroll WHERE gender = "M" GROUP BY gender;
select MAX(salary) FROM employee_payroll;
select MIN(salary) FROM employee_payroll;
select SUM(salary) FROM employee_payroll;

#UC 8 : Ability to extend employee_payroll data to store employee information
# like employee phone, address and department

ALTER TABLE employee_payroll ADD phone_number VARCHAR(255) AFTER name;
ALTER TABLE employee_payroll ADD address VARCHAR(255) AFTER phone_number;
ALTER TABLE employee_payroll ADD department VARCHAR(255) AFTER address;
ALTER TABLE employee_payroll ALTER address set DEFAULT "TED";
INSERT INTO employee_payroll (name,salary,start) VALUES("Bill",1000000.0,"2018-5-10");

#UC9 : Ability to extend employee_payroll table to have Basic Pay, Deductions, Taxable Pay, Income Tax, Net Pay

ALTER TABLE employee_payroll RENAME COLUMN salary TO basic_pay ;
ALTER TABLE employee_payroll ADD deduction DOUBLE NOT NULL AFTER basic_pay;
ALTER TABLE employee_payroll ADD taxable_pay DOUBLE NOT NULL AFTER deduction;
ALTER TABLE employee_payroll ADD tax DOUBLE NOT NULL AFTER taxable_pay;
ALTER TABLE employee_payroll ADD net_pay DOUBLE NOT NULL AFTER tax;
UPDATE employee_payroll set department = "sales" WHERE name = "Terica";

#UC10

INSERT INTO employee_payroll (name,department,gender,basic_pay,deduction,taxable_pay,tax,net_pay,start) 
							VALUES("Terica","marketting","F",3000000.0,1000000.0,2000000.0,500000.0,1500000.0,"2018-5-10");

