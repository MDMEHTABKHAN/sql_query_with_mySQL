# sql_query_with_mySQL

📌 SQL Query with MySQL
📖 Overview
This repository contains MySQL database schemas and queries, including a structured Employees Table Schema for managing employee data in a relational database.

🏗 Database Schema
The SQL script creates a database named companyxyz and a table named Employees with various constraints to ensure data integrity.

## 🏗️ Table Structure  

The `Employee` table includes the following columns:

| Column Name  | Data Type         | Constraints                      | Description                           |
|-------------|------------------|---------------------------------|---------------------------------------|
| EmployeeID  | INT              | PRIMARY KEY                     | Unique ID for each employee          |
| FirstName   | VARCHAR(50)      | NOT NULL                         | First name of the employee           |
| LastName    | VARCHAR(50)      | NOT NULL                         | Last name of the employee            |
| Email       | VARCHAR(100)     | UNIQUE, NOT NULL                 | Email address (must be unique)       |
| PhoneNumber | VARCHAR(15)      | UNIQUE                           | Contact number (must be unique)      |
| HireDate    | DATE             | NOT NULL                         | Date when the employee was hired     |
| JobTitle    | VARCHAR(100)     | -                                | Job designation of the employee      |
| Salary      | DECIMAL(10,2)    | CHECK (Salary > 0)               | Employee's salary (must be positive) |
| Department  | VARCHAR(100)     | NOT NULL                         | Department to which the employee belongs |

🛠 Technologies Used
# Database: MySQL
# Language: SQL
