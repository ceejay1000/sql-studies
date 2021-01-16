DROP TRIGGER IF EXISTS payments_after_delete;

DELIMITER $$

CREATE TRIGGER payments_after_delete
	-- BEFORE INSERT, UPDATE, DELETE ON payments
    -- AFTER INSERT, UPDATE, DELETE payments
    AFTER DELETE ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices
    SET payment_total = payment_total - OLD.amount
    WHERE invoice_id = OLD.invoice_id;
    
     -- Auditing
    INSERT INTO payments_audit
    VALUES (OLD.client_id, OLD.date, OLD.amount,  'DELETE', NOW());
END $$

DELIMITER ;