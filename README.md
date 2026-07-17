# Online-Bookstore-Sales-Analytics-PostgreSQL-Power-BI
Business Intelligence solution for an online bookstore using PostgreSQL, SQL, and Power BI to analyze sales, customers, and inventory.

## 📖 Project Overview

This project presents an end-to-end Business Intelligence solution for an Online Bookstore using PostgreSQL and Power BI. The solution is designed to transform raw transactional data into meaningful business insights through database design, SQL analysis, and interactive dashboards.

The project consists of a normalized PostgreSQL database for managing books, customers, and orders, along with a Power BI dashboard that provides comprehensive insights into sales performance, customer behavior, and book inventory. The interactive dashboards enable stakeholders to monitor key performance indicators (KPIs), identify trends, and make data-driven business decisions.

## Business Problem
Online bookstores handle large volumes of transactional data involving books, customers, and orders. As the business grows, manually tracking sales performance, customer purchasing behavior, inventory levels, and product performance becomes inefficient and time-consuming. Without a centralized reporting system, decision-makers struggle to identify best-selling books, monitor revenue trends, understand customer preferences, and maintain optimal inventory levels.

Without an analytical reporting system, business owners face challenges such as:

- Identifying best-selling books and genres
- Tracking sales performance over time
- Understanding customer purchasing behavior
- Monitoring inventory and stock availability
- Recognizing top-performing customers
- Making informed business decisions based on reliable data

This project addresses these challenges by developing an end-to-end analytics solution using PostgreSQL and Power BI. The solution transforms raw transactional data into interactive dashboards and business insights, enabling stakeholders to monitor key performance indicators (KPIs), analyze sales trends, identify high-value customers, evaluate book performance, and make data-driven business decisions.

## 🎯 Business Objectives

The primary objectives of this project are:

- Design a normalized relational database for bookstore operations.
- Analyze sales transactions using SQL.
- Monitor overall sales performance.
- Identify top-selling books and profitable genres.
- Analyze customer purchasing behavior.
- Track inventory and remaining stock.
- Develop interactive Power BI dashboards for business reporting.
- Support strategic decision-making through data visualization.

## 💡 Solution

To solve the identified business challenges, a complete analytics pipeline was developed.

The solution includes:

- Designing a relational PostgreSQL database for books, customers, and orders.
- Writing SQL queries to analyze sales, customers, inventory, and revenue.
- Creating interactive Power BI dashboards for business monitoring.
- Building KPI-driven reports for sales, customer, and book analysis.
- Providing dynamic filtering and navigation to improve user experience.

The final solution transforms raw data into actionable business insights for stakeholders.

## 📂 Dataset Information

The project uses three interconnected datasets representing an online bookstore.

### Books
Contains information about books including:
- Book ID
- Title
- Author
- Genre
- Published Year
- Price
- Stock

### Customers
Contains customer information:
- Customer ID
- Name
- Email
- Phone Number
- City
- Country

### Orders
Contains transactional information:
- Order ID
- Customer ID
- Book ID
- Order Date
- Quantity
- Total Amount

The datasets are linked using primary and foreign key relationships to maintain referential integrity.

## 🗄️ Database Schema

The database follows a normalized relational model consisting of three tables:

Books
Customers
Orders

Relationships:

- One customer can place multiple orders.
- One book can appear in multiple orders.
- Orders act as the transactional table connecting customers and books.

The schema ensures data consistency and supports efficient querying for analytical purposes.

## 🛠️ Technologies Used

- PostgreSQL
- SQL
- Power BI
- Data Modeling
- Data Visualization
- Business Intelligence
- Git & GitHub

## 📊 SQL Analysis

SQL was used to perform business-oriented analysis on the transactional data.

The analysis includes:

- Sales revenue calculation
- Best-selling books
- Genre-wise sales
- Top customers
- Inventory analysis
- Monthly order analysis
- Customer purchase frequency
- Revenue by author
- Stock availability
- Book pricing analysis

SQL concepts used:

- JOINs
- GROUP BY
- HAVING
- Aggregate Functions
- ORDER BY
- Filtering
- Subqueries

## 📈 Power BI Dashboard

The Power BI solution consists of four interactive dashboard pages:

### Home Dashboard
Provides navigation and high-level KPIs.

### Sales Dashboard
Analyzes revenue, orders, sales trends, and top-selling books.

### Customer Dashboard
Analyzes customer spending, top customers, and geographical distribution.

### Book Dashboard
Provides insights into book performance, genre analysis, author performance, pricing, and inventory.

Interactive slicers, navigation buttons, KPI cards, and dynamic charts enhance the reporting experience.

## 🖼️ Dashboard Screenshots

### Home Dashboard
<img width="1351" height="765" alt="image" src="https://github.com/user-attachments/assets/235db98d-c528-46a9-a27c-4982675bdac1" />

### Sales Dashboard
<img width="1350" height="766" alt="image" src="https://github.com/user-attachments/assets/73ee1ffc-1d72-4095-92b5-abda4bfadebe" />

### Customer Dashboard
<img width="1351" height="767" alt="image" src="https://github.com/user-attachments/assets/5da81533-e512-4ed3-8031-a0c141d15559" />

### Book Dashboard
<img width="1348" height="765" alt="image" src="https://github.com/user-attachments/assets/b59810f0-5236-4df9-a830-779da22a987d" />

## 📌 Key Business Insights

The dashboard helps answer important business questions such as:

- Which books generate the highest revenue?
- Which genres contribute the most sales?
- Who are the highest-value customers?
- Which countries and cities generate the most revenue?
- How do sales change over time?
- Which books are running low on stock?
- Which authors contribute the most revenue?

These insights support inventory planning, marketing strategies, and business growth.

## 📁 Repository Structure

Online-Bookstore-Sales-Analytics/
│
├── Dataset/
│   ├── Books.csv
│   ├── Customers.csv
│   └── Orders.csv
│
├── SQL/
│   ├── Database_Creation.sql
│   ├── Data_Import.sql
│   └── Business_Queries.sql
│
├── Power BI/
│   └── Online_Bookstore_Sales_Dashboard.pbix
│
├── Dashboard Screenshots/
│
├── README.md
│
└── LICENSE

## 🚀 Future Enhancements

Possible future improvements include:

- Sales forecasting using Machine Learning
- Customer segmentation using RFM analysis
- Recommendation system for personalized book suggestions
- Real-time dashboard integration
- Inventory demand forecasting
- Automated ETL pipeline
- Cloud database deployment

## 👩‍💻 Author

**Kritika Soni**

Aspiring Data Analyst | MCA Student

### Skills
- SQL
- PostgreSQL
- Power BI
- Python
- Data Analysis
- Data Visualization

📧 Email: kritikasoni9272@gmail.com

🔗 LinkedIn: https://www.linkedin.com/in/kritika-soni-ab7371319/

💻 GitHub: https://github.com/kritikasoni9272-source
