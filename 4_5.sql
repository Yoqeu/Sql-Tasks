use MyData;
set foreign_key_checks = 0;
truncate table mark;
truncate table tchr; 
truncate table subj; 
truncate table result; 
 
insert into mark(full, short) values ('Один','1'), ('Два','2'), ('Три','3'), 
('Четыре','4'), ('Пять','5'), ('Шесть','6'), ('Семь','7'), 
('Восемь', '8'), ('Девять','9'), ('Десять','10'), ('Зачёт','зач'), ('Незачёт', 'нез'); 
 
insert into subj(full, short) values ('Основы алгоритмизации и программирования', 'ОАиП'), ('Методы численного 
анализа', 'МЧА'), ('Системное программирование', 'СП'), ('Объектноориентированное программирование','ООП'); 
 
insert into tchr(id_name, id_sname, id_patr, id_pers) select (rand() * (name_max - 1) + 1), (rand() * (sname_max - 1) + 1), 
(rand() * (patr_max - 1) + 1),  
(rand() * 999999 + 1) from name, surname, middle_name_buffer, 
(select max(id) as name_max from name) as f_name,  
(select max(id) as surname_max from surname) as s_name,  
(select max(id) as patr_max from middle_name_buffer) as m_name limit 10000; 
 
insert into result(id_stud, id_subj, id_mark, id_tchr, date) select (rand() * (stud_max - 1) + 1), 
(rand() * (subj_max - 1) + 1), (rand() * (mark_max - 1) + 1), (rand() * (tchr_max - 1) + 1), from_unixtime(unix_timestamp('2000-1-1') + floor(rand() * 
(unix_timestamp('2025-1-1')-unix_timestamp('2000-1-1'))+1),"%Y-%m-%d") from stud, subj, mark, tchr, 
(select max(id) as stud_max from stud) as stud_t, 
(select max(id) as subj_max from subj) as subj_t, 
(select max(id) as mark_max from mark) as mark_t 
(select max(id) as tchr_max from tchr) as tchr_t limit 1000000; 