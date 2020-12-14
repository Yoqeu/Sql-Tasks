use MyData;
select count(case when surname like concat('%', replace('Ряжченко', right('Ряжченко', 2),''), '%') then surname else null end) as two, count(case when surname like concat('%', replace('Ряжченко', 
right('Ряжченко', 1),''), '%') then surname else null end) as one from surname; 
