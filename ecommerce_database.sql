-- Task 3 E-commerce Database
BEGIN TRANSACTION;
CREATE TABLE customers (
 customer_id INTEGER PRIMARY KEY, customer_name TEXT, city TEXT, state TEXT, signup_date TEXT
);
INSERT INTO "customers" VALUES(1,'Aarav Kumar','Hyderabad','Telangana','2026-01-05');
INSERT INTO "customers" VALUES(2,'Priya Reddy','Vijayawada','Andhra Pradesh','2026-01-08');
INSERT INTO "customers" VALUES(3,'Rahul Sharma','Bengaluru','Karnataka','2026-01-12');
INSERT INTO "customers" VALUES(4,'Sneha Rao','Chennai','Tamil Nadu','2026-01-15');
INSERT INTO "customers" VALUES(5,'Kiran Das','Hyderabad','Telangana','2026-01-20');
INSERT INTO "customers" VALUES(6,'Anjali Devi','Guntur','Andhra Pradesh','2026-01-24');
INSERT INTO "customers" VALUES(7,'Vikram Singh','Pune','Maharashtra','2026-02-02');
INSERT INTO "customers" VALUES(8,'Meena Patel','Mumbai','Maharashtra','2026-02-06');
INSERT INTO "customers" VALUES(9,'Suresh Babu','Warangal','Telangana','2026-02-10');
INSERT INTO "customers" VALUES(10,'Divya Nair','Kochi','Kerala','2026-02-14');
CREATE TABLE order_items (
 order_item_id INTEGER PRIMARY KEY, order_id INTEGER, product_id INTEGER, quantity INTEGER, unit_price REAL
);
INSERT INTO "order_items" VALUES(1,1001,101,2,799.0);
INSERT INTO "order_items" VALUES(2,1001,106,3,299.0);
INSERT INTO "order_items" VALUES(3,1002,102,1,2499.0);
INSERT INTO "order_items" VALUES(4,1002,107,2,149.0);
INSERT INTO "order_items" VALUES(5,1003,104,1,6999.0);
INSERT INTO "order_items" VALUES(6,1003,109,1,999.0);
INSERT INTO "order_items" VALUES(7,1004,105,1,4999.0);
INSERT INTO "order_items" VALUES(8,1004,108,2,599.0);
INSERT INTO "order_items" VALUES(9,1005,110,1,1599.0);
INSERT INTO "order_items" VALUES(10,1006,103,2,1299.0);
INSERT INTO "order_items" VALUES(11,1006,107,3,149.0);
INSERT INTO "order_items" VALUES(12,1007,102,1,2499.0);
INSERT INTO "order_items" VALUES(13,1007,110,1,1599.0);
INSERT INTO "order_items" VALUES(14,1008,104,1,6999.0);
INSERT INTO "order_items" VALUES(15,1008,108,1,599.0);
INSERT INTO "order_items" VALUES(16,1009,101,1,799.0);
INSERT INTO "order_items" VALUES(17,1009,106,5,299.0);
INSERT INTO "order_items" VALUES(18,1010,109,2,999.0);
INSERT INTO "order_items" VALUES(19,1010,108,1,599.0);
INSERT INTO "order_items" VALUES(20,1011,103,1,1299.0);
INSERT INTO "order_items" VALUES(21,1011,105,1,4999.0);
INSERT INTO "order_items" VALUES(22,1012,102,2,2499.0);
INSERT INTO "order_items" VALUES(23,1012,106,2,299.0);
INSERT INTO "order_items" VALUES(24,1013,110,2,1599.0);
INSERT INTO "order_items" VALUES(25,1013,107,5,149.0);
INSERT INTO "order_items" VALUES(26,1014,104,1,6999.0);
INSERT INTO "order_items" VALUES(27,1015,101,3,799.0);
INSERT INTO "order_items" VALUES(28,1015,109,1,999.0);
CREATE TABLE orders (
 order_id INTEGER PRIMARY KEY, customer_id INTEGER, order_date TEXT, status TEXT
);
INSERT INTO "orders" VALUES(1001,1,'2026-02-01','Delivered');
INSERT INTO "orders" VALUES(1002,2,'2026-02-03','Delivered');
INSERT INTO "orders" VALUES(1003,3,'2026-02-05','Shipped');
INSERT INTO "orders" VALUES(1004,4,'2026-02-07','Delivered');
INSERT INTO "orders" VALUES(1005,5,'2026-02-09','Cancelled');
INSERT INTO "orders" VALUES(1006,6,'2026-02-11','Delivered');
INSERT INTO "orders" VALUES(1007,7,'2026-02-13','Shipped');
INSERT INTO "orders" VALUES(1008,8,'2026-02-15','Delivered');
INSERT INTO "orders" VALUES(1009,9,'2026-02-17','Delivered');
INSERT INTO "orders" VALUES(1010,10,'2026-02-20','Shipped');
INSERT INTO "orders" VALUES(1011,1,'2026-03-01','Delivered');
INSERT INTO "orders" VALUES(1012,3,'2026-03-03','Delivered');
INSERT INTO "orders" VALUES(1013,5,'2026-03-05','Delivered');
INSERT INTO "orders" VALUES(1014,8,'2026-03-07','Cancelled');
INSERT INTO "orders" VALUES(1015,2,'2026-03-10','Delivered');
CREATE TABLE products (
 product_id INTEGER PRIMARY KEY, product_name TEXT, category TEXT, price REAL
);
INSERT INTO "products" VALUES(101,'Wireless Mouse','Electronics',799.0);
INSERT INTO "products" VALUES(102,'Mechanical Keyboard','Electronics',2499.0);
INSERT INTO "products" VALUES(103,'USB-C Hub','Electronics',1299.0);
INSERT INTO "products" VALUES(104,'Office Chair','Furniture',6999.0);
INSERT INTO "products" VALUES(105,'Study Table','Furniture',4999.0);
INSERT INTO "products" VALUES(106,'Notebook Pack','Stationery',299.0);
INSERT INTO "products" VALUES(107,'Pen Set','Stationery',149.0);
INSERT INTO "products" VALUES(108,'Water Bottle','Home & Kitchen',599.0);
INSERT INTO "products" VALUES(109,'Desk Lamp','Home & Kitchen',999.0);
INSERT INTO "products" VALUES(110,'Backpack','Bags',1599.0);
COMMIT;
