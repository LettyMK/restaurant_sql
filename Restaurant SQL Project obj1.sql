USE restaurant_db;

-- 1. 
select * from menu_items;

-- 2.
select COUNT(menu_item_id) from menu_items;

-- 3. 
SELECT MAX(price) FROM menu_items;
SELECT MIN(price) FROM menu_items;

-- 4. 
SELECT * FROM menu_items 
WHERE category 
LIKE 'Italian';

-- 5. 
SELECT * FROM menu_items 
WHERE category 
LIKE 'Italian'
order by price;

SELECT * FROM menu_items 
WHERE category 
LIKE 'Italian'
order by price desc;

-- 6. 
SELECT category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;

-- 7. 
SELECT category, avg(price) AS avg_price
FROM menu_items
GROUP BY category;


