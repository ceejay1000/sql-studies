-- Revoking privileges
-- GRANT CREATE VIEW ON store.* TO moon_app;

-- Assuming we want to revoke the above privilege from moon_app. We use the query below
REVOKE CREATE VIEW ON store.* FROM moon_app;