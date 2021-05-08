SET @a = 0;

INSERT event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (1, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');
SET @a = 0;

INSERT event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (2, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');
SET @a = 0;

INSERT event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (3, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');
SET @a = 0;

INSERT event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (101, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');
SET @a = 0;

SET @a = 0;
INSERT event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (4, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');

SELECT 0 as response;

SET @a = 0;
