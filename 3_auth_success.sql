SELECT 0
INTO @a;

SELECT 0 as response;

SET @a = 0;
INSERT event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (5, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');