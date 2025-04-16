select * from customer;
select * from orders1;
select * from sales;
select min(sales_amount)  from sales;
select max(sales_amount) from sales;
select avg(sales_amount) from sales;
select 3000 div 2 from sales;
select count(sales_amount) from sales;
select sum(sales_amount) from sales;
select sum(loss) as loss from sales_summary;
select abs(loss) from sales_summary;
select sum(profit)  as profit from sales_summary;
select count(total_sales) as sales from  sales_summary;
select max(profit) as profit from sales_summary;
select avg(total_sales) from sales_summary;
select total_sales div 2 from sales_summary;
select abs(-5000);
select abs(-240);
select 400 div 7 ;
CREATE TABLE sales_summary (
    id INT,
    item_name VARCHAR(100),
    total_sales DECIMAL(10, 2),
    profit DECIMAL(10, 2),
    loss DECIMAL(10, 2)
);

INSERT INTO sales_summary (id, item_name, total_sales, profit, loss) VALUES
(1, 'Laptop', 5000.00, 1200.00, 0.00),
(2, 'Mouse', 300.00, 50.00, 0.00),
(3, 'Keyboard', 400.00, 60.00, 0.00),
(4, 'Monitor', 1500.00, 200.00, 0.00),
(5, 'Printer', 1000.00, 0.00, -150.00),
(6, 'Tablet', 2500.00, 0.00, -300.00);

select log(id) from sales_summary;
CREATE TABLE numbers (
    id INT,
    value DECIMAL(10, 2)
);

INSERT INTO numbers (id, value) VALUES
(1, 4),
(2, 9),
(3, 16),
(4, 25),
(5, 36);
SELECT id, value,sqrt(value) AS sqrt_value FROM numbers;
CREATE TABLE sales (
    id INT,
    total_amount DECIMAL(10, 4)
);
INSERT INTO sales (id, total_amount) VALUES
(1, 123.4567),
(2, 98.7654),
(3, 45.9999);
select ROUND(total_sales, 2) AS rounded_sales
FROM sales_summary;
select power(value,2) from numbers;
select log(sales_amount) from sales;
select log(10,100) from sales;
CREATE TABLE exam_info (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50),
    Scores integer
);
INSERT INTO exam_info (FirstNames, LastNames, Scores) VALUES
('John', 'Doe',  80),
('Alice', 'Smith',  75),
('Bob', 'Johnson',  78),
('Emily', 'Brown',  60),
('Michael', 'Davis', 86),
('Sarah', 'Wilson', 90),
('David', 'Lee', 75),
('Jessica', 'Taylor', 75),
('Chris', 'Evans',  55),
('Emma', 'Thompson',  67);
select power(Scores,3) as CubeScores from exam_info;
CREATE TABLE exam_info_2 (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50),
    Scores float
);
INSERT INTO exam_info_2 (FirstNames, LastNames, Scores) VALUES
('John', 'Doe',  80.345544),
('Alice', 'Smith',  75.6355),
('Bob', 'Johnson',  78.5364565),
('Emily', 'Brown',  60.3565),
('Michael', 'Davis', 86.5353656),
('Sarah', 'Wilson', 90.535464),
('David', 'Lee', 75.567765),
('Jessica', 'Taylor', 75.34242),
('Chris', 'Evans',  55.09098),
('Emma', 'Thompson',  67.34535);
select round(Scores,2) as RoundedScores from exam_info_2;
select day(dateofbirth) from student;
select month(dateofbirth) from student; 
select year(dateofbirth) from student;
select date_format(dateofbirth,'%d-%m-%y') from student;
select datediff(curdate(),dateofbirth) from student;
select * from orders;
select datediff(delivery_date,order_date) from orders;
