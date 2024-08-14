CREATE DATABASE prova;
USE prova;

-- Criação da tabela `salesman`
CREATE TABLE salesman (
    salesman_id INT(5) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    city VARCHAR(15),
    commission DECIMAL(5, 2)
);

-- Criação da tabela `customer`
CREATE TABLE customer (
    customer_id INT(5) PRIMARY KEY AUTO_INCREMENT,
    cust_name VARCHAR(30),
    city VARCHAR(15),
    grade INT(3),
    salesman_id INT(5),
    FOREIGN KEY (salesman_id) REFERENCES salesman(salesman_id)
);

-- Criação da tabela `orders`
CREATE TABLE orders (
    ord_no INT(5) PRIMARY KEY AUTO_INCREMENT,
    purch_amt DECIMAL(8, 2),
    ord_date DATE,
    customer_id INT(5),
    salesman_id INT(5),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (salesman_id) REFERENCES salesman(salesman_id)
);