use MyData;
set foreign_key_checks = 0; 
truncate table addr;
truncate table loctype; 
truncate table distr; 
 
insert into distr(id) select 
(@index := @index + 1) as id from name as t1, name as t2, 
(select @index := 0) as t_index limit 10000; 
 
insert into loctype(id) select 
(@index := @index + 1) as id from name as t1, name as t2, 
(select @index := 0) as t_index limit 100; 
 
insert into addr(id_cntr, id_reg, id_loc, id_str, id_strtype, id_loctype, id_distr, `house`, `corps`, `flat`, `index`, `number`) select (rand() * (cntr_max - 1) + 1), 
(rand() * (reg_max - 1) + 1), 
(rand() * (loc_max - 1) + 1), 
(rand() * (str_max - 1) + 1), 
(rand() * (strtype_max - 1) + 1), 
(rand() * (loctype_max - 1) + 1), (rand() * (distr_max - 1) + 1) rand() * 300 +1, rand() * 30 + 1, rand() * 300 + 1, rand() * 200000 + 1, 
rand() * 9999998 + 1 
 
from country, region, city, str, strtype, 
(select max(id_pk) as cntr_max from country) as country_t,  
(select max(id_pk) as reg_max from region) as region_t,  
(select max(id_pk) as loc_max from city) as city_t, 
(select max(id) as str_max from str) as str_t,  
(select max(id) as strtype_max from strtype) as strtype_t, 
(select max(id) as loctype_max from loctype) as loctype_t 
(select max(id) as distr_max from distr) as distr_t limit 10000; 
 
set foreign_key_checks = 1; 
