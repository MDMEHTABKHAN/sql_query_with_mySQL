CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE employee1 (
    employee_id INT PRIMARY KEY auto_increment,
    firstname VARCHAR(60) NOT NULL,
    lastname VARCHAR(40) NOT NULL,
    department_id INT REFERENCES department(department_id)
);


DROP TABLE department;
DROP  TABLE employee1;

INSERT INTO department (department_id, department_name) VALUES
(1, 'HR'),(2, 'Finance'), (3, 'Engineering'), (4, 'Marketing'),
(5, 'Sales'), (6, 'IT'), (7, 'Support'), (8, 'Administration'),
(9, 'Production'), (10, 'Quality Assurance'), (11, 'Research & Development'),
(12, 'Operations'), (13, 'Customer Service'), (14, 'Purchasing'),
(15, 'Logistics'), (16, 'Legal'), (17, 'Public Relations'),
(18, 'Training'), (19, 'Project Management'), (20, 'Business Development'),
(21, 'Strategy'), (22, 'Compliance'), (23, 'Health & Safety'),
(24, 'Internal Audit'), (25, 'Risk Management'), (26, 'Facilities Management'),
(27, 'Environmental'), (28, 'Communications'), (29, 'Event Planning'),
(30, 'Data Analysis'), (31, 'Financial Planning'), (32, 'Recruitment'),
(33, 'Talent Management'), (34, 'Learning & Development'), (35, 'Employee Relations'),
(36, 'Compensation & Benefits'), (37, 'Labor Relations'), (38, 'Payroll'),
(39, 'Innovation'), (40, 'International Operations');




INSERT INTO employee1 (firstname, lastname, department_id) VALUES
('John', 'Doe', 1), ('Jane', 'Smith', 2), ('Alice', 'Johnson', 3), ('Bob', 'Brown', 4),
('Charlie', 'Davis', 5), ('Emily', 'Miller', 6), ('Frank', 'Wilson', 7), ('Grace', 'Moore', 8),
('Henry', 'Taylor', 9), ('Isabella', 'Anderson', 10), ('Jack', 'Thomas', 11), ('Kelly', 'Jackson', 12),
('Liam', 'White', 13), ('Mia', 'Harris', 14), ('Noah', 'Martin', 15), ('Olivia', 'Thompson', 16),
('Paul', 'Garcia', 17), ('Quinn', 'Martinez', 18), ('Rachel', 'Robinson', 19), ('Sam', 'Clark', 20),
('Tina', 'Rodriguez', 21), ('Uma', 'Lewis', 22), ('Victor', 'Lee', 23), ('Wendy', 'Walker', 24),
('Xander', 'Hall', 25), ('Yara', 'Allen', 26), ('Zack', 'Young', 27), ('Amanda', 'Hernandez', 28),
('Ben', 'King', 29), ('Clara', 'Wright', 30), ('Dan', 'Lopez', 31), ('Eva', 'Hill', 32),
('Fred', 'Scott', 33), ('Gina', 'Green', 34), ('Hank', 'Adams', 35), ('Ivy', 'Baker', 36),
('Jake', 'Gonzalez', 37), ('Kara', 'Nelson', 38), ('Leo', 'Carter', 39), ('Maya', 'Mitchell', 40);


SELECT * FROM employee1;
SELECT * FROM department;


-- INEER JOIN

SELECT * 
FROM employee1
INNER JOIN department
ON employee1.department_id = department.department_id;

SELECT e.employee_id, e.firstname, e.lastname, concat(firstname, ' ', lastname) AS full_name, d.department_id
FROM employee1 AS e
INNER JOIN department as d
ON e.department_id = d.department_id;



SELECT e.employee_id, e.firstname, d.department_id, d.department_name
FROM employee1 as e
INNER JOIN department as d
ON e.department_id = d.department_id;



SELECT e.employee_id, e.firstname, d.department_id, d.department_name
FROM employee1 as e
INNER JOIN department as d
ON e.department_id = d.department_id;


SELECT d.department_name, d.department_id, e.employee_id, e.lastname
FROM employee1 e
INNER JOIN department d
ON e.department_id = d.department_id;


-- LEFT JOIN(LEFT OUTER JOIN)

SELECT * FROM employee1 AS e
LEFT JOIN department AS d
ON e.department_id = d.department_id;

SELECT e.firstname, e.lastname, d.department_name, d.department_id
FROM employee1 AS e
LEFT JOIN department AS d
ON e.department_id = d.department_id;

SELECT d.department_name, d.department_id, e.employee_id,e.lastname
FROM employee1 as e
left join department as d
on e.department_id = d.department_id;



SELECT e.firstname, e.lastname, d.department_name
FROM employee1 AS e
LEFT JOIN department AS d
ON e.department_id = d.department_id
AND e.location = d.location;



-- RIGHT JOINS


SELECT * FROM employee1 AS e
RIGHT JOIN department AS d
ON e.department_id = d.department_id;

SELECT e.firstname, e.lastname, d.department_name, d.department_id
FROM employee1 AS e
RIGHT JOIN department AS d
ON e.department_id = d.department_id;

SELECT d.department_name, d.department_id, e.employee_id,e.lastname
FROM employee1 as e
RIGHT JOIN department as d
on e.department_id = d.department_id;

-- FULL JOIN

SELECT d.department_name, d.department_id, e.employee_id,e.lastname
FROM employee1 as e
LEFT JOIN department as d
on e.department_id = d.department_id
UNION
SELECT d.department_name, d.department_id, e.employee_id,e.lastname
FROM employee1 as e
RIGHT JOIN department as d
on e.department_id = d.department_id;

SELECT d.department_name, d.department_id, e.employee_id,e.lastname
FROM employee1 as e
RIGHT JOIN department as d
on e.department_id = d.department_id
UNION
SELECT d.department_name, d.department_id, e.employee_id,e.lastname
FROM employee1 as e
LEFT JOIN department as d
on e.department_id = d.department_id;

SELECT d.department_name, d.department_id, e.employee_id,e.lastname
FROM employee1 as e
RIGHT JOIN department as d
on e.department_id = d.department_id
UNION ALL
SELECT d.department_name, d.department_id, e.employee_id,e.lastname
FROM employee1 as e
LEFT JOIN department as d
on e.department_id = d.department_id;



-- CROSS JOIN
SELECT * FROM employee1
CROSS JOIN department;


SELECT e.employee_id, e.firstname, d.department_id, d.department_name
FROM employee1 e
CROSS JOIN department d;

-- SELF JOIN

SELECT e.employee_id, e.firstname, e.lastname, e.department_id
FROM employee1 as e
JOIN employee1 as e1
ON e.department_id = e1.department_id;


-- set 

--  union five unique value
SELECT * FROM employee1
UNION
SELECT * FROM employee1;


SELECT firstname, lastname, employee_id FROM employee1
UNION
SELECT firstname, lastname, employee_id FROM employee1;

-- UNION ALL (KEEPS DUPLICATE)
SELECT firstname, lastname, employee_id FROM employee1
UNION ALL
SELECT firstname, lastname, employee_id FROM employee1;





