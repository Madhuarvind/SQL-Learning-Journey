# Write your MySQL query statement below
SELECT 
    e.name as Employee
FROM Employee m INNER JOIN Employee e
ON e.managerId=m.id
WHERE e.salary>m.salary;