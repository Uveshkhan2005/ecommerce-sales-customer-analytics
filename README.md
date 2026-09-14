# E-Commerce Sales & Customer Analytics

### End-to-End Data Analytics Project | Python | SQL | PostgreSQL | Power BI

An end-to-end E-Commerce Analytics project focused on understanding sales performance, customer purchasing behavior, product performance, customer value, and revenue trends.

The project combines **Python, SQL, PostgreSQL, and Power BI** to transform transactional retail data into actionable business insights.

---

## Project Overview

E-commerce businesses generate large volumes of transactional data that can be used to understand revenue performance, customer behavior, product demand, and purchasing patterns.

This project analyzes transactional retail data to answer key business questions around:

- Sales performance
- Revenue trends
- Customer behavior
- Customer value
- Product performance
- Geographic performance
- Repeat purchasing
- RFM customer segmentation

The project follows a complete analytics workflow:

```text
Business Problem
        ↓
Data Validation
        ↓
Data Cleaning
        ↓
Python EDA
        ↓
KPI Analysis
        ↓
Customer Analysis
        ↓
RFM Segmentation
        ↓
SQL / PostgreSQL Analysis
        ↓
Power BI Dashboard
        ↓
Business Insights
        ↓
Recommendations
```

---

# Business Problem

An e-commerce business needs to understand which customers, products, and markets contribute most to revenue and how purchasing behavior changes over time.

This project focuses on answering:

- How much revenue is being generated?
- How many orders and customers are present?
- What is the average order value?
- Which products generate the most revenue?
- Which countries contribute the most sales?
- How does revenue change over time?
- Which customers generate the highest value?
- Which customers purchase frequently?
- Which customers are at risk of becoming inactive?
- Which customer segments should receive targeted marketing attention?

---

# Business Objectives

The project aims to:

- Measure overall sales performance
- Identify revenue trends
- Analyze customer purchasing behavior
- Identify high-performing products
- Compare country-level performance
- Calculate key business KPIs
- Segment customers using RFM analysis
- Identify high-value and loyal customers
- Support customer-targeted business decisions
- Build an interactive Power BI dashboard

---

# Dataset

**Dataset:** UCI Online Retail Dataset

The dataset contains transactional records from a UK-based online retail business.

### Dataset Overview

| Attribute | Value |
|---|---:|
| Transactions | 541,909 |
| Time Period | December 2010 – December 2011 |
| Columns | 8 |
| Data Type | Transactional Retail Data |

### Dataset Columns

```text
InvoiceNo
StockCode
Description
Quantity
InvoiceDate
UnitPrice
CustomerID
Country
```

---

# Tools & Technologies

## Programming & Data Analysis

- Python
- Pandas
- NumPy

## Data Visualization

- Matplotlib
- Seaborn

## Database & SQL

- SQL
- PostgreSQL
- pgAdmin

## Business Intelligence

- Power BI
- DAX
- Power Query

## Development & Version Control

- Jupyter Notebook
- VS Code
- Git
- GitHub

---

# Analytical Workflow

```text
Raw Transaction Data
        ↓
Data Inspection
        ↓
Data Validation
        ↓
Data Cleaning
        ↓
Feature Engineering
        ↓
KPI Analysis
        ↓
Exploratory Data Analysis
        ↓
Customer Analysis
        ↓
RFM Segmentation
        ↓
SQL Business Analysis
        ↓
Power BI Dashboard
        ↓
Business Insights
```

---

# Data Validation

The dataset will be inspected for:

- Missing values
- Duplicate transactions
- Invalid quantities
- Invalid prices
- Cancelled invoices
- Incorrect data types
- Missing customer identifiers
- Date consistency

The objective is to ensure that the dataset is reliable before business analysis begins.

---

# Data Cleaning

The cleaning process will include:

- Converting `InvoiceDate` into a proper datetime format
- Handling missing `CustomerID` values
- Identifying cancelled transactions
- Checking invalid or negative quantities
- Checking zero or negative unit prices
- Removing duplicate records where appropriate
- Creating a revenue field from quantity and unit price
- Preparing customer-level data for RFM analysis

---

# Feature Engineering

A transaction-level revenue metric will be created:

```text
Revenue = Quantity × UnitPrice
```

Additional analytical fields may include:

- Order date
- Year
- Month
- Customer revenue
- Order frequency
- Average order value
- Recency
- Frequency
- Monetary value

---

# Key Performance Indicators

The project will calculate business KPIs including:

| KPI | Description |
|---|---|
| Total Revenue | Total transaction revenue |
| Total Orders | Number of unique invoices |
| Total Customers | Number of unique customers |
| Total Quantity | Units sold |
| Average Order Value | Revenue per order |
| Average Customer Revenue | Revenue per customer |
| Repeat Customer Rate | Percentage of customers with multiple purchases |

These KPIs will form the foundation of the Power BI executive dashboard.

---

# Python Exploratory Data Analysis

Python will be used to analyze:

## Sales Performance

- Revenue trends
- Monthly revenue
- Order volume
- Quantity trends
- Average order value

## Customer Analysis

- Customer purchase frequency
- Customer revenue
- Repeat customers
- High-value customers
- Customer purchasing behavior

## Product Analysis

- Top products by revenue
- Top products by quantity
- Product contribution
- Product demand patterns

## Geographic Analysis

- Revenue by country
- Orders by country
- Customer distribution by country
- Top-performing markets

---

# RFM Customer Segmentation

Customer segmentation will be performed using **RFM Analysis**.

RFM stands for:

```text
R → Recency
F → Frequency
M → Monetary
```

### Recency

How recently a customer made a purchase.

### Frequency

How often a customer made purchases.

### Monetary

How much revenue a customer generated.

The three metrics will be converted into scores and combined to create customer segments.

---

# Planned RFM Segments

Example customer segments include:

```text
Champions
Loyal Customers
Potential Loyalists
Recent Customers
At Risk Customers
Lost Customers
```

The exact segments will be determined from the analyzed customer behavior.

---

# SQL & PostgreSQL Analysis

The cleaned dataset will be loaded into PostgreSQL for business-focused SQL analysis.

### Planned SQL Analysis

## Sales Analysis

- Total revenue
- Monthly revenue
- Order volume
- Average order value

## Customer Analysis

- Revenue by customer
- Orders per customer
- Repeat customer analysis
- Top customers

## Product Analysis

- Top products
- Product revenue
- Product quantity

## Geographic Analysis

- Revenue by country
- Orders by country
- Customer distribution

## RFM Analysis

- Customer RFM scores
- Customer segments
- Segment size
- Segment revenue contribution

---

# Power BI Dashboard

The final Power BI report will contain three analytical pages.

---

## Page 1 — Executive Sales Overview

### Purpose

Provide a high-level view of e-commerce business performance.

### Planned KPIs

- Total Revenue
- Total Orders
- Total Customers
- Total Quantity
- Average Order Value

### Planned Visuals

- Monthly Revenue Trend
- Revenue by Country
- Top Products
- Order Volume Trend
- Customer Distribution

---

## Page 2 — Customer & RFM Analysis

### Purpose

Understand customer value and purchasing behavior.

### Planned Analysis

- Customer Revenue
- Purchase Frequency
- Repeat Customers
- RFM Segments
- Customer Segment Contribution
- High-Value Customers
- At-Risk Customers

### Planned Visuals

- RFM Segment Distribution
- Revenue by Customer Segment
- Customer Count by Segment
- Top Customers
- Customer Value Analysis

---

## Page 3 — Product & Revenue Analysis

### Purpose

Understand product-level and market-level revenue performance.

### Planned Analysis

- Top Products by Revenue
- Top Products by Quantity
- Revenue by Country
- Product Contribution
- Monthly Product Trends
- Revenue Concentration

---

# Planned Business Questions

The final analysis will answer questions such as:

```text
Which months generate the highest revenue?

Which products contribute the most revenue?

Which countries are the strongest markets?

Which customers generate the highest revenue?

What percentage of customers are repeat buyers?

Which RFM segments generate the most revenue?

Which customers should receive retention or re-engagement campaigns?

Which products or markets require additional attention?
```

---

# Business Insights

The completed analysis will be used to identify:

- Revenue growth patterns
- High-value customer segments
- Loyal customer groups
- At-risk customers
- High-performing products
- Low-performing products
- Strong geographic markets
- Revenue concentration
- Repeat purchasing behavior

---

# Business Recommendations

Recommendations will be based on the final analysis and may include:

### Customer Retention

Develop targeted campaigns for high-value and at-risk customer segments.

### Customer Growth

Encourage repeat purchases through personalized promotions and targeted marketing.

### Product Strategy

Prioritize high-performing products while investigating underperforming products.

### Geographic Strategy

Identify strong markets for expansion and weaker markets requiring further investigation.

### Revenue Strategy

Focus on customer and product segments contributing the greatest share of revenue.

---

# Dashboard Preview

Final Power BI screenshots will be added after dashboard development.

Recommended files:

```text
visuals/
├── dashboard_overview.png
├── dashboard_customer_rfm.png
└── dashboard_product_revenue.png
```

---

# Repository Structure

```text
ecommerce-sales-customer-analytics/
│
├── dataset/
│   └── Online_Retail.xlsx
│
├── notebooks/
│   └── ecommerce_sales_customer_analysis.ipynb
│
├── sql/
│   └── ecommerce_analysis.sql
│
├── visuals/
│
├── powerbi/
│
├── report/
│
├── .gitignore
└── README.md
```

---

# Project Status

| Component | Status |
|---|:---:|
| Repository Setup | ✅ Completed |
| Dataset Preparation | 🔄 In Progress |
| Data Validation | ⏳ Pending |
| Data Cleaning | ⏳ Pending |
| Feature Engineering | ⏳ Pending |
| KPI Analysis | ⏳ Pending |
| Python EDA | ⏳ Pending |
| Customer Analysis | ⏳ Pending |
| RFM Segmentation | ⏳ Pending |
| PostgreSQL Setup | ⏳ Pending |
| SQL Analysis | ⏳ Pending |
| Power BI Dashboard | ⏳ Pending |
| Business Insights | ⏳ Pending |
| Final Documentation | ⏳ Pending |

---

# Skills Demonstrated

## Data Analysis

- Data Cleaning
- Data Validation
- Exploratory Data Analysis
- KPI Development
- Customer Analysis
- RFM Segmentation
- Revenue Analysis
- Product Analysis

## Programming

- Python
- Pandas
- NumPy

## SQL & Database

- SQL
- PostgreSQL
- pgAdmin

## Business Intelligence

- Power BI
- DAX
- Power Query
- Dashboard Development

## Development Tools

- Jupyter Notebook
- VS Code
- Git
- GitHub

---

# Analytical Concepts

This project applies:

- Descriptive Analytics
- Exploratory Data Analysis
- Customer Segmentation
- RFM Analysis
- KPI Analysis
- Revenue Analysis
- Product Performance Analysis
- Geographic Analysis
- Business Intelligence
- Data Storytelling
- Data-Driven Decision Making

---

# Analytical Disclaimer

The findings and business recommendations in this project will be based on the analyzed transactional dataset.

Observed customer and product patterns represent relationships within the dataset and should not automatically be interpreted as causal relationships.

RFM segmentation is used as a descriptive customer segmentation framework and is not a predictive machine-learning model.

Business recommendations should be validated with additional business context and experimentation before implementation.

---

# Project Objective

The objective of this project is to demonstrate a complete practical **Data Analyst workflow** using transactional e-commerce data.

```text
Raw Transaction Data
        ↓
Data Cleaning
        ↓
Python Analysis
        ↓
KPI Development
        ↓
Customer Segmentation
        ↓
RFM Analysis
        ↓
SQL / PostgreSQL
        ↓
Power BI
        ↓
Business Insights
        ↓
Business Recommendations
```

---

# Author

## Uveshkhan Lohani

**B.E. Information Technology Graduate | Aspiring Data Analyst**

Focused on building practical expertise in:

- Data Analytics
- SQL
- Python
- Power BI
- Business Intelligence
- Data Visualization

---

# Connect

**LinkedIn:**  
https://www.linkedin.com/in/uveshkhan-lohani-615793273/

**Email:**  
uveshkhanlohani65@gmail.com

---

# Portfolio Project

This project is part of my Data Analytics portfolio and is designed to demonstrate practical experience in transforming transactional data into business insights.

```text
Data
 ↓
Analysis
 ↓
Customer Understanding
 ↓
Business Intelligence
 ↓
Decision Support
```

---

# Key Takeaway

> **E-Commerce Sales & Customer Analytics demonstrates how transactional retail data can be transformed into actionable business intelligence using Python, SQL, PostgreSQL, RFM segmentation, and Power BI.**