create database payroll_service;
show databases;
use payroll_service;

use payroll_service;
Create Table employee_payroll(
	id int not null primary key auto_increment,
    name varchar(255) NOT NULL,
    salary int NOT NULL,
    start_date DATE NOT NULL
);

