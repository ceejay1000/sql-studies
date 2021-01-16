CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `sales_report` AS
    SELECT 
        `c`.`client_id` AS `client_id`,
        `c`.`name` AS `name`,
        SUM(`i`.`invoice_total`) AS `total`
    FROM
        (`clients` `c`
        JOIN `invoices` `i` ON ((`c`.`client_id` = `i`.`client_id`)))
    GROUP BY `c`.`client_id` , `c`.`name`
    ORDER BY `total` DESC