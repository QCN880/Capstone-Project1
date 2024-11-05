create Database CapstoneProj1
select * from [dbo].[LITA Capstone 1]


---- Total Sales for each Product Category
SELECT Product AS product_category, SUM(total_sales) AS total_sales
FROM [dbo].[LITA Capstone 1]
GROUP BY Product;


	----Numbers of Sales Transaction in each region
SELECT Region, COUNT(OrderID) AS sales_transactions
FROM [dbo].[LITA Capstone 1]
GROUP BY Region;


----find the highest-selling product by total sales value
SELECT TOP 1 
    Product,
    SUM(total_sales) AS total_sales
FROM [dbo].[LITA Capstone 1]
GROUP BY Product
ORDER BY 
    total_sales DESC;


	-----calculate total revenue per product.
SELECT Product, SUM(total_sales) AS total_revenue
FROM [dbo].[LITA Capstone 1]
GROUP BY Product;


------calculate monthly sales totals for the current year.
SELECT MONTH(OrderDate) AS month, SUM(total_sales) AS monthly_sales
FROM [dbo].[LITA Capstone 1]
WHERE YEAR(OrderDate) = YEAR(GETDATE())
GROUP BY MONTH(OrderDate)
ORDER BY month;

-----find the top 5 customers by total purchase amount
SELECT Top 5 Customer_Id, SUM(total_sales) AS total_purchase_amount
FROM [dbo].[LITA Capstone 1]
GROUP BY Customer_Id
ORDER BY total_purchase_amount DESC


-----calculate the percentage of total sales contributed by each region.
SELECT Region, SUM(total_sales) AS region_sales,
(SUM(total_sales) * 100.0 / (SELECT SUM(total_sales) FROM [dbo].[LITA Capstone 1])) AS sales_percentage
FROM [dbo].[LITA Capstone 1]
GROUP BY Region;

-----identify products with no sales in the last quarter.
SELECT 
    p.Product
FROM 
    (SELECT DISTINCT Product FROM sales_table) p
LEFT JOIN 
    sales_table s ON p.Product = s.Product 
    AND s.OrderDate >= DATE_SUB(CURRENT_DATE, INTERVAL 3 MONTH)
WHERE 
    s.Product IS NULL or 0;
