-- CREATE FULLTEXT INDEX idx_title_body ON posts (title, body);
-- Full text searches have two modes
	-- -Natural language mode
		-- SELECT *, 
			-- MATCH(title, body) AGAINST('react redux') AS relevance 
		-- FROM posts WHERE MATCH(title, body) AGAINST('react redux');

	-- Boolean Mode
    -- This query tells MySQL to exclude redux from the search and must include form in the result. The order is not important
    -- SELECT *, 
			-- MATCH(title, body) AGAINST('react redux') AS relevance 
	-- FROM posts WHERE MATCH(title, body) AGAINST('react -redux +form' IN BOOLEAN MODE);
    
    -- This can also be used to search for exact string text
    SELECT *, 
			MATCH(title, body) AGAINST('react redux') AS relevance 
	FROM posts WHERE MATCH(title, body) AGAINST('"Handling a form"' IN BOOLEAN MODE);
		