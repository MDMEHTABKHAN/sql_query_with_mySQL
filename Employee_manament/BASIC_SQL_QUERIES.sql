-- Turn off// ON autocommit

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;

UPDATE employee
SET last_name = 'Singh', email = 'rahul.singh@techmahindra.com'
WHERE employee_id = 1 AND department_id = 3;

SET AUTOCOMMIT = 0;
SET AUTOCOMMIT = 1;

START TRANSACTION;

DELETE FROM employee WHERE employee_id = 3;


CREATE TABLE employees_backup AS SELECT * FROM employee;

SELECT * FROM employee; 

-- UNDO CHNAGES
ROLLBACK;

-- SAVE CHANGES
COMMIT;


SELECT * FROM Employee;

SELECT first_name, last_name FROM Employee;

SELECT email, salary FROM Employee;

SELECT DISTINCT department_id FROM Employee;

SELECT * FROM Project WHERE start_date >= '2023-01-01';

SELECT project_name AS 'Project', start_date AS 'Start' FROM Project;

SELECT salary, salary + 5000 AS new_salary FROM Employee;

SELECT employee_id, first_name, last_name, salary FROM Employee;

SELECT department_name FROM Department;

SELECT project_name, end_date FROM Project;

-- WHERE CLAUSE

SELECT * FROM Employee WHERE salary > 60000;

SELECT * FROM Employee WHERE department_id = 3;


SELECT * FROM Employee WHERE first_name = 'Rahul';

SELECT * FROM Employee WHERE hire_date BETWEEN '2021-01-01' AND '2023-01-01';

SELECT * FROM Employee WHERE salary <= 55000;

SELECT * FROM Employee WHERE department_id IN (2, 4, 6);


SELECT * FROM Employee WHERE salary BETWEEN 50000 AND 70000;


SELECT * FROM Employee WHERE first_name LIKE 'R%';

SELECT * FROM Employee WHERE NOT department_id = 1;

SELECT * FROM Project WHERE end_date IS NOT NULL;

SELECT * FROM employee WHERE email IS NULL;

-- LIMIT OFFSET

SELECT * FROM Employee LIMIT 5;

SELECT * FROM Project LIMIT 3;

SELECT * FROM Employee ORDER BY hire_date DESC LIMIT 10;

SELECT * FROM Employee LIMIT 5 OFFSET 5;

SELECT * FROM Employee ORDER BY salary DESC LIMIT 1;

SELECT * FROM Employee ORDER BY hire_date ASC LIMIT 3;

SELECT * FROM Employee LIMIT 10 OFFSET 10;

SELECT * FROM Project ORDER BY start_date DESC LIMIT 5;

SELECT * FROM Department LIMIT 2;

SELECT * FROM Employee ORDER BY salary ASC LIMIT 1;


-- ORDER BY 

SELECT * FROM Employee ORDER BY salary ASC;

SELECT * FROM Employee ORDER BY salary DESC;

SELECT * FROM Employee ORDER BY hire_date;

SELECT * FROM Employee ORDER BY department_id, salary DESC;

SELECT first_name, last_name, salary FROM Employee ORDER BY first_name, salary DESC;

SELECT * FROM Project ORDER BY end_date DESC;

SELECT * FROM Department ORDER BY location;

SELECT * FROM Employee ORDER BY salary DESC LIMIT 5;

SELECT * FROM Employee ORDER BY hire_date ASC LIMIT 3;

SELECT * FROM Employee ORDER BY department_id ASC;

-- OPERATORS

SELECT * FROM Employee WHERE salary > 60000;

SELECT * FROM Employee WHERE salary < 50000;

SELECT * FROM Employee WHERE department_id != 1;

SELECT * FROM Employee WHERE salary >= 65000;

SELECT * FROM Employee WHERE hire_date <= '2022-01-01';

SELECT * FROM Employee WHERE first_name = 'Neha' AND salary > 50000;

SELECT * FROM Employee WHERE department_id = 2 OR department_id = 4;

SELECT * FROM Employee WHERE salary BETWEEN 50000 AND 60000;

SELECT * FROM Employee WHERE first_name LIKE '%a';

SELECT * FROM Employee WHERE first_name LIKE 'a%';

SELECT * FROM Employee WHERE first_name LIKE '_m%';

SELECT * FROM Employee WHERE first_name LIKE '_____';

SELECT * FROM Project WHERE department_id IN (3, 5);

-- GROUP BY

SELECT department_id, COUNT(*) FROM Employee
GROUP BY department_id;

SELECT department_id, AVG(salary) FROM Employee 
GROUP BY department_id;

SELECT role, COUNT(*) FROM Employee_Project
GROUP BY role;

SELECT project_id, SUM(hours_worked) FROM Employee_Project
GROUP BY project_id;

SELECT department_id, MIN(salary) FROM Employee
GROUP BY department_id;

SELECT project_id, COUNT(employee_id) FROM Employee_Project 
GROUP BY project_id;

SELECT department_id, MAX(salary) FROM Employee 
GROUP BY department_id;

SELECT department_id, SUM(salary) FROM Employee 
GROUP BY department_id;

SELECT role, AVG(hours_worked) FROM Employee_Project 
GROUP BY role;

SELECT department_id, COUNT(*) FROM Employee 
GROUP BY department_id;

-- HAVING 

SELECT department_id, COUNT(*) AS emp_count FROM Employee
GROUP BY department_id
HAVING emp_count > 4;

SELECT role, AVG(hours_worked) AS avg_hours FROM
Employee_Project GROUP BY role
HAVING avg_hours > 100;

SELECT department_id, SUM(salary) AS total_salary FROM
Employee GROUP BY department_id
HAVING total_salary > 300000;

SELECT project_id, COUNT(*) AS emp_count FROM Employee_Project
GROUP BY project_id
HAVING emp_count >= 2;

SELECT department_id, AVG(salary) AS avg_sal FROM Employee
GROUP BY department_id
HAVING avg_sal < 60000;

SELECT role, COUNT(*) AS people FROM Employee_Project
GROUP BY role
HAVING people > 1;

SELECT department_id, COUNT(*) FROM Employee
GROUP BY department_id
HAVING COUNT(*) BETWEEN 3 AND 6;

SELECT department_id, MIN(salary) FROM Employee
GROUP BY department_id
HAVING MIN(salary) < 55000;

SELECT role, MAX(hours_worked) FROM Employee_Project
GROUP BY role 
HAVING MAX(hours_worked) > 120;

SELECT department_id, COUNT(*) FROM Employee
GROUP BY department_id
HAVING COUNT(*) <> 2;

-- AGGREGATE FUNCTION

SELECT COUNT(*) FROM Employee;

SELECT MAX(salary) FROM Employee;

SELECT MIN(salary) FROM Employee;

SELECT AVG(salary) FROM Employee;

SELECT SUM(salary) FROM Employee;

SELECT COUNT(DISTINCT department_id) FROM Employee;

SELECT COUNT(*) FROM Project WHERE start_date >= '2023-01-01';

SELECT AVG(hours_worked) FROM Employee_Project;

SELECT MAX(hours_worked) FROM Employee_Project;

SELECT MIN(start_date) FROM Project;

-- STRING AND DATE FUNCTION

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM Employee;

SELECT UPPER(first_name) FROM Employee;

SELECT LOWER(last_name) FROM Employee;

SELECT LENGTH(first_name) FROM Employee;

SELECT SUBSTRING(first_name, 1, 3) FROM Employee;

SELECT REPLACE(first_name, 'a', '@') FROM Employee;

SELECT YEAR(hire_date) FROM Employee;

SELECT MONTHNAME(hire_date) FROM Employee;

SELECT DATEDIFF(CURDATE(), hire_date) AS days_worked FROM Employee;

SELECT DAYNAME(hire_date) FROM Employee;

-- ALISA

SELECT first_name AS fname, last_name AS lname FROM Employee;

SELECT salary AS 'Monthly Salary' FROM Employee;

SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name' FROM Employee;

SELECT department_name AS Dept FROM Department;

SELECT role AS 'Job Role' FROM Employee_Project;

SELECT project_name AS 'Project Title' FROM Project;

SELECT AVG(salary) AS avg_salary FROM Employee;

SELECT COUNT(*) AS total_employees FROM Employee;

SELECT SUM(hours_worked) AS total_hours FROM Employee_Project;

SELECT email AS 'Official Email' FROM Employee;


-- JOINS
-- INNER JOIN

SELECT e.first_name, d.department_name 
FROM Employee e 
JOIN Department d 
ON e.department_id = d.department_id;

-- 2
SELECT e.first_name, p.project_name 
FROM Employee e
JOIN Employee_Project ep 
ON e.employee_id = ep.employee_id
JOIN Project p 
ON ep.project_id = p.project_id;

-- LEFT JOIN

SELECT e.first_name, p.project_name 
FROM Employee e
LEFT JOIN Employee_Project ep 
          ON e.employee_id = ep.employee_id
LEFT JOIN Project p 
         ON ep.project_id = p.project_id;


SELECT d.department_name, e.first_name 
FROM Department d 
LEFT JOIN Employee e 
         ON d.department_id = e.department_id;


-- RIGHT JOIN

SELECT p.project_name, e.first_name 
FROM Project p
RIGHT JOIN Employee_Project ep    
                ON p.project_id = ep.project_id
RIGHT JOIN Employee e 
                ON ep.employee_id = e.employee_id;
                
-- FULL JOINS

SELECT e.first_name, p.project_name 
FROM Employee e
LEFT JOIN Employee_Project ep
				   ON e.employee_id = ep.employee_id
LEFT JOIN Project p 
                   ON ep.project_id = p.project_id
UNION
SELECT e.first_name, p.project_name 
FROM Employee e
RIGHT JOIN Employee_Project ep 
                    ON e.employee_id = ep.employee_id
RIGHT JOIN Project p 
                    ON ep.project_id = p.project_id;
                    
                    
--  CROS JOINS

SELECT * FROM department CROSS JOIN employee;     
SELECT * FROM department, employee;            

SELECT e.employee_id, e.first_name, d.department_name
FROM 
    Employee e
CROSS JOIN 
    Department d;
    
    SELECT e.employee_id, e.first_name, d.department_name
FROM 
    Employee e, Department d;
    
-- SELF JOINS

SELECT e.first_name AS name, e1.first_name AS nama_1
FROM employee AS e
JOIN employee AS e1
on e.employee_id = e1.employee_id;
                    
SELECT *
FROM employee e1
JOIN employee e2
ON e1.employee_id = e2.employee_id;
				
