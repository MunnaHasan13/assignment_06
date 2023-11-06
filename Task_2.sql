SELECT p.name, oi.quantity, oi.quantity * oi.unit_price AS total_amount
FROM order_items oi
INNER JOIN products p ON oi.product_id = p.id
ORDER BY oi.order_id ASC;