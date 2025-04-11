SELECT * FROM company.employee;
select max(salary) as highest_salary
from employee;
select avg(salary) as average_salary
from employee;
select sum(salary) as total_salary
from employee;
select Firstname,Department from employee;
select Firstname,salary from employee order by salary desc;
update employee 
set Age = Age + 1
where Employee_id=5;
alter table employee
drop primary key;
delete from employee where age>34;
update employee set salary = 40000
where Department=('human resource');
alter table employee 
modify column salary  int ;
create table departments(
department_id int primary key,
department_name varchar(100)
);
insert into departments(department_id,department_name)
values(101,'sales'),
(102,'marketing'),
(103,'IT'),
(104,'HR');
select * from departments;