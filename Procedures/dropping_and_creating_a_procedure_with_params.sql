-- Dropping a stored procedure if it exists to create another one

DROP PROCEDURE IF EXISTS get_invoices_by_client

DELIMITER $$
CREATE PROCEDURE get_invoices_by_client(client_id INT(11))
BEGIN
	SELECT * FROM invoices i WHERE i.client_id = client_id;
END $$

DELIMITER ;