# 📊 Superstore Sales Dashboard – Tableau Project

This project focuses on analyzing Superstore sales data from 2015 to 2018 using Tableau and Tableau Prep Builder. The goal is to extract business insights related to sales performance, shipping efficiency, returns, and loss-making segments.

---

## 📁 Dataset Description

The data was sourced from multiple Excel and CSV files, categorized by regions:
- `Orders_East.xlsx`
- `Orders_West.csv`
- `Orders_Central.csv`
- `orders_south_2015.csv`, `orders_south_2016.csv`, `orders_south_2017.csv`, `orders_south_2018.csv`
- `return_reasons_new.xlsx` (Returns data)

---

## 🧹 Data Cleaning with Tableau Prep Builder

### 🔧 Issues Identified:
- South region had separate CSVs by year
- Inconsistent column names and order across regional files
- Date columns were split into year, month, day
- Varying date formats (e.g., `9/17/2016 0:00` vs separate date parts)

### ✅ Cleaning Steps:
1. **Merged South Region Files:** Combined 4 yearly CSVs into one dataset.
2. **Standardized Columns:** Aligned column names and formats across all regional files.
3. **Combined Date Fields:**
   - Merged `Order Year`, `Month`, and `Day` → `Order Date`
   - Merged `Ship Year`, `Month`, and `Day` → `Ship Date`
4. **Removed Redundant Columns:** Dropped all intermediate date parts.
5. **Added Region Info:** Where missing (e.g., in Central), added a `Region` column.
6. **Cleaned Returns Table:** Removed unnecessary fields and added an `Approver` column to indicate return approval.

🛠 Output File: `Superstores_sales_cleaned_dataset.xlsx`  
📄 Workflow File: `Supersales_DataFlow.tflx`

---

## 📊 Dashboard Overview (Tableau)

Dashboard screenshot: `Superstore_sales_dashboard.png`

### 🔍 Key Metrics & Visuals

| Visualization                            | Insight                                                                 |
|------------------------------------------|-------------------------------------------------------------------------|
| 💰 **Total Sales & Profit Cards**        | Displays overall sales ($3.7M) and profit ($485K)                       |
| 🔁 **Return Rate Card**                  | Return rate calculated from returns dataset (~3.81%)                    |
| 📍 **Profits by Region (Bar Chart)**     | Regional profit comparison (West highest, Central lowest)               |
| 🗺️ **State-wise Sales & Profit (Map)**   | Sales distribution across U.S. states                                   |
| 📈 **Sales & Profit by Year (Line Chart)**| Year-over-year trend from 2015–2018                                     |
| 📦 **Top Category & Subcategory Sold**   | Best-selling items by category                                          |
| ⏱️ **Average Days to Ship**              | Time comparison by shipping mode                                        |
| 📉 **Loss by Segment & Ship Mode**       | Identifies negative profit areas (e.g., Consumer–Standard Class)        |

---

## 🧠 Business Insights

- **West Region** dominates profit-wise.
- **Consumer segment + Standard shipping** contributes most to losses.
- **Binders and Phones** are high-selling subcategories.
- **Same Day shipping** has the lowest delivery time.
- Return rate is **under 4%**, but some states (like California) have high sales with moderate returns.

---

## 🛠 Tools Used

- **Tableau Desktop** – Visualization & Dashboard creation
- **Tableau Prep Builder** – Data cleaning & preparation
- **Excel & CSV** – Raw data sources

---

## 📂 Repository Structure

```
Superstore Sales/
├── Orders_East.xlsx
├── Orders_West.csv
├── Orders_Central.csv
├── South_Sales/
│   ├── orders_south_2015.csv
│   ├── orders_south_2016.csv
│   ├── orders_south_2017.csv
│   └── orders_south_2018.csv
├── Supersales_DataFlow.tflx
├── Superstores_sales_cleaned_dataset.xlsx
├── return_reasons_new.xlsx
├── Superstore_sales_dashboard.png
├── Superstore_sales_Dashboard.twb
└── README.md
```

---

## ✅ How to View the Dashboard

1. Use filters like *Region*, *Ship Mode*, *Return Status*, and *Approver* to explore the visuals interactively.
2. Refer to the `.png` for a static snapshot of the final output.

---

## 👤 Author

Ashwini Koppula  
📧 [ashwinikoppula2024@gmail.com](mailto:ashwinikoppula2024@gmail.com)  
🔗 [GitHub Profile](https://github.com/AshwiniR2025)

---
