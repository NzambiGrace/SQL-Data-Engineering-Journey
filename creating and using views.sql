create view customer_order_summary as
select customer_id, 
count(order_id),
sum(total_amount)
from orders
group by customer_id

select * from customer_order_summary where customer_id=2

create view product_category_summary as
select p.name as Product_name, c.name as Cat_Name from products p join categories c  
on p.category_id=c.category_id

select * from product_category_summary