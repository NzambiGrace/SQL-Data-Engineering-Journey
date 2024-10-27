select city || address from customer

select city ||'----'|| address from customer

select concat(city , address) from customer

select concat_ws('--', city, address) from customer

select trim(' hello ')
select trim( 'X' from 'XXXHelloXXX')

select ltrim(' Hello ')
select rtrim(' Hello ')
select btrim(' Hello ')