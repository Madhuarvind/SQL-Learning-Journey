-- Day-1

-- Write a SQL query to create a database named CollegeDB.

	CREATE DATABASE CollegeDB;

-- Write a SQL query to create a table named Students with columns student_id, name, department, and marks.

	USE CollegeDB;

	DROP TABLE IF EXISTS Students;

	CREATE TABLE Students(
		student_id INT,
		name VARCHAR(30),
		department VARCHAR(10),
		marks INT
	);

	SELECT * FROM Students;

-- Write a SQL query to insert four records into the Students table.

	INSERT INTO Students(student_id,name,department,marks)
	VALUES(101,'Rahul','AIML',96),
	(102,'Giri','AIML',98),
	(103,'Main','AIDS',95),
	(104,'Vicky','CSBS',87),
	(105,'Sachin','CSE',96);

-- Write a SQL query to update the marks of a student whose student_id is 3.

	UPDATE Students
	SET marks=85
	WHERE student_id=103;

-- Write a SQL query to select all students whose department is either CSE or IT using the IN operator. 

	SELECT * FROM Students
	WHERE department IN('CSE','IT');
