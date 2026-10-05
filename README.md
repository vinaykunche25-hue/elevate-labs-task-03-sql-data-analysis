# Task 3 – SQL for Data Analysis

**Objective:** Use SQL queries to extract and analyze data from a database.

## Tool
SQLite + SQL.

## Dataset
A sample e-commerce database created for this internship task.

### Tables
- `customers`
- `products`
- `orders`
- `order_items`

## SQL concepts demonstrated
1. SELECT
2. WHERE
3. ORDER BY
4. GROUP BY
5. INNER JOIN
6. LEFT JOIN
7. SUM / AVG / MAX
8. Subqueries
9. CREATE VIEW
10. CREATE INDEX
11. COALESCE for NULL handling

## Folder structure
```text
Task-03-SQL-Data-Analysis/
├── ecommerce_database.sql
├── ecommerce_analysis.sql
├── ecommerce.db
├── query_03_order_status.csv
├── query_07_category_revenue.csv
├── screenshots/
│   ├── 01_select.png
│   ├── 02_where_order.png
│   ├── 03_group_by.png
│   ├── 04_joins.png
│   ├── 05_subquery.png
│   ├── 06_aggregates.png
│   ├── 07_view.png
│   └── 08_index.png
└── README.md
```

## How to run
1. Open `ecommerce.db` in a SQLite-compatible SQL editor.
2. Run `ecommerce_analysis.sql`.
3. The screenshots show representative query outputs.

To rebuild the database from scratch, run `ecommerce_database.sql`.

## Summary
The analysis demonstrates how SQL can be used to filter, sort, group and join e-commerce data, calculate revenue metrics, use subqueries, create reusable views, and add indexes for lookup performance.

**Note:** The dataset is a small sample created for learning and internship submission. The SQL queries and outputs are independently prepared.
