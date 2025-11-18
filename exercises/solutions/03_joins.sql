SELECT
  o.id AS order_id,
  u.first_name AS user_first_name,
  u.last_name AS user_last_name,
  p.name AS product_name,
  oi.quantity,
  (oi.quantity * oi.unit_price) AS total_price
FROM orders o
JOIN users u ON u.id = o.user_id
JOIN order_items oi ON oi.order_id = o.id
JOIN products p ON p.id = oi.product_id
ORDER BY o.id, p.name;
