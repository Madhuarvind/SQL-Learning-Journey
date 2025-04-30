-- Sales Count by Region Report
USE PracticeDB;

SELECT c.region, COUNT(s.sale_id) AS total_sales
FROM Customer c
LEFT JOIN Sales s
ON c.customer_id = s.customer_id
GROUP BY c.region;
