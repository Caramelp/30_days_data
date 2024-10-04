CREATE DATABASE ABC_DATA;

USE ABC_DATA;

CREATE TABLE Customers (
        customer_id integer PRIMARY KEY,
        first_name varchar(100),
        last_name varchar(100),
        email varchar(100)
     );
CREATE TABLE Orders (
    order_id integer PRIMARY KEY,
    customer_id INT,
    order_date DATE
);
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    price INT
);

CREATE TABLE Order_Items (
 order_item_id INT PRIMARY KEY,
 product_id INT,
 quantity INT
 );

INSERT INTO Customers (customer_id,first_name, last_name, email) VALUES
(07,'lorna', 'Downs', 'lorna.downs@hollow.com'),
(08,'Judy', 'kirk', 'judy.kirk@hollow.com'),
(09,'Ally', 'Dudo', 'ally.dudo@hollow.com'); 

INSERT INTO Orders (order_id,customer_id,order_date) VALUES
(4,'120','2024-10-02'),
(5,'220','2024-10-03'),
(6,'250','2024-10-04');

INSERT INTO Products (product_id,product_name,price) VALUES
(55,'vase','2500'),
(66,'antiqque','3500'),
(87,'seats','6500'); 

INSERT INTO Order_items (order_item_id,product_id,quantity) VALUES
(1,'120','32'),
(2,'230','20'),
(3,'240','10');








