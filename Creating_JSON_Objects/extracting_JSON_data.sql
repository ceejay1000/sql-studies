-- $ represents the current JSON document/object
-- SELECT product_id, name, JSON_EXTRACT(properties, '$.weight') AS weight FROM products WHERE product_id = 1;

-- The column path operator (column -> operation) can also be used to extract JSON data like the above query
 -- SELECT product_id, name, properties -> '$.weight' AS weight FROM products WHERE product_id = 1;

-- Accessing array values
-- SELECT product_id, name, JSON_EXTRACT(properties, '$.dimensions') AS weight FROM products WHERE product_id = 1;
-- SELECT product_id, name, JSON_EXTRACT(properties, '$.dimensions[0]') AS weight FROM products WHERE product_id = 1;

-- Accessing nested objects
-- SELECT product_id, name, JSON_EXTRACT(properties, '$.manufacturer') AS weight FROM products WHERE product_id = 1;

-- This query returns in quotes
-- SELECT product_id, name, JSON_EXTRACT(properties, '$.manufacturer.name') AS weight FROM products WHERE product_id = 1;

-- To remove quotes, we use (column ->> selector)
-- SELECT product_id, name, properties ->> '$.manufacturer.name' AS weight FROM products WHERE product_id = 1;
SELECT product_id, name, properties ->> '$.manufacturer.name' AS weight FROM products WHERE properties ->> '$.manufacturer.name' = 'sony' ;

