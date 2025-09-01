# Write your MySQL query statement below
update Salary 
set sex=(CASE WHEN sex='m' then 'f' else 'm' end);