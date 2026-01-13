# 🏏 IPL Auction Analysis (2013 - 2022)

![Python](https://img.shields.io/badge/Python-3.x-blue)
![SQL](https://img.shields.io/badge/MySQL-Database-orange)
![Power BI](https://img.shields.io/badge/Power%20BI-Visualization-yellow)
![Status](https://img.shields.io/badge/Status-Completed-green)

## 📖 Project Overview

This project provides a comprehensive analysis of the **Indian Premier League (IPL) Player Auctions** from 2013 to 2022. 

The workflow integrates **Data Engineering**, **Database Management**, and **Visual Analytics** to uncover trends in franchise spending, player valuations, and auction dynamics over a decade.

---

## 📂 Repository Structure

| File Name | Description |
| :--- | :--- |
| `IPLPlayerAuctionData.csv` | **Raw Dataset**: Original auction records with player names, prices, and teams. |
| `Cleaned_IPL_Auction_Data.csv` | **Processed Dataset**: Cleaned data with normalized columns and new features. |
| `Main_SQL.ipynb` | **ETL Pipeline**: Python notebook that cleans raw data and loads it into a MySQL database. |
| `Main_NoSQL.ipynb` | **Data Cleaning**: Standalone notebook for cleaning data (CSV output only, no SQL). |
| `cleaned_ipl_import.sql` | **SQL Script**: Database schema definition and 10+ analytical queries. |
| `IPL Visualization.pbix` | **Dashboard**: Interactive Power BI report visualizing the insights. |

---

## 📊 Dataset Details

The dataset tracks the financial history of IPL auctions. Key variables include:

- **Player**: Name of the cricketer.
- **Role**: Playing category (Batsman, Bowler, All-Rounder, Wicket Keeper).
- **Amount**: Auction price in INR.
- **Team**: Purchasing franchise.
- **Year**: Auction year (2013-2022).
- **Player_Origin**: Domestic (Indian) vs. International (Overseas).
- **Amount_Cr**: Calculated field representing price in Crores.
- **Repeated**: Boolean flag indicating if a player appeared in multiple auctions.

---

## 🛠️ Prerequisites

To run this project locally, you will need:
- **Python 3.x** (with `pandas` and `mysql-connector-python` libraries)
- **MySQL Server** (local instance)
- **Microsoft Power BI Desktop** (to view the .pbix file)

---

## 🚀 Usage Instructions

### 1. Database Setup
1. Open your SQL client (e.g., MySQL Workbench).
2. Run the `cleaned_ipl_import.sql` script. This will:
   - Create the `ipl_auction` database.
   - Create the `auction_data` table schema.

### 2. Data Cleaning & Loading
1. Open `Main_SQL.ipynb` in Jupyter Notebook.
2. Update the database connection settings (host, user, password) in the notebook.
3. Run all cells to:
   - Load and clean `IPLPlayerAuctionData.csv`.
   - Export `Cleaned_IPL_Auction_Data.csv`.
   - Insert records directly into your MySQL database.

### 3. Analysis & Visualization
- **SQL Analysis**: Use the queries provided at the bottom of `cleaned_ipl_import.sql` to generate insights like "Top 10 Most Expensive Players" or "Team-wise Spend".
- **Dashboard**: Open `IPL Visualization.pbix` in PowerBI to explore the data visually.

---

## 🔎 Key Insights Generated

The analysis answers critical questions such as:
- **Spending Power**: Which teams spend the most on average?
- **Role Valuation**: Do All-Rounders command higher prices than purely Batsmen or Bowlers?
- **Inflation**: How has the total auction purse increased from 2013 to 2022?
- **Player Demand**: Who are the most frequently auctioned players?

---

## 📊 Dashboard Overview

<img src="./dashboard screenshots/dashboard.gif" width="50%" height="50%"/>

## 👤 Author

**Rishabh**