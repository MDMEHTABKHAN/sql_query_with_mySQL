/* The WHERE clause in SQL is used to filter records from a table based on a condition.
It helps you retrieve only the data that meets specific criteria */

--  Find employees whose first name starts with 'a'
SELECT * FROM employees WHERE firstname LIKE 'A%'; 

SELECT * FROM Employees WHERE firstName LIKE 'M%' OR FirstName LIKE 'N%';
SELECT * FROM employees WHERE firstname LIKE 'N%' AND lastname like 'A%';

-- Find employees whose last name ends with 'N'.
SELECT * FROM  employees WHERE lastname LIKE  '%N';

SELECT * FROM employees WHERE firstname LIKE '%r';

-- Find employees whose email contains '@ex'
SELECT * FROM employees WHERE Email LIKE '%@ex%';

-- Find employees hired between '2023-01-01'and '2024-12-31' 
SELECT * FROM employees WHERE HireDate BETWEEN '2023-01-01' AND '2024-12-31';


-- Find employees whose salary is between 50000 and 800000

SELECT * FROM employees WHERE Salary BETWEEN 50000 AND 80000;
SELECT * FROM employees WHERE EmployeeID BETWEEN 20 AND 50;
SELECT * FROM employees WHERE salary >= 50000 AND salary < 60000;


SELECT * FROM employees WHERE Department IN ('IT', 'Marketing');
SELECT * FROM employees WHERE JobTitle IN ('NETWORK ENGINEER', 'WEB DEVELOPER', 'CLOUD ENGINEER');
SELECT * FROM employees WHERE JobTitle = 'SOFTWARE ENGINEER' OR JobTitle = 'WEB DEVELOPER';

SELECT * FROM employees WHERE Department NOT IN ('IT', 'HR');
SELECT * FROM employees WHERE Department != 'HR' AND Department != 'IT'; 

-- Find employees whose job title is either 'Data Analyst' or 'Web Developer'

SELECT * FROM employees WHERE JobTitle = 'Data Analyst' or JobTitle = 'Web Developer';
SELECT * FROM employees WHERE JobTitle IN ( 'Data Analyst', 'Web Developer');


-- Find employees who are not in the 'HR' or 'Finance' departments.
SELECT * fROM employees WHERE Department NOT IN ('Finance', 'HR', 'IT');


-- Find employees whose phone number starts with '1'.
SELECT * FROM employees WHERE PhoneNumber LIKE '6%';


-- Find employees whose first name has exactly 5 characters.

SELECT * FROM employees WHERE firstname LIKE '_____';


-- Find employees whose job title is 'Analyst' and salary is greater than 50,000.

SELECT JobTitle, salary FROM employees WHERE JobTitle = 'Data Analyst' AND salary > 50000;

-- Find employees whose first name starts with 'A' and last name ends with 'N'.

SELECT * FROM employees WHERE firstname LIKE 'A%' AND lastname LIKE '%N';
SELECT * FROM employees WHERE firstname LIKE 'R%' AND lastname LIKE '%H';

-- Find employees whose phone number is not provided (NULL).
SELECT * FROM employees WHERE PhoneNumber IS NULL;

SELECT * FROM Employees WHERE Salary = 75000;
SELECT firstname, lastname, Department, salary, JobTitle FROM employees WHERE salary >= 60000;
SELECT firstname, lastname, Department, salary, JobTitle FROM employees WHERE salary > 60000;

SELECT firstname, lastname,  salary, Department, JobTitle FROM employees WHERE salary > 60000 OR Salary < 45000;

