-- create a project on ecommerce
CREATE DATABASE ecommerce;

-- select ecommerce database
USE ecommerce;

-- cretae table
customers,orders,products,suppliers
CREATE TABLE customers (
customer_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
phone_number VARCHAR(20),
address VARCHAR(100)
);

CREATE TABLE orders (
order_id INT PRIMARY KEY,
order_date VARCHAR(20),
customer_id INT,
product_id INT,
FOREIGN KEY(customer_id) REFERENCES
customers(customer_id),
FOREIGN KEY(product_id) REFERENCES products(product_id)
);

CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(50),
product_description VARCHAR(100),
product_price INT,
supplier_id INT,
FOREIGN KEY (supplier_id) REFERENCES 
suppliers(supplier_id)
);

CREATE TABLE suppliers (
supplier_id INT PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
email VARCHAR(100),
phone_number VARCHAR(200),
address VARCHAR(200)
);

INSERT INTO suppliers (supplier_id, first_name, last_name, email, phone_number, address)
VALUES
(1, 'Trisha', 'Brown', 'trisha.brown@supplier.com', '0723234567', '500 Sesame St'),
(2, 'Bob', 'Blue', 'bob.blue@supplier.com', '222-333-4444', '600 Distribution Ave'),
(3, 'Charlie', 'White', 'charlie.white@supplier.com', '0798756453', '700 karshi Blvd'),
(4, 'Coco', 'Black', 'coco.black@supplier.com', '011456789', '800 Lock Rd');


INSERT INTO customers (customer_id,first_name, last_name, email, phone_number, address)
VALUES
(1,'Blake', 'Yoh', 'blake.yoh@kina.com', '123-456-7890', '123 Benin'),
(2,'Jane', 'Seth', 'jane.seth@kina.com', '009-567-8901', '654 Oak Ave'),
(3,'Michael', 'Jup', 'michael.jup@kina.com', '345-876-9012', '789 Pine Rd'),
(4,'Zara', 'Davis', 'zara.davis@kina.com', '456-789-0123', '101 Maple Ln');

INSERT INTO products (product_id, product_name, product_description, product_price, supplier_id)
VALUES
(1, 'Laptop', '15-inch display', 30000, 1),
(2, 'Smartphone', '6-inch screen', 40000, 2),
(3, 'Monitor', '24-inch LED monitor', 150000, 3),
(4, 'Keyboard', 'Mechanical keyboard', 7500, 4);

INSERT INTO orders (order_id, order_date, customer_id, product_id)
VALUES
(1, '2024-09-01', 1, 1),
(2, '2023-09-02', 2, 2),
(3, '2022-09-03', 3, 3),
(4, '2021-09-04', 4, 4);

-- Inner joins
SELECT orders.order_id,orders.order_date,customers.first_name,customers.last_name
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.customer_id;

-- LEFT JOIN
SELECT customers.customer_id,customers.first_name,customers.last_name,orders.order_id,orders.order_date
FROM customers
LEFT JOIN orders 
ON customers.customer_id = orders.customer_id;

-- RIGHT JOIN
SELECT orders.order_id,orders.order_date,customers.first_name,customers.last_name
FROM orders
RIGHT JOIN customers 
ON orders.customer_id = customers.customer_id;

-- FULL JOIN FULL OUTER JOIN
SELECT customers.customer_id,customers.first_name,customers.last_name,products.product_id,products.product_description
FROM customers
LEFT JOIN products 
ON customers.customer_id = products.product_id
UNION
SELECT customers.customer_id,customers.first_name,customers.last_name,products.product_id,products.product_description
FROM customers
RIGHT JOIN products 
ON customers.customer_id = products.product_id;

-- cross join
SELECT suppliers.supplier_id,suppliers.first_name,suppliers.last_name,products.product_id,products.product_name
FROM suppliers
CROSS JOIN products;

-- self join
SELECT * FROM customers;
SELECT c1.customer_id AS Customer1_ID,c1.first_name AS Customer1_First_Name,c1.last_name AS Customer1_Last_Name,c2.customer_id AS Customer2_ID,c2.first_name AS Customer2_First_Name
FROM customers c1
LEFT JOIN customers c2 
ON c1.last_name = c2.last_name AND c1.customer_id != c2.customer_id; 















