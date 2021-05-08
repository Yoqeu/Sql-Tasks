SET @a = 0;

INSERT event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (14, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');

SET @a = 0;
SET @a = 0;
