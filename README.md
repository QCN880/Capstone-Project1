# Capstone-Project1
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
        1. Question : What is the total sales by product
        2. Set Up :
             1. Row field : Product
             2. Value field : Total sales  summarized as sum
        3. Pivot Table screenshot
           
        ![Screenshot 2024-10-30 231329](https://github.com/user-attachments/assets/b7eeb124-4d45-4135-ba94-1f561b7b0f1a)

        
    
