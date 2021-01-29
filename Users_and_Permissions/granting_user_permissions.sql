-- Granting Permissions
-- Granting permissions to users are mostly in two folds:

-- 1: web/desktop application. With this we can grant the application all privileges except to 
-- create a table, create a database and/or modify a table
-- Eg:

CREATE USER chat_app IDENTIFIED BY 'MYPASSWORD';	

GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE ON store.* TO chat_app;

-- or 

-- GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE ON store.any_valid_table_name_here TO chat_app;

-- This gives the application permission to SELECT, INSERT, UPDATE, DELETE and EXECUTE stored procedures



-- 2: admin
GRANT ALL ON store.* TO John;
-- Grant John the highest privilege ON the store database

GRANT ALL ON *.* TO John;
-- Grant John the highest privilege ON ALL databases
