Create Database retail_analysis;

use retail_analysis;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50),
    region VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    payment_method VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    discount DECIMAL(5,2),
    profit DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);


INSERT INTO customers
(customer_id, customer_name, gender, age, city, region)
VALUES
(1, 'Rahul Sharma', 'Male', 25, 'Delhi', 'North'),
(2, 'Priya Verma', 'Female', 32, 'Mumbai', 'West'),
(3, 'Amit Kumar', 'Male', 41, 'Chandigarh', 'North'),
(4, 'Neha Singh', 'Female', 28, 'Bangalore', 'South'),
(5, 'Rohit Mehta', 'Male', 35, 'Pune', 'West'),
(6, 'Sneha Gupta', 'Female', 24, 'Delhi', 'North'),
(7, 'Vikas Yadav', 'Male', 45, 'Jaipur', 'North'),
(8, 'Anjali Kapoor', 'Female', 30, 'Hyderabad', 'South'),
(9, 'Karan Malhotra', 'Male', 38, 'Mumbai', 'West'),
(10, 'Pooja Sharma', 'Female', 27, 'Chennai', 'South'),
(11, 'Arjun Patel', 'Male', 29, 'Ahmedabad', 'West'),
(12, 'Simran Kaur', 'Female', 36, 'Amritsar', 'North'),
(13, 'Manish Jain', 'Male', 43, 'Delhi', 'North'),
(14, 'Riya Kapoor', 'Female', 31, 'Bangalore', 'South'),
(15, 'Suresh Kumar', 'Male', 52, 'Pune', 'West');


INSERT INTO products
(product_id, product_name, category, sub_category, price)
VALUES
(101, 'Laptop', 'Electronics', 'Computers', 65000),
(102, 'Smartphone', 'Electronics', 'Mobiles', 30000),
(103, 'Headphones', 'Electronics', 'Accessories', 2500),
(104, 'Keyboard', 'Electronics', 'Accessories', 1500),
(105, 'Office Chair', 'Furniture', 'Chairs', 8500),
(106, 'Study Table', 'Furniture', 'Tables', 12000),
(107, 'Bookshelf', 'Furniture', 'Storage', 7000),
(108, 'Notebook', 'Stationery', 'Paper', 150),
(109, 'Pen Set', 'Stationery', 'Writing', 300),
(110, 'Backpack', 'Stationery', 'Bags', 1200);


INSERT INTO orders
(order_id, customer_id, order_date, payment_method)
VALUES
(1001, 1, '2026-01-05', 'UPI'),
(1002, 2, '2026-01-08', 'Credit Card'),
(1003, 3, '2026-01-15', 'UPI'),
(1004, 4, '2026-02-02', 'Debit Card'),
(1005, 5, '2026-02-10', 'UPI'),
(1006, 6, '2026-02-18', 'Cash'),
(1007, 7, '2026-03-03', 'Credit Card'),
(1008, 8, '2026-03-12', 'UPI'),
(1009, 9, '2026-03-25', 'Debit Card'),
(1010, 10, '2026-04-04', 'UPI'),
(1011, 11, '2026-04-15', 'Credit Card'),
(1012, 12, '2026-04-22', 'UPI'),
(1013, 13, '2026-05-05', 'Debit Card'),
(1014, 14, '2026-05-17', 'UPI'),
(1015, 15, '2026-05-28', 'Credit Card'),
(1016, 1, '2026-06-03', 'UPI'),
(1017, 2, '2026-06-11', 'Credit Card'),
(1018, 5, '2026-06-20', 'UPI'),
(1019, 8, '2026-07-02', 'Debit Card'),
(1020, 9, '2026-07-15', 'UPI');


INSERT INTO order_details
(order_detail_id, order_id, product_id, quantity, discount, profit)
VALUES
(1, 1001, 101, 1, 0.05, 5000),
(2, 1001, 103, 2, 0.10, 400),
(3, 1002, 102, 1, 0.05, 3000),
(4, 1003, 105, 1, 0.10, 1200),
(5, 1003, 108, 5, 0.00, 150),
(6, 1004, 106, 1, 0.05, 1800),
(7, 1005, 101, 1, 0.10, 4000),
(8, 1005, 104, 2, 0.05, 300),
(9, 1006, 109, 3, 0.00, 90),
(10, 1006, 110, 1, 0.10, 100),
(11, 1007, 102, 2, 0.05, 5500),
(12, 1008, 107, 1, 0.10, 900),
(13, 1008, 108, 10, 0.05, 250),
(14, 1009, 101, 1, 0.05, 5000),
(15, 1009, 103, 1, 0.00, 500),
(16, 1010, 106, 1, 0.10, 1500),
(17, 1011, 105, 2, 0.05, 2200),
(18, 1012, 102, 1, 0.00, 3500),
(19, 1013, 101, 1, 0.15, 3000),
(20, 1013, 104, 1, 0.10, 200),
(21, 1014, 107, 2, 0.05, 1800),
(22, 1015, 106, 1, 0.10, 1600),
(23, 1016, 102, 1, 0.05, 3200),
(24, 1016, 109, 2, 0.00, 60),
(25, 1017, 101, 1, 0.10, 4500),
(26, 1018, 105, 1, 0.05, 1300),
(27, 1019, 103, 2, 0.10, 350),
(28, 1020, 102, 1, 0.05, 2800);


SHOW TABLES;













