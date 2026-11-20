-- Retail Business Performance Analysis: starter SQL
-- Create a table and import Retail_Sales_Data.csv using your SQL tool.

SELECT Region, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit
FROM retail_sales GROUP BY Region ORDER BY total_sales DESC;

SELECT Category, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit
FROM retail_sales GROUP BY Category ORDER BY total_profit DESC;

SELECT `Sub-Category`, SUM(Profit) AS total_profit
FROM retail_sales GROUP BY `Sub-Category` ORDER BY total_profit ASC;

SELECT DATE_FORMAT(`Order Date`, '%Y-%m') AS month, SUM(Sales) AS monthly_sales
FROM retail_sales GROUP BY month ORDER BY month;

SELECT Discount, AVG(Profit) AS average_profit, SUM(Profit) AS total_profit
FROM retail_sales GROUP BY Discount ORDER BY Discount;
