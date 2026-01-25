# SQL-Project - Swiggy-Data-Analytics-Project
End-to-end SQL Data Analytics Project using Microsoft SQL Server,featuring data,cleaning,star schema modeling,ETL pipeline,and deep business insights from Swiggy food delivery data.
# 🍔 Swiggy SQL Analytics Project

## 📌 Project Overview

This project is an **end-to-end SQL Data Analytics project** built using **Microsoft SQL Server**, based on a Swiggy-like food delivery dataset. The objective of this project is to demonstrate **strong SQL skills**, including **data cleaning, data modeling (Star Schema), ETL, and deep business analysis** using real-world scenarios.

The project simulates how raw transactional data is transformed into a **business-ready analytical data warehouse**, followed by **insightful KPIs and trend analysis** useful for decision-making.

---

## 🎯 Objectives

* Clean and validate raw Swiggy order data
* Remove duplicate and inconsistent records
* Design a **Star Schema** (Fact & Dimension tables)
* Build an analytical data warehouse
* Perform **KPI-driven business analysis** using SQL
* Generate actionable insights related to revenue, orders, ratings, locations, and customer behavior

---

## 🛠️ Tools & Technologies Used

* **Database:** Microsoft SQL Server
* **Language:** SQL
* **Techniques:**

  * Data Cleaning & Validation
  * CTEs & Window Functions
  * Star Schema Modeling
  * Aggregations & Joins
  * Business KPI Analysis

---

## 📂 Dataset Description

The dataset contains Swiggy-style order-level data with the following attributes:

* State, City, Location
* Order Date
* Restaurant Name
* Food Category & Dish Name
* Price (INR)
* Rating & Rating Count

This dataset represents **real-world food delivery transactions** across multiple locations and time periods.

---

## 🔍 Data Cleaning & Validation Steps

* ✅ Checked and handled **NULL values** in all critical columns
* ✅ Identified and removed **duplicate records** using `ROW_NUMBER()` and CTEs
* ✅ Validated empty or blank string values
* ✅ Ensured data consistency before loading into warehouse tables

---

## 🏗️ Data Modeling – Star Schema

The project follows a **Star Schema architecture**, commonly used in data warehouses.

### Dimension Tables

* **dim_date** → Date attributes (Year, Month, Quarter, Week, Day)
* **dim_location** → State, City, Location
* **dim_restaurant** → Restaurant details
* **dim_category** → Food categories
* **dim_dish** → Dish-level information

### Fact Table

* **fact_swiggy_orders**

  * Order-level metrics
  * Price, Rating, Rating Count
  * Foreign keys linking all dimension tables

This structure enables **fast querying and scalable analytics**.

---

## 🔄 ETL Process

1. Extracted raw data from `swiggy_data`
2. Transformed data into dimension tables using `SELECT DISTINCT`
3. Loaded cleaned and structured data into the fact table using multi-table joins
4. Ensured referential integrity using foreign keys

---

## 📊 Key Performance Indicators (KPIs)

* **Total Orders**
* **Total Revenue (INR Million)**
* **Average Dish Price**
* **Average Customer Rating**

These KPIs help measure **overall platform performance**.

---

## 📈 Business Analysis & Insights

### ⏱️ Time-Based Analysis

* Monthly Order Trends
* Quarterly Performance Analysis
* Year-wise Growth Trends
* Orders by Day of Week (Customer Behavior)

### 🌍 Location-Based Insights

* Top 10 Cities by Order Volume & Revenue
* Revenue Contribution by States

### 🏪 Restaurant & Product Analysis

* Top 10 Restaurants by Orders & Revenue
* Most Popular Food Categories
* Most Ordered Dishes

### 💰 Price & Rating Analysis

* Order Distribution by Price Range
* Rating Count Distribution (1–5 Stars)

---

## 📌 Key Insights

* Identified **high-revenue cities and states** for business expansion
* Found **top-performing restaurants and dishes** driving maximum orders
* Observed **peak ordering months and weekdays**
* Analyzed customer price sensitivity using price range segmentation
* Understood customer satisfaction through rating distribution

---

## 🚀 Why This Project is Strong

* ✔ Real-world business use case
* ✔ Complete data lifecycle (Raw → Clean → Model → Analyze)
* ✔ Advanced SQL concepts (CTEs, Window Functions, Star Schema)
* ✔ Interview-ready analytical queries
* ✔ Highly suitable for **Data Analyst / SQL Developer roles**

---

## 📌 Future Enhancements

* Power BI / Tableau Dashboard integration
* Indexing for query optimization
* Stored procedures & views
* Automation of ETL pipeline

---

## 👩‍💻 Author

**Neha Sharma**
MCA (Data Science) | SQL & Data Analytics Enthusiast

---

⭐ *If you like this project, feel free to star the repository!*
