-- An event is a task (or a block of SQL code) that gets executed
-- according to a schedule

SHOW VARIABLES LIKE 'event%';

SET GLOBAL event_scheduler = OFF;