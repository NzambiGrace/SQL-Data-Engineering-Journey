select upper(customer_name) from customer
select lower(customer_name) from customer

select initcap(customer_name) from customer

select substring('Hello from Deepak' from 1 for 5)

select substring('Hello from Deepak' from 7 for 5)

select left('Hello from Deepak', 5)
select right('Hello from Deepak', 6)

select position('Deepak' in 'Hello from Deepak')

select position('Alice' in 'Hello from Deepak')

select length('Hello from Deepak')


select tags from products
select initcap(tags) from products