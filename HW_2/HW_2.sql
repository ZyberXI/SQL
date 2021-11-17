 create table employees_73 (
 	id serial primary key,
 	employee_name varchar (50) not null 
 );
 
insert into employees_73 (id, employee_name) 
values (default,'Earl Griffin');
select * from employees_73;

--========================================================

create table salary_73 (
	id serial primary key,
	salary integer not null
);

insert into salary_73 (id, salary) values (default, 2500);
select * from salary_73;

--========================================================

create table employee_salary_73(
	id serial primary key,
	employee_id integer not null unique,
	salary_id integer not null,
	foreign key (employee_id)
		references employees_73 (id),
	foreign key (salary_id)
		references salary_73 (id)
);

insert into employee_salary_73 (id, employee_id, salary_id)
values (default, 80, 8);

select * from employee_salary_73;

--========================================================

create table roles_73 (
	id serial primary key,
	role_name integer not null unique
);

alter table roles_73
alter column role_name type varchar(30)
using role_name::varchar(30);

insert into roles_73 (id, role_name)
values (default, 'Senior Automation QA engineer');

select * from roles_73;

--=========================================================

create table roles_employee_73(
	id serial primary key,
	employee_id integer not null unique,
	role_id integer not null,
	foreign key (employee_id)
		references employees_73 (id),
	foreign key (role_id)
		references roles_73 (id)
);

insert into roles_employee_73 (id, employee_id, role_id)
values (default, 17, 15);

select * from roles_employee_73;







