
RENAME TABLE walmart.`walmart sales dashboard` TO walmart.sales;

-- 1. Basic Queries
SELECT * FROM walmart.`walmart sales dashboard`;
-- All columns
SELECT * FROM sales;

-- Invoice ID, Branch, City, and Total
SELECT Invoice_ID, Branch, City, Total FROM sales;

-- First 10 records
SELECT * FROM sales LIMIT 10;

-- Distinct Product line
SELECT DISTINCT Product_line FROM sales;

-- Distinct Payment methods
SELECT DISTINCT Payment FROM sales;

-- Count total transactions
SELECT COUNT(*) AS Total_Transactions FROM sales;

-- Count unique invoices
SELECT COUNT(DISTINCT Invoice_ID) AS Unique_Invoices FROM sales;

-- Min and Max Unit price
SELECT MIN(Unit_price) AS Min_Price, MAX(Unit_price) AS Max_Price FROM sales;

-- Average Quantity purchased
SELECT AVG(Quantity) AS Avg_Qty FROM sales;

-- Total sales across all branches
SELECT SUM(Total) AS Total_Sales FROM sales;


-- =============================
-- 2. Filtering & Conditions
-- =============================

-- Sales in Yangon
SELECT * FROM sales WHERE City = 'Yangon';

-- Female + Cash
SELECT * FROM sales WHERE Gender = 'Female' AND Payment = 'Cash';

-- Quantity > 5
SELECT * FROM sales WHERE Quantity > 5;

-- Total between 300 and 600
SELECT * FROM sales WHERE Total BETWEEN 300 AND 600;

-- Sales in March 2019
SELECT * FROM sales WHERE DATE_FORMAT(Date, '%Y-%m') = '2019-03';

-- Ewallet payments
SELECT * FROM sales WHERE Payment = 'Ewallet';

-- Health and beauty product line
SELECT * FROM sales WHERE Product_line = 'Health and beauty';

-- Rating >= 9
SELECT * FROM sales WHERE Rating >= 9;


-- =============================
-- 3. Aggregations & Group By
-- =============================

-- Transactions per Branch
SELECT Branch, COUNT(*) AS Transactions FROM sales GROUP BY Branch;

-- Avg Total per City
SELECT City, AVG(Total) AS Avg_Sales FROM sales GROUP BY City;

-- Total sales per Payment method
SELECT Payment, SUM(Total) AS Total_Sales FROM sales GROUP BY Payment;

-- Highest Unit price in each Product line
SELECT Product_line, MAX(Unit_price) AS Max_UnitPrice
FROM sales GROUP BY Product_line;

-- Avg Rating by Customer type
SELECT Customer_type, AVG(Rating) AS Avg_Rating
FROM sales GROUP BY Customer_type;

-- Male vs Female customers
SELECT Gender, COUNT(*) AS Count FROM sales GROUP BY Gender;

-- Total quantity per Product line
SELECT Product_line, SUM(Quantity) AS Total_Qty
FROM sales GROUP BY Product_line;

-- Top 3 product lines by sales
SELECT Product_line, SUM(Total) AS Total_Sales
FROM sales
GROUP BY Product_line
ORDER BY Total_Sales DESC
LIMIT 3;


-- =============================
-- 4. Subqueries & Joins (Self)
-- =============================

-- Sales above average Total
SELECT * FROM sales
WHERE Total > (SELECT AVG(Total) FROM sales);

-- Rating above average
SELECT * FROM sales
WHERE Rating > (SELECT AVG(Rating) FROM sales);

-- Invoices with Gross income > avg
SELECT Invoice_ID, Gross_income
FROM sales
WHERE Gross_income > (SELECT AVG(Gross_income) FROM sales);

-- Customers with Quantity > avg
SELECT * FROM sales
WHERE Quantity > (SELECT AVG(Quantity) FROM sales);


-- =============================
-- 5. Date & Time Functions
-- =============================

-- Transactions per day
SELECT Date, COUNT(*) AS Transactions
FROM sales GROUP BY Date;

-- Busiest day
SELECT Date, COUNT(*) AS Transactions
FROM sales
GROUP BY Date
ORDER BY Transactions DESC
LIMIT 1;

-- Sales before 12 PM
SELECT * FROM sales WHERE TIME(Time) < '12:00:00';

-- Transactions per month
SELECT DATE_FORMAT(Date, '%Y-%m') AS Month, COUNT(*) AS Transactions
FROM sales GROUP BY Month;

-- Extract year, month, day
SELECT YEAR(Date) AS Year, MONTH(Date) AS Month, DAY(Date) AS Day
FROM sales;


-- =============================
-- 6. Advanced Queries
-- =============================

-- Rank product lines by revenue
SELECT Product_line, SUM(Total) AS Revenue,
       RANK() OVER (ORDER BY SUM(Total) DESC) AS Rank_Products
FROM sales GROUP BY Product_line;

-- Top 5 invoices by Total
SELECT Invoice_ID, Total
FROM sales
ORDER BY Total DESC
LIMIT 5;

-- Cumulative sales over time
SELECT Date, SUM(Total) OVER (ORDER BY Date) AS Cumulative_Sales
FROM sales;

-- Branch with highest Avg Rating
SELECT Branch, AVG(Rating) AS Avg_Rating
FROM sales
GROUP BY Branch
ORDER BY Avg_Rating DESC
LIMIT 1;

-- Pivot-style sales (Branch × Product line)
SELECT Branch, Product_line, SUM(Total) AS Total_Sales
FROM sales
GROUP BY Branch, Product_line
ORDER BY Branch;
