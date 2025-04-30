-- Sales without Customer Information (e.g., if some sales are missing customer data)
USE PracticeDB;

SELECT c.customer_name, s.sale_date, s.amount
FROM Customer c
RIGHT JOIN Sales s
ON c.customer_id = s.customer_id
WHERE c.customer_id IS NULL;
