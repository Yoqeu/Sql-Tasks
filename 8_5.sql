use MyData;
set foreign_key_checks = 0;
truncate table budgetform;
truncate table form; 
truncate table gender;
truncate table course;

insert into form(full, short) values ('Заочная', 'заоч'), ('Вечерняя', 'веч'), ('Дистанционная', 'дист'), ('Дневная', 'дн'); 
 
insert into gender(full, short) values ('Мужской', 'муж'), ('Женский', 'жен'); 

insert into course(num) values (1), (2), (3), (4), (5), (6); 
  
insert into budgetform(full, short) values ('Бюджетная', 'бюдж'), ('Платная', 'плат'); 

insert into spec(full, short) values ('Информатика и технологии программирования', 'ИиТП'), ('Программное обеспечение информационных технологий', 'ПОИТ'),('Автоматизированные системы обработки информации', 'АСОИ');

set foreign_key_checks = 1;
