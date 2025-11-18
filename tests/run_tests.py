import sqlite3

DB = "practice.db"

expected = {
    'count_users': 3,
    'count_products': 3,
    'order_1_items': 2,
}

con = sqlite3.connect(DB)
cur = con.cursor()

cur.execute('SELECT COUNT(*) FROM users')
if cur.fetchone()[0] != expected['count_users']:
    raise SystemExit('users count mismatch')

cur.execute('SELECT COUNT(*) FROM products')
if cur.fetchone()[0] != expected['count_products']:
    raise SystemExit('products count mismatch')

cur.execute('SELECT COUNT(*) FROM order_items WHERE order_id = 1')
if cur.fetchone()[0] != expected['order_1_items']:
    raise SystemExit('order 1 items mismatch')

print('All tests passed')
