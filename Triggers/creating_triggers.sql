-- A block of SQL code that automatically gets executed 
-- before or after an insert, update or delete statement
-- A trigger is used to enforce data consistency

DROP TRIGGER IF EXISTS payments_after_insert;

DELIMITER $$

CREATE TRIGGER payments_after_insert
	-- BEFORE INSERT, UPDATE, DELETE ON payments
    -- AFTER INSERT, UPDATE, DELETE payments
    AFTER INSERT ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices
    SET payment_total = payment_total + NEW.amount
    WHERE invoice_id = NEW.invoice_id;
    
    -- Auditing
    INSERT INTO payments_audit
    VALUES (NEW.client_id, NEW.date, NEW.amount,  'INSERT', NOW());
END $$

DELIMITER ;