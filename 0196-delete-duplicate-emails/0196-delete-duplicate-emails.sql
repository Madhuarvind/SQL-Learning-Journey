# Write your MySQL query statement below
DELETE p2 FROM Person p1 
JOIN Person p2 
ON p1.email = p2.email AND p1.id < p2.id;