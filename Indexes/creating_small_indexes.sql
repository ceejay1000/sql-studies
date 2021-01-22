-- If strings are stored on strings of the ff type:
	-- -CHAR
    -- -VARCHAR
    -- -TEXT
    -- -BLOB
-- the index will consume a lot of disk space and this may result in low performance. As a result, small indexes must be used
-- since they consume less disk space and queries performed with small indexes results in faster queries.
-- Instead of creating an index on the entire column name, the prefix of the column can be used or the first few characters

-- last_name(number_of_characters). number_of_characters is not required for CHAR and VARCHAR columns but required for TEXT and
-- BLOB columns. number_of_characters can be any arbitrary number but must be large enough to uniquely identify values
-- CREATE INDEX idx_lastname ON customers (last_name(20));

-- The query below can be used to determine the optimal character length to use on a string index
SELECT 
	COUNT(DISTINCT LEFT(last_name, 1)),
	COUNT(DISTINCT LEFT(last_name, 5)),
	COUNT(DISTINCT LEFT(last_name, 10))
FROM customers;
-- COUNT(DISTINCT LEFT(LEFT))