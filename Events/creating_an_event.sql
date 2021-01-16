DELIMITER $$

CREATE EVENT yearly_delete_stale_audit_accounts
ON SCHEDULE
	-- AT '2019-05-01' This executes an event once
    -- EVERY executes the event at specified intervals(hour, days, yearly)
    -- STARTS '2019-01-01' ENDS '2029-01-01' is optional
    EVERY 1 YEAR STARTS '2019-01-01' ENDS '2029-01-01'
DO BEGIN
	DELETE FROM payments_audit
    WHERE action_date < NOW() - INTERVAL 1 YEAR;
END $$

DELIMITER ;
