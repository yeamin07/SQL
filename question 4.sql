show databases;
use employee_management;

-- Ans to the question no 4
use employee_management;
show databases;
select project_name ,location_name 
from projects inner join locations
on projects.location_id=locations.location_id;


-- Ans to the question no 5
select name from employees
where salary=(
select salary from employees
order by salary desc
limit 1 offset 1
);


-- Ans to the question no 6
update employees
set email='not available' where department='HR';

-- Ans to the question no 7
alter table projects
add column project_type varchar(20);

-- Ans to the question no 8
create table emp_log(
emp_id1 int,
name1 varchar(20),
department1 varchar(20));

delimiter //
create trigger trigger1
after insert on employees
for each row
begin
insert into emp_log(emp_id1,name1,department1) values (new.emp_id,new.name,new.department);
end;

-- Ans to the question no 9
create TABLE project_log(
project_id1 int,
project_name1 varchar(20)
);

delimiter //
create trigger deleteTrigger
before delete on projects
for each row
begin
insert into project_log(project_id1,project_name1) values(old.project_id,old.project_name);
end;


show databases;
use employee_management;








