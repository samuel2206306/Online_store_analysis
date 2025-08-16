SELECT 
    o.order_id,
    c.customer_name,
    p.product_name,
    o.order_date,
    od.quantity * od.unit_price AS total_price
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
ORDER BY o.order_date;
