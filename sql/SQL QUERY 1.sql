select name,region, sum(total_amount) as totalspend,
count(*) as order_count from
orders_1 o 
join customers_1 c on o.customer_id=c.customer_id
where o.order_date>=date_sub(curdate(),interval 12 month)
group by o.customer_id,name,region
having order_count>3
order by region,totalspend desc limit 5;