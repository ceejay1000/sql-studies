CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `clients_balance_2` AS
    SELECT 
        `i`.`client_id` AS `client_id`,
        `c`.`name` AS `name`,
        SUM((`i`.`invoice_total` - `i`.`payment_total`)) AS `balance`
    FROM
        (`invoices` `i`
        JOIN `clients` `c` ON ((`i`.`client_id` = `c`.`client_id`)))
    GROUP BY `i`.`client_id` , `c`.`name`
    ORDER BY `balance`