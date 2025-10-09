-- Day-3

-- Write a SQL query to display the number of employees in each department using the GROUP BY clause.

	SELECT COUNT(*) AS count_emp_department
	FROM Employees
	GROUP BY department;

-- Write a SQL query to display employee names whose names start with the letter 'A' using the LIKE operator.

	SELECT * 
	FROM Employees
	WHERE emp_name like 'A%';

-- Write a SQL query to select employee details from two tables Employees and Departments using an INNER JOIN on the department column.

	SELECT 
		e.emp_id,
		e.emp_name,
		e.salary,
		d.DepartmentID,
		d.DepartmentName
	FROM 
		Employees e
	INNER JOIN 
		Departments d
	ON 
		e.department = d.DepartmentName;

-- Write a SQL query to find the maximum salary from the Employees table.

	SELECT MAX(salary) AS max_salary
	FROM Employees;

-- Write a SQL query to display all employees who do not belong to the HR or Finance departments using the NOT IN operator.

	SELECT * 
	FROM Employees
	WHERE department NOT IN ('HR','Finance');
