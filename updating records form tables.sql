select * from products
ROLLBACK;
update products set price=500 where product_id=7;
update products set price=NULL where product_id=1;
update products set price=129.99 where product_id=2;
update products set price=49.99 where product_id=3;
update products set price=NUll where product_id=4;
update products set price=79.99 where product_id=5;

update products set price=700 , category_id=2 where product_id= 8

