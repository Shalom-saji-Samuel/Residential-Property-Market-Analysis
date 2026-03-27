#  Real Estate Market Analysis: Pricing Trends & Regional Insights

## Project Overview

This project analyzes real estate transaction data to uncover **pricing trends, regional differences, and key factors influencing property values**.

The goal is to simulate a real-world business scenario where stakeholders (e.g., investors, real estate firms, or analysts) need **data-driven insights** to understand the housing market and make informed decisions.

---

## Business Questions

The analysis focuses on answering the following key questions:

1. How have property prices changed over time?
2. Which locations have the highest property values?
3. How do different transaction types affect pricing?
4. Do school districts influence property prices?
5. Where is market activity most concentrated?

---

## Key Insights

### 1. Price Trends

Property prices from **2012 to 2026** show an overall upward trend, with **more growth periods than declines**.

However, certain years such as **2016, 2020, and 2022** experienced noticeable drops in both **sales volume and average prices**, indicating possible market corrections or external economic factors.

---

### 2. Location Analysis

The top 5 cities with the **highest average property prices** are:

1. West Homestead
2. Warrendale
3. Ingomar
4. Baden
5. Presto

These locations represent **high-value micro-markets**, suggesting that premium pricing is not always concentrated in major cities.

---

### 3. Transaction Type Impact

Transaction type has a **significant effect on property pricing**.

* **Higher-priced transactions**:

  * Corporate transfers
  * Multi-parcel sales
  * Private transactions

* **Lower-priced transactions**:

  * Government sales
  * Sheriff sales
  * City treasurer sales

The **lowest average prices** are observed in:

* *“Love and Affection”* sales

This indicates that **non-market or special-condition transactions** tend to distort pricing downward, while corporate/private deals push prices higher.

---

### 4. School District Impact

Properties located within certain school districts consistently show **higher average prices**, including:

* Quaker Valley
* Pine Richland
* Fox Chapel Area
* South Fayette Township
* Upper St. Clair

This suggests a strong correlation between **school district quality/desirability and property value**, making education zones a key factor in real estate pricing.


---

### 5. Market Activity

Property transactions are heavily concentrated in a few key cities:

* Pittsburgh *(dominates by a large margin)*
* Coraopolis
* McKeesport
* Gibsonia
* Sewickley

Pittsburgh acts as the **central hub of real estate activity**, indicating high demand and liquidity in the market.


---

## Key Takeaways

* Property prices show **long-term growth with periodic fluctuations**
* High-value markets are often found in **specific smaller cities**
* **Transaction type strongly influences pricing outcomes**
* **School districts are a major driver** of property value
* Market activity is **highly concentrated in urban centers**

---

## Tools & Technologies

* **Python** → Data cleaning, transformation, feature engineering
* **MySQL** → Structured querying and analysis
* **Power BI** → Interactive dashboard and data visualization

---

## Project Workflow

1. **Data Cleaning & Preparation (Python)**
	
   * Data Import 	
   * Removed irrelevant columns
   * Handled missing values
   * Created new features (e.g., `PRICE_CATEGORY`, date breakdowns)
   * Formatted columns 

2. **Data Analysis (SQL)**

   * I used Mysql to answer all the business questions 

3. **Data Visualization (Power BI)**

   * Built a **2-page interactive dashboard**:

     * Executive Overview (KPIs, trends etc)
     * Deep Dive Analysis
   * Implemented slicers and decomposition tree

---

## Dashboard Features

1. **Overview** 

   * KPI cards (Average Price, Total Sales, Transactions etc)
   * Price trend over time (line chart)  
   * Top cities by price (bar chart)
   * Sales volume trends (monthly analysis)
   * Price category segmentation (donut chart)

* Screenshot of overview page :

1. **Deeper analysis** 

   * Sales volume by sale type (bar chart)
   * Value of sale by month (scatter plot)
   * Decomposition tree on total sales , city and month 

* Screenshot of overview page :


---

## Setup Instructions

- Update file paths in Python and SQL scripts to match your local environment
- Ensure dataset is placed in the `/data` folder

---
## Conclusion

This project demonstrates the ability to:

* Clean and structure real-world datasets
* Perform meaningful business analysis using SQL
* Translate data into actionable insights
* Build professional, interactive dashboards

It reflects a **complete end-to-end data analysis workflow**, similar to what is expected in real-world data analyst roles.

