-- sales_customer_analysis.sql
USE PracticeDB;

-- Create Customer Table
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    region VARCHAR(50)
);

-- Create Sales Table
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    sale_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- Insert Data into Customer Table
INSERT INTO Customer (customer_id, customer_name, region)
VALUES 
    (1, 'John Doe', 'North'),
    (2, 'Jane Smith', 'South'),
    (3, 'Sam Brown', 'East'),
    (4, 'Alice Johnson', 'West'),
    (5, 'Robert Lee', 'North'),
    (6, 'Emma Davis', 'South'),
    (7, 'James Wilson', 'East'),
    (8, 'Olivia Martinez', 'West'),
    (9, 'Daniel Clark', 'North'),
    (10, 'Sophia Hall', 'South'),
    (11, 'David Allen', 'East'),
    (12, 'Isabella Young', 'West');

-- Insert Data into Sales Table
INSERT INTO Sales (sale_id, customer_id, sale_date, amount)
VALUES 
    (1, 1, '2025-01-10', 120.50),
    (2, 2, '2025-01-12', 250.00),
    (3, 3, '2025-01-14', 300.75),
    (4, 4, '2025-01-15', 180.00),
    (5, 5, '2025-01-17', 50.25),
    (6, 6, '2025-01-18', 70.00),
    (7, 7, '2025-01-20', 350.00),
    (8, 8, '2025-01-22', 450.00),
    (9, 9, '2025-01-25', 220.75),
    (10, 10, '2025-01-28', 95.50),
    (11, 11, '2025-01-30', 500.00),
    (12, 12, '2025-02-02', 145.00),
    (13, 1, '2025-02-05', 75.50),
    (14, 2, '2025-02-06', 400.00),
    (15, 3, '2025-02-08', 180.00),
    (16, 4, '2025-02-10', 95.00),
    (17, 5, '2025-02-12', 120.00),
    (18, 6, '2025-02-15', 160.00),
    (19, 7, '2025-02-18', 225.00),
    (20, 8, '2025-02-20', 350.00),
    (21, 9, '2025-02-22', 180.00),
    (22, 10, '2025-02-25', 210.50),
    (23, 11, '2025-02-27', 380.00),
    (24, 12, '2025-02-28', 250.00);

-- 1. INNER JOIN: Customer and Sales
SELECT c.customer_name, c.region, s.amount
FROM Customer c
INNER JOIN Sales s
ON c.customer_id = s.customer_id;
GO

-- 2. Total Sales by Customer (SUM of amount)
SELECT c.customer_name, SUM(s.amount) AS total_sales
FROM Customer c
INNER JOIN Sales s
ON c.customer_id = s.customer_id
GROUP BY c.customer_name
ORDER BY total_sales DESC;
GO

-- 3. Sales in a Specific Region (North)
SELECT c.customer_name, s.sale_date, s.amount
FROM Customer c
INNER JOIN Sales s
ON c.customer_id = s.customer_id
WHERE c.region = 'North';
GO

-- 4. Sales within a Date Range (January 2025)
SELECT c.customer_name, s.sale_date, s.amount
FROM Customer c
INNER JOIN Sales s
ON c.customer_id = s.customer_id
WHERE s.sale_date BETWEEN '2025-01-01' AND '2025-01-31';
GO

-- 5. LEFT JOIN: Include All Customers, even without sales
SELECT c.customer_name, s.sale_date, s.amount
FROM Customer c
LEFT JOIN Sales s
ON c.customer_id = s.customer_id;
GO

-- 6. RIGHT JOIN: Include All Sales, even without a matching customer
SELECT c.customer_name, s.sale_date, s.amount
FROM Customer c
RIGHT JOIN Sales s
ON c.customer_id = s.customer_id;
GO

-- 7. Sales without Customer Information
SELECT s.sale_id, s.sale_date, s.amount, c.customer_name
FROM Sales s
RIGHT JOIN Customer c
ON c.customer_id = s.customer_id
WHERE s.customer_id IS NULL;
GO

-- 8. Total Sales by Region (Grouped by Region)
SELECT c.region, SUM(s.amount) AS total_sales
FROM Sales s
RIGHT JOIN Customer c
ON c.customer_id = s.customer_id
GROUP BY c.region;
GO

-- 9. List Sales that Took Place in February 2025, Including Sales Without Customers
SELECT s.sale_id, s.sale_date, s.amount, c.customer_name
FROM Sales s
RIGHT JOIN Customer c
ON c.customer_id = s.customer_id
WHERE s.sale_date BETWEEN '2025-02-01' AND '2025-02-28';
GO

-- 10. Customer Details for Sales Above $200
SELECT s.sale_id, s.sale_date, s.amount, c.customer_name
FROM Sales s
RIGHT JOIN Customer c
ON c.customer_id = s.customer_id
WHERE s.amount > 200;
GO

-- 11. Sales Performance by Customer
SELECT c.customer_name, SUM(s.amount) AS total_sales
FROM Sales s
RIGHT JOIN Customer c
ON c.customer_id = s.customer_id
GROUP BY c.customer_name;
GO

-- 12. Count of Sales Per Region (Including Sales Without Customer Info)
SELECT c.region, COUNT(s.sale_id) AS sales_count
FROM Sales s
RIGHT JOIN Customer c
ON c.customer_id = s.customer_id
GROUP BY c.region;
GO

-- 13. Average Sale Amount by Region (Including Sales Without Customer Info)
SELECT c.region, AVG(s.amount) AS average_sale
FROM Sales s
RIGHT JOIN Customer c
ON c.customer_id = s.customer_id
GROUP BY c.region;
GO

-- 14. Sales in a Specific Region (e.g., "East") with Additional Details
SELECT c.region, c.customer_name, s.sale_date, s.amount
FROM Sales s
RIGHT JOIN Customer c
ON c.customer_id = s.customer_id
WHERE c.region = 'East';
GO
