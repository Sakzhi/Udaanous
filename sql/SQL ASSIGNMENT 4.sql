CREATE TABLE purchases (
    CustomerID INT,
    PurchaseDate DATE,
    ReturnDate DATE
);
 
-- Insert values
INSERT INTO purchases (CustomerID, PurchaseDate, ReturnDate) VALUES
(1, '2024-01-01', '2024-01-05'),
(2, '2024-01-02', '2024-01-06'),
(3, '2024-01-03', '2024-01-07'),
(4, '2024-01-04', '2024-01-08'),
(5, '2024-01-05', '2024-01-09'),
(6, '2024-01-06', '2024-01-10'),
(7, '2024-01-07', '2024-01-11'),
(8, '2024-01-08', '2024-01-12'),
(9, '2024-01-09', '2024-01-13'),
(10, '2024-01-10', '2024-01-14');
select date_format(ReturnDate,'%Y') as YearsData from purchases;
select *, date_format(PurchaseDate,'%y-%M-%D') as FormatedDate from purchases;
CREATE TABLE purchases2 (
    CustomerID INT,
    PurchaseDate DATE,
    ReturnDate DATE
);
 
-- Insert values
INSERT INTO purchases2 (CustomerID, PurchaseDate, ReturnDate) VALUES
(1, '2024-01-01', '2024-01-09'),
(2, '2024-01-02', '2024-01-16'),
(3, '2024-01-03', '2024-01-11'),
(4, '2024-01-04', '2024-01-08'),
(5, '2024-01-05', '2024-01-09'),
(6, '2024-01-06', '2024-01-10'),
(7, '2024-01-07', '2024-01-21'),
(8, '2024-01-08', '2024-01-29'),
(9, '2024-01-09', '2024-01-13'),
(10, '2024-01-10', '2024-01-24');
select datediff(ReturnDate,PurchaseDate) as Datedifference from purchases2;
SELECT 
    EXTRACT(YEAR FROM ReturnDate) AS YearsData
FROM 
    purchases;
select *, year(ReturnDate) as Yearsdata from purchases;
select count(*) ,Department from student_information group by department;
select Country, count(country) as total_countries from customer  group by Country;
select * from customer order by cust_name asc;
select * from student_information order by Department asc;
select * from employee2 inner join employee on employee2.Employee_id=employee.Employee_id; 
select * from employee2 left join employee on employee2.Employee_id=employee.Employee_id; 
select * from employee2 right join employee on employee2.Employee_id=employee.Employee_id; 
select * from employee2 cross join employee on employee2.Employee_id=employee.Employee_id; 
select first_name,last_name,Age,course_id from student_information left join enrollments_data on 
enrollments_data.student_id=student_information.student_id;
select first_name,last_name,Age,course_id from student_information right join enrollments_data on 
enrollments_data.student_id=student_information.student_id;
select e.Employee_id,e.firstname,e.last_name,d.department_name,d.department_id from employee2 e right join departments d 
on e.department_id=d.department_id;
select e.firstname,e.last_name,d.department_name from employee2 e cross join Departments d;
