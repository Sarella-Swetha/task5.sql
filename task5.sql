-- inner join  
SELECT o.order_id, u.username, o.total_amount, p.payment_method, p.payment_status
FROM orders o
INNER JOIN users u ON o.user_id = u.user_id
INNER JOIN payments p ON o.order_id = p.order_id;
-- left join
SELECT u.user_id, u.username, o.order_id, o.total_amount
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id;
-- right join
SELECT o.order_id, u.username, o.total_amount
FROM users u
RIGHT JOIN orders o ON u.user_id = o.user_id;
-- full outer join--
SELECT u.user_id, u.username, o.order_id, o.total_amount
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
UNION
SELECT u.user_id, u.username, o.order_id, o.total_amount
FROM users u
RIGHT JOIN orders o ON u.user_id = o.user_id;
 

