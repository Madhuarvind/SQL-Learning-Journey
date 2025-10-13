-- Day-5

	CREATE TABLE Departments (
		dept_id INT PRIMARY KEY,
		dept_name VARCHAR(100)
	);

	ALTER TABLE Employees
	ADD dept_id INT;

	INSERT INTO Departments (dept_id, dept_name) VALUES
	(1, 'Engineering'),
	(2, 'Marketing'),
	(3, 'Finance');

	UPDATE Employees SET dept_id = 1 WHERE emp_id = 1; -- Jagan → Engineering
	UPDATE Employees SET dept_id = 2 WHERE emp_id = 2; -- Praveen → Marketing

/* Write a SQL query to display employee names and their department names using an 
   INNER JOIN between the Employees and Departments tables. */

	SELECT 
		e.employee_name,
		d.dept_name
	FROM Employees e
	INNER JOIN Departments d
	ON e.dept_id=d.dept_id;

/* Write a SQL query to display all employees along with their 
   department names, even if some employees are not assigned to any department, using a LEFT JOIN. */

	SELECT 
		e.emp_id,
		e.employee_name,
		e.salary,
		d.dept_id
	FROM Employees e
	LEFT JOIN Departments d
	ON e.dept_id=d.dept_id;

/* Write a SQL query to display all departments and the employees in them, 
   including departments that have no employees, using a RIGHT JOIN. */

	SELECT 
		e.emp_id,
		e.employee_name,
		e.salary,
		d.dept_id
	FROM Employees e
	RIGHT JOIN Departments d
	ON e.dept_id=d.dept_id;

-- Write a SQL query to combine the results of two tables OldEmployees and NewEmployees using the UNION operator.

-- 🧱 Step 1: Create OldEmployees Table
	CREATE TABLE OldEmployees (
		emp_id INT PRIMARY KEY,
		employee_name VARCHAR(100),
		salary INT,
		email VARCHAR(100)
	);

-- 🧱 Step 2: Create NewEmployees Table
	CREATE TABLE NewEmployees (
		emp_id INT PRIMARY KEY,
		employee_name VARCHAR(100),
		salary INT,
		email VARCHAR(100)
	);

-- 📥 Optional: Insert Sample Data
-- OldEmployees
	INSERT INTO OldEmployees (emp_id, employee_name, salary, email) VALUES
	(1, 'Jagan', 75000, NULL),
	(2, 'Praveen', 60000, NULL);

-- NewEmployees
	INSERT INTO NewEmployees (emp_id, employee_name, salary, email) VALUES
	(3, 'Karthik', 80000, 'karthik@example.com'),
	(4, 'Divya', 72000, 'divya@example.com');


-- 🔗 Combine with UNION
	SELECT * FROM OldEmployees
	UNION 
	SELECT * FROM NewEmployees;

/* Write a SQL query to display employees who are not assigned to any department 
   using a LEFT JOIN with a WHERE condition checking for NULL. */

   	SELECT 
		e.emp_id,
		e.employee_name,
		e.salary,
		d.dept_id
	FROM Employees e
	LEFT JOIN Departments d
	ON e.dept_id=d.dept_id
	WHERE d.dept_id IS NULL;

	
