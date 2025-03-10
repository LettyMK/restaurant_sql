-- 1. 
SELECT * FROM order_details;

-- 2.
SELECT MIN(order_date), MAX(order_date) FROM order_details;

-- 3. 
SELECT COUNT(distinct order_id) FROM order_details;

-- 4. 
SELECT COUNT(item_id) FROM order_details;

-- 5.
SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id;

-- 6.
SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
HAVING num_items > 12;