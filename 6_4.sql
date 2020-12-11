use students;
select count(case when name like concat('%', lower(substring('Глеб', 1, 2)), 
'%') then name else null end) as two, count(case when name like concat('%', lower(substring('Глеб', 1, 3)), '%') then name else null end) as one from name;
