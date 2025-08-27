# Write your MySQL query statement below
SELECT 
    p.firstName,
    p.lastname,
    a.city,
    a.state
FROM Person p LEFT JOIN Address a
USING(personId);
