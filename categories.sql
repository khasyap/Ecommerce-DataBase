use ecommerce;
create table categories(category_id int primary key auto_increment,name varchar(50)not null, description TEXT);
select * from ecommerce.categories; 
INSERT INTO categories (name, description)
VALUES 
('Electronics', 'Devices, gadgets, and tech products'),
('Clothing', 'Men and women clothing, fashion items'),
('Furniture', 'Indoor and outdoor furniture for home and office'),
('Sports', 'Sporting goods, fitness equipment, and accessories'),
('Beauty', 'Beauty and personal care products'),
('Books', 'A variety of books from different genres'),
('Toys', 'Toys and games for children of all ages'),
('Groceries', 'Food and household items'),
('Automotive', 'Car parts and accessories'),
('Health', 'Health supplements and wellness products');
