-- Indexes increase the sizse of the db
-- Slow down the writes as a result they slow down write operations
-- For these reasons indexes must be reserved for performance critical queries

-- A common mistake developers make is creating indexes based on tables. 
-- Indexes must be created based on your queries. The whole point of using an index is to speed up a slow query.
-- Internally, indexes are stored as binary trees