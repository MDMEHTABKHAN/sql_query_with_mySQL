-- SUBQUERY 

SELECT MAX(salary) AS second_highest_salary
FROM employee
WHERE salary < (
    SELECT MAX(salary)
    FROM employee
);


SELECT location
FROM department
WHERE department_id = (
    SELECT department_id
    FROM department
    WHERE department_name = 'Human Resources'
);

SELECT first_name, salary 
FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);


SELECT first_name, last_name, salary 
FROM employee
WHERE salary = (SELECT MAX(salary) FROM employee);

SELECT first_name, last_name, salary 
FROM employee
WHERE salary >= (SELECT AVG(salary) FROM employee);

SELECT first_name, last_name, salary 
FROM employee
WHERE salary <= (SELECT AVG(salary) FROM employee);


-- IN
SELECT first_name, department_id
FROM employee
WHERE department_id IN (
    SELECT department_id FROM department WHERE location = 'Delhi'
);



SELECT first_name, salary, 
       (SELECT AVG(salary) FROM employee) AS avg_salary
FROM employee;