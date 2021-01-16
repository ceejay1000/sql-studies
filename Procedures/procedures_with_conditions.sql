DROP PROCEDURE IF EXISTS get_payments;

DELIMITER $$
CREATE PROCEDURE get_payments
(
	client_id INT, 
    payment_method TINYINT
)
BEGIN
	IF client_id IS NULL THEN
		SELECT *, pm.name FROM payments p JOIN payment_methods pm USING(payment_method_id);
	ELSE 
		SELECT c.client_id, c.name, p.amount, p.name FROM clients JOIN payments USING(clients) ;
    END IF;
END $$
DELIMITER ;