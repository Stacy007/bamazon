DROP DATABASE IF EXISTS bamazonDB;
CREATE DATABASE bamazonDB;
USE bamazonDB;

CREATE TABLE products (
    item_id INTEGER (10) AUTO_INCREMENT NOT NULL,
    product_name VARCHAR (40) NOT NULL,
    department_name VARCHAR  (40) NOT NULL,
    price INTEGER (10) NOT NULL,
    stock_quantity INTEGER(100) NOT NULL,
    PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("table", "dining", 300, 30);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("chair", "dining", 50, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("plate", "dining", 10, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("bowl", "dining", 8, 75);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("cup", "dining", 5, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("glass", "dining", 7, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("fork", "dining", 4, 85);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("spoon", "dining", 4, 75);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("knife", "dining", 4, 80);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("napkin", "dining", 10, 100);

SELECT * FROM products
-- item_id (unique id for each product)
-- product_name (Name of product)
-- department_name
-- price (cost to customer)
-- stock_quantity (how much of the product is available in stores)