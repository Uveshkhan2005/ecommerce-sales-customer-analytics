# 🛒 E-Commerce Sales & Customer Analytics

### End-to-End Data Analytics Project | Python | SQL | PostgreSQL | Power BI

An end-to-end E-Commerce Analytics project focused on understanding **sales performance, revenue trends, customer purchasing behavior, product performance, geographic performance, and customer value**.

The project transforms raw transactional retail data into structured business analysis using **Python, Pandas, NumPy, SQL, PostgreSQL, RFM customer segmentation, and Power BI**.

---

## 📌 Table of Contents

- [Project Overview](#-project-overview)
- [Business Problem](#-business-problem)
- [Business Objectives](#-business-objectives)
- [Dataset](#-dataset)
- [Tools & Technologies](#-tools--technologies)
- [Analytical Workflow](#-analytical-workflow)
- [Data Validation](#-data-validation)
- [Data Cleaning](#-data-cleaning)
- [Cleaned Dataset](#-cleaned-dataset)
- [Feature Engineering](#-feature-engineering)
- [Key Performance Indicators](#-key-performance-indicators)
- [Exploratory Data Analysis](#-exploratory-data-analysis)
- [Sales Performance Analysis](#-sales-performance-analysis)
- [Product Analysis](#-product-analysis)
- [Geographic Analysis](#-geographic-analysis)
- [Customer Analysis](#-customer-analysis)
- [RFM Customer Segmentation](#-rfm-customer-segmentation)
- [RFM Segment Results](#-rfm-segment-results)
- [PostgreSQL & SQL Analysis](#-postgresql--sql-analysis)
- [Power BI Dashboard](#-power-bi-dashboard)
- [Current Business Insights](#-current-business-insights)
- [Business Recommendations](#-business-recommendations)
- [Repository Structure](#-repository-structure)
- [Project Status](#-project-status)
- [Skills Demonstrated](#-skills-demonstrated)
- [Analytical Concepts](#-analytical-concepts)
- [Data & Analytical Disclaimer](#-data--analytical-disclaimer)
- [Project Objective](#-project-objective)
- [Author](#-author)
- [Connect](#-connect)

---

# 📊 Project Overview

E-commerce businesses generate large volumes of transaction-level data containing information about products, orders, customers, prices, quantities, dates, and geographic markets.

This project analyzes transactional retail data to understand:

- Sales performance
- Revenue trends
- Order volume
- Average order value
- Product performance
- Geographic performance
- Customer purchasing behavior
- Customer value
- Purchase frequency
- Customer recency
- RFM customer segments

The project follows a complete analytics workflow:

```text
Business Problem
       ↓
Raw Transaction Data
       ↓
Data Validation
       ↓
Data Cleaning
       ↓
Feature Engineering
       ↓
KPI Analysis
       ↓
Python EDA
       ↓
Customer Analysis
       ↓
RFM Segmentation
       ↓
PostgreSQL / SQL Analysis
       ↓
Power BI Dashboard
       ↓
Business Insights
       ↓
Business Recommendations
```

---

# 🎯 Business Problem

An e-commerce business needs to understand which products, customers, and markets contribute to revenue and how purchasing behavior changes over time.

Raw transaction data alone does not provide a clear business view.

This project converts transaction-level records into structured analytical information to answer questions such as:

- How much revenue is generated?
- How many orders are placed?
- How many customers are identified?
- What is the average order value?
- Which products or transaction codes generate the most revenue?
- Which products have the highest sales quantity?
- Which countries generate the most revenue?
- How does revenue change by month?
- Which customers generate the highest revenue?
- Which customers purchase most frequently?
- Which customers are recently active?
- Which customers appear at risk of becoming inactive?
- Which customer segments contribute the most monetary value?

---

# 🎯 Business Objectives

The project aims to:

- Measure overall sales and revenue performance
- Analyze monthly and time-based sales trends
- Measure order volume and average order value
- Identify high-performing products and transaction codes
- Analyze geographic revenue performance
- Understand customer purchasing behavior
- Identify high-value customers
- Measure customer purchase frequency
- Measure customer recency
- Perform RFM customer segmentation
- Use PostgreSQL and SQL for business-focused analysis
- Build an interactive Power BI dashboard
- Translate analytical findings into actionable business insights

---

# 📂 Dataset

## UCI Online Retail Dataset

The project uses the **Online Retail Dataset** from the UCI Machine Learning Repository.

The dataset contains transactional records from a UK-based online retail business.

### Dataset Overview

| Attribute | Value |
|---|---:|
| Original Transactions | **541,909** |
| Original Columns | **8** |
| Time Period | **December 2010 – December 2011** |
| Data Type | Transactional Retail Data |

### Dataset Source

UCI Machine Learning Repository:

https://archive.ics.uci.edu/dataset/352/online%2Bretail

### Dataset DOI

https://doi.org/10.24432/C5BW33

### Dataset License

The dataset is available under the **Creative Commons Attribution 4.0 International (CC BY 4.0)** license.

---

# 🧾 Dataset Columns

| Column | Description |
|---|---|
| `InvoiceNo` | Invoice / transaction identifier |
| `StockCode` | Product or transaction code |
| `Description` | Product or transaction description |
| `Quantity` | Quantity purchased |
| `InvoiceDate` | Transaction date and time |
| `UnitPrice` | Price per unit |
| `CustomerID` | Customer identifier |
| `Country` | Customer country |

---

# 🛠 Tools & Technologies

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

# 🔄 Analytical Workflow

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
KPI Development
        ↓
Exploratory Data Analysis
        ↓
Customer Analysis
        ↓
RFM Analysis
        ↓
RFM Scoring
        ↓
Customer Segmentation
        ↓
PostgreSQL / SQL Analysis
        ↓
Power BI Dashboard
        ↓
Business Insights
        ↓
Business Recommendations
```

---

# 🔍 Data Validation

The original dataset was inspected using Python and Pandas before cleaning.

The following data-quality checks were performed:

- Missing values
- Duplicate records
- Negative quantities
- Non-positive unit prices
- Cancellation transactions
- Missing customer identifiers
- Missing product descriptions
- Date and data-type consistency

## Initial Data Quality Findings

| Data Quality Check | Result |
|---|---:|
| Original Records | **541,909** |
| Duplicate Records | **5,268** |
| Negative Quantity Records | **10,624** |
| Non-Positive Unit Price Records | **2,517** |
| Missing Description | **1,454** |
| Missing CustomerID | **135,080** |

### Cancellation Investigation

A total of **9,288 transaction rows** had invoice numbers beginning with `C`.

Among all negative-quantity transactions:

- **9,288** had invoice numbers beginning with `C`
- **1,336** negative-quantity rows did not begin with `C`

Further inspection showed that many of the non-cancelled negative-quantity rows were associated with zero prices, missing descriptions, and missing customer identifiers.

---

# 🧹 Data Cleaning

A separate analytical dataframe, `df_clean`, was created so that the raw dataset remained unchanged.

## Cleaning Rules

### 1. Remove exact duplicate records

```python
df_clean = df_clean.drop_duplicates()
```

### 2. Keep positive quantities

For completed-sales analysis, transactions with non-positive quantities were excluded.

```python
df_clean = df_clean[df_clean["Quantity"] > 0]
```

This removes returns, cancellations, and other negative-quantity transaction records from the completed-sales dataset.

### 3. Keep positive unit prices

```python
df_clean = df_clean[df_clean["UnitPrice"] > 0]
```

Transactions with zero or negative prices were excluded from the normal sales/revenue dataset.

### 4. Calculate Revenue

Revenue was calculated as:

```text
Revenue = Quantity × UnitPrice
```

Python implementation:

```python
df_clean["Revenue"] = (
    df_clean["Quantity"] * df_clean["UnitPrice"]
)
```

### 5. Reset the index

```python
df_clean = df_clean.reset_index(drop=True)
```

---

# ✅ Cleaned Dataset

After applying the cleaning rules:

| Metric | Result |
|---|---:|
| Original Records | **541,909** |
| Cleaned Records | **524,878** |
| Net Rows Removed | **17,031** |
| Duplicate Rows Remaining | **0** |
| Invalid Quantity Rows Remaining | **0** |
| Invalid Price Rows Remaining | **0** |
| Missing CustomerID | **132,186** |
| Missing Description | **0** |

### Data Retention

Approximately **96.86%** of the original transaction records remain in the cleaned sales dataset.

### Files

Raw dataset:

```text
dataset/Online Retail.xlsx
```

Cleaned sales dataset:

```text
dataset/online_retail_clean.csv
```

The raw dataset is preserved separately for reproducibility.

---

# ⚙️ Feature Engineering

Additional analytical fields were created from `InvoiceDate`.

## Date Features

- Year
- Month
- Month Name
- Day
- Day Name
- Hour
- Week
- Quarter
- Day of Week
- Year-Month

## Revenue Features

- Revenue
- Revenue Rounded

These fields support time-based business analysis and reporting.

---

# 📈 Key Performance Indicators

Current KPIs calculated from the cleaned sales dataset:

| KPI | Value |
|---|---:|
| Cleaned Sales Records | **524,878** |
| Total Revenue | **£10,642,110.80** |
| Total Orders | **19,969** |
| Identified Customers | **4,338** |
| Average Order Value | **£533.17** |

### KPI Definitions

**Total Revenue**

```text
Sum of Revenue across cleaned sales transactions
```

**Total Orders**

```text
Number of unique InvoiceNo values
```

**Average Order Value**

```text
Total Revenue ÷ Unique Orders
```

### SQL Reconciliation Note

The initial PostgreSQL KPI query currently returns **19,960 unique orders**, compared with **19,969** from the Python analysis.

This difference is being treated as a **data-reconciliation item** and will be investigated before the final KPI figures are considered fully reconciled across Python and PostgreSQL.

The revenue figure from Python is currently:

```text
£10,642,110.80
```

---

# 📊 Exploratory Data Analysis

Python was used for exploratory analysis across multiple business dimensions.

## Time-Based Analysis

Completed analysis includes:

- Monthly revenue
- Monthly order volume
- Revenue trend over time
- Order trend over time
- Revenue by country
- Top transaction codes/products
- Customer-level analysis

---

# 📅 Sales Performance Analysis

## Monthly Revenue

Monthly revenue was calculated using `Year_Month`.

| Month | Revenue |
|---|---:|
| 2010-12 | £821,452.73 |
| 2011-01 | £689,811.61 |
| 2011-02 | £522,545.56 |
| 2011-03 | £716,215.26 |
| 2011-04 | £536,968.49 |
| 2011-05 | £769,296.61 |
| 2011-06 | £760,547.01 |
| 2011-07 | £718,076.12 |
| 2011-08 | £757,841.38 |
| 2011-09 | £1,056,435.19 |
| 2011-10 | £1,151,263.73 |
| 2011-11 | £1,503,866.78 |
| 2011-12 | £637,790.33 |

The strongest observed monthly revenue in the current analysis is:

```text
November 2011 → £1,503,866.78
```

---

# 📦 Product & Transaction-Code Analysis

Product-level and transaction-code analysis was performed using:

- `StockCode`
- `Description`
- `Quantity`
- `Revenue`

## Top Transaction Codes / Descriptions by Revenue

| Stock Code | Description | Revenue |
|---|---|---:|
| `DOT` | DOTCOM POSTAGE | £206,248.77 |
| `22423` | REGENCY CAKESTAND 3 TIER | £174,156.54 |
| `23843` | PAPER CRAFT, LITTLE BIRDIE | £168,469.60 |
| `85123A` | WHITE HANGING HEART T-LIGHT HOLDER | £104,284.24 |
| `47566` | PARTY BUNTING | £99,445.23 |
| `85099B` | JUMBO BAG RED RETROSPOT | £94,159.81 |
| `23166` | MEDIUM CERAMIC TOP STORAGE JAR | £81,700.92 |
| `POST` | POSTAGE | £78,101.88 |
| `M` | Manual | £77,750.27 |
| `23084` | RABBIT NIGHT LIGHT | £66,870.03 |

### Analytical Note

The ranking contains both conventional merchandise and non-product/service transaction codes such as:

- `DOT` / DOTCOM POSTAGE
- `POST` / POSTAGE
- `M` / Manual

These entries will be handled carefully in the final product-performance analysis so that product insights are not confused with service or transaction adjustments.

---

# 📦 Top Transaction Codes by Quantity

The highest observed quantities in the cleaned dataset include:

| Stock Code | Description | Quantity |
|---|---|---:|
| `23843` | PAPER CRAFT, LITTLE BIRDIE | 80,995 |
| `23166` | MEDIUM CERAMIC TOP STORAGE JAR | 78,033 |
| `84077` | WORLD WAR 2 GLIDERS ASSTD DESIGNS | 54,951 |
| `85099B` | JUMBO BAG RED RETROSPOT | 48,371 |
| `85123A` | WHITE HANGING HEART T-LIGHT HOLDER | 37,580 |
| `22197` | POPCORN HOLDER | 36,749 |
| `22112` | PACK OF 72 RETROSPOT CAKE CASES | 36,396 |
| `84879` | ASSORTED COLOUR BIRD ORNAMENT | 36,362 |
| `23084` | RABBIT NIGHT LIGHT | 30,739 |
| `22492` | MINI PAINT SET VINTAGE | 26,633 |

The comparison between quantity-based and revenue-based rankings helps distinguish **sales volume** from **revenue contribution**.

---

# 🌍 Geographic Analysis

Revenue was analyzed by country.

## Top Countries by Revenue

| Country | Revenue |
|---|---:|
| United Kingdom | **£9,001,744.09** |
| Netherlands | £285,446.34 |
| EIRE | £283,140.52 |
| Germany | £228,678.40 |
| France | £209,625.37 |
| Australia | £138,453.81 |
| Spain | £61,558.56 |
| Switzerland | £57,067.60 |
| Belgium | £41,196.34 |
| Sweden | £38,367.83 |

The United Kingdom represents the dominant revenue market in the current dataset.

---

# 👥 Customer Analysis

Customer-level analysis was performed using records with available `CustomerID`.

The main sales dataset retains transactions without a CustomerID because these transactions can still contribute to overall sales analysis.

A separate customer dataframe was created for customer-specific analysis:

```python
df_customer = df_clean.dropna(
    subset=["CustomerID"]
).copy()
```

## Current Customer Analysis

```text
Identified Customers: 4,338
```

Customer-level metrics include:

- Total Revenue
- Total Orders
- Total Quantity
- Average Order Value
- Purchase Frequency
- Recency
- Monetary Value

---

# 📌 RFM Customer Segmentation

RFM analysis was performed using customer-level transaction data.

RFM stands for:

```text
R → Recency
F → Frequency
M → Monetary
```

## Recency

How recently a customer made a purchase.

Lower recency values indicate more recent purchasing activity.

## Frequency

How often a customer made purchases.

Higher frequency values indicate more frequent purchasing behavior.

## Monetary

How much revenue a customer generated.

Higher monetary values indicate greater customer value within the analyzed dataset.

---

# 📊 RFM Scoring Method

RFM metrics were converted into scores from **1 to 5**.

### Recency

```text
Lower Recency → Higher Score
```

### Frequency

```text
Higher Frequency → Higher Score
```

### Monetary

```text
Higher Monetary Value → Higher Score
```

Quintile-based scoring was used to create the RFM scores.

The final customer-level dataset contains:

```text
CustomerID
Recency
Frequency
Monetary
R_Score
F_Score
M_Score
RFM_Score
RFM_Code
Segment
```

The RFM dataset is stored in:

```text
dataset/customer_rfm.csv
```

---

# 🏷️ RFM Customer Segments

The current segmentation framework includes:

- Champions
- Loyal Customers
- Potential Loyalists
- New Customers
- At Risk
- Can't Lose Them
- Hibernating
- Others

Segments were assigned using combinations of RFM scores rather than a single monetary metric.

---

# 📊 RFM Segment Results

The current RFM analysis contains:

```text
4,338 identified customers
```

## Customer Distribution

| Segment | Customers | Share |
|---|---:|---:|
| Others | 1,035 | 23.86% |
| Champions | 948 | 21.85% |
| Hibernating | 824 | 18.99% |
| Loyal Customers | 456 | 10.51% |
| Potential Loyalists | 425 | 9.80% |
| At Risk | 287 | 6.62% |
| New Customers | 190 | 4.38% |
| Can't Lose Them | 173 | 3.99% |

---

## RFM Segment Performance

| Segment | Customers | Avg Recency | Avg Frequency | Avg Monetary | Revenue Contribution |
|---|---:|---:|---:|---:|---:|
| Champions | 948 | 13.13 | 11.17 | £6,068.16 | 64.73% |
| Loyal Customers | 456 | 39.17 | 5.28 | £1,976.16 | 10.14% |
| Others | 1,035 | 105.94 | 1.72 | £713.26 | 8.31% |
| Potential Loyalists | 425 | 17.31 | 2.23 | £1,174.93 | 5.62% |
| Can't Lose Them | 173 | 124.54 | 5.50 | £2,229.60 | 4.34% |
| At Risk | 287 | 151.03 | 2.79 | £1,290.53 | 4.17% |
| Hibernating | 824 | 228.09 | 1.04 | £228.66 | 2.12% |
| New Customers | 190 | 18.69 | 1.01 | £270.39 | 0.58% |

### Analytical Note

The revenue contribution percentages above are calculated from the **4,338 identified customers included in RFM analysis**, not from all 524,878 cleaned transaction records.

Among these identified customers, the Champions segment contributes the largest share of observed monetary value.

---

# 🐘 PostgreSQL & SQL Analysis

The cleaned sales data and customer RFM data have been loaded into PostgreSQL.

## PostgreSQL Database

```text
ecommerce_analytics_db
```

## Main Tables

### `ecommerce_sales`

Transaction-level sales data containing:

- Invoice information
- Product information
- Quantity
- Invoice date
- Unit price
- Customer ID
- Country
- Revenue
- Date features

### `customer_rfm`

Customer-level RFM data containing:

- Customer ID
- Recency
- Frequency
- Monetary
- RFM scores
- RFM code
- Customer segment

---

# 🧮 Completed SQL Analysis

Current SQL analysis includes:

- Overall sales KPI analysis
- Monthly revenue analysis
- Top transaction-code / product analysis
- Country revenue analysis

### Current SQL KPI Query

The PostgreSQL KPI analysis includes:

- Total sales records
- Unique orders
- Identified customers
- Total revenue
- Average order value

### Monthly Revenue

Monthly revenue was also reproduced in PostgreSQL.

This provides a Python-to-PostgreSQL consistency check and forms the foundation for additional SQL business analysis.

---

# 🔎 Planned / Next SQL Analysis

The remaining SQL analysis will include:

## Customer Analysis

- Revenue by customer
- Orders per customer
- Customer purchase frequency
- Repeat customer analysis
- Top customers

## RFM Analysis

- Segment size
- Segment revenue
- Segment contribution
- Customer-value comparison
- At-risk customer analysis

## Revenue Analysis

- Revenue contribution
- Customer concentration
- Product contribution
- Geographic performance
- Repeat-purchase behavior

---

# 📊 Power BI Dashboard

The Power BI dashboard is the final business intelligence layer of the project.

The dashboard will transform the Python and PostgreSQL analysis into an interactive decision-support report.

## Planned Dashboard Structure

### Page 1 — Executive Sales Overview

Purpose:

Provide a high-level view of e-commerce performance.

Planned KPIs:

- Total Revenue
- Total Orders
- Total Customers
- Total Quantity
- Average Order Value

Planned visuals:

- Revenue Trend
- Order Trend
- Revenue by Country
- Top Products / Transaction Codes
- Key KPI cards

---

### Page 2 — Customer & RFM Analysis

Purpose:

Understand customer value and purchasing behavior.

Planned analysis:

- Customer Count
- Customer Revenue
- Purchase Frequency
- RFM Segment Distribution
- Revenue by Segment
- Customer Value
- At-Risk Customers
- Champions

---

### Page 3 — Product & Geographic Analysis

Purpose:

Understand product and market performance.

Planned analysis:

- Revenue by Product
- Quantity by Product
- Product Contribution
- Revenue by Country
- Orders by Country
- Geographic Revenue Concentration
- Revenue Trends

---

# 💡 Current Business Insights

The completed analysis has already identified several patterns.

### 1. Revenue is heavily concentrated in the United Kingdom

The United Kingdom generated approximately:

```text
£9,001,744.09
```

in the current cleaned dataset, substantially exceeding the revenue generated by other individual countries.

---

### 2. November 2011 had the highest observed monthly revenue

The highest monthly revenue in the current analysis was:

```text
November 2011
£1,503,866.78
```

---

### 3. Customer monetary value is concentrated in the Champions segment

Within the 4,338 identified customers included in RFM:

```text
Champions
948 customers
64.73% of identified-customer monetary value
```

This indicates a large concentration of observed customer value within this segment.

---

### 4. Hibernating customers show low purchase activity

The current Hibernating segment contains:

```text
824 customers
Average Recency ≈ 228 days
Average Frequency ≈ 1.04 orders
Average Monetary ≈ £228.66
```

This segment shows comparatively low purchase frequency and long recency.

---

### 5. At-Risk and Can't-Lose-Them segments contain previously valuable customers

The current analysis shows:

```text
Can't Lose Them
173 customers
Average Frequency ≈ 5.50
Average Monetary ≈ £2,229.60
```

and:

```text
At Risk
287 customers
Average Frequency ≈ 2.79
Average Monetary ≈ £1,290.53
```

These segments are important for further customer-retention analysis.

---

### 6. Quantity and revenue tell different stories

The products or transaction codes with the highest quantities are not always the same as those generating the highest revenue.

Therefore, product performance should be evaluated using both:

```text
Quantity Sold
+
Revenue Generated
```

rather than using only one metric.

---

# 🎯 Business Recommendations

Final recommendations will be developed after completing the remaining SQL and Power BI stages.

Current analytical areas for recommendations include:

## Customer Retention

Develop targeted retention and re-engagement strategies for customer segments such as:

- At Risk
- Can't Lose Them
- Hibernating

## High-Value Customer Management

Analyze Champions and Loyal Customers for:

- Personalized offers
- Repeat-purchase campaigns
- Loyalty initiatives
- Cross-selling opportunities

## Customer Reactivation

Identify inactive customers and evaluate appropriate re-engagement strategies based on previous value and purchasing behavior.

## Product Strategy

Use both revenue and quantity analysis to distinguish:

- High-volume products
- High-revenue products
- Lower-performing products
- Non-product transaction codes

## Geographic Strategy

Use country-level revenue and customer analysis to understand:

- Strong markets
- Customer concentration
- Revenue concentration
- Potential areas for further investigation

---

# 📁 Repository Structure

```text
ecommerce-sales-customer-analytics/
│
├── dataset/
│   ├── Online Retail.xlsx
│   ├── online_retail_clean.csv
│   └── customer_rfm.csv
│
├── notebooks/
│   └── ecommerce_sales_customer_analysis.ipynb
│
├── sql/
│   └── ecommerce_sales_analysis.sql
│
├── visuals/
│
├── powerbi/
│
├── report/
│
├── .gitignore
│
└── README.md
```

---

# 📌 Project Status

| Component | Status |
|---|:---:|
| Repository Setup | ✅ Completed |
| GitHub Repository | ✅ Completed |
| README | ✅ Updated |
| Dataset Added | ✅ Completed |
| Python Notebook | ✅ Completed |
| Initial Data Inspection | ✅ Completed |
| Data Validation | ✅ Completed |
| Data Cleaning | ✅ Completed |
| Revenue Calculation | ✅ Completed |
| Feature Engineering | ✅ Completed |
| KPI Analysis | ✅ Completed |
| Sales EDA | ✅ Completed |
| Country Analysis | ✅ Completed |
| Product / Transaction Analysis | ✅ Completed |
| Customer Analysis | ✅ Completed |
| RFM Dataset Creation | ✅ Completed |
| RFM Scoring | ✅ Completed |
| RFM Customer Segmentation | ✅ Completed |
| RFM Segment Analysis | ✅ Completed |
| PostgreSQL Database Setup | ✅ Completed |
| PostgreSQL Data Import | ✅ Completed |
| SQL KPI Analysis | ✅ Completed |
| SQL Monthly Revenue Analysis | ✅ Completed |
| SQL Product Analysis | ✅ Completed |
| SQL Country Analysis | ✅ Completed |
| SQL Customer Analysis | ⏳ Pending |
| SQL RFM Analysis | ⏳ Pending |
| SQL Revenue Contribution Analysis | ⏳ Pending |
| Python / PostgreSQL KPI Reconciliation | ⏳ Pending |
| Power BI Dashboard | ⏳ Pending |
| Dashboard Screenshots | ⏳ Pending |
| Final Business Insights | 🔄 In Progress |
| Final Recommendations | ⏳ Pending |
| Final Documentation | ⏳ Pending |

---

# 🧠 Skills Demonstrated

## Python

- Python
- Pandas
- NumPy
- DataFrame manipulation
- GroupBy analysis
- Data cleaning
- Data validation
- Feature engineering
- KPI calculation

## Data Visualization

- Matplotlib
- Seaborn
- Time-series visualization
- Revenue visualization
- Customer segmentation visualization
- Business-oriented charts

## SQL & PostgreSQL

- SQL
- PostgreSQL
- pgAdmin
- Aggregation
- GROUP BY
- COUNT
- COUNT DISTINCT
- SUM
- Business KPI queries
- Monthly analysis
- Product analysis
- Geographic analysis

## Customer Analytics

- Customer revenue analysis
- Purchase frequency
- Recency analysis
- Monetary analysis
- RFM scoring
- RFM segmentation

## Business Intelligence

- Power BI
- DAX
- Power Query
- Data modeling
- Dashboard development
- Business reporting

## Development & Version Control

- Jupyter Notebook
- VS Code
- Git
- GitHub
- Repository organization
- Project documentation

---

# 📚 Analytical Concepts

This project applies:

- Descriptive Analytics
- Exploratory Data Analysis
- Data Cleaning
- Data Validation
- Feature Engineering
- KPI Analysis
- Revenue Analysis
- Sales Trend Analysis
- Customer Analytics
- Product Performance Analysis
- Geographic Analysis
- RFM Analysis
- Customer Segmentation
- Business Intelligence
- Data Storytelling
- Data-Driven Decision Making

---

# ⚠️ Data & Analytical Disclaimer

The raw dataset is preserved separately from the cleaned analytical dataset to maintain reproducibility.

The cleaned sales dataset excludes:

- Exact duplicate transaction rows
- Non-positive quantity records
- Non-positive unit-price records

Transactions without `CustomerID` are retained in the main sales-analysis dataset because they can still contribute to overall sales analysis.

Customer-level and RFM analysis use transactions with available customer identifiers.

The RFM framework is a **descriptive customer segmentation method**, not a predictive machine-learning model.

Observed patterns in this project describe relationships within the analyzed dataset and should not automatically be interpreted as causal relationships.

Business recommendations should be validated using additional business context and experimentation before implementation.

---

# 🎯 Project Objective

The objective of this project is to demonstrate a complete practical **Data Analyst workflow** using real-world transactional e-commerce data.

```text
Raw Data
    ↓
Data Validation
    ↓
Data Cleaning
    ↓
Feature Engineering
    ↓
Python EDA
    ↓
KPI Analysis
    ↓
Customer Analysis
    ↓
RFM Segmentation
    ↓
PostgreSQL
    ↓
SQL Business Analysis
    ↓
Power BI
    ↓
Business Insights
    ↓
Business Recommendations
```

The project demonstrates the ability to transform raw transaction data into structured business analysis and decision-support outputs.

---

# 👤 Author

## Uveshkhan Lohani

**B.E. Information Technology Graduate | Aspiring Data Analyst**

Focused on building practical expertise in:

- Data Analytics
- Python
- SQL
- PostgreSQL
- Power BI
- Microsoft Excel
- Business Intelligence
- Data Visualization

---

# 🔗 Connect

**GitHub:**  
https://github.com/Uveshkhan2005

**LinkedIn:**  
https://www.linkedin.com/in/ Uveshkhan-lohani-615793273/

**Email:**  
uveshkhanlohani65@gmail.com

---

# 📌 Portfolio Project

This project is part of my Data Analytics portfolio and demonstrates practical experience in transforming transactional retail data into business-oriented analytical outputs.

```text
Data
 ↓
Cleaning
 ↓
Analysis
 ↓
Customer Understanding
 ↓
SQL / Database Analysis
 ↓
Business Intelligence
 ↓
Decision Support
```

---

# 🚀 Key Takeaway

> **E-Commerce Sales & Customer Analytics demonstrates how transactional retail data can be transformed into meaningful business intelligence using Python, SQL, PostgreSQL, RFM customer segmentation, and Power BI.**
