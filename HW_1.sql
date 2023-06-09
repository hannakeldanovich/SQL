create table employees (
	id serial primary key,
	employee_name varchar(50) not null);
insert into employees (employee_name)
values ('Robert Thomas'),
('Kenneth Johnson'),
('Brian Gibson'),
('David Parker'),
('Arthur Taylor'),
('Glen Carpenter'),
('Roger Miller'),
('Michael Smith'),
('Thomas Wilson'),
('Christopher Bell'),
('Peter Johnson'),
('Roy Barker'),
('Jeffrey Knight'),
('Terry Ramirez'),
('James Love'),
('Joseph Miller'),
('Robert Garcia'),
('Mark Smith'),
('Nathaniel Stewart'),
('Benjamin Mann'),
('Freddie Ferguson'),
('Antonio Reese'),
('Michael Padilla'),
('Walter Mitchell'),
('James Burgess'),
('Charles Simpson'),
('Jose Green'),
('Roland Green'),
('Robert Little'),
('Juan Poole'),
('Dennis Williams'),
('Donald Allen'),
('Albert Cain'),
('Alfred Barnes'),
('James Ford'),
('Charles Holmes'),
('Bryan Gonzalez'),
('Jeffrey McDaniel'),
('Marion Johnson'),
('Richard Walker'),
('Francis Dunn'),
('Raymond King'),
('Robert Weaver'),
('Peter Peterson'),
('Brian Jensen'),
('Terry Johnson'),
('Eric Grant'),
('Cody Underwood'),
('Charles Gray'),
('Bradley Frazier'),
('Sean Smith'),
('Joseph Cruz'),
('Sean Cox'),
('James Quinn'),
('James Scott'),
('Joel West'),
('Jeffrey Bailey'),
('Jesse Thomas'),
('Richard Perkins'),
('George Armstrong'),
('Charles Hopkins'),
('Benjamin Wallace'),
('James Perry'),
('Bobby Patrick'),
('Dean Reyes'),
('Peter Bailey'),
('Michael Stewart'),
('Terry Franklin'),
('Dan Silva'),
('Joe Taylor');
drop table salary cascade;
select * from employees;

create table salary (
	id serial primary key,
	monthly_salary int not null);


insert into salary(monthly_salary)
values (1000),
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
select * from salary;

create table employee_salary(
	id serial primary key,
	employee_id Int not null unique,
	salary_id Int not null	
);

select * from employee_salary;

insert into employee_salary (employee_id,salary_id)
values (43,7),
(23,3),
(69,1),
(38,14),
(30,11),
(29,4),
(21,9),
(67,13),
(40,12),
(2,16),
(49,7),
(63,1),
(42,12),
(66,2),
(6,5),
(33,15),
(14,1),
(24,3),
(19,4),
(22,15),
(54,12),
(17,1),
(37,2),
(18,13),
(25,2),
(56,16),
(5,9),
(1,7),
(26,7),
(10,12),
(90,4),
(101,15),
(99,13),
(85,13),
(89,4),
(88,4),
(83,5),
(72,7),
(74,6),
(73,16);

create table roles(
	id serial primary key,
	role_name int unique not null
);
alter table roles 
alter column role_name type varchar(30);

insert into roles(role_name)
values ('Junior Python developer'),
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

select * from roles;

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (role_id)
		references roles(id),
	foreign key (employee_id)
		references employees(id)
);

select * from roles_employee;

insert into roles_employee(employee_id,role_id)
values (39,17),
(42,10),
(19,2),
(29,14),
(68,13),
(31,15),
(69,10),
(25,5),
(59,10),
(1,12),
(46,6),
(41,1),
(48,16),
(17,14),
(28,3),
(14,7),
(56,2),
(36,7),
(55,7),
(33,16),
(12,10),
(7,15),
(9,4),
(45,1),
(20,5),
(13,7),
(6,2),
(15,1),
(38,2),
(52,14),
(40,11),
(5,15),
(30,15),
(62,1),
(2,13),
(61,13),
(70,7),
(34,2),
(37,7),
(44,9);

select * from roles_employee;
