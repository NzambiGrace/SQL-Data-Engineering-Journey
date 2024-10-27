create table categories(
category_id serial primary key,
name varchar(100)
)

create table Products(
product_id serial primary key,
name varchar(100),
price decimal(10,2),
description varchar(255),
tags varchar(255),
category_id int,
foreign key (category_id) references categories(category_id),
Supplier varchar(100)

);

create table Customer(
customer_id serial primary key,
customer_name varchar(100) not null,
email varchar(100) not null,
phone_number varchar(20),
address varchar(255),
City varchar(255)
);

create table Orders(
order_id serial primary key,
customer_id int,
product_id int,
total_quantity int,
total_amount decimal(10,2),
order_rating decimal(3,1),
length decimal(5,2),
width decimal(5,2),
order_timestamp timestamp,
delivery_timestamp TIMESTAMP,
foreign key (customer_id) references Customer(customer_id),
foreign key (product_id) references Products(product_id)
);

INSERT INTO Categories (name) VALUES ('Electronics'), ('Clothing'), ('Home and Kitchen')

INSERT INTO Products (name, price, description, tags, category_id, Supplier)
VALUES
('Laptop', NULL, 'High-performance laptop for professionals', 'electronics, portable, tech', 1, 'SupplierA'),
('Headphones', 129.99, 'Over-ear wireless headphones', 'electronics, audio, accessories', 1, 'Supplier8'),
('Backpack', 49.99, 'Stylish and durable backpack for everyday use', 'fashion, accessories, travel', 2, 'Null'),
('Coffee Maker', Null, 'Automatic drip coffee maker with programmable timer', 'home, kitchen, appliances', 3, 'Null'),
('Fitness Tracker', 79.99, 'Water-resistant fitness tracker with heart rate monitoer', 'electronics, fitness, wearables', 1, 'Null');

INSERT INTO Customer (customer_name, email, phone_number, address, city) VALUES
('Alice Johnson', 'alice@example.com', '123-456-7890', '123 Main St', 'Cityville'),
('Bob Smith', 'bob@example.com', '987-654-3210', '456 Oak Ave', 'Townsville'),
('Charlie Brown', 'charlie@example.com', '555-123-4567', '789 Pine Ln', 'New York'),
('David White', 'david@example.com', '222-333-4444', '567 Maple Dr', 'NYC'),
('Eva Black', 'eva@example.com', '999-888-7777', '890 Cedar Rd', 'Big Apple'),
('Frank Green', 'frank@example.com', '111-222-3333', '123 Elm St', 'Gotham City');

INSERT INTO Orders (customer_id, product_id, total_quantity, total_amount, order_rating, length, width, order_timestamp, delivery_timestamp)
VALUES
(1, 1, 5, 120.50,4.5, 2.3, 1.8, '2023-01-15 10:30:00', '2023-01-16 15:45:00'),
(2, 2, 3, 75.25, 3.8, 1.5, 1.2, '2023-02-03 14:20:00', '2023-02-05 11:10:00'),
(3, 3, 7, 210.75, 4.2, 2.8, 2.0, '2023-03-12 08:45:00', '2023-03-14 09:30:00'),
(1, 4, 2, 50.00, 4.0, 1.8, 1.5, '2023-04-05 12:15:00', '2023-04-07 18:20:00');

select * from categories
select * from Products
select * from Customer
select * from Orders
