create database if not exists employee_db;
use employee_db;
create table if not exists departments(
department_id int primary key,
department_name varchar(100)
);
create table if not exists Location(
location_id int primary key,
loaction_name varchar(30)
);
create table if not exists Employees(
employee_id int primary key,
employee_name varchar(50),
gender enum('male','female'),
age int,
hire_date date,
designation varchar(100),
salary decimal(10,2),
department_id int,
location_id int,
foreign key (department_id) references departments(department_id),
foreign key (location_id) references Location(location_id)
);

-- alter table
alter table Employees add column email varchar(30);
alter table Employees modify column designation varchar(150);
alter table Employees drop column age;
alter table Employees rename column hire_date to date_of_joining;

-- rename table
rename table departments to departments_info;
rename table Location to Locations;

-- truncate
truncate table Employees;

-- drop
drop table Employees;
drop database employee_db;

-- database recreation - employee
drop database if exists employee_db;

create database if not exists employee_db;
use employee_db;
create table if not exists departments(
department_id int primary key unique,
department_name varchar(100) not null
);
alter table departments add constraint db unique (department_name);
create table if not exists Location(
location_id int auto_increment primary key,
loaction_name varchar(30) not null unique
);
create table if not exists Employees(
employee_id int primary key,
employee_name varchar(50) unique not null,
gender enum('male','female'),
age int check (age>=18),
hire_date date default (current_date),
designation varchar(100),
salary decimal(10,2),
department_id int,
location_id int,
foreign key (department_id) references departments(department_id),
foreign key (location_id) references Location(location_id)
);

