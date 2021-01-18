-- Using internal functions in MySQL to update and JSON data to a column

-- Updating a JSON object to in a column
UPDATE products SET properties = JSON_SET(
	properties,
    '$.weight',20,
    '$.age',10
)
WHERE product_id = 1
;