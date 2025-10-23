-- Day-5

/* Write a SQL query to create a view named HighPaidEmployees 
   that displays all employees whose salary is greater than 60000. */

	CREATE VIEW HighPaidEmployees AS
	SELECT * 
	FROM Employees
	WHERE salary>60000;

/* Write a SQL query to create an index on the emp_name column 
   in the Employees table to speed up search operations. */

   CREATE INDEX 
   IX_Employees_employee_name ON
   Employees(employee_name);
   
/* Write a SQL query to begin a transaction, update an employee’s salary, and then commit the changes. */

	BEGIN TRANSACTION;

	UPDATE Employees
	SET salary = 70000
	WHERE emp_id=2;

	COMMIT;
	SELECT * FROM Employees;
/* Write a SQL query to update an employee’s salary within a transaction, 
   set a SAVEPOINT, and then rollback to that savepoint. */

    BEGIN TRANSACTION;
	
	SAVE TRANSACTION UpdateSalarySavePoint;

	UPDATE Employees
	SET salary = 75000
	WHERE emp_id=2;

	ROLLBACK TRANSACTION UpdateSalaryPoint;

/* Write a SQL query to delete all records from the Employees table inside
   a transaction and then use ROLLBACK to undo the deletion. */

	BEGIN TRANSACTION;

	DELETE FROM Employees;

	ROLLBACK;
