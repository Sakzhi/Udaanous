create database sales_retail;
select * from customers;
select * from orders;
select * from products;

-- List all the customers and their cities.
select first_name,last_name ,city from customers;
-- joins
select c.* from customers c join orders o on c.customer_id=o.customer_id;
select o.* from orders o join products p on p.product_id=o.product_id;
-- Display each order with customer full name, product name, and total price (quantity × price)
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS fullname,
    SUM(p.price * o.quantity) AS total_spending
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON p.product_id = o.product_id
GROUP BY c.customer_id, fullname;
-- Count how many time each product has been ordered
select product_name,count(quantity) as per_quantity from products p 
join orders o on p.product_id=o.product_id group by product_name;
-- Show all orders placed in March 2024.
select * from orders where order_date >='2024-03-01' and order_date<='2024-04-01';
-- Calculate total revenue generated from each product.
select p.product_name,sum(o.quantity * p.price) as totalrevenue 
from products as p
join orders as o on p.product_id=o.product_id
group by p.product_name;
-- Which city has the highest average spending per customer?
SELECT c.city,
       AVG(price) AS avg_spending
FROM customers c
cross JOIN products p
GROUP BY c.city
ORDER BY avg_spending DESC
LIMIT 1;


