create database college;
select * from courses_data;
select * from enrollments_data;
select * from student_information;
use course_id;
alter table courses_data rename column `Course Name` to course_name;
alter table courses_data rename column `Course ID` to course_id;
alter table courses_data rename column `Course Level` to course_level;
truncate table courses_data;
insert into courses_data(course_id,course_name,course_level,Credits)values(1,biology,400,4);
create table courses_data(
course_id int primary key,
course_name varchar(100),
course_level int,
credits int );
alter table enrollments_data rename column `Enrollment ID` to enrollment_id;
alter table enrollments_data rename column `Student ID` to student_id;
alter table enrollments_data rename column `Course ID` to course_id;
alter table student_information rename column `Student ID` to student_id;
alter table student_information rename column `First Name` to first_name;
alter table student_information rename column `Last Name` to last_name;
update enrollments_data set grade="B" where enrollment_id=2;
select course_name,Semester from courses_data inner join enrollments_data on
 courses_data.course_id=enrollments_data.course_id;
 select course_name,Semester,grade from courses_data left join enrollments_data on
 courses_data.course_id=enrollments_data.course_id;
select first_name,last_name from student_information join enrollments_data on 
student_information.student_id=enrollments_data.student_id;
select first_name,last_name,course_id from student_information left join enrollments_data on 
student_information.student_id=enrollments_data.student_id;
select first_name,last_name,course_id from student_information right join enrollments_data on 
student_information.student_id=enrollments_data.student_id;
select student_id,course_id from enrollments_data order by student_id;
create index stu_idx on enrollments_data(student_id);
alter table courses_data modify course_id int primary key;
create unique index idx on courses_data(course_id);
select course_level from courses_data where course_level is null;
select course_level from courses_data where course_level is not null;
alter table courses_data drop index idx;
delete from student_information where first_name='david wilson';
