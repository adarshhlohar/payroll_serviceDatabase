create database payroll_service;
show databases;
use payroll_service;

use payroll_service;
CREATE TABLE employee_payroll (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    salary INT NOT NULL,
    start_date DATE NOT NULL
);

INSERT INTO employee_payroll (name, salary, start_date)
VALUES 
('John Doe', 50000.00, '2023-01-01'),
('Jane Smith', 60000.00, '2022-12-15'),
('Robert Johnson', 55000.00, '2023-02-10'),
('Emily Brown', 52000.00, '2023-03-05');


-- UC-3 Adding data to employee_payroll
INSERT INTO employee_payroll(name,salary,start_date)values("Adarsh",50000,2023-12-25);

-- UC-4 showing the data
select * from employee_payroll;


-- UC-5 Ability to retrieve salary data for a particular employee as well as all employees who have joined in a particular data range from the database
SELECT salary FROM employee_payroll
WHERE name = 'Adarsh' AND start_date BETWEEN CAST('2023-05-01'
AS DATE) AND DATE(NOW());


-- UC-6 Ability to add Gender to Employee Payroll Table and Update the Rows to reflect the correct Employee Gender
ALTER TABLE employee
ADD gender VARCHAR(10);

UPDATE employee_payroll set gender ='M' where name = 'Adarsh';

-- Ability to find sum, average, min, max and number of male and female employees
SELECT max(salary) FROM employee_payroll
WHERE gender = 'M' GROUP BY gender;

SELECT sum(salary) FROM employee_payroll
WHERE gender = 'M' GROUP BY gender;


SELECT avg(salary) FROM employee_payroll
WHERE gender = 'M' GROUP BY gender;


-- UC-08 Add phone, address, and department columns to the employee_payroll table
ALTER TABLE employee_payroll
ADD COLUMN employee_phone VARCHAR(15), -- Assuming phone number can be stored as a string of max 15 characters
ADD COLUMN employee_address VARCHAR(255), -- Assuming address can be stored as a string of max 255 characters
ADD COLUMN employee_department VARCHAR(50) NOT NULL; -- Assuming department can be stored as a string of max 50 characters and is non-nullable

