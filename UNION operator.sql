select name from products where category_id =1

UNION

select name from products p inner join orders o on o.product_id = p.product_id where o.total_quantity>1


select name from products where category_id =1

UNION ALL

select name from products p inner join orders o on o.product_id = p.product_id where o.total_quantity>1