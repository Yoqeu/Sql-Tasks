SELECT 2
INTO @a;

SELECT 2 as response;

SET @a = 0;
INSERT IGNORE event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (5, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');