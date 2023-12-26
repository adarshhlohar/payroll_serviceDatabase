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



