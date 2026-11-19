# MySQL Assignment 1 – DDL Commands & Constraints

## 📌 Project Overview

This project focuses on designing and managing an Employee Database using **MySQL**. The objective is to understand database creation, table management, schema modification, and constraint implementation to maintain data integrity and consistency.

As part of my Data Analytics learning journey, I worked with SQL DDL (Data Definition Language) commands to create, modify, rename, truncate, and drop database objects while implementing appropriate constraints.

## 🎯 Project Objectives

- Create an Employee Database using MySQL.
- Design relational tables for employees, departments, and locations.
- Establish relationships between tables using Primary Keys and Foreign Keys.
- Modify table structures using ALTER commands.
- Perform table renaming, truncation, and deletion.
- Implement constraints to maintain data accuracy and consistency.
- Understand how database constraints prevent invalid data entries.

## 🗂️ Database Structure

The project consists of three main tables:

### 1. Departments Table

| Column Name | Data Type | Description |
|---|---|---|
| department_id | INT | Primary Key |
| department_name | VARCHAR(100) | Department name |

### 2. Location Table

| Column Name | Data Type | Description |
|---|---|---|
| location_id | INT | Primary Key, Auto Increment |
| loaction_name | VARCHAR(30) | Location name |

### 3. Employees Table

| Column Name | Data Type | Description |
|---|---|---|
| employee_id | INT | Primary Key |
| employee_name | VARCHAR(50) | Employee name |
| gender | ENUM | Male or Female |
| age | INT | Employee age |
| hire_date | DATE | Date of joining |
| designation | VARCHAR(100) | Employee designation |
| salary | DECIMAL(10,2) | Employee salary |
| department_id | INT | Foreign Key |
| location_id | INT | Foreign Key |

## 🛠️ SQL Concepts & Commands Used

### 1. DDL Commands

- **CREATE DATABASE:** Created the employee database.
- **CREATE TABLE:** Created Departments, Location, and Employees tables.
- **ALTER TABLE:** Added email column, modified designation data type, dropped age column, and renamed hire_date to date_of_joining.
- **RENAME TABLE:** Renamed Departments to Departments_Info and Location to Locations.
- **TRUNCATE TABLE:** Removed all records from the Employees table.
- **DROP TABLE:** Deleted the Employees table.
- **DROP DATABASE:** Deleted the employee database.

### 2. Constraints Implemented

| Constraint | Purpose |
|---|---|
| PRIMARY KEY | Ensures unique identification of records |
| FOREIGN KEY | Establishes relationships between tables |
| NOT NULL | Prevents empty values |
| UNIQUE | Prevents duplicate department names and locations |
| CHECK | Ensures employee age is 18 or above |
| DEFAULT | Automatically assigns the current date as the hire date |
| AUTO_INCREMENT | Automatically generates sequential location IDs |
| ENUM | Restricts gender values to Male or Female |

## 🔗 Table Relationships

The Employees table is connected to the Departments and Location tables through Foreign Keys.

- Employees.department_id → Departments.department_id
- Employees.location_id → Location.location_id

These relationships help maintain referential integrity and establish connections between employee records and their respective departments and locations.

## 📂 Project Files

```text
MySQL-Assignment-1/
│
├── DDL Commands & Constraints.sql
│
└── README.md
```

## ▶️ How to Execute the Project

1. Install and open MySQL Workbench.
2. Open the `DDL Commands & Constraints.sql` file.
3. Review the SQL commands.
4. Execute the script section by section.
5. Verify the database and table structures using:
   - `SHOW DATABASES;`
   - `SHOW TABLES;`
   - `DESC Employees;`
6. Check the constraints and relationships to verify successful execution.

**Note:** The script includes database deletion and recreation commands. Execute it in a test environment because these commands remove existing database objects and data.

## 📚 Key Learnings

Through this assignment, I gained practical experience in:

- Creating and managing relational databases.
- Understanding database schema design.
- Working with Primary Keys and Foreign Keys.
- Applying data integrity constraints.
- Modifying table structures using ALTER commands.
- Managing database objects using RENAME, TRUNCATE, and DROP.
- Understanding the importance of referential integrity.
- Writing structured and executable SQL scripts.

## 🚀 Conclusion

This project helped me strengthen my foundational MySQL skills and understand how databases are designed and maintained in real-world business environments.

It also provided practical knowledge of DDL commands and constraints, which are essential for maintaining reliable, consistent, and well-structured data.

---

**Tools Used:** MySQL | MySQL Workbench | SQL

**Domain:** Data Analytics | Database Management

**Learning Path:** Data Analytics – Module 3 – MySQL

**Role:** Aspiring Data Analyst# DDL-Commands-Constraints---MYSQL-Ass1
