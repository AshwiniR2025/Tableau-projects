# 📊 UPI Transactions Dashboard (Tableau)

This Tableau dashboard analyzes UPI (Unified Payments Interface) transactions across Indian cities, age groups, banks, devices, and merchants. It’s designed to help understand transaction trends using interactive visuals and filters.

---

## 📁 Project Files

- `UPI Dashboard.twb` – Tableau workbook
- `UPI+Transactions-Dataset.xlsx` – Dataset used for visualization
- `dashboard-preview.png` – Optional screenshot of the dashboard

---

## 📈 Key Visuals

- 📍 Transactions by City  
- 👤 Transactions by Age Group  
- 💳 Transactions by Payment Method  
- 🛍️ Popular Merchants  
- 🧰 Filters for:
  - Bank Sent
  - Bank Received
  - Currency
  - Payment Mode
  - Purpose
  - Device Type

---

## 🧠 Age Group Calculation in Tableau

```tableau
IF [CustomerAge] <= 25 THEN "Age Group 1"
ELSEIF [CustomerAge] <= 35 THEN "Age Group 2"
ELSE "Age Group 3"
END
