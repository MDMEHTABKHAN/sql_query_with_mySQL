SELECT EmployeeID, FirstName, LastName, Salary,
    CASE 
        WHEN Salary < 30000 THEN 'Low'
        WHEN Salary BETWEEN 30000 AND 70000 THEN 'Medium'
        ELSE 'High'
    END AS SalaryCategory
FROM Employees;


SELECT EmployeeID,  Firstname, LastName, JobTitle, Salary,
    CASE
        WHEN Salary > 90000 THEN 'High_Salary'
        WHEN Salary BETWEEN  50000 AND 80000 THEN 'Medium_Salary'
        ELSE 'Low_Salary'
    END AS Salary_Category
FROM employees;    


SELECT EmployeeID, FirstName, LastName, HireDate, JobTitle, Department,
    CASE 
        WHEN HireDate <= DATE_SUB(CURDATE(), INTERVAL 10 YEAR) THEN 'Senior'
        WHEN HireDate BETWEEN DATE_SUB(CURDATE(), INTERVAL 5 YEAR) AND DATE_SUB(CURDATE(), INTERVAL 10 YEAR) THEN 'Mid-Level'
        ELSE 'Junior'
    END AS ExperienceLevel
FROM Employees;


-- Assign Bonus Percentage Based on Job Title

SELECT EmployeeID, FirstName, LastName, JobTitle, Salary,
    CASE JobTitle
        WHEN 'Software Engineer' THEN Salary * 0.10
        WHEN 'Data Analyst' THEN Salary * 0.08
        WHEN 'Web Developer' THEN Salary * 0.05
        ELSE Salary * 0.03
    END AS BonusAmount
FROM Employees;


SELECT EmployeeID, FirstName, LastName, JobTitle, Salary, department,
    CASE department
        WHEN 'IT' THEN Salary * 0.10
        WHEN 'HR' THEN Salary * 0.08
        WHEN 'Marketing' THEN Salary * 0.05
        ELSE Salary * 0.03
    END AS BonusAmount
FROM Employees;



SELECT * FROM employees;