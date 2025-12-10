CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    unit_price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE
);

CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2)
);

INSERT INTO customers VALUES
(1, 'Alice', 'Hyderabad'),
(2, 'Bob', 'Delhi'),
(3, 'Charlie', 'Mumbai');

INSERT INTO products VALUES
(1, 'Laptop', 800),
(2, 'Mouse', 20),
(3, 'Keyboard', 50),
(4, 'Chair', 200);

INSERT INTO orders VALUES
(1, 1, '2025-08-01'),
(2, 2, '2025-08-02'),
(3, 1, '2025-08-15'),
(4, 3, '2025-08-20');

INSERT INTO order_details VALUES
(1, 1, 1, 1, 800),
(2, 1, 2, 2, 20),
(3, 2, 3, 1, 50),
(4, 3, 2, 1, 20),
(5, 3, 4, 1, 200),
(6, 4, 1, 1, 800);
