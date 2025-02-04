CREATE DATABASE IF NOT EXISTS companyxyz;
USE companyxyz;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(15) UNIQUE,
    HireDate DATE NOT NULL,
    JobTitle VARCHAR(100),
    Salary DECIMAL(10,2) CHECK (Salary > 0),
    Department VARCHAR(100) NOT NULL
);