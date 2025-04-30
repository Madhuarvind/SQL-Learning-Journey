# SQL Practice Project - Customer and Orders Analysis

This project demonstrates various SQL operations on a simple **Customers** and **Orders** database. It includes table creation, data insertion, and a variety of SQL queries using **JOINs**, **GROUP BY**, **HAVING**, and **aggregation functions** to explore relationships and insights between customers and their orders.

---

## 📁 Database Structure

### 1. `Customers` Table

| Column       | Type        | Description             |
|--------------|-------------|-------------------------|
| customer_id  | INT         | Primary key             |
| name         | VARCHAR(50) | Name of the customer    |
| city         | VARCHAR(50) | City of residence       |

### 2. `Orders` Table

| Column       | Type        | Description             |
|--------------|-------------|-------------------------|
| order_id     | INT         | Primary key             |
| customer_id  | INT         | Foreign key to Customers|
| product      | VARCHAR(50) | Product name            |
| amount       | INT         | Order amount in dollars |

---

## 📦 Sample Data

-- Customers Table
INSERT INTO Customers (customer_id, name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'Diana', 'Houston'),
(5, 'Eve', 'Miami');

-- Orders Table
INSERT INTO Orders (order_id, customer_id, product, amount) VALUES
(101, 1, 'Laptop', 1200),
(102, 2, 'Phone', 800),
(103, 1, 'Mouse', 25),
(104, 5, 'Keyboard', 45),
(105, 6, 'Monitor', 300);



---

## 🔍 Query Descriptions

### INNER JOIN Queries (Only Matching Records)
- **List customers and their orders:** Customers who placed orders.
- **Total amount spent per customer**
- **Customers who ordered more than 1 product**
- **Customers who made at least one purchase > $500**
- **Customers who purchased both 'Laptop' and 'Mouse'** – _Note: Query needs correction to use `HAVING COUNT(DISTINCT product) = 2`._

### LEFT JOIN Queries (Include customers without orders)
- **All customers and their orders**
- **Customers with no orders**
- **Order count per customer**
- **Total amount spent per customer (including zero)**
- **First product ordered by each customer**
- **Customers from Miami with no orders**
- **Customers and their order count, with 0 for no orders**

### RIGHT JOIN Queries (Include orders with invalid customers)
- **All orders and corresponding customer names**
- **Orders with invalid customer IDs**
- **Order details with customer name or 'Unknown'**
- **Total amount spent by each customer including unmatched**
- **Customers who made more than one order**

---

## ⚠️ Notes

- Order `105` refers to a non-existent customer (`customer_id = 6`), used to demonstrate `RIGHT JOIN` and `COALESCE`.
- Some queries (e.g., customers who purchased both 'Laptop' and 'Mouse') should be rewritten with a subquery or conditional aggregation.

---

## ✅ Requirements

- A SQL environment (MySQL, SQL Server, PostgreSQL, etc.)
- Database: `PracticeDB`

---

## 🧠 Learning Objectives

- Understand different types of JOINs: INNER, LEFT, RIGHT
- Perform data aggregation and grouping
- Handle missing or unmatched data with `COALESCE`
- Apply filtering with `HAVING`, `WHERE`
- Identify relationships between datasets

---

## 📂 Usage

To run this project:

1. Create the tables using the provided `CREATE TABLE` statements.
2. Insert the sample data.
3. Execute each query and observe the output.
4. Modify queries to fit different scenarios or test JOIN logic.

---

## 👩‍💻 Author

This project was designed for hands-on practice with SQL JOINs and aggregation queries.  
You are encouraged to expand on this example by adding more tables, relationships, and advanced SQL operations.

---
