-- Using internal functions in MySQL to create and JSON data to a column

-- Adding a JSON object to a column
UPDATE products SET properties = JSON_OBJECT(
	'weight', 10,
    'dimension', JSON_ARRAY(1,2,3),
    'manufacturer', JSON_OBJECT('name', 'sony')
)
WHERE product_id = 1
;