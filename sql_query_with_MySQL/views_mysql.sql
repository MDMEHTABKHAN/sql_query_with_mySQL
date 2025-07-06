USE company;
CREATE TABLE departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
    emp_id INT  PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100) NOT NULL,
    salary NUMERIC(10, 2),
    dept_id INT REFERENCES departments(dept_id)
);

SELECT * FROM departments;

SELECT * FROM employees;


-- Insert data into departments
INSERT INTO departments (dept_name) VALUES
('HR'), ('Engineering'), ('Marketing'), ('Finance');

-- Insert data into employees
INSERT INTO employees (emp_name, salary, dept_id) VALUES
('Alice', 50000, 1),
('Bob', 75000, 2),
('Rahul', 60000, 2),
('Shyam', 65000, 3),
('Mehtab', 55000, 4);

--  Create a View
CREATE VIEW emp_view AS
SELECT emp_id, emp_name, salary
FROM employees;


--  Query the View
SELECT * FROM emp_view;

-- DROP VIEW
DROP VIEW emp_view;


SET SQL_SAFE_UPDATES = 0;
-- UPDATE emp_simple_view
UPDATE emp_view
SET salary = salary + 5000
WHERE emp_name = 'Alice';


CREATE VIEW emp_dept_view AS
SELECT 
    e.emp_id,
    e.emp_name,
    e.salary,
    d.dept_name
FROM employees e
JOIN departments d 
ON e.dept_id = d.dept_id;

SELECT * FROM emp_dept_view;

CREATE VIEW engineering_employees AS
SELECT 
    e.emp_id,
    e.emp_name,
    e.salary,
    d.dept_name
FROM employees e
JOIN departments d 
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'Engineering';

SELECT * FROM engineering_employees;

CREATE VIEW employees_sorted AS
SELECT 
    e.emp_id,
    e.emp_name,
    e.salary,
    d.dept_name
FROM employees e
JOIN departments d 
ON e.dept_id = d.dept_id
ORDER BY salary DESC;

SELECT * FROM employees_sorted;

CREATE VIEW top_3_salaries AS
SELECT emp_id, emp_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

SELECT * FROM top_3_salaries;


CREATE VIEW avg_salary_by_dept AS
SELECT 
    d.dept_name,
    AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d 
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

SELECT * FROM avg_salary_by_dept;

CREATE VIEW high_avg_salary_depts AS
SELECT 
    d.dept_name,
    AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING AVG(e.salary) > 60000;


SELECT * FROM high_avg_salary_depts;


CREATE VIEW dept_salary_report AS
SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS total_employees,
    SUM(e.salary) AS total_salary,
    AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.salary > 50000
GROUP BY d.dept_name
ORDER BY avg_salary DESC;


SELECT * FROM dept_salary_report;


DROP VIEW IF EXISTS 
    engineering_employees,
    employees_sorted,
    avg_salary_by_dept,
    high_avg_salary_depts,
    dept_salary_report;









DROP VIEW IF EXISTS 
    engineering_employees,
    all_employees_sorted,
    avg_salary_by_dept,
    high_avg_salary_depts,
    dept_salary_report;

