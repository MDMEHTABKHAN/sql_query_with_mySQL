SELECT * FROM department;
SELECT * FROM employee;
SELECT * FROM employee_project;
SELECT * FROM project;


-- *** INDEX ***

-- SHOW INDEX
SHOW INDEXES FROM employee;
SHOW INDEXES FROM employee_project;
SHOW INDEXES FROM project;


-- HOW TO CREATE INDEEX
--  SINGLE COLUMN INDEX
CREATE INDEX email_index ON employee (email);

SHOW INDEXES FROM employee;

-- MULTIPLE COLUMN INDEX
CREATE INDEX first_last_name_index
ON employee(first_name, last_name);

SHOW INDEXES FROM employee;

-- DROP INDEX
DROP INDEX first_last_name_index ON employee; 
DROP INDEX email_index ON employee;

SHOW INDEXES FROM employee;



-- VIEW 

-- CREATE VIEW VIEW_NAME AS
-- SELECT COLUMN1, COLUMN2,
-- FROM TABLE
-- WHERE CONDITION;

-- CREATE A VIEW
CREATE VIEW employee_department AS
SELECT e.employee_id, e.first_name, e.last_name, d.department_name
FROM employee AS e
JOIN department AS d
ON e.employee_id = d.department_id;

-- USE VIEW
SELECT * FROM employee_department;

-- DROP VIEW
DROP VIEW employee_department;

CREATE VIEW emp_detail AS 
SELECT employee_id, first_name, last_name, hire_date, salary
FROM employee;

SELECT * FROM emp_detail;



CREATE VIEW view_high_salary_employees AS
SELECT employee_id, first_name, last_name, salary
FROM Employee
WHERE salary > 65000;

SELECT * FROM view_high_salary_employees;


CREATE VIEW view_project_assignment AS
SELECT e.first_name, e.last_name, p.project_name, ep.role
FROM Employee e
JOIN Employee_Project ep 
ON e.employee_id = ep.employee_id
JOIN Project p
ON ep.project_id = p.project_id;

SELECT *  FROM view_project_assignment;


CREATE VIEW view_avg_salary_by_department AS
SELECT d.department_name, AVG(e.salary) AS average_salary
FROM Employee e
JOIN Department d ON e.department_id = d.department_id
GROUP BY d.department_name;

SELECT * FROM view_avg_salary_by_department;



CREATE VIEW view_it_support_employees AS
SELECT employee_id, first_name, last_name, email
FROM Employee
WHERE department_id = 5;

SELECT * FROM view_it_support_employees;


--  CREATE VIEW
CREATE VIEW view_project_hours AS
SELECT p.project_name, SUM(ep.hours_worked) AS total_hours
FROM Project p
JOIN Employee_Project ep ON p.project_id = ep.project_id
GROUP BY p.project_name;

-- USE VIEW
SELECT * FROM view_project_hours;

-- DROP VIEW
DROP VIEW  view_project_hours;


-- CREATE VIEW 
CREATE VIEW employee_info AS
SELECT first_name, last_name, department_id, salary
FROM employee;

SELECT * FROM employee_info;

-- UPDATE VIEW 
CREATE OR REPLACE VIEW employee_info  AS
SELECT first_name, last_name, department_id, salary
FROM employee WHERE salary BETWEEN 65000 AND 75000;


-- STORED PROCEDURES

-- CREATE A PROCEDURE WITH NO PARAMETERS 
DELIMITER //

CREATE PROCEDURE GetAllEmployee()
BEGIN
     SELECT * FROM employee;
END //

DELIMITER ;

-- CALL THE PROCEDURES
CALL GetAllEmployee();

-- DROP THE PROCEDURE 
DROP PROCEDURE IF EXISTS GetAllEmployee;



DELIMITER //

CREATE PROCEDURE GetDepartmentName(IN depT VARCHAR(100))
BEGIN 
     SELECT * FROM department WHERE department_name = dept;
END //

DELIMITER ;    

call GetDepartmentName('Human Resources');

DELIMITER //

CREATE PROCEDURE GetAllDepartmentId (IN id INT)
BEGIN
     SELECT * FROM department WHERE department_id = id;
END //

DELIMITER ;     

CALL GetAllDepartmentId(2);

CALL GetAllDepartmentId(4);

CALL GetAllDepartmentId(5


DELIMITER //

CREATE PROCEDURE GetDepartmentsInRange(IN start_id INT, IN end_id INT)
BEGIN
    SELECT * FROM department
    WHERE department_id BETWEEN start_id AND end_id;
END //

DELIMITER ;

CALL GetDepartmentsInRange(2, 5);

CALL GetDepartmentsInRange(2, 20);

