# Write your MySQL query statement below
select s.name
from SalesPerson s
where s.sales_id not in(
    select o.sales_id from Orders o INNER JOIN Company c
    on c.com_id=o.com_id
    where c.name='RED'
);
