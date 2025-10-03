# Walmart Sales SQL Project (MySQL)

## 📖 Overview
This project analyzes a **Walmart Sales Dataset** using MySQL queries.  
It demonstrates **basic queries, filtering, aggregations, subqueries, date-time analysis, and advanced SQL functions** to extract meaningful business insights.

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
