# Sales and Customer Analysis SQL Script

## Overview
This SQL script is designed for analyzing sales and customer data stored in a database called `PracticeDB`. It contains tasks such as creating tables, inserting data, and performing various SQL queries to analyze customer sales performance, including filtering by region, date range, and customer information.

## Structure of the Script

### 1. **Database Setup**
The script first creates two tables:
- **Customer**: Stores customer details (e.g., customer ID, name, region).
- **Sales**: Stores sales information (e.g., sale ID, customer ID, sale date, amount).

### 2. **Data Insertion**
Sample data is inserted into both tables to simulate a sales environment. This includes customer information and related sales transactions.

### 3. **SQL Queries**
The script includes 14 SQL queries designed to analyze the sales and customer data. The queries focus on:
- Customer information
- Sales transactions
- Regional performance
- Date-based performance
- Sales amounts
- Aggregated values like total sales, average sales, and counts

### SQL Queries Breakdown

1. **INNER JOIN**: Joins the `Customer` and `Sales` tables to retrieve customer names, regions, and corresponding sales amounts.
2. **Total Sales by Customer**: Groups by customer and calculates the total sales for each customer.
3. **Sales in a Specific Region**: Retrieves sales data for a particular region (e.g., 'North').
4. **Sales within a Date Range**: Filters sales between January 1, 2025, and January 31, 2025.
5. **LEFT JOIN**: Retrieves all customers, even if they haven't made any sales.
6. **RIGHT JOIN**: Retrieves all sales, even if no corresponding customer exists.
7. **Sales without Customer Information**: Retrieves sales without a matching customer.
8. **Total Sales by Region**: Groups sales by region and calculates total sales for each region.
9. **List Sales in February 2025**: Retrieves sales made during February 2025, including those without customer information.
10. **Sales Above $200**: Retrieves sales where the sale amount is greater than $200.
11. **Sales Performance by Customer**: Displays total sales for each customer.
12. **Sales Count by Region**: Counts the number of sales per region.
13. **Average Sale Amount by Region**: Calculates the average sale amount for each region.
14. **Sales in the 'East' Region**: Filters sales for customers in the "East" region, with additional details like sale date and amount.

## How to Use the Script

1. **Set up your database**: 
   Ensure that you have a SQL environment set up with a database named `PracticeDB` or modify the script to match your database name.
   
2. **Run the Script**:
   Execute the script using an SQL query tool such as MySQL Workbench, SQL Server Management Studio, or a similar interface for your database.

3. **Query Results**:
   After executing the queries, view the results to analyze customer and sales data. The results can help you identify high-performing customers, regions with the most sales, or patterns in sales over time.

## Dependencies

- SQL environment (MySQL, SQL Server, etc.)
- Basic understanding of SQL joins and aggregate functions

## Conclusion
This script provides a simple yet powerful way to analyze sales data and customer information. It helps in identifying patterns, trends, and performance metrics that are critical for business decision-making.
