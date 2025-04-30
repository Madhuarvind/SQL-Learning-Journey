# SQL Mini Challenges – Week 2

This repository contains SQL practice challenges focused on:

- Aggregation Functions (`SUM`, `AVG`, `ROUND`)
- Grouping and Filtering using `GROUP BY` and `HAVING`
- String Functions (`UPPER`, `LENGTH`)
- Numeric Functions (`ROUND`, `CEIL`, `FLOOR`, `MOD`)
- Conditional Expressions (`CASE`)
- Random Record Selection using `RAND()`

## Table Used

**SalesData**

| Column      | Type          | Description            |
|-------------|---------------|------------------------|
| id          | INT           | Primary key            |
| product     | VARCHAR(50)   | Product name           |
| category    | VARCHAR(50)   | Category type          |
| quantity    | INT           | Units sold             |
| price       | DECIMAL(10,2) | Price per unit         |
| sales_date  | DATE          | Date of sale           |

### Sample Queries Included
- Total revenue by product
- Average revenue by category
- Products sold more than 10 units
- Random product selections
- Even/Odd quantity check

---

Feel free to explore and modify the queries as part of your learning journey!
