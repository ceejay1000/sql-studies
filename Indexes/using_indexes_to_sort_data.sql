-- Indexes can also be used to sort data
-- 1. EXPLAIN SELECT customer_id FROM customers ORDER BY state;
 
 -- Using a column not in the index
 -- Since first_name was not used to create an index, MySQL uses filesort algorithm to sort the data
 -- This is an expensive operation and can result in poor performance. 
 -- 2. EXPLAIN SELECT customer_id FROM customers ORDER BY first_name;
 
 -- The statement below returns the cost associated with a query. The first query has a lower cost than the 2nd one
 -- To prevent this or MySQL from sorting data. Create indexes that can be used to perform fast queries and 
 -- also be used to sort data efficiently
-- SHOW STATUS LIKE "last_query_cost";

-- Assuming a composite index is created on two columns (a, b)
-- Sorting by the ff methods will be performant

-- (a, b)
-- a
-- a, b
-- a DESC, b DESC

-- The ff wil be expensive
-- b
-- (a, b, c)
-- b DESC