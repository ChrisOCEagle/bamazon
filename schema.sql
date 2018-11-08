-- Delete (DROP) the database IF it EXISTS
DROP DATABASE IF EXISTS bamazon_db;
-- Create a MySQL Database called `bamazon`.
CREATE DATABASE bamazon_db;
USE bamazon_db;

-- Then create a Table inside of that database called `products`.
CREATE TABLE products (
    item_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(100),
    price DECIMAL(5,2) NOT NULL,
    stock_quantity INTEGER(100) NOT NULL-- (how much of the product is available in stores)
);

-- Populate this database with around 10 different products. (i.e. Insert "mock" data rows into this database and table).
INSERT INTO products (product_name, price, stock_quantity, department_name)
VALUES ("Critical Role: Tal'Dorei Campaign Setting", 26.97, 50, "Books");

INSERT INTO products (product_name, price, stock_quantity, department_name)
VALUES ("Monoprice Mini Delta 3D Printer", 159.99, 30, "Technology");

INSERT INTO products (product_name, price, stock_quantity, department_name)
VALUES ("Learning Java by building Android Games", 44.99, 75, "Books");

INSERT INTO products (product_name, price, stock_quantity, department_name)
VALUES ("40 grams of Metal Gallium", 14.78, 100, "Chemicals");

INSERT INTO products (product_name, price, stock_quantity, department_name)
VALUES ("The Book of Random Tables", 6.64, 250, "Books");

INSERT INTO products (product_name, price, stock_quantity, department_name)
VALUES ("Beaker Mug", 21.99, 15, "Home and Kitchen");

INSERT INTO products (product_name, price, stock_quantity, department_name)
VALUES ("Character Backstory Guide", 10.39, 150, "Books");

INSERT INTO products (product_name, price, stock_quantity, department_name)
VALUES ("Nintendo Switch", 299.99, 200, "Technology");

INSERT INTO products (product_name, price, stock_quantity, department_name)
VALUES ("Xbox One S", 294.80, 300, "Technology");

INSERT INTO products (product_name, price, stock_quantity, department_name)
VALUES ("GeForce GTX 1050 graphics card", 129.99, 35, "Technology");
