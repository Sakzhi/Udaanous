create database new_db2;
select * from customers;
select * from orders;
select sum(price * quantity) as totalrevenue,date_format(order_date,'%Y-%M') as MONTH
from order_items i
join orders o on i.order_id=o.order_id 
group by month;
select sum(total_amount) as totalspend ,c.customer_id
from customers c
join orders o on c.customer_id=o.customer_id
group by c.customer_id
order by totalspend desc;
select count(o.order_id) as totalcount ,c.region
from customers c 
join orders o on c.customer_id=o.customer_id 
group by c.region
order by totalcount;
select p.product_name,sum((i.price-p.cost)*quantity) as profit
from order_items i
join products p on i.product_id=p.product_id
group by p.product_name
order by profit desc;
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
CASE WHEN order_date = (SELECT MIN(o2.order_date) FROM orders o2 WHERE o2.customer_id = o.customer_id) THEN 'new'
    ELSE 'returning'
    END AS type, COUNT(*) AS total FROM orders o group by month,type;
