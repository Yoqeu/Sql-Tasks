use MyData;
set foreign_key_checks = 0;
truncate table fac; 
 
insert into fac(short, full) values ('ФКП','Факультет компьютерного проектирования'),('ФИТУ',Факультет информационных технологий и управления'),('ФРЭ','Факультет радиотехники и электроники'),('ФКСИС','Факультет компьютерных систем и сетей'),('ФИ','Факультет инфокоммуникаций'),('ИЭФ','Инженерно-экономический факультет'),('ВФ','Военный факультет'),('ФДПиПО','Факультет доуниверситетской подготовки и профессиональной ориентации'),('ИИТ','Институт информационных технологий');

set foreign_key_checks = 1; 