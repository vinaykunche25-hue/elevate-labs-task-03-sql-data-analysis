-- Task 3: SQL for Data Analysis
-- SQLite
-- Run ecommerce_database.sql first.

-- 1. SELECT
SELECT * FROM customers;

-- 2. WHERE + ORDER BY
SELECT order_id, customer_id, order_date, status
FROM orders
WHERE status = 'Delivered'
ORDER BY order_date DESC;

-- 3. GROUP BY
SELECT status, COUNT(*) AS total_orders
FROM orders
GROUP BY status
ORDER BY total_orders DESC;

-- 4. INNER JOIN
SELECT o.order_id, c.customer_name, o.order_date, o.status
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
ORDER BY o.order_id;

-- 5. LEFT JOIN
SELECT c.customer_name, COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_orders DESC;

-- 6. Aggregate functions
SELECT SUM(price) AS total_product_value,
       ROUND(AVG(price),2) AS average_product_price,
       MAX(price) AS highest_product_price
FROM products;

-- 7. Revenue by category
SELECT p.category, ROUND(SUM(oi.quantity * oi.unit_price),2) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.status <> 'Cancelled'
GROUP BY p.category
ORDER BY revenue DESC;

-- 8. Subquery: customers above average revenue
SELECT c.customer_name,
       ROUND(SUM(oi.quantity * oi.unit_price),2) AS customer_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status <> 'Cancelled'
GROUP BY c.customer_id, c.customer_name
HAVING SUM(oi.quantity * oi.unit_price) >
(
 SELECT AVG(customer_total)
 FROM (
   SELECT SUM(oi2.quantity * oi2.unit_price) AS customer_total
   FROM orders o2
   JOIN order_items oi2 ON o2.order_id = oi2.order_id
   WHERE o2.status <> 'Cancelled'
   GROUP BY o2.customer_id
 )
)
ORDER BY customer_revenue DESC;

-- 9. VIEW
DROP VIEW IF EXISTS customer_sales_summary;
CREATE VIEW customer_sales_summary AS
SELECT c.customer_id, c.customer_name,
       COUNT(DISTINCT o.order_id) AS total_orders,
       ROUND(SUM(oi.quantity * oi.unit_price),2) AS total_revenue
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status <> 'Cancelled' OR o.status IS NULL
GROUP BY c.customer_id, c.customer_name;

SELECT * FROM customer_sales_summary
ORDER BY total_revenue DESC;

-- 10. INDEX
CREATE INDEX IF NOT EXISTS idx_orders_customer_date
ON orders(customer_id, order_date);

PRAGMA index_list('orders');

-- 11. NULL handling
SELECT customer_id, customer_name, COALESCE(city,'Unknown') AS city
FROM customers;
