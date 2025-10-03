# Walmart Sales SQL Project (MySQL)

## Project Summary 📖
This project analyzes Walmart’s retail sales data using SQL (MySQL) to uncover actionable insights about branches, products, customers, and sales trends over time. It demonstrates strong SQL skills and the ability to convert raw transactional data into meaningful business insights.

## Key Features & Components
- Import & clean raw sales transaction data
- Feature engineering: derive time_of_day, day_name, and month_name columns
- SQL queries for:
  - Branch-level performance
  - Product-line revenue & ranking
  - Customer segmentation (by gender, type)
  - Payment method analysis
  - Sales across time periods (hour, day, month)
- Insights & recommendations based on query results
- README with instructions and sample SQL scripts

## Technologies / Tools Used
- SQL / MySQL (or another relational DB)
- CSV / dataset import
- SQL scripting & queries
- Documentation

## Why It’s Valuable
- Shows ability to wrangle transactional data
- Demonstrates use of SQL for analytics (aggregations, joins, windowing)
- Converts raw data into actionable business insights
- Strong portfolio piece for data / analytics roles

## 🗂 Dataset Schema (sales table)

| Column Name     | Data Type    | Description |
|-----------------|-------------|-------------|
| Invoice_ID      | VARCHAR(20) | Unique transaction ID |
| Branch          | VARCHAR(5)  | Branch code (A, B, C) |
| City            | VARCHAR(20) | Branch city |
| Customer_type   | VARCHAR(15) | Member / Normal |
| Gender          | VARCHAR(10) | Customer gender |
| Product_line    | VARCHAR(50) | Product category |
| Unit_price      | DECIMAL(10,2) | Price per unit |
| Quantity        | INT         | Quantity purchased |
| Tax_5%          | DECIMAL(10,2) | VAT (5%) |
| Total           | DECIMAL(10,2) | Final billed amount |
| Date            | DATE        | Purchase date |
| Time            | TIME        | Purchase time |
| Payment         | VARCHAR(20) | Payment method |
| COGS            | DECIMAL(10,2) | Cost of goods sold |
| Gross_income    | DECIMAL(10,2) | Profit earned |
| Rating          | DECIMAL(3,1)  | Customer rating (out of 10) |

## 🎯 Objectives
- Analyze sales by **branch, city, and product lines**.  
- Understand **customer behavior** (gender, type, payment method).  
- Evaluate **revenue trends** over time.  
- Use **MySQL window functions** for ranking and cumulative sales.  

## 📑 SQL Queries
They are grouped into:  
1. Basic Queries  
2. Filtering & Conditions  
3. Aggregations & Group By  
4. Subqueries & Joins (self)  
5. Date & Time Functions  
6. Advanced Queries (RANK, Cumulative SUM, Pivot style)  

---
