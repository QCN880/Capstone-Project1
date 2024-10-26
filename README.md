# Capstone-Project1
Documentations of my personal project in LITA bootcamp

## Tables of Content
---
  - [Project Overview](#project-overview)
  - [Project Objective](#project-objective)
  - [Data Sources](#data-sources)
  - [Data Overview](#data-overview)
  - [Tools used](#tools-used)
  - [Formulas Used](#formulas-used)
  - [Data Cleaning and Formatting](#data-cleaning-and-formatting)


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
  
 - Documentation: README.md, Project Report (PDF)
 - GitHub for portfolio building

### Formulas Used 
The formulas used for the analysis and preparation of the projects are :
 - Excel Formulas :
   ``` Excel formula
   Subscription duration = Subscrtiption end date - Subscription start date
   
   Average Subscription Duration = AVERAGE (suscription duration)
   
   Average Revenue Per Customer = SUM (Revenue) /COUNTA ( Customer Id)
   
   Customer Cancellation Rate =(COUNTIF('CustomerData (2)'!G2:G33788,"TRUE")/'CustomerData (2)'!E2:E33788)
   ```
 - SQL Formulas used :
    ``` SQL Formulas```

   ### Data Cleaning and Formatting
   ---
  - Data Cleaning in Excel :
     1. Remove Duplicate Entries:Go to the Data tab, select Remove Duplicates, and apply it on the entire Customers Data
     2. Subscription Duration : Add a new column called suscription duration.It was gotten by subtracting subscription end date from the subscription start date.
     3. Handled missing data: Checked the data to see if any cell is blank
     4. Saved the clean data and import to SQL for further analysis
      
  - Data Cleaning in SQL :
