use ecommerce;
create table products(product_id int primary key auto_increment, name varchar(50) not null, description text, price decimal(10,2) not null, stock_quality int not null, category_id int, FOREIGN key(category_id) references categories(category_id), created_at timestamp default current_timestamp);
select* from ecommerce.products;
INSERT INTO products (name, description, price, stock_quality, category_id)
VALUES 
('Smartphone', 'A high-end smartphone with all the latest features', 599.99, 150, 1),
('T-Shirt', 'Comfortable cotton T-shirt available in multiple colors', 19.99, 300, 2),
('Sofa Set', 'A modern sofa set perfect for any living room', 999.99, 20, 3),
('Basketball', 'Official size basketball for indoor and outdoor play', 25.99, 100, 4),
('Lipstick', 'Long-lasting lipstick available in various shades', 15.99, 200, 5),
('Science Fiction Novel', 'A best-selling science fiction novel', 12.99, 50, 6),
('Toy Robot', 'Interactive toy robot for children', 49.99, 75, 7),
('Organic Apples', 'Fresh, organic apples from local farms', 3.99, 500, 8),
('Car Tires', 'Set of 4 high-performance car tires', 249.99, 30, 9),
('Vitamins', 'Multivitamin supplements for daily health support', 29.99, 150, 10);
