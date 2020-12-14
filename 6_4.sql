use MyData
select count(case when name like concat('%', replace('Глеб', right('Глеб', 2),''), '%') then name else null end) as two, count(case when name like concat('%', replace('Глеб', right('Глеб', 1),''), '%') then name else null end) as one from name; 
