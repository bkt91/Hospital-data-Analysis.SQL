# bkt.SQL.projects
# 🏥 Hospital Data Analysis using SQL

My first SQL project: analysing hospital admissions, departments, doctors, patients and medical expenses with PostgreSQL to answer 10 business questions.

## 📌 Project Overview

The goal was to turn raw hospital data into answers a hospital administrator would care about: which departments are busiest, where costs are highest, how long patients stay, and how expenses change month to month.

## 🗂️ Dataset

The dataset (`Hospital_Data.csv`) has [100] records and the following columns:

| Column | Description |
|---|---|
| hospital_name | Name of the hospital |
| location | City of the hospital |
| department | Department name |
| doctors_count | Number of doctors |
| patients_count | Number of patients |
| admission_date | Date of admission |
| discharge_date | Date of discharge |
| medical_expences | Medical expense amount |

## 🛠️ Tools Used

- PostgreSQL
- pgAdmin / [postgres/postgres@PostgreSQL 18]

## ❓ Business Questions Answered

1. Total number of patients
2. Average number of doctors per hospital
3. Top 3 departments with the highest number of patients
4. Hospital with the maximum medical expenses
5. Daily average medical expense per hospital
6. Record with the longest hospital stay
7. Total patients treated per city
8. Average length of stay per department
9. Department with the lowest number of patients
10. Total medical expense for each month

## 💡 SQL Concepts Practised

- `CREATE TABLE` and importing data with `COPY`
- Aggregate functions: `SUM`, `AVG`, `MIN`, `MAX`, `COUNT`
- `GROUP BY`, `ORDER BY`, `LIMIT`
- Date arithmetic to calculate length of stay
- `ROUND`, `TO_CHAR`, `EXTRACT`
- `NULLIF` to avoid division-by-zero errors
- Subqueries

## 🔍 Key Insights

> Fill these in after running your queries.

- [Busiest department: _UROLOGY__ with _457__ patients]
- [Hospital with the highest total expenses: _GREEN VALLY HOSPITAL__]
- [City with the most patients treated: _JAIPUR__]
- [Department with the longest average stay: _NEUROLOGY -9.25__ days]
- [Month with the highest expenses: SEPTEMBER___]

## 📁 Repository Structure

```
├── hospital_sql.sql      # Table creation, data import and all queries
├── Hospital_Data.csv     # Dataset
└── README.md
```

## 🚀 How to Run

1. Create a database in PostgreSQL.
2. Run the `CREATE TABLE` statement from `hospital_sql.sql`.
3. Update the file path in the `COPY` command to where your CSV is saved.
4. Run the queries one by one.

## 📚 What I Learned

- Writing a query is easy; writing one that answers the business question correctly takes care and validation.
- Small details matter, such as sort order (`ASC` vs `DESC`) and choosing `SUM` over `COUNT`.
- Edge cases like same-day discharges can break calculations.

## 🔜 Next Steps

- Practise JOINs, window functions and CTEs
- Build a Power BI dashboard using this data

## 👤 balkrishna tripathi

**Balkrishna Tripathi**
Mechanical engineer moving into data analytics
🔗 [LinkedIn profile link]
