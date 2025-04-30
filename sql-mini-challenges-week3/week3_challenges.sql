
 CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO Customers VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'Diana', 'Houston'),
(5, 'Eve', 'Miami');

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount INT
);

INSERT INTO Orders VALUES
(101, 1, 'Laptop', 1200),
(102, 2, 'Phone', 800),
(103, 1, 'Mouse', 25),
(104, 5, 'Keyboard', 45),
(105, 6, 'Monitor', 300);

select * from orders;
select * from customers;
-- List all customers and their orders (only if they placed an order).
select c.name ,o.product, o.amount
from customers c inner join orders o 
on c.customer_id=o.customer_id;

-- Find total amount spent by each customer.
select c.name ,sum(o.amount) as total_spent
from customers c
inner join orders o 
on c.customer_id=o.customer_id
group by c.name;

-- Find customers who ordered more than 1 product.
select c.name, count(o.customer_id)
from customers c
inner join orders o 
on c.customer_id=o.customer_id
group by c.name
having count(o.customer_id)>1;

-- Question: Find all customers who have made at least one purchase worth more than $500.
select c.name
from customers c
inner join orders o 
on c.customer_id=o.customer_id
where o.amount>500
group by c.name;

-- Show the names of customers who have purchased both 'Laptop' and 'Mouse'.
select c.name
from customers c
inner join orders o 
on c.customer_id=o.customer_id
where o.product = 'laptop' and  'Mouse'
group by c.name;

--  1. View all customers and their orders (even those who didn’t order anything):
select c.name,o.product, o.amount
from customers c left join 
orders o 
on c.customer_id = o.customer_id;

-- 2. Show customers who did not place any orders:
select c.name,c.customer_id
from  customers c  left join 
 orders o
on c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

--  3. Count number of orders per customer (including those with zero orders):
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

-- 4. Find total amount spent per customer (including those who spent nothing):
select c.name ,sum(o.amount) as total_revenue
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

-- 5. Display all customers and the first product they ordered (if any):
select c.name ,min(o.product) as first_product
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

-- 6. Identify customers from Miami who haven't ordered anything:
select c.name 
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
where city='Miami' and o.order_id is null;

--  7. Display a list of customers along with their order count. If the customer has no orders, show 0:
select c.name ,count(o.order_id) as order_count
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

USE PracticeDB;
select * from orders;
select * from customers;

-- 1. List all orders and include customer names (even if customer is missing).
select o.order_id,o.product,o.amount,c.name as customer_name
FROM Customers c
RIGHT JOIN Orders o
ON c.customer_id = o.customer_id
group by o.order_id;

-- 2. List orders that don’t have a valid customer (invalid customer_id).
select o.order_id,o.product
FROM Customers c
RIGHT JOIN Orders o
ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;

-- 3. Show order details with customer name or 'Unknown'.
select o.order_id,o.product,COALESCE(c.name,'unkown') AS customer_name
FROM Customers c
RIGHT JOIN Orders o
ON c.customer_id = o.customer_id;

-- 4. Calculate total amount spent by each customer (include unmatched).
select COALESCE(c.name,'unkown') AS customer_name , sum(o.amount) as total_spent
FROM Customers c
RIGHT JOIN Orders o
ON c.customer_id = o.customer_id
group by c.name;

-- 5. Find customers who made more than one order.
select c.name, count(order_id) as total_orders
FROM Customers c
RIGHT JOIN Orders o
ON c.customer_id = o.customer_id
group by c.name
having count(order_id)>1;
