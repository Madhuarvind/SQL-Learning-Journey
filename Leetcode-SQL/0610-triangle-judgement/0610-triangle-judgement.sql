# Write your MySQL query statement below
select * ,
( case when (X+Y)>Z and (X+Z)>Y and (Y+Z)>X then "Yes" else "No" end) as triangle
from triangle