SHOW databases;
use employee_management;
-- Ans to the question no 1
create database employee_management;

-- Ans to the question no 2
create table employees(
emp_id int primary key,
name varchar(20),
department varchar(20),
salary int,
email varchar(20)
);

create table projects(
project_id int primary key,
project_name varchar(20),
location_id int
);


create table emp_projects(
emp_id int,
project_id int
);
alter table emp_projects
add constraint fk
foreign key(emp_id)
references employees(emp_id);

alter table emp_projects
add constraint fk1
foreign key(project_id)
references projects(project_id);


create table locations(
location_id int primary key,
location_name varchar(20)
);


-- Ans to the question no 3
insert into employees values
(101,'Yeamin Rahman','CSE',1000,'yeaminr07@gmail.com'),
(102,'Habibur Rahman','CSE',1010,'habibalpha@gmail.com'),
(103,'Hamed Hasan','CSE',2000,'alvi@gmail.com'),
(104,'Mizanur Rahman','EEE',1500,'mizan@gmail.com'),
(105,'Nusrat Jahan','Medical',5000,'nusratjui@gmail.com');

insert into projects values
(1001,'WebAi',1),
(1002,'FoodKhao',2),
(1003,'Fedex Integration',3),
(1004,'Shipping Ai',4),
(1005,'HelloWorld',5);


insert into emp_projects values
(101,1001),
(102,1002),
(103,1003),
(104,1004),
(105,1005);

insert into locations values
(1,'Dhaka'),
(2,'Chittagong'),
(3,'Rajshahi'),
(4,'Khulna'),
(5,'Barishal');



select * from employees;
select * from projects;
select * from emp_projects;
select * from locations;



