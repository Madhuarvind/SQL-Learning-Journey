-- Average Sale Amount by Region
USE PracticeDB;

SELECT c.region, AVG(s.amount) AS average_sale
FROM Customer c
INNER JOIN Sales s
ON c.customer_id = s.customer_id
GROUP BY c.region;
