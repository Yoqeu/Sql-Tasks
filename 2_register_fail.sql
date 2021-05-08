SET @a = 0;

INSERT IGNORE event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (1, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');
SET @a = 0;

INSERT IGNORE event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (2, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');
SET @a = 0;

INSERT IGNORE event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (3, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');
SET @a = 0;

INSERT IGNORE event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (100, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');
SET @a = 0;

SET @a = 0;
INSERT IGNORE event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (4, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');

SELECT 1 as response;

SET @a = 0;