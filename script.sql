CREATE DATABASE pointofsale;

USE pointofsale;

CREATE TABLE users (
id CHAR(20) PRIMARY KEY, 
username VARCHAR(20) UNIQUE,
author_id INT,
publisher_id INT,
user_type INT,
year_pub CHAR(4),
description TEXT );

CREATE TABLE products (
id CHAR(20) PRIMARY KEY, 
product_name VARCHAR(50) UNIQUE,
price DECIMAL(4,2),
description TEXT );

CREATE TABLE sales (
id CHAR(20) PRIMARY KEY, 
sale_date DATETIME,
user CHAR(20),
CONSTRAINT `fk_user_sale`
    FOREIGN KEY (user) REFERENCES users (id)
    ON DELETE CASCADE
    ON UPDATE RESTRICT
);

CREATE TABLE sale_items (
id CHAR(20), 
quantity DECIMAL(4,2),
price DECIMAL(4,2),
product CHAR(20) PRIMARY KEY,
sale CHAR(20) PRIMARY KEY,
CONSTRAINT `fk_sale_item_product`
    FOREIGN KEY (product) REFERENCES products (id)
    ON DELETE CASCADE
    ON UPDATE RESTRICT,
CONSTRAINT `fk_item_sale`
    FOREIGN KEY (sale) REFERENCES sales (id)
    ON DELETE CASCADE
    ON UPDATE RESTRICT

description TEXT );