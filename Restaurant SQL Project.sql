-- 1.
SELECT * FROM order_details od left join menu_items mi
ON od.item_id = mi.menu_item_id;

-- 2.
SELECT item_name, category, COUNT(order_details_id) AS num_purchases
FROM order_details od left join menu_items mi
	ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
order by num_purchases DESC;

-- 3. 
SELECT order_id, sum(price) as total_spent
FROM order_details od left join menu_items mi
	ON od.item_id = mi.menu_item_id
group by order_id
order by total_spent desc
limit 5;

-- 4. 
SELECT * FROM order_details od left join menu_items mi
	ON od.item_id = mi.menu_item_id
WHERE order_id IN ('440', '2075', '1957', '330', '2675');

-- 2075, 1957, 330, 2675


