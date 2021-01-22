EXPLAIN SELECT customer_id FROM store.customers WHERE state = 'CA';
-- MySQL automatically creates indexes on foreign keys to make it faster when joining tables
-- CREATE INDDEX indx_column_name ON table_name (column_name)
-- CREATE INDEX idx_state ON customers (state);
-- Sometimes, after creating an index still results in performance problems. To prevent this avoid expressions in SQL queries
-- Breakdown queries into sub-queries;