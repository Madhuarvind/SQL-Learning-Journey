-- Create the table
CREATE TABLE SalesData (
    id INT PRIMARY KEY,
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10, 2),
    sales_date DATE
);

-- Insert 50 records
INSERT INTO SalesData (id, product, category, quantity, price, sales_date) VALUES
(1, 'Pen', 'Stationery', 10, 5.50, '2024-01-10'),
(2, 'Notebook', 'Stationery', 5, 30.00, '2024-01-12'),
(3, 'Mouse', 'Electronics', 2, 500.00, '2024-01-15'),
(4, 'Keyboard', 'Electronics', 1, 700.00, '2024-01-16'),
(5, 'Pen', 'Stationery', 20, 5.00, '2024-01-18'),
(6, 'Laptop', 'Electronics', 1, 45000.00, '2024-01-19'),
(7, 'Desk', 'Furniture', 3, 3000.00, '2024-01-20'),
(8, 'Chair', 'Furniture', 4, 1500.00, '2024-01-21'),
(9, 'Marker', 'Stationery', 10, 15.00, '2024-01-22'),
(10, 'Eraser', 'Stationery', 50, 2.00, '2024-01-23'),
(11, 'Phone', 'Electronics', 2, 25000.00, '2024-01-24'),
(12, 'Charger', 'Electronics', 5, 800.00, '2024-01-25'),
(13, 'Pen Stand', 'Stationery', 3, 50.00, '2024-01-26'),
(14, 'Whiteboard', 'Furniture', 1, 2000.00, '2024-01-27'),
(15, 'Notebook', 'Stationery', 7, 25.00, '2024-01-28'),
(16, 'Monitor', 'Electronics', 2, 12000.00, '2024-01-29'),
(17, 'Desk Lamp', 'Electronics', 3, 1200.00, '2024-01-30'),
(18, 'Pen', 'Stationery', 12, 6.00, '2024-02-01'),
(19, 'Mousepad', 'Electronics', 4, 300.00, '2024-02-02'),
(20, 'Chair', 'Furniture', 2, 1600.00, '2024-02-03'),
(21, 'File Folder', 'Stationery', 15, 20.00, '2024-02-04'),
(22, 'Sticky Notes', 'Stationery', 30, 10.00, '2024-02-05'),
(23, 'Keyboard', 'Electronics', 1, 750.00, '2024-02-06'),
(24, 'Printer', 'Electronics', 1, 8000.00, '2024-02-07'),
(25, 'Book Rack', 'Furniture', 1, 2500.00, '2024-02-08'),
(26, 'Pen', 'Stationery', 18, 5.25, '2024-02-09'),
(27, 'Monitor', 'Electronics', 1, 13000.00, '2024-02-10'),
(28, 'Mouse', 'Electronics', 3, 450.00, '2024-02-11'),
(29, 'Desk', 'Furniture', 2, 3100.00, '2024-02-12'),
(30, 'Notebook', 'Stationery', 6, 28.00, '2024-02-13'),
(31, 'Pen', 'Stationery', 25, 5.00, '2024-02-14'),
(32, 'Chair', 'Furniture', 1, 1400.00, '2024-02-15'),
(33, 'Phone', 'Electronics', 1, 27000.00, '2024-02-16'),
(34, 'Pen Stand', 'Stationery', 6, 60.00, '2024-02-17'),
(35, 'Whiteboard', 'Furniture', 1, 1900.00, '2024-02-18'),
(36, 'Keyboard', 'Electronics', 2, 680.00, '2024-02-19'),
(37, 'Notebook', 'Stationery', 4, 32.00, '2024-02-20'),
(38, 'Sticky Notes', 'Stationery', 40, 9.50, '2024-02-21'),
(39, 'Eraser', 'Stationery', 100, 1.80, '2024-02-22'),
(40, 'Desk Lamp', 'Electronics', 2, 1100.00, '2024-02-23'),
(41, 'Pen', 'Stationery', 30, 5.10, '2024-02-24'),
(42, 'Charger', 'Electronics', 4, 850.00, '2024-02-25'),
(43, 'Mouse', 'Electronics', 1, 470.00, '2024-02-26'),
(44, 'Book Rack', 'Furniture', 2, 2400.00, '2024-02-27'),
(45, 'Phone', 'Electronics', 1, 26000.00, '2024-02-28'),
(46, 'Desk', 'Furniture', 1, 3200.00, '2024-02-29'),
(47, 'Pen Stand', 'Stationery', 2, 55.00, '2024-03-01'),
(48, 'Notebook', 'Stationery', 10, 27.00, '2024-03-02'),
(49, 'Printer', 'Electronics', 1, 8500.00, '2024-03-03'),
(50, 'Whiteboard', 'Furniture', 1, 1950.00, '2024-03-04');


select * from salesData limit 20;

-- Total Revenue per Product
select product,
 sum(price * quantity) as total_revenue 
 from salesdata
 group by product;


 -- Average Revenue per Category (only above 500)
 select category,
  round(avg(price * quantity),2) as total_revenue 
 from salesdata
 group by category
 having avg(price * quantity )>500;
 

-- Filter Products with More Than 10 Units Sold
select product, sum(quantity) as total_sold
from salesdata
group by product
having sum(quantity)>10;


-- Show Product Names in Uppercase with Length
select upper(product),length(product)
from salesdata;


-- Round Off Prices & Calculate Rounded Revenue
select product, round(price) as rounded_price,
round(quantity* price) as rounded_revenue
from salesdata;


-- Ceiling and Floor of Each Price
select product, ceil(price) as ceil_price,
floor(price) as floor_price
from salesdata;


--  Get 3 Random Products
select product from salesdata
order by rand()
limit 3;


-- Modulus Practice – Find Even/Odd Quantity
select product , quantity,
   case when mod(quantity,2) =0 then "EVEN" else"ODD" end as Quantity_type
from salesdata;
 select * from salesdata;