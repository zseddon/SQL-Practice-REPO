-- schema for SQLite
DROP TABLE IF EXISTS users;
CREATE TABLE users (
id INTEGER PRIMARY KEY,
first_name TEXT,
last_name TEXT,
email TEXT,
created_at TEXT
);


DROP TABLE IF EXISTS products;
CREATE TABLE products (
id INTEGER PRIMARY KEY,
name TEXT,
category TEXT,
price NUMERIC
);


DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
id INTEGER PRIMARY KEY,
user_id INTEGER,
order_date TEXT,
status TEXT,
FOREIGN KEY(user_id) REFERENCES users(id)
);


DROP TABLE IF EXISTS order_items;
CREATE TABLE order_items (
id INTEGER PRIMARY KEY,
order_id INTEGER,
product_id INTEGER,
quantity INTEGER,
unit_price NUMERIC,
FOREIGN KEY(order_id) REFERENCES orders(id),
FOREIGN KEY(product_id) REFERENCES products(id)
);
