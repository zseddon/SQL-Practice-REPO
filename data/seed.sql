-- seed some small sample data
INSERT INTO users (id, first_name, last_name, email, created_at) VALUES
(1,'Alice','Smith','alice@example.com','2024-01-02'),
(2,'Bob','Jones','bob@example.com','2024-02-10'),
(3,'Carol','Nguyen','carol@example.com','2024-03-05');


INSERT INTO products (id, name, category, price) VALUES
(1,'Widget','Gadgets',19.99),
(2,'Gizmo','Gadgets',29.99),
(3,'Doodad','Accessories',9.99);


INSERT INTO orders (id, user_id, order_date, status) VALUES
(1,1,'2024-03-01','shipped'),
(2,1,'2024-03-15','processing'),
(3,2,'2024-04-02','shipped');


INSERT INTO order_items (id, order_id, product_id, quantity, unit_price) VALUES
(1,1,1,2,19.99),
(2,1,3,1,9.99),
(3,2,2,1,29.99),
(4,3,2,2,29.99);
