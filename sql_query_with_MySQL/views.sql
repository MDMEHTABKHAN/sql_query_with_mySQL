CREATE VIEW EmployeeContactInfo AS 
SELECT EmployeeID, FirstName, LastName, Email, PhoneNumber 
FROM Employees;

SELECT * FROM EmployeeContactInfo;

DROP VIEW IF EXISTS EmployeeContactInfo;


DROP VIEW IF EXISTS EmployeesByDepartment;
CREATE VIEW EmployeesByDepartment AS 
SELECT EmployeeID, FirstName, LastName, Department 
FROM Employees;

SELECT * FROM EmployeesByDepartment;


DROP VIEW IF EXISTS HighSalaryEmployees;
CREATE VIEW HighSalaryEmployees AS 
SELECT EmployeeID, FirstName, LastName, Salary 
FROM Employees 
WHERE Salary > 90000;

SELECT * FROM HighSalaryEmployees;

CREATE VIEW ITDepartmentEmployees AS
SELECT EmployeeID, FirstName, LastName, JobTitle, Salary
FROM Employees
WHERE Department = 'IT';

SELECT * FROM  ITDepartmentEmployees;

DROP VIEW IF EXISTS IT_Employees;
CREATE VIEW IT_Employees AS
SELECT EmployeeID, FirstName, LastName, Salary, Department
FROM Employees
WHERE Department = 'IT';


SELECT * FROM IT_Employees;


