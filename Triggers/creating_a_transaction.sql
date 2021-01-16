START TRANSACTION;

INSERT INTO orders (customer_id, order_date, state) VALUES (1, '2019-01-01', 1);

INSERT INTO order_items VALUES (LAST_INSERT_ID(), 1, 1, 1);

COMMIT;
-- ROLLBACK is used in placed of COMMIT to manually rollback a transaction if it fails
-- By default MySQL wraps CREATE, UPDATE, INSERT and DELETE statements in transactions 
-- and automatically commits them if errors are not returned. This iis controlled using a systems variable called autommit