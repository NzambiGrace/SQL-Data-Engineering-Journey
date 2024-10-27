select city, count(*) from customer group by city having count(*) >100

select c.name, c.category_id, count(p.product_id) from categories c join products p on c.category_id = p.category_id
group by c.category_id having count(product_id)>1

select * from products

select p.name, p.product_id from products p join categories c on c.category_id = p.category_id where c.name = 'Electronics'