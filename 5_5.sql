use MyData;
set foreign_key_checks = 0;
truncate table dep; 
 
insert into dep(dep_name) values ('Высшей математики'),('Вычислительных методов и программирования'),('Гуманитарных дисциплин'),('Защиты информации'),('Инженерной и компьютерной графики'),('Инженерной психологии и эргономики'),('Иностранных языков N1'),('Иностранных языков N2'),('Интеллектуальных информационных технологий'),('Инфокоммуникационных технологий'),('Информатики'),('Информационных радиотехнологий'),('Информационных технологий автоматизированных систем'),('Менеджмента'),('Микро- и наноэлектроники'),('Общеобразовательных дисциплин'),('Программного обеспечения информационных технологий'),('Проектирования информационно-компьютерных систем'),('Систем управления'),('Теоретических основ электротехники'),('Физвоспитания'),('Физики'),('Философии'),('Экономики'),('Экономической информатики'),('Электроники'),('Электронной техники и технологии'),('Электронных вычислительных машин'),('Электронных вычислительных средств'),('Радиоэлектронной техники ВВС и войск ПВО'),('Связи'),('Тактической и общевоенной подготовки');

set foreign_key_checks = 1; 
