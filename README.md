
🎯 OBJECTIVE
Learn to combine data from multiple tables using SQL Joins.
🛠 Tools
DB Browser for SQLite / MySQL Workbench

📂 SCHEMA USED

We are using the E-commerce Database created in earlier tasks with tables:

users
categories
products
orders
order_items
payments
addresses
reviews
inventory
product_images

📝 SQL QUERIES

🔹 1. INNER JOIN
Get all orders with their users and payment details:

SELECT o.order_id, u.username, o.total_amount, p.payment_method, p.payment_status
FROM orders o
INNER JOIN users u ON o.user_id = u.user_id
INNER JOIN payments p ON o.order_id = p.order_id;

🔹 2. LEFT JOIN
Show all users, and their orders if they exist:

SELECT u.user_id, u.username, o.order_id, o.total_amount
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id;

🔹 3. RIGHT JOIN
Show all orders and their users (if available):

SELECT o.order_id, u.username, o.total_amount
FROM users u
RIGHT JOIN orders o ON u.user_id = o.user_id;

🔹 4. FULL OUTER JOIN
SELECT u.user_id, u.username, o.order_id, o.total_amount
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
UNION
SELECT u.user_id, u.username, o.order_id, o.total_amount
FROM users u
RIGHT JOIN orders o ON u.user_id = o.user_id;
