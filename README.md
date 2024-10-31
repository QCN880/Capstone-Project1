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
  - [Power Bi Dashboard](#power-bi-dashboaard)
    


### Project Topic : Sales Performance Analysis

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
      
         Description: This pivot table shows the total quantity per product, highlighting the most and least popular items.
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
       
         Description: This pivot table shows total sales by region, indicating the geographical performance of sales.
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
       






    
