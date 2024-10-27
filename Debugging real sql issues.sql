select * from products where price is null

select true and 

select
 date_trunc('month', o.order_timestamp) as order_month,
 sum(o.total_quantity * p.price) as total_sales
from
orders o
join 
 products p ON o.product_id = p.product_id
where
 o.order_timestamp >= '2023-01-01' and
 o.order_timestamp < '2025-04-01'
group by
 order_month
order by
 order_month;

select * from orders where total_quantity is null
select * from products where price is null
select * from orders where product_id in (1, 4)

update products set price =100 where product_id =4
update products set price =100 where product_id =1