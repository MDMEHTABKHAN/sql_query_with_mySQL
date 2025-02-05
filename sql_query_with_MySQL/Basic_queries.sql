DESC employees;

SHOW tables;

SHOW DATABASES;

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;



-- DROP DATABASE companyxyz;
-- DROP TABLE employees;

SELECT * FROM employees;

-- Add a Column:
ALTER TABLE employees
ADD COLUMN gmail VARCHAR(50);

ALTER TABLE employees
ADD COLUMN age INT;

ALTER TABLE employees
ADD COLUMN AGE INT default 18;

ALTER TABLE employees
ADD COLUMN AGE INT NOT NULL default 22;

-- Drop a Column:

ALTER TABLE employees
DROP COLUMN age;

ALTER TABLE employees
DROP COLUMN gmail;


-- rename

RENAME TABLE employees to emp1;
RENAME table emp1 to employees;

-- RENAME COLUMN
ALTER TABLE employees RENAME COLUMN lastname TO surname;
ALTER TABLE employees RENAME COLUMN surname TO lastname;

ALTER TABLE employees RENAME COLUMN Email TO GMAIL;
ALTER TABLE employees RENAME column GMAIL TO Email; 


-- Modify a Column:

ALTER TABLE employees
MODIFY COLUMN Email VARCHAR(120);

ALTER TABLE employees
MODIFY COLUMN Email VARCHAR(100);


-- UPDATES

UPDATE employees SET salary = 756000 WHERE EmployeeID = 22; 
UPDATE employees SET salary = 60000, department = 'HR' WHERE employee_id = 102;

UPDATE employees SET salary = salary + 5000;
UPDATE employees SET salary = salary - 5000;


-- DELETE

DELETE FROM employees
WHERE EmployeeID = 107;

DELETE FROM employees;

DELETE FROM employees WHERE Department = 'Sales';
DELETE FROM employees WHERE firstname = 'MEHTAB';
DELETE FROM employess WHERE lastname = 'KHAN' AND EmployeesID = 12;
DELETE FROM employees WHERE lastname = 'ROY' OR Department = 'Sales';