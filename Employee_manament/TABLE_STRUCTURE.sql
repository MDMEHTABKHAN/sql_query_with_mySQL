CREATE DATABASE IF NOT EXISTS Employee_management;

USE Employee_management;

DROP DATABASE IF EXISTS Employee_management;

SHOW DATABASES;

CREATE TABLE Department (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    salary DECIMAL(10, 2),
    hire_date DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

CREATE TABLE Project (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

CREATE TABLE Employee_Project (
    emp_proj_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    project_id INT,
    hours_worked INT,
    role VARCHAR(50),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (project_id) REFERENCES Project(project_id)
);



INSERT INTO Department (department_name, location)
VALUES
('Human Resources', 'Mumbai'),
('Finance', 'Delhi'),
('Engineering', 'Bengaluru'),
('Marketing', 'Hyderabad'),
('IT Support', 'Pune'),
('Sales', 'Kolkata');


INSERT INTO Employee (first_name, last_name, email, salary, hire_date, department_id)
VALUES
('Rahul', 'Sharma', 'rahul.sharma@tcs.com', 70000, '2021-03-15', 3),
('Priya', 'Verma', 'priya.verma@infosys.com', 80000, '2020-07-10', 3),
('Amit', 'Kumar', 'amit.kumar@wipro.com', 50000, '2022-01-05', 1),
('Neha', 'Singh', 'neha.singh@hcl.com', 55000, '2019-11-25', 2),
('Ravi', 'Patel', 'ravi.patel@zoho.com', 60000, '2021-06-30', 4),
('Anjali', 'Mehta', 'anjali.mehta@techmahindra.com', 65000, '2020-04-20', 2),
('Suresh', 'Nair', 'suresh.nair@tcs.com', 72000, '2021-09-10', 3),
('Sneha', 'Reddy', 'sneha.reddy@hcl.com', 50000, '2022-02-18', 5),
('Manish', 'Yadav', 'manish.yadav@infosys.com', 52000, '2020-12-05', 1),
('Deepa', 'Mishra', 'deepa.mishra@zoho.com', 58000, '2023-01-20', 1),
('Vinay', 'Rao', 'vinay.rao@techmahindra.com', 49000, '2022-03-15', 5),
('Divya', 'Saxena', 'divya.saxena@hcl.com', 53000, '2020-08-01', 5),
('Karan', 'Joshi', 'karan.joshi@tcs.com', 85000, '2021-10-30', 3),
('Ritika', 'Kapoor', 'ritika.kapoor@wipro.com', 57000, '2022-07-25', 4),
('Vikram', 'Pandey', 'vikram.pandey@infosys.com', 61000, '2021-05-18', 2),
('Pooja', 'Gupta', 'pooja.gupta@zoho.com', 56000, '2019-09-15', 4),
('Arjun', 'Rana', 'arjun.rana@tcs.com', 68000, '2023-03-10', 3),
('Komal', 'Chawla', 'komal.chawla@hcl.com', 62000, '2020-06-08', 1),
('Mohit', 'Desai', 'mohit.desai@techmahindra.com', 75000, '2018-12-12', 6),
('Isha', 'Malhotra', 'isha.malhotra@zoho.com', 58000, '2021-08-22', 6),
('Rohan', 'Iyer', 'rohan.iyer@tcs.com', 54000, '2023-04-05', 5),
('Swati', 'Dubey', 'swati.dubey@wipro.com', 59000, '2022-06-12', 4),
('Rajeev', 'Ghosh', 'rajeev.ghosh@hcl.com', 62000, '2021-01-14', 3),
('Nikita', 'Aggarwal', 'nikita.aggarwal@infosys.com', 48000, '2023-05-01', 1),
('Alok', 'Chatterjee', 'alok.chatterjee@wipro.com', 69000, '2022-09-30', 2);


INSERT INTO Project (project_name, start_date, end_date, department_id) 
VALUES
('Employee Wellness App', '2022-01-01', '2022-12-31', 1),
('GST Compliance System', '2023-02-15', '2023-11-30', 2),
('Digital India Portal', '2023-03-01', '2024-01-15', 3),
('Swachh Bharat Campaign', '2022-05-01', '2023-04-30', 4),
('Online Support Ticketing', '2023-06-01', '2023-12-01', 5),
('Retail CRM Solution', '2022-07-10', '2023-06-10', 6),
('Startup India Platform', '2023-08-01', '2024-03-01', 3),
('Cyber Security Check', '2023-03-20', '2023-09-20', 5),
('Aadhaar KYC Integration', '2022-09-01', '2023-08-31', 4),
('Smart Sales Dashboard', '2023-01-15', '2023-11-15', 6),
('Internal HRMS', '2021-10-01', '2022-10-01', 1),
('Tax Filing Portal', '2022-12-01', '2023-09-01', 2);


INSERT INTO Employee_Project (employee_id, project_id, hours_worked, role) VALUES
(1, 3, 120, 'Backend Dev'),
(2, 3, 140, 'Lead Dev'),
(3, 1, 100, 'HR Coordinator'),
(4, 2, 110, 'CA Analyst'),
(5, 4, 90, 'Social Media Exec'),
(6, 2, 130, 'Tax Specialist'),
(7, 3, 120, 'API Developer'),
(8, 5, 100, 'Helpdesk'),
(9, 1, 95, 'HR Intern'),
(10, 1, 100, 'HR Generalist'),
(11, 5, 110, 'Tech Support'),
(12, 5, 115, 'IT Support'),
(13, 3, 140, 'Full Stack Dev'),
(14, 4, 100, 'Campaign Lead'),
(15, 2, 105, 'Financial Analyst'),
(16, 4, 90, 'Marketing Exec'),
(17, 3, 100, 'UI Developer'),
(18, 1, 85, 'HR Head'),
(19, 6, 125, 'Sales Manager'),
(20, 6, 135, 'Sales Exec'),
(21, 5, 115, 'Support Agent'),
(22, 4, 95, 'Copywriter'),
(23, 3, 130, 'QA Engineer'),
(24, 2, 120, 'Auditor'),
(25, 2, 110, 'Finance Manager'),
(1, 7, 90, 'React Dev'),
(2, 7, 80, 'Node Dev'),
(3, 11, 95, 'HR Tech'),
(5, 9, 110, 'PR Manager'),
(6, 12, 115, 'Tax Consultant');

