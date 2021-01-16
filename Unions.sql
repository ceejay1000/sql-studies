SELECT customer_id, first_name, last_name, 'GOLD' AS type, points FROM customers WHERE points >= 3000
UNION
SELECT customer_id, first_name, last_name, 'SILVER' AS type, points FROM customers WHERE points BETWEEN 2000 AND 2999
UNION
SELECT customer_id, first_name, last_name, 'BRONZE' AS type, points FROM customers WHERE points < 2000 ORDER BY first_name;