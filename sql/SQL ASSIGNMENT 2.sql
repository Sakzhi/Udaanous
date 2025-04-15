select * from student_information;
select * from courses_data;
select * from enrollments_data;
select first_name,Department
from student_information 
where first_name='Richard'or Department='Science';
select Age 
from student_information 
where Age>20 limit 5;
select first_name,last_name
from student_information 
where Age>18 and Gender='Male';
select first_name,Department 
from student_information 
where Department like 'a%';
select enrollment_id,student_id,Grade 
from enrollments_data where not Grade='D';
select first_name,last_name 
from student_information 
where student_id between 10 and 20;
select Department
from student_information
where Department in ('Science','Medicine');
select age 
from student_information 
where age like '%2';
select course_id 
from courses_data
where course_id=2;
select upper("Richard") from student_information;
select lower("SAKSHI") as lowerstring;
select char_length("Welcome to sql") as Lengthofstring;
select upper("sakshi");
select trim("SQL tutorial") as trimmedtext;
select replace("SQL","java","css");
select concat("Pro","gramming") as ConcatenatedString;
select trim("Summer 2024") as trimmedtext from enrollments_data;
select * from students;
select upper("Aarav Sharma") from students;
select lower("Aarav Sharma") from students;
select char_length("aaravsharma@gmail.com") as Lengthofstring from students;
select concat("Ra","hul") as ConcatenatedString from students;
select trim("  Ananya Desai") as trimmedtext from students;
select replace(Department,'Medicine','MBBS') as new_department from student_information;
select concat(student_id," ",Age," ",Department) as student_data from student_information;
create table drop_idx_tab(
StudentID int,
StudentNames varchar(255),
Age integer
 );
insert into drop_idx_tab(StudentID,StudentNames,Age)Values(1, "Alex", 18),
(2, "Akash", 27),
(3, "Ramisha", 21);
create unique index idx_unique on drop_idx_tab(StudentID);
drop index idx_unique on drop_idx_tab;
