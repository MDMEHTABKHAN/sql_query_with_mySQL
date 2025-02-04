     /* Basic Sorting Questions: */

-- Retrieve all employees sorted by their FirstName in ascending order.
SELECT * FROM employees ORDER BY firstname;
SELECT * FROM employees ORDER BY firstname ASC;

-- Retrieve all employees sorted by their LastName in descending order.
SELECT * FROM employees ORDER BY lastname DESC;

-- Retrieve all employees sorted by their HireDate in ascending order.
SELECT * FROM employees ORDER BY HireDate ASC;

-- Retrieve all employees sorted by their Salary in descending order.

SELECT * FROM employees ORDER BY salary DESC;

-- Retrieve all employees sorted by their Department in ascending order.

SELECT * FROM employees ORDER BY Department ASC;



             /* Sorting with Multiple Columns: 8/
          
-- Retrieve all employees sorted by Department in ascending order and then by LastName in ascending order.
SELECT * FROM employees ORDER BY Department ASC, LastName ASC;

-- Retrieve all employees sorted by JobTitle in ascending order and then by Salary in descending order.
SELECT * FROM employees ORDER BY JobTitle ASC, Salary DESC;

-- Retrieve all employees sorted by HireDate in descending order and then by FirstName in ascending order.

SELECT * FROM employees ORDER BY HireDate DESC, FirstName ASC;

-- Retrieve all employees sorted by Department in ascending order and then by HireDate in descending order.

SELECT * FROM employees ORDER BY Department ASC, HireDate DESC;

-- Retrieve all employees sorted by Salary in descending order and then by LastName in ascending order.

SELECT * FROM employees ORDER BY Salary DESC, LastName ASC;




      /* Sorting with Conditions: */
-- Retrieve all employees in the "Sales" department sorted by Salary in descending order.

SELECT * FROM employees WHERE Department = 'Sales' ORDER BY salary DESC;

-- Retrieve all employees with a Salary greater than 50000, sorted by LastName in ascending order.

SELECT * FROM employees
WHERE salary > 50000
ORDER BY lastname ASC;

-- Retrieve all employees in the "IT" department sorted by FirstName in ascending order.
SELECT * FROM employees
WHERE Department = 'IT'
ORDER BY firstname ASC;

-- Retrieve all employees with the JobTitle of "Manager", sorted by HireDate in descending order.

SELECT * FROM employees
WHERE JobTitle = 'Web DEveloper'
ORDER BY HireDate DESC;

      /* Sorting with Aggregations: */
-- Retrieve the average Salary for each Department, sorted by the average salary in descending order.
SELECT Department, AVG(salary) AS AVG_salary FROM employees
GROUP BY Department
ORDER BY AVG_salary DESC;


-- Retrieve the total number of employees in each Department, sorted by the count in descending order.

SELECT Department, COUNT(*) AS Total_emp
FROM employees
GROUP BY Department
ORDER BY Total_emp DESC;

-- Retrieve the highest Salary in each Department, sorted by the highest salary in descending order.
SELECT Department, MAX(salary) AS MAX_SALARY
FROM employees
GROUP BY Department
ORDER BY MAX_SALARY DESC;

-- Retrieve the earliest HireDate in each Department, sorted by the hire date in ascending order.

SELECT Department, MIN(HireDate) AS EarliestHireDate 
FROM employees 
GROUP BY Department 
ORDER BY EarliestHireDate ASC;

-- Retrieve the latest HireDate in each Department, sorted by the hire date in descending order.
SELECT Department, MAX(Hiredate) AS latest_HireDate
FROM employees
GROUP BY Department
ORDER BY latest_HireDate;


-- Retrieve all employees sorted by the length of their FirstName in ascending order.
SELECT * FROM empLoyees ORDER BY LENGTH(firstname) ASC;
SELECT * FROM empLoyees ORDER BY LENGTH(firstname) DESC;

-- Retrieve all employees sorted by the length of their LastName in descending order.
SELECT * FROM employees ORDER BY LENGTH(lastname) DESC;

-- Retrieve all employees sorted by the year of their HireDate in ascending order.
SELECT * FROM employees ORDER BY YEAR(HireDate) ASC;

-- Retrieve all employees sorted by the month of their HireDate in ascending order.
SELECT * FROM employees ORDER BY MONTH(HireDate) ASC;

-- Retrieve all employees sorted by the day of their HireDate in ascending order.
SELECT * FROM employees ORDER BY DAY(HireDate) ASC;
