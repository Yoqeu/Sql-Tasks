SET @a = 0;

INSERT event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (7, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');
SET @a = 0;

INSERT event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (8, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');
SET @a = 0;

INSERT event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (9, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');
SET @a = 0;

INSERT IGNORE event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (102, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');
SET @a = 0;

SET @a = 0;
INSERT event_log(id, login, password_hash, access_time, access_result, operation) 
VALUES (10, '1', '1', CURRENT_TIMESTAMP(), '', 'UPDATE');

SELECT 0 as response;

SET @a = 0;
