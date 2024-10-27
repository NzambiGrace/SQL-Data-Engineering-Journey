select * from orders where customer_id=1 order by order_timestamp desc
select * from orders where customer_id=1 order by order_timestamp desc limit 2

explain analyze select * from orders where order_id=1


create index idx_cust on orders(customer_id, order_timestamp)

create index order_idx on orders(order_timestamp)

 