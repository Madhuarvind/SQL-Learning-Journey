-- Day-2

-- Write a SQL query to create a table named Employees with columns emp_id, emp_name, salary, and department.

    CREATE TABLE Employees(
    emp_id INT,
    emp_name VARCHAR(30),
    salary FLOAT,
    department VARCHAR(20)
    );

-- Write a SQL query to insert three employee records into the Employees table.

    INSERT INTO Employees(emp_id,emp_name,salary,department)
    VALUES(1,'Jagan',75000,'SDE'),
    (2,'Praveen',60000,'FSD'),
    (3,'Pranesh',45000,'DS');

-- Write a SQL query to display all employees whose salary is greater than 50000.

    SELECT * FROM Employees
    WHERE salary > 50000;

-- Write a SQL query to update the salary of the employee named 'Kumar' to 60000.

    UPDATE Employees
    SET salary=60000
    WHERE emp_name='Kumar';

-- Write a SQL query to create a new table HighSalary by selecting all employees from Employees whose salary is greater than 55000.

    SELECT * INTO HighSalary
    FROM Employees 
    WHERE salary > 5500;

    SELECT * FROM HighSalary;
