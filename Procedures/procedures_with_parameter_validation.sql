-- call invoicing.update_payments(90);
-- Using stored procedures to update a table
DROP PROCEDURE IF EXISTS update_payments;

DELIMITER $$
CREATE PROCEDURE update_payments(new_amount DECIMAL(9, 2))
BEGIN
	IF new_amount <= 0 THEN
		-- This is how to raise an exception in SQL
		SIGNAL SQLSTATE '22003'
		SET MESSAGE_TEXT = 'Invalid payment method';
	END IF;
	UPDATE payments SET amount = new_amount WHERE payment_id = 1 AND client_id = 5;
END $$
DELIMITER ;