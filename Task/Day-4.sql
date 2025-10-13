--Day-4

-- Write a SQL query to add a new column named email (datatype: VARCHAR(50)) to the Employees table.

	ALTER TABLE Employees
	ADD email VARCHAR(50);

	SELECT * FROM Employees;

-- Write a SQL query to rename the column emp_name to employee_name in the Employees table.
	
	--MYSQL
	ALTER TABLE Employees
	RENAME COLUMN  emp_name TO employee_name;

	--SQL SERVER
	EXEC sp_rename 'Employees.emp_name' , 'employee_name' , 'COLUMN';

-- Write a SQL query to delete all records from the Employees table where the salary is less than 40000.

	DELETE FROM Employees
	WHERE salary<40000;

-- Write a SQL query to add a primary key constraint on the column emp_id in the Employees table.

	ALTER TABLE Employees
	ALTER COLUMN emp_id INT NOT NULL;

	ALTER TABLE Employees
	ADD CONSTRAINT Pk_Emp_empid PRIMARY KEY (emp_id);

-- Write a SQL query to drop the column department from the Employees table.
	
	ALTER TABLE Employees
	DROP COLUMN department;
