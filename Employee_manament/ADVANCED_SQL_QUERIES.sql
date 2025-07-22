-- CTE
SELECT * FROM department;
SELECT * FROM employee;
SELECT * FROM employee_project;
SELECT * FROM project;


-- WITH cte_name AS (
--     SELECT ...
-- )
-- SELECT * FROM cte_name;


WITH highest_sal AS (
      SELECT MAX(salary) AS max_sal FROM employee
)
SELECT first_name, last_name, department_id FROM employee
WHERE salary  = (SELECT max_sal FROM highest_sal);

WITH highest_sal AS (
      SELECT MAX(salary) AS max_sal FROM employee
)
SELECT first_name, last_name, department_id, salary FROM employee
WHERE salary  = (SELECT max_sal FROM highest_sal);



WITH avg_sal AS (
    SELECT AVG(salary) AS average_salary FROM employee
)
SELECT average_salary FROM avg_sal;


WITH avg_salary  AS (
       SELECT AVG(salary) AS avg_sal FROM employee
)
SELECT * FROM employee e
JOIN avg_salary a
WHERE e.salary >   a.avg_sal;  

WITH avg_salary (avg_sal)  AS (
       SELECT AVG(salary)  FROM employee
)
SELECT * FROM employee e
JOIN avg_salary a
WHERE e.salary >   a.avg_sal;  



WITH TotalHours AS (
    SELECT employee_id, SUM(hours_worked) AS total_hours
    FROM Employee_Project
    GROUP BY employee_id
)
SELECT employee_id, total_hours
FROM TotalHours
WHERE total_hours > 15;



WITH min_salary AS (
    SELECT MIN(salary) AS min_sal FROM employee
)

SELECT first_name, last_name, salary FROM employee
WHERE salary = (SELECT min_sal FROM min_salary);


WITH TotalHours AS (
    SELECT employee_id, SUM(hours_worked) AS total_hours
    FROM Employee_Project
    GROUP BY employee_id
)
SELECT e.first_name, e.last_name, th.total_hours
FROM TotalHours th
JOIN Employee e ON e.employee_id = th.employee_id;

WITH Dept_Avg_Salary AS (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM Employee
    GROUP BY department_id
)
SELECT d.department_name, das.avg_salary
FROM  Department d
JOIN Dept_Avg_Salary das ON d.department_id = das.department_id;



