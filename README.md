# 📊 Data Analyst Assignment – SQL, Spreadsheet & Python

## 📌 Overview

This project demonstrates core data analysis skills across three key areas:

* **SQL (Database Management & Querying)**
* **Spreadsheet Analysis (Excel/Google Sheets)**
* **Python Programming (Logic Building & Data Processing)**

The assignment simulates real-world business scenarios using a **Hotel Management System** and a **Clinic Management System**, along with spreadsheet-based ticket analysis.

---

## 🗂️ Project Structure

```
Data_Analyst_Assignment/
│
├── SQL/
│   ├── 01_Hotel_Schema.sql
│   ├── 02_Hotel_Queries.sql
│   ├── 03_Clinic_Schema.sql
│   └── 04_Clinic_Queries.sql
│
├── Spreadsheets/
│   └── Ticket_Analysis.xlsx
│
├── Python/
│   ├── 01_Time_Converter.py
│   └── 02_Remove_Duplicates.py
│
└── README.md
```

---

## 🗄️ SQL Section

### 🔹 Hotel Management System

* Created tables: `users`, `bookings`, `items`, `booking_commercials`
* Inserted sample data to simulate booking and billing scenarios

### 🔹 Key Queries Implemented

* Last booked room per user
* Monthly billing analysis
* High-value transactions filtering
* Most/least ordered items (using window functions)
* Second highest billing customers per month

---

### 🔹 Clinic Management System

* Created tables: `clinics`, `customer`, `clinic_sales`, `expenses`

### 🔹 Key Queries Implemented

* Revenue by sales channel
* Top 10 customers by spending
* Monthly profit analysis
* Most profitable clinic per city
* Second least profitable clinic per state

---

## 📊 Spreadsheet Analysis

### 🔹 Dataset

* Two sheets: `ticket` and `feedbacks`
* Contains 50+ rows of realistic data

### 🔹 Tasks Performed

1. **Data Lookup**

   * Populated `ticket_created_at` using:

   ```
   =INDEX(ticket!B:B, MATCH(A2, ticket!E:E, 0))
   ```

2. **Helper Columns**

   * Same Day:

   ```
   =IF(INT(created_at)=INT(closed_at),"Yes","No")
   ```

   * Same Hour:

   ```
   =IF(AND(INT(created_at)=INT(closed_at), HOUR(created_at)=HOUR(closed_at)),"Yes","No")
   ```

3. **Analysis**

   * Outlet-wise ticket counts
   * Same day & same hour comparisons
   * Pivot Table used for summarization

---

## 🐍 Python Section

### 🔹 1. Time Converter

* Converts minutes into hours and minutes format
* Example:

  * Input: `130`
  * Output: `2 hrs 10 minutes`

### 🔹 2. Remove Duplicates from String

* Removes duplicate characters using loop logic
* Example:

  * Input: `programming`
  * Output: `progamin`

---

## ⚙️ Tools & Technologies Used

* SQL: SQLite
* Spreadsheet: Excel / Google Sheets
* Programming: Python 3
* IDE: VS Code

---

## ✅ Key Highlights

* Real-world dataset simulation
* Use of advanced SQL concepts (joins, aggregation, window functions)
* Spreadsheet automation using formulas
* Clean and modular project structure
* Focus on readability and scalability

---

## 🚀 How to Run

### SQL

1. Open SQLite in VS Code
2. Run schema files to create tables
3. Execute query files

### Spreadsheet

1. Open `Ticket_Analysis.xlsx`
2. Apply formulas and analyze using Pivot Table

### Python

```bash
python 01_Time_Converter.py
python 02_Remove_Duplicates.py
```

---

## 🎯 Conclusion

This project demonstrates strong foundational skills in data analysis, including data querying, transformation, and visualization. It reflects the ability to work with structured data, derive insights, and present results effectively.

---

## 📌 Author

**Prathamesh Rathi**
