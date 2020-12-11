select count(case when surname like concat('%', lower(substring('Ряжченко', 1, 
6)), '%') then surname else null end) as two, count(case when surname like concat('%', lower(substring('Ряжченко', 1, 7)), 
'%') then surname else null end) as one from surname;