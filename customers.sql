create database Ecommerce;
show databases;
show tables;
use Ecommerce;
create table customers(customer_id int primary key auto_increment, name varchar(50) not null, email varchar(50) not null unique,phone varchar(15),Address text,city varchar(50),state varchar(50),country varchar(50),pincode varchar(50),created_at timestamp default current_timestamp);
select * from ecommerce.customers;
INSERT INTO ecommerce.customers (name, email, phone, Address, city, state, country, pincode)
VALUES
('John Doe', 'john.doe@example.com', '123-456-7890', '123 Elm Street, Apt 4B', 'New York', 'NY', 'USA', '10001'),
('Jane Smith', 'jane.smith@example.com', '987-654-3210', '456 Oak Avenue', 'Los Angeles', 'CA', 'USA', '90001'),
('Mark Johnson', 'mark.johnson@example.com', '555-555-5555', '789 Pine Street', 'Chicago', 'IL', 'USA', '60007'),
('Emily White', 'emily.white@example.com', '321-654-9870', '101 Maple Road', 'Houston', 'TX', 'USA', '77001'),
('Sophia Brown', 'sophia.brown@example.com', '444-777-8888', '202 Birch Lane', 'Phoenix', 'AZ', 'USA', '85001'),
('Michael Davis', 'michael.davis@example.com', '555-111-2222', '303 Cedar Street', 'San Francisco', 'CA', 'USA', '94105'),
('Olivia Wilson', 'olivia.wilson@example.com', '666-444-3333', '404 Pinecrest Blvd', 'Austin', 'TX', 'USA', '73301'),
('James Miller', 'james.miller@example.com', '777-888-9999', '505 Spruce Avenue', 'Dallas', 'TX', 'USA', '75201'),
('Isabella Martinez', 'isabella.martinez@example.com', '888-777-6666', '606 Willow Lane', 'Miami', 'FL', 'USA', '33101'),
('Liam Garcia', 'liam.garcia@example.com', '999-000-1111', '707 Redwood Drive', 'Seattle', 'WA', 'USA', '98101');

select ecommerce.customers.customer_id,ecommerce.customers.name,ecommerce.orders.order_date from ecommerce.customers inner join ecommerce.orders on  ecommerce.customers.customer_id=ecommerce.orders.customer_id;
select ecommerce.customers.customer_id,ecommerce.customers.name,ecommerce.orders.order_date from ecommerce.customers left join ecommerce.orders on  ecommerce.customers.customer_id=ecommerce.orders.customer_id;
select ecommerce.customers.customer_id,ecommerce.customers.name,ecommerce.orders.order_date from ecommerce.customers right join ecommerce.orders on  ecommerce.customers.customer_id=ecommerce.orders.customer_id;
select * from ecommerce.customers  join ecommerce.orders on ecommerce.customers.customer_id=ecommerce.orders.customer_id
