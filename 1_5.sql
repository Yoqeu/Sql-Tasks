use MyData;
set foreign_key_checks = 0;
truncate table stud; 
 
insert into stud(id_name, id_sname, id_patr, id_pers) select (rand() * (name_max - 1) + 1), (rand() * (surname_max - 1) + 1), 
(rand() * (patr_max - 1) + 1), 
(rand() * 999999 + 1) from name, surname, middle_name_buffer,  
(select max(id) as name_max from name) as f_name,  
(select max(id) as surname_max from surname) as s_name,  
(select max(id) patr_max from middle_name_buffer) as m_name limit 1000000; 
 
set foreign_key_checks = 1;
