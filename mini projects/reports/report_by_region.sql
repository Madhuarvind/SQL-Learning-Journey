-- report_by_region.sql
USE PracticeDB;
GO

-- Sales Report by Region
SELECT c.region, SUM(s.amount) AS total_sales
FROM Customer c
INNER JOIN Sales s
ON c.customer_id = s.customer_id
GROUP BY c.region
ORDER BY total_sales DESC;
GO
