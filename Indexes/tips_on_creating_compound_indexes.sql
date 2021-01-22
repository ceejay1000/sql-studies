-- Tips on creating compound indexes
-- By default MySQL adds the primary key to an index when a secondary index is created or added to a primary index
-- Selecting all columns and columns not included in the index impacts on performance 

-- For performance gains, consider the ff:
	-- Look at columns frequently used in the WHERE clause
	-- Look at the columns in the ORDER BY clause
	-- Look at the columns in the SELECT clause
    
-- Before creating an index check the existing ones. A common mistake is creating redundant and duplicate indexes

-- Duplicate indexes
	-- (A, B)

-- Redundant indexes
	-- (A, B)
    -- (A) this is redundant, since the first one can be used for the same queries
	-- If the first one is created, the ff can also be created
		-- (B, A)
        -- (B)