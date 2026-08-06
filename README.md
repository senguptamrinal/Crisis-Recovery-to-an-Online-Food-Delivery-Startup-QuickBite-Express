# 🍔 Crisis-Recovery-to-an-Online-Food-Delivery-Startup-QuickBite-Express

<p align="center">

![SQL](https://img.shields.io/badge/SQL-Server-red?style=for-the-badge&logo=microsoftsqlserver)
![Power BI](https://img.shields.io/badge/Power_BI-Dashboard-F2C811?style=for-the-badge&logo=powerbi)
![Business Analysis](https://img.shields.io/badge/Business-Analysis-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Project-Completed-success?style=for-the-badge)

</p>

---

## 📌 Project Overview

QuickBite is a fictional food delivery platform used to simulate a real-world Business Analytics engagement.

This project demonstrates the complete Business Analyst workflow—from understanding the business problem and documenting requirements to SQL-based data analysis, interactive Power BI dashboards, and strategic business recommendations.

The solution provides stakeholders with a centralized reporting system to monitor business performance, customer behavior, restaurant operations, delivery efficiency, and customer satisfaction, enabling data-driven decision-making across the organization.

---

# 🎯 Business Problem

QuickBite operates across multiple cities, restaurants, customers, and delivery partners, generating thousands of transactions daily. Although large volumes of operational data are available, the business lacks a centralized reporting solution to answer critical questions such as:

- How is overall business performance changing over time?
- Which customers generate the highest value?
- Which restaurant partners contribute the most revenue?
- Are delivery operations meeting service expectations?
- How satisfied are customers with their overall experience?

Without a unified reporting system, identifying trends, monitoring KPIs, and making informed business decisions becomes challenging.

---

# 🎯 Project Objectives

The primary objectives of this project were to:

- Design a Business Intelligence solution for executive reporting.
- Analyze revenue, orders, and customer behavior using SQL.
- Evaluate restaurant and cuisine performance.
- Measure delivery efficiency through operational KPIs.
- Analyze customer ratings and sentiment.
- Develop an interactive Power BI dashboard for business decision-making.
- Provide actionable business recommendations based on analytical findings.

---

# 🛠️ Solution Approach

The project followed a structured Business Analytics lifecycle, beginning with business requirement gathering and ending with actionable business recommendations.

The workflow included:

1. Business Understanding
   - Defined the business problem and project objectives.
   - Identified key stakeholders and business requirements.

2. Requirements Documentation
   - Prepared a Business Requirements Document (BRD).
   - Created a Functional Requirements Document (FRD).

3. Data Preparation
   - Imported and validated multiple datasets in Microsoft SQL Server.
   - Designed a relational database structure.

4. SQL Analysis
   - Wrote SQL queries to calculate business KPIs.
   - Analyzed customer, restaurant, delivery, and operational performance.

5. Data Modeling
   - Built a Star Schema in Power BI.
   - Established relationships between fact and dimension tables.

6. Dashboard Development
   - Created interactive dashboards for different business functions.
   - Developed reusable DAX measures and KPIs.

7. Business Recommendations
   - Identified key insights.
   - Proposed data-driven recommendations to improve business performance.
  
   ---

# 🔄 Project Workflow

```text
Business Problem
        │
        ▼
Business Requirements (BRD)
        │
        ▼
Functional Requirements (FRD)
        │
        ▼
SQL Database Design
        │
        ▼
SQL Data Analysis
        │
        ▼
Power BI Data Modeling
        │
        ▼
DAX Measures & KPIs
        │
        ▼
Interactive Dashboards
        │
        ▼
Business Insights
        │
        ▼
Recommendations
```

---

# 💻 Tech Stack

| Category | Tools |
|----------|-------|
| Database | Microsoft SQL Server |
| Data Analysis | SQL |
| Business Intelligence | Power BI |
| Data Modeling | Star Schema |
| Data Preparation | Microsoft Excel |
| Documentation | BRD, FRD, Final Business Report |
| Version Control | Git & GitHub |

---

# 📂 Dataset Overview

The project uses a relational dataset representing the operations of a fictional food delivery platform. The data is organized into fact and dimension tables following a Star Schema design to enable efficient analysis and reporting.

| Table | Type | Description |
|--------|------|-------------|
| dim_customer | Dimension | Customer information including city and acquisition channel |
| dim_restaurant | Dimension | Restaurant details including cuisine, ratings, and status |
| dim_menu_item | Dimension | Menu item information |
| dim_delivery_partner | Dimension | Delivery partner information |
| fact_orders | Fact | Order transactions including revenue, discounts, payment method, and status |
| fact_order_items | Fact | Individual items ordered in each transaction |
| fact_delivery_performance | Fact | Delivery metrics including distance, delay, and SLA compliance |
| fact_ratings | Fact | Customer ratings and sentiment data |

---

# 🗄️ Data Model

The Power BI data model follows a **Star Schema** design, separating transactional fact tables from descriptive dimension tables.

This approach provides:

- Improved query performance
- Simplified relationships
- Better scalability
- Efficient DAX calculations
- Consistent filtering across dashboards

> 📌 *The complete data model diagram is included in the repository under the `07_Images` folder.*

---

# 📊 Dashboard Overview

The Power BI report is organized into five interactive dashboard pages, each designed to answer a specific business question.

| Dashboard | Business Question |
|------------|-------------------|
| 📊 Executive Overview | How is the overall business performing? |
| 👥 Customer Insights | Who are our customers and how do they behave? |
| 🍽️ Restaurant Performance | Which restaurant partners drive business growth? |
| 🚚 Delivery Operations | Are deliveries efficient and meeting service expectations? |
| ⭐ Customer Experience | How satisfied are customers with the service? |

---

# ⭐ Key Features

- End-to-End Business Analytics Case Study
- Business Requirements Document (BRD)
- Functional Requirements Document (FRD)
- Microsoft SQL Server Database Design
- SQL KPI Analysis
- Power BI Star Schema Data Model
- Interactive Multi-Page Dashboard
- DAX Measures & Calculated KPIs
- Customer, Restaurant & Delivery Analytics
- Customer Sentiment Analysis
- Business Recommendations

---

# 📈 Key Business Insights

The analysis uncovered several meaningful business insights across different operational areas.

### 📊 Executive Performance

- Revenue remained strong during the initial months before showing a noticeable decline later in the reporting period.
- Average Order Value (AOV) remained relatively stable, indicating consistent customer spending patterns.
- Order cancellations highlight opportunities to improve operational efficiency.

### 👥 Customer Insights

- Organic acquisition emerged as the strongest customer acquisition channel.
- Customer retention indicates opportunities to strengthen loyalty initiatives.
- A small group of customers contributes a significant share of overall revenue.

### 🍽 Restaurant Performance

- Certain cuisine categories consistently outperform others in terms of revenue and order volume.
- A limited number of restaurant partners generate a disproportionately large share of total revenue.

### 🚚 Delivery Operations

- Delivery performance varies across vehicle types and delivery partners.
- SLA compliance indicates room for operational optimization and improved logistics planning.

### ⭐ Customer Experience

- Most customer reviews are positive, reflecting overall customer satisfaction.
- Customer ratings remain consistently high across major cuisine categories.

---

# 💡 Business Recommendations

Based on the analysis, the following recommendations are proposed:

- Improve SLA compliance by optimizing delivery partner allocation and route planning.
- Investigate the causes behind revenue fluctuations and implement corrective strategies.
- Strengthen customer retention through loyalty programs and personalized offers.
- Expand partnerships with high-performing restaurants and cuisine categories.
- Reduce order cancellations by improving order tracking and delivery communication.
- Continuously monitor customer feedback to identify recurring service issues.
- Use dashboard insights during regular business review meetings to support data-driven decision-making.

---

# 🎯 Skills Demonstrated

### Business Analysis

- Business Requirement Gathering
- Business Requirements Document (BRD)
- Functional Requirements Document (FRD)
- KPI Identification
- Stakeholder-Oriented Reporting

### SQL

- Database Design
- Data Import
- Data Cleaning
- KPI Calculation
- Aggregation & Joins
- Business Query Writing

### Power BI

- Data Modeling
- Star Schema
- DAX Measures
- Interactive Dashboards
- Drill-through & Slicers
- Data Visualization

### Business Thinking

- Customer Analytics
- Restaurant Performance Analysis
- Delivery Operations Analysis
- Customer Experience Analysis
- Business Recommendations


---

# 📁 Repository Structure

```
QuickBite-End-to-End-Business-Analytics-Project
│
├── 📄 README.md
├── 📁 01_BRD
├── 📁 02_FRD
├── 📁 03_SQL
├── 📁 04_Dataset
├── 📁 05_PowerBI
├── 📁 06_Final_Report
├── 📁 07_Images
└── 📄 LICENSE
```

---

# 📊 Dashboard Pages

| Page | Description |
|------|-------------|
| Executive Overview | High-level business KPIs, revenue trends, and order performance. |
| Customer Insights | Customer behavior, acquisition channels, retention, and spending analysis. |
| Restaurant Performance | Revenue contribution, cuisine analysis, and top-performing restaurants. |
| Delivery Operations | Delivery efficiency, SLA compliance, partner performance, and logistics metrics. |
| Customer Experience | Ratings, sentiment analysis, review trends, and customer satisfaction metrics. |

---

# 💼 Why This Project?

This project was created to simulate a real Business Analyst engagement from start to finish.

Instead of focusing only on dashboard development, the project demonstrates the complete analytics lifecycle, including business understanding, requirements documentation, SQL analysis, data modeling, dashboard development, and business recommendations.

The objective was to build a portfolio project that reflects how Business Analysts solve real business problems using data.

---

# 🚀 Future Improvements

Potential enhancements include:

- Real-time dashboard integration
- Predictive demand forecasting
- Customer segmentation using Machine Learning
- Restaurant recommendation engine
- Geographic delivery analysis
- Automated report refresh using Power BI Service

---

# 👨‍💻 About Me

Hi, I'm **Mrinal Sen Gupta**, an aspiring Business Analyst passionate about solving business problems through data.

I enjoy transforming raw data into actionable insights using SQL, Power BI, and structured Business Analysis techniques.

If you have feedback or would like to connect, feel free to reach out.

- 💼 LinkedIn: *(Add Link)*
- 💻 GitHub: *(Add Link)*

