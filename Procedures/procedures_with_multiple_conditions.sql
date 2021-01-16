DROP PROCEDURE IF EXISTS get_payments_2;

DELIMITER $$
CREATE PROCEDURE get_payments_2(
	client_id INT, 
    payment_method TINYINT
)
BEGIN 
	IF client_id IS NULL AND payment_method IS NOT NULL THEN
		SELECT * FROM payments p  WHERE p.payment_method = payment_method;
	ELSEIF client_id IS NOT NULL AND payment_method IS NULL THEN
		SELECT * FROM payments p WHERE p.client_id = client_id;
	ELSEIF client_id IS NOT NULL AND payment_method IS NOT NULL THEN
		SELECT * FROM payments p WHERE p.client_id = client_id AND p.payment_method = payment_method;
	ELSE
		SELECT * FROM payments p;
    END IF;  
END $$
DELIMITER ;
