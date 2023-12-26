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

-- UC-3 Adding data to employee_payroll
INSERT INTO employee_payroll(name,salary,start_date)values("Adarsh",50000,2023-12-25);

-- UC-4 showing the data
select * from employee_payroll;

-- UC-5 Ability to retrieve salary data for a particular employee as well as all employees who have joined in a particular data range from the database
SELECT salary FROM employee_payroll
WHERE name = 'Adarsh' AND start_date BETWEEN CAST('2023-05-01'
AS DATE) AND DATE(NOW());


