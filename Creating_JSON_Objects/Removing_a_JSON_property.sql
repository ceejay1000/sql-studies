-- Using internal functions in MySQL to remove a property in JSON data in column

-- Removing a JSON property object in a column
UPDATE products SET properties = JSON_REMOVE(
	properties,
    '$.age'
)
WHERE product_id = 1
;