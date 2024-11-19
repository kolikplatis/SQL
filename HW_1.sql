--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
create table salary(
	id serial primary key,
	monthly_salary int not null
);

--Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
values  ('James'),
		('Mary'),
		('John'),
		('Patricia'),
		('Robert'),
		('Jennifer'),
		('Michael'),
		('Linda'),
		('William'),
		('Elizabeth'),
		('David'),
		('Susan'),
		('Richard'),
		('Jessica'),
		('Joseph'),
		('Sarah'),
		('Charles'),
		('Karen'),
		('Thomas'),
		('Nancy'),
		('Christopher'),
		('Lisa'),
		('Daniel'),
		('Betty'),
		('Matthew'),
		('Dorothy'),
		('Anthony'),
		('Helen'),
		('Mark'),
		('Sandra'),
		('Donald'),
		('Ashley'),
		('Steven'),
		('Kimberly'),
		('Paul'),
		('Donna'),
		('Andrew'),
		('Emily'),
		('Joshua'),
		('Michelle'),
		('Kevin'),
		('Carol'),
		('Brian'),
		('Amanda'),
		('George'),
		('Melissa'),
		('Timothy'),
		('Deborah'),
		('Ronald'),
		('Stephanie'),
		('Edward'),
		('Laura'),
		('Jason'),
		('Sharon'),
		('Jeffrey'),
		('Cynthia'),
		('Ryan'),
		('Angela'),
		('Jacob'),
		('Kathleen'),
		('Gary'),
		('Rachel'),
		('Nicholas'),
		('Marie'),
		('Eric'),
		('Rebecca'),
		('Stephen'),
		('Teresa'),
		('Larry'),
		('Megan');
	
--Наполнить таблицу salary 16 строками:
--- 1000
--- 1100
--- 1200
--- 1300
--- 1400
--- 1500
--- 1600
--- 1700
--- 1800
--- 1900
--- 2000
--- 2100
--- 2200
--- 2300
--- 2400
--- 2500
insert into salary (monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (salary_id)
		references salary(id)
);

--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (employee_id, salary_id)
values  (1, 1),
		(2, 3),
		(3, 5),
		(4, 7),
		(5, 2),
		(6, 4),
		(7, 6),
		(8, 8),
		(9, 11),
		(10, 13),
		(11, 12),
		(12, 14),
		(13, 15),
		(14, 1),
		(15, 3),
		(16, 2),
		(17, 7),
		(18, 9),
		(19, 10),
		(20, 16),
		(21, 16),
		(22, 13),
		(23, 11),
		(24, 5),
		(25, 6),
		(26, 7),
		(27, 1),
		(28, 2),
		(29, 2),
		(30, 4),
		(80, 4),
		(90, 8),
		(100, 9),
		(110, 10),
		(120, 11),
		(130, 16),
		(140, 13),
		(150, 6),
		(160, 8),
		(170, 2);

--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
create table roles(
	id serial primary key,
	role_name int not null unique
);

--Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30);

--Наполнить таблицу roles 20 строками:
--1 Junior Python developer
--2 Middle Python developer
--3 Senior Python developer
--4 Junior Java developer
--5 Middle Java developer
--6 Senior Java developer
--7 Junior JavaScript developer
--8 Middle JavaScript developer
--9 Senior JavaScript developer
--10 Junior Manual QA engineer
--11 Middle Manual QA engineer
--12 Senior Manual QA engineer
--13 Project Manager
--14 Designer
--15 HR
--16 CEO
--17 Sales manager
--18 Junior Automation QA engineer
--19 Middle Automation QA engineer
--20 Senior Automation QA engineer

insert into roles(role_name)
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	
-- Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

--Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
values  (57, 15),
		(21, 3),
		(18, 9),
		(40, 12),
		(44, 7),
		(28, 14),
		(50, 1),
		(36, 5),
		(61, 10),
		(26, 17),
		(52, 4),
		(64, 8),
		(23, 2),
		(60, 19),
		(9, 6),
		(19, 13),
		(33, 18),
		(12, 11),
		(69, 16),
		(5, 20),
		(42, 2),
		(39, 4),
		(67, 14),
		(35, 3),
		(38, 19),
		(34, 7),
		(2, 13),
		(62, 5),
		(13, 10),
		(55, 15),
		(3, 9),
		(70, 17),
		(63, 12),
		(24, 16),
		(32, 1),
		(56, 18),
		(29, 6),
		(49, 20),
		(51, 8),
		(4, 11);




