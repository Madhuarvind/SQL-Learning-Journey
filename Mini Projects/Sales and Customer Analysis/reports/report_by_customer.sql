-- report_by_customer.sql
USE PracticeDB;
GO

-- Sales Report by Customer
SELECT c.customer_name, SUM(s.amount) AS total_sales
FROM Customer c
INNER JOIN Sales s
ON c.customer_id = s.customer_id
GROUP BY c.customer_name
ORDER BY total_sales DESC;
GO
