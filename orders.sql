use ecommerce;
create table orders(order_id int auto_increment primary key, customer_id int  not null,order_date timestamp default current_timestamp,status enum('Pending','Processing','Shipped','Delivered','Cancelled')default 'Pending', total_amount decimal(10,2) not null, foreign key(customer_id) references customers(customer_id));
select * from ecommerce.orders;
INSERT INTO orders (customer_id, status, total_amount)
VALUES 
(1, 'Pending', 150.75),
(2, 'Shipped', 89.99),
(3, 'Delivered', 45.50),
(4, 'Cancelled', 120.00),
(5, 'Processing', 215.30),
(6, 'Delivered', 99.95),
(7, 'Shipped', 300.00),
(8, 'Pending', 58.60),
(9, 'Processing', 400.10),
(10, 'Shipped', 75.45);
