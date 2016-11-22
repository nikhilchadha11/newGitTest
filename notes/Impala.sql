
-- To Refresh Impala

invalidate metadata;
show tables;

SELECT  cust.customer_state,
		p.product_name,
        p.product_price,
        c.category_name,
        d.department_name
FROM order_items oi
INNER JOIN orders o
	ON oi.order_item_order_id = o.order_id
INNER JOIN customers cust
    ON o.order_customer_id = cust.customer_id
INNER JOIN products p
	ON oi.order_item_product_id = p.product_id
INNER JOIN categories c
    ON p.product_category_id = c.category_id
INNER JOIN departments d
    ON c.category_department_id = d.department_id ;