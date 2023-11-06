SELECT c.customer_id, c.name, c.email, c.location, COUNT(o.id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY c.id, c.name, c.email, c.location
ORDER BY total_orders DESC;