-- Changing a storage engine

-- This operation can be expensive since MySQL has to rebuild the table
-- During this time the table will not be available. It is therefore advisable not to do this at the production level
ALTER TABLE customer
ENGINE = InnoDB