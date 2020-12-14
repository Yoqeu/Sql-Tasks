use MyData;
set foreign_key_checks = 0;
truncate table pers; 
 
insert into pers(id_gender, id_citizenship, birth_date, letter_pass, pass, id_addr1, id_addr2, id_addr3,  enrollment, id_univ, id_fac, id_spec, id_dep, id_course, id_form, id_budget, timestamp) select  
(rand() * (gender_max - 1) + 1), 
(rand() * (citizenship_max - 1) + 1), 
from_unixtime(unix_timestamp('2000-1-1') + floor(rand()* 
(unix_timestamp('2025-1-1')-unix_timestamp('2000-1-1')+1)),"%Y-%m-%d"),
substring(md5(rand()), 1, 2), rand() * 999998 + 1,
(rand() * (address_max - 1) + 1), 
(rand() * (address_max - 1) + 1), 
(rand() * (address_max - 1) + 1),  
from_unixtime(unix_timestamp('2000-1-1') + floor(rand()* 
(unix_timestamp('2025-1-1')-unix_timestamp('2000-1-1')+1)),"%Y-%m-%d"),
(rand() * (univ_max - 1) + 1), 
(rand() * (fac_max - 1) + 1), 
(rand() * (spec_max - 1) + 1), 
(rand() * (dep_max - 1) + 1),
(rand() * (course_max - 1) + 1),
(rand() * (form_max - 1) + 1), 
(rand() * (budget_max - 1) + 1),
from_unixtime(unix_timestamp('2000-1-1') + floor(rand()* 
(unix_timestamp('2025-1-1')-unix_timestamp('2000-1-1')+1)),"%Y-%m-%d"),  
from gender, country, addr, univer, fac, spec, dep, course, form, course, budgetform, 
(select max(id) as gender_max from gender) as gender_t,
(select max(id_pk) as cntr_max from country) as cntr_t,  
(select max(id) as addr_max from addr) as addr_t,
(select max(id) as univ_max from univer) as univ_t, 
(select max(id) as fac_max from fac) as fac_t,  
(select max(id) as spec_max from spec) as spec_t,  
(select max(id) as dep_max from dep) as dep_t,  
(select max(id) as course_max from course) as course_t,  
(select max(id) as form_max from form) as form_t,  
(select max(id) as budgetform_max from budgetform) as budgetform_t  limit 1000000; 
 
set foreign_key_checks = 1;