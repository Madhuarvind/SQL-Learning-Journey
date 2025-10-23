-- Day-6

-- 1. Create a new user named student_user with the password 'pass123'

	CREATE USER student_user WITH PASSWORD 'pass123';

-- 2. Grant SELECT and INSERT privileges on the Students table to student_user

	GRANT SELECT, INSERT ON Students TO student_user;

-- 3. Revoke the INSERT privilege on the Students table from student_user

	REVOKE INSERT ON Students FROM student_user;

-- 4. Display all privileges granted to the current user

-- For MySQL 
	SHOW GRANTS FOR CURRENT_USER;

-- 5. Delete (drop) the user student_user from the database

	DROP USER student_user;

-- 1. Create a new login and user named student_user with password 'pass123'

	CREATE LOGIN student_user WITH PASSWORD = 'pass123';
	CREATE USER student_user FOR LOGIN student_user;

-- 2. Grant SELECT and INSERT privileges on the Students table to student_user

	GRANT SELECT, INSERT ON Students TO student_user;

-- 3. Revoke the INSERT privilege on the Students table from student_user
	
	REVOKE INSERT ON Students FROM student_user;

-- 4. Display all privileges granted to the current user

	SELECT * 
	FROM fn_my_permissions(NULL, 'DATABASE');

-- 5. Delete (drop) the user student_user from the database

	DROP USER student_user;
	DROP LOGIN student_user;