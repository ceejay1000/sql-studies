-- Composite indexes
-- Single indexes only perform half of the job. For efficient queries, create composite queries. 
-- In MySQL an index can have a 
-- maximun of 16 columns
use store;
-- SHOW INDEXES IN customers;
-- SHOW INDEXES IN customers;
-- CREATE INDEX idx_state_points ON customers (state, points);
-- EXPLAIN SELECT customer_id FROM customers WHERE state = "CA" AND points > 1000;

-- You can explicity tell MySQL the type of index to use
-- CREATE INDEX idx_state_points ON customers (state, points);
-- EXPLAIN SELECT customer_id FROM customers USE INDEX(idx_state_points) WHERE state = "CA" AND points > 1000;

-- Guidlines for column arrangement in composite indexes
	-- -Frequently used columns
	-- -High cardinality columns
	-- -Take your queries into account
-- This is a general guideline, bot a rule of thumb as queries may change and will require different arrangements