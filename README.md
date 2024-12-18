Documentations of my personal project in LITA bootcamp
 
## Tables of Content
---
  - [Project Overview](#project-overview)
  - [Project Objective](#project-objective)
  - [Data Sources](#data-sources)
  - [Data Overview](#data-overview)
  - [Tools used](#tools-used)
  - [Excel Analysis](#excel-analysis)
  - [SQL Analysis](#sql-analysis)
  - [PowerBi Dashboard](#powerbi-dashboard)
    


### Project Topic : Sales Performance Analysis
---


### Project Overview 
---
This project focuses on analyzing sales data to uncover insights into top-selling products, regional performance, and monthly sales trends. The final goal is to create an interactive Power BI dashboard that highlights these insights, aiding the business in understanding sales drivers and optimizing performance.

### Project Objective 
---
 1. Identify Top-Selling Products across categories.
 2. Analyze Regional Sales Performance to find high and low-performing regions.
 3. Visualize Monthly Sales Trends for actionable insights.

### Data Sources 
---
The primary source of Data used here is Capstone Data.Xls
Click on the link below to download the data

[Download here](https://drive.google.com/drive/folders/1bua5YtNOHzLaDZj8149WooEuTATttp4_)

### Data Overview 
---
The excel dataset, Sales data contains the following column :
 - Order ID: Unique identifier for each order.
 - Customer ID: Unique identifier for each customer.
 - Product: Name or category of the product.
 - Region: Geographical area where the sale occurred.
 - Order Date: Date of the sale.
 - Quantity: Quantity sold for each order.
 - Unit Price: Price per unit of the product.

### Tools used
---
 - Microsoft Excel for :
   1. For data cleaning
   2.  Advanced formulas, PivotTables, Pivot charts
   3.  Report writing
      
 - Microsoft SQL server for :
   1. Data Cleaning
   2. Quering Data
   3. Grouping Data
- PowerBi for :
  1. Data Analysis
  2. Data Visualization: Charts, Graphs, Slicers, Timelines
  3. Interactive Dashboard
  
 - Documentation: README.md, Project Report (PDF)
 - GitHub for portfolio building

### Excel Analysis
---
  - #### Data Cleaning in Excel :
     1. Remove Duplicate Entries:Go to the Data tab, select Remove Duplicates, and apply it on the entire Customers Data
     2. Subscription Duration : Add a new column called suscription duration.It was gotten by subtracting subscription end date from the subscription start date.
     3. Handled missing data: Checked the data to see if any cell is blank
     4. Saved the clean data and import to SQL for further analysis
      
 - #### Formulas Used 
The formulas used for the analysis and preparation of the projects are :
 - Excel Formulas :
   ``` Excel formula
   Subscription duration = Subscrtiption end date - Subscription start date
   
   Average Subscription Duration = AVERAGE (suscription duration)
   
   Average Revenue Per Customer = SUM (Revenue) /COUNTA ( Customer Id)
   
   Customer Cancellation Rate =(COUNTIF('CustomerData (2)'!G2:G33788,"TRUE")/'CustomerData (2)'!E2:E33788)
   ```
 - #### Questions
     1. Perform an initial exploration of the sales data. Use pivot tables to summarize total sales by product, region, and month.
     2. Use Excel formulas to calculate metrics such as average sales per product and total revenue by region.
     3. Create any other interesting report

  - #### Exploratory Analysis using pivot tables
      - Pivot Table 1 : Total sales
        1. Question : What is the total sales generated
        2. Setup :
             1. Value field : Total Sales 
        3. Pivot table screenshot

        ![Screenshot 2024-10-30 224350](https://github.com/user-attachments/assets/1d20b7ed-c0e9-467b-b0d2-8a2ff9c9c4f4)

        4. Outcome : This pivot table shows the total sales generated during the fiscal year 2022
        
           
    - Pivot Table 2 : Total Sales by Product
      
        Description: This pivot table shows the total sales per product, highlighting the most and least popular items.
        1. Question : What is the total sales by product
        2. Set Up :
             1. Row field : Product
             2. Value field : Total sales  summarized as sum
        3. Pivot Table screenshot
           
      ![Screenshot 2024-10-31 025530](https://github.com/user-attachments/assets/4e73f49c-7d28-47f6-b38c-3af9e1d310c4)
      
        4. Insights:
           1. High-Performing Products: Shoes and Shirts generated the highest sales, contributing to 52.3% of the total Sales.
           2. Underperforming Products: Socks  has consistently low sales across all regions.
        5. Recommendations :
           1. Expand Inventory for High-Performers: Given the popularity of Shoes and Shirt, consider increasing stock levels or                 expanding these lines.
           2. Evaluate Product C: Since Product C shows low sales, consider discontinuing it or applying targeted marketing strategies                   to boost interest.
           
      
    - Pivot Table 3 : Total quantity by product
      
         Description: This pivot table shows the total quantity per product.This pivot Table was arranged in descending order to highlight  high-demand products, supporting marketing and stocking decisions.
highlighting the most and least popular items.
        1. Question : What is the total quantity by product
        2. Set up :
             1. Row field : Product
             2. Value field : Quantity summarized as sum
        3. Pivot table

         ![Screenshot 2024-10-31 031002](https://github.com/user-attachments/assets/32f7d3ab-32fb-4cf2-a65d-281616162c56)
      
         4. Insights :
             1. High Demand Product Types: Hat and Shoes have the highest quantities sold, indicating strong                                         customer demand for these product. These high-demand product make up 44.31% of total sales volume.
             2. Low Demand Product Types:Jackets has notably lower sales quantities, accounting for less than 10% of total                         volume. This suggests lower customer interest or possible supply chain limitations for this category.
         5. Recommendation :
            1. Focus on High Demand Products:Increase stock levels for Hats and Shoes to meet the high demand and prevent                       stockouts.
            2. Marketing and Promotions: Consider running promotional campaigns centered around these popular product types to further                   boost sales and drive customer loyalty.
            3. Revise Strategy for Low Demand Products:Reevaluate Jacket since Jacket is less popular, consider adjusting             its marketing strategy, offering discounts, or bundling it with high-demand products to increase interest.
            4. Optimize Inventory Costs: Lower stock levels or improve inventory turnover for low-demand items to reduce holding costs.

      

     - Pivot Table 4 : Total sales by Region
       
         Description: This pivot table shows total sales by region, indicating the geographical performance of sales.This pivot table was sorted in descending order to highlight regions with maximum sales, supporting marketing and stocking decisions.

         1. Question : What is the total sales generated by each region
         2. Set up :
            1. Row Field : Region
            2. Value Field : Total sales summarized as sum
         3. pivot Table Screenshot
            
          ![Screenshot 2024-10-31 040635](https://github.com/user-attachments/assets/ce84234e-2a1b-49c8-9a65-0ca3bf737851)

         5. Insights: South consistently outperforms other region, with a growth rate of 15% month-over-month.
          West has the lowest sales and has seen no growth over the last three quarters.
          6. Recommendations: Focus on expanding marketing efforts in the South to capitalize on its growth potential.
        Revise Strategy for Low-Performing Regions like the West or consider allocating resources to regions with stronger sales.    
  
    - Pivot Table 5 : Quantity of Product by Region
      
      Description: This pivot table shows total quantity by region, indicating the geographical performance of sales.
      1. Question : What is the quantity of product purchased in each region
      2. Set up :
         1. Row Field : Region
         2. Value Field : Quantity summarized by sum
      3. Pivot Table Screeenshot

         ![Screenshot 2024-10-30 234754](https://github.com/user-attachments/assets/bb8ebfc3-60ce-46b0-8c13-d1b12f61e8c2)

      4. Insights :Analyzing the quantity sold by region provides insight into regional demand patterns. For instance, if the South consistently has higher sales volume than other regions, this suggests a stronger customer base or demand in the south compared to others. Conversely, if a particular region shows significantly lower sales, it may indicate market challenges, limited distribution, or less brand awareness in that area.

      5. Recommendations :
         1. Expand High-Performing Regions: Focus marketing efforts and inventory on high-performing regions (South). Increase               promotions or product availability to sustain and further boost sales in these areas.
         2. Investigate Low-Performing Regions: For regions with lower sales volume, conduct further market analysis to identify potential barriers. Consider running targeted promotions or partnerships to improve sales in these areas. Alternatively, reevaluate resource allocation if the region’s demand remains persistently low.


    - Pivot Table 6 : Total sales by Month
      1. Question : How much Revenue was generated in each month
      2. Set up :
        1. Row : Order Date grouped by month
        2. Value Field : Revenue
      3. Pivot Table screenshot
       
       ![Screenshot 2024-10-31 045832](https://github.com/user-attachments/assets/cdb9371f-cce2-4162-8c43-d7353684321e)
       
      4. Insights :Analyzing monthly sales by revenue can reveal monthly sales trends. For example, if the data shows that sales revenue peaks during certain months, this could indicate seasonal demand, holiday-driven purchases, or effective promotions during those periods. Months with declining revenue might reflect off-peak seasons, potential economic impacts, or customer behavioral changes.
      5. Recommendations:During high-revenue months, consider increasing inventory and running targeted marketing campaigns to maximize sales. Discounts, bundling, or promotional offers can further boost revenue during these times.

  - ##### Calculating Key Metrics with Excel Formulas
    - Metric 1: Average Sales per Product

        1. Formula:
           ``` Excel Formula
             Average Sales per product =AVERAGEIF(ProductRange, Product, SalesRange)
           ```

        3. ![Screenshot 2024-10-31 060402](https://github.com/user-attachments/assets/f7096585-afee-4113-bab0-670831d752ba)
           
        5. Purpose: Determine average revenue generated per product to gauge profitability.
        6. Result: Provides an average sales value per product, helping in product performance evaluation.
           
     - Metric 2: Total Revenue by Region
        1. Formula:
            ``` Excel Formula
            Total Revenue by Region =SUMIF(RegionRange, "RegionName", SalesRange)
            ```
           
           
           ![Screenshot 2024-10-31 061328](https://github.com/user-attachments/assets/c7710e0d-b5bf-459c-9a99-616dcd063618)

        3. Purpose: Calculate total revenue generated by each region.
        4. Result: Identifies regions with the highest revenue contributions, aiding regional strategy decisions.


### SQL Analysis
---

#### In SQL
 - Load Data into SQL Server: Import the cleaned Excel file into SQL Server as a new table (e.g., CustomerData).
 - Data Validation and Integrity Checks: Verify data types for each column, particularly ensuring that Subscription Start Date and Subscription End Date are recognized as date types.

 - #### SQl Queries
#### 1. Retrieve the Total Sales for Each Product Category
 Description: This query calculates total sales for each product to determine which product categories generate the highest revenue.
 1. Question: What is the total sales amount for each product category?
 2. SQL Query:
   ```SQL Formula
   SELECT Product AS product_category, SUM(total_sales) AS total_sales
   FROM [dbo].[LITA Capstone 1]
   GROUP BY Product;
   ```
 4. Screenshot Of Table
    
    ![Screenshot 2024-11-04 033659](https://github.com/user-attachments/assets/6901eef9-aeb7-4137-9e70-b212248df6c6)

 6. Insights: Shoes is the top-performing product by sales value, contributing the most to overall revenue.
 7. Recommendation: Focus on promoting high-revenue products like Shoes while exploring strategies to boost sales for lower-performing products.

#### 2. Find the Number of Sales Transactions in Each Region
 Description: This query identifies the number of sales transactions per region to understand regional demand.
 1. Question: How many sales transactions occurred in each region?
 2. SQL Query:
  ``` Sql Formula
  SELECT Region, COUNT(OrderID) AS sales_transactions
  FROM [dbo].[LITA Capstone 1]
  GROUP BY Region
  ```
 3. Screenshot Of Table

   ![Screenshot 2024-11-04 034647](https://github.com/user-attachments/assets/204719fb-a495-49e1-8a24-591545319b83)

 4. Insights: The East region has the highest number of transactions, indicating a larger customer base or higher demand.
 5. Recommendation: Consider increasing inventory or marketing efforts in the East region to maintain or grow market share.

#### 3. Find the Highest-Selling Product by Total Sales Value
 Description: This query identifies the product with the highest total sales value.
 1. Question: Which product generates the highest total sales?
 2. SQL Query:
    ```Sql Formula
    SELECT TOP 1 
    Product,
    SUM(total_sales) AS total_sales
    FROM [dbo].[LITA Capstone 1]
    GROUP BY Product
    ORDER BY 
    total_sales DESC;
    ```
 4. Screenshot Of Table
    
    ![Screenshot 2024-11-04 035841](https://github.com/user-attachments/assets/534b9b81-9a28-40fa-9eb3-9ff11bf15de1)

 6. Insights: Shoe is the highest-grossing product.
 7. Recommendation: Invest in maintaining stock levels for Shoes  and explore upselling or bundling with complementary products.

#### 4.Calculate Total Revenue per Product
 Description: This query calculates the total revenue generated by each product.
 1. Question: What is the total revenue for each product?
 2. SQL Query:
    ```Sql Formula
    SELECT Product, SUM(total_sales) AS total_revenue
    FROM [dbo].[LITA Capstone 1]
    GROUP BY Product;
    ```
 4. Screenshot of Table
    
    ![Screenshot 2024-11-04 040206](https://github.com/user-attachments/assets/7194a4e8-a462-4bd4-b956-83235eb45a8f)

 6. Insights: Shoes and  contribute significantly to revenue.
Recommendation: Maintain high availability and marketing focus on top revenue-generating products.

#### 5. Calculate Monthly Sales Totals for the Current Year
 Description: This query calculates total sales for each month in the current year to identify sales trends.
 1. Question: What are the monthly sales totals for the current year?
 2. SQL Query:
    ``` Sql Formula
    SELECT MONTH(OrderDate) AS month, SUM(total_sales) AS monthly_sales
    FROM [dbo].[LITA Capstone 1]
    WHERE YEAR(OrderDate) = YEAR(GETDATE())
    GROUP BY MONTH(OrderDate)
    ORDER BY month;
    ```

 4. Screenshot OF Table
    
    ![Screenshot 2024-11-04 041935](https://github.com/user-attachments/assets/86a4cdfd-863e-4c3d-b2b5-e21db52b84ab)
    
 6. Insights: Sales peak in February.
 7. Recommendation: Analyze reasons for seasonal trends and align promotions with peak sales periods.

#### Find the Top 5 Customers by Total Purchase Amount
 Description: This query identifies the top 5 customers by their total purchase amount.
 1. Question: Who are the top 5 customers by total purchase amount?
 2. SQL Query:
    ``` Sql formula
    SELECT Top 5 Customer_Id, SUM(total_sales) AS total_purchase_amount
    FROM [dbo].[LITA Capstone 1]
    GROUP BY Customer_Id
    ORDER BY total_purchase_amount DESC
    ```
 4. ScreenshotOf Table
    
    ![Screenshot 2024-11-04 041517](https://github.com/user-attachments/assets/c2a5a794-6b4e-454a-bf67-477927b39be2)

 6. Insights: Customer 101 and 102 are the highest spenders.
 7. Recommendation: Offer loyalty rewards or personalized marketing to retain high-value customers.

#### 7. Calculate the Percentage of Total Sales Contributed by Each Region
 Description: This query calculates each region's sales percentage of total sales.
 1. Question: What percentage of total sales does each region contribute?
 2. SQL Query:
    ``` Sql Formula
    SELECT Region, SUM(total_sales) AS region_sales,
    (SUM(total_sales) * 100.0 / (SELECT SUM(total_sales) FROM [dbo].[LITA Capstone 1])) AS sales_percentage
    FROM [dbo].[LITA Capstone 1]
    GROUP BY Region;
    ```
 4. Screenshot Of Table
    
    ![Screenshot 2024-11-04 041247](https://github.com/user-attachments/assets/055a7e27-0037-48ac-bfdf-1a6d8fd548df)

 6. Insights: The South region contributes the most to overall sales.
 7. Recommendation: Focus on retaining and expanding customer base in high-performing regions.


### PowerBi Dashboard
---
 - #### Dashboard Overview

   The image below shows the entire view of the dashboard
   
![Screenshot 2024-11-06 102514](https://github.com/user-attachments/assets/a1615e23-275c-4cb7-88fb-0d3f1e05fb63)
 
- #### Dashboard Features
  
## Key Metrics

### 1. Total Sales Generated
- **Value**: $2.10M
- **Insight**: Reflects total sales revenue.
- **Recommendation**: Track monthly to gauge growth.

### 2. Total Number of Quantity
- **Value**: 68.46K
- **Insight**: Measures volume sold.
- **Recommendation**: Compare with revenue to assess revenue-to-quantity ratio.

### 3. Total Number of Customers
- **Value**: 500
- **Insight**: Size of customer base.
- **Recommendation**: Expand customer reach, especially in low-performing regions.

### 4. Average Revenue per Customer
- **Value**: $211.78
- **Calculation**: `Total Revenue / Total Customers`
- **Insight**: Shows average revenue contribution per customer.
- **Recommendation**: Increase by upselling or bundling products.

## Visualizations

### Total Sales by Product
- **Description**: Bar chart by product type.
- **Top Product**: Shoes ($0.61M).
- **Recommendation**: Focus marketing on underperforming products.

### Total Sales by Region
- **Description**: Sales revenue by region.
- **Insight**: South region leads with $0.93M.
- **Recommendation**: Apply South region's strategies to other areas.

### Sum of Quantity by Product and Region
- **Description**: Stacked bar chart by product and region.
- **Insight**: Shoes are popular; hats and jackets are less so.
- **Recommendation**: Adjust inventory based on regional demand.

### Monthly Trend by Revenue
- **Description**: Line chart of monthly revenue trends.
- **Peak**: February.
- **Recommendation**: Analyze February spike; replicate strategy in slow months.

### Average Sales by Product
- **Description**: Average sales by product type.
- **Top Performers**: Shirts, Shoes.
- **Recommendation**: Expand product line for high-performers.

## Filters and Navigation

### Year Filter
- **Description**: Allows year-based comparisons.
- **Recommendation**: Use for year-over-year analysis.

### Navigation Icons
- **Home**: Main dashboard.
- **Database**: Access to data tables.
- **Presentation**: Visual summary of key metrics.
- **URL**: External documentation/resources.
- **Q&A**: Opens help section with FAQs.

---

This dashboard documentation helps users understand and interact with each feature, making it suitable for sharing insights and recommendations on GitHub.




    
