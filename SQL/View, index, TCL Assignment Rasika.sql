
CREATE DATABASE shopping_db;
USE shopping_db;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    email VARCHAR(100),
    phone BIGINT
);

INSERT INTO customers VALUES
(101,'Rahul Sharma','Pune','rahul@gmail.com',9876543210),
(102,'Priya Patil','Mumbai','priya@gmail.com',9876543211),
(103,'Amit Joshi','Nagpur','amit@gmail.com',9876543212),
(104,'Sneha Kulkarni','Pune','sneha@gmail.com',9876543213),
(105,'Rohan Deshmukh','Nashik','rohan@gmail.com',9876543214),
(106,'Neha Singh','Delhi','neha@gmail.com',9876543215),
(107,'Vikas Rao','Hyderabad','vikas@gmail.com',9876543216),
(108,'Anjali More','Pune','anjali@gmail.com',9876543217),
(109,'Sagar Pawar','Kolhapur','sagar@gmail.com',9876543218),
(110,'Kiran Patil','Satara','kiran@gmail.com',9876543219);

CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(50),
category VARCHAR(50),
price DECIMAL(10,2),
stock INT
);

INSERT INTO products VALUES
(1,'Laptop','Electronics',65000,20),
(2,'Mobile','Electronics',25000,40),
(3,'Headphones','Electronics',3000,70),
(4,'Keyboard','Accessories',1200,100),
(5,'Mouse','Accessories',800,150),
(6,'Office Chair','Furniture',7000,30),
(7,'Study Table','Furniture',5500,25),
(8,'Shoes','Fashion',2500,60),
(9,'Watch','Fashion',4000,50),
(10,'Backpack','Fashion',1800,80);

CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
product_id INT,
quantity INT,
order_date DATE,
status VARCHAR(20),
FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
FOREIGN KEY(product_id) REFERENCES products(product_id)
);

INSERT INTO orders VALUES
(1001,101,1,1,'2025-01-05','Delivered'),
(1002,102,2,2,'2025-01-07','Pending'),
(1003,103,3,3,'2025-01-10','Delivered'),
(1004,104,4,4,'2025-01-15','Cancelled'),
(1005,105,5,5,'2025-01-18','Delivered'),
(1006,106,6,1,'2025-02-01','Pending'),
(1007,107,7,2,'2025-02-04','Delivered'),
(1008,108,8,3,'2025-02-08','Delivered'),
(1009,109,9,1,'2025-02-12','Pending'),
(1010,110,10,2,'2025-02-18','Delivered');


select *from products;
select *from orders;
select *from customers;

-- Part 1: VIEW Questions 
-- 1.	Create a view to display all customer names and cities.
create view customer_name as
select  customer_name,city
FROM customers;
-- 2.	Create a view showing all delivered orders. 
create view delivered_orders as 
select *from orders 
where status = 'delivered';

-- 3.	Create a view containing products costing more than ₹5000. 
create view product_costing as 
select *from products
where price > 5000;
-- 4.	Create a view showing only Electronics products. 
create view product_category as 
select *from products
where category > 'Electronics';
-- 5.	Create a view displaying customer name and email. 
create view customers_details as 
select customer_name, email 
from customers;

select *from products;
select *from orders;
select *from customers;
-- 6.	Create a view showing customer name, product name and order date. 
CREATE VIEW customer_product_orders AS
SELECT c.customer_name,
       p.product_name,
       o.order_date
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN products p
ON o.product_id = p.product_id;
-- 7.	Create a view displaying pending orders. 
create view pending_orders as 
select *from orders 
where status = 'pending';
-- 8.	Create a view showing orders placed in February. 
create view order_placed_feb as 
select *from orders 
where month(order_date) ='feb';
-- 9.	Create a view displaying only customers from Pune. 
create view customers_city as 
select  *from customers 
where city = 'pune';
-- 10.	Create a view showing products with stock less than 50. 
create view stock_details as
select *from products
where stock < 50;


-- Part 2: INDEX Questions 

-- 1.	Create an index on customer_name. 
create index customer_name 
on customers(customer_name);
-- 2.	Create an index on city. 
create index customer_city 
on customers(city);
-- 3.	Create an index on email. 
create index customer_email
on customers(email);
-- 4.	Create an index on product_name. 
create index product_name 
on products(product_name);
-- 5.	Create an index on category. 
create index category 
on products(category);
-- 6.	Create an index on order_date.
 create index order_date
on orders(order_date);
-- 7.	Create an index on status. 
 create index order_status
on orders(order_status);
-- 8.	Create a composite index on customer_id and product_id. 
CREATE INDEX idx_customer_product
ON orders(customer_id, product_id);
-- 9.	Create a unique index on email. 
CREATE UNIQUE INDEX idx_unique_email
ON customers(email);
-- 10.	Create an index on price. 
CREATE INDEX idx_price
ON products(price);
-- 11.Which columns should never be indexed? 
-- Columns with very few unique values (Gender, Yes/No, Status)
-- Columns that are updated frequently
-- Very small tables
-- Large text/BLOB columns
-- 12.Difference between Primary Key and Index. 
-- | Primary Key                          | Index                       |
-- | ------------------------------------ | --------------------------- |
-- | Uniquely identifies each row         | Speeds up searching         |
-- | Cannot contain NULL                  | Can contain NULL            |
-- | Only one per table                   | Multiple indexes allowed    |
-- | Automatically creates a unique index | May be unique or non-unique |

-- 13.Difference between Unique Index and Normal Index. 
-- | Unique Index                 | Normal Index                     |
-- | ---------------------------- | -------------------------------- |
-- | Duplicate values not allowed | Duplicate values allowed         |
-- | Ensures uniqueness           | Only improves search performance |

-- 14.What happens if too many indexes are created? 
-- INSERT becomes slower
-- UPDATE becomes slower
-- DELETE becomes slower
-- More storage is required
-- Database maintenance increases
-- 15.When should Composite Index be used?
-- Use a composite index when queries frequently search using multiple columns together.


show indexes from customers;

DROP INDEX customer_name
ON customers;

DROP INDEX customer_city
ON customers;

DROP INDEX idx_unique_email
ON customers;

DROP INDEX customer_email
ON customers;

-- Part 3: TCL Questions 
-- 1.	Insert a customer and commit the transaction. 
START TRANSACTION;
INSERT INTO customers
VALUES (111,'Arjun Mehta','Pune','arjun@gmail.com',9876543220);
COMMIT;

-- 2.	Insert three products and commit. 
START TRANSACTION;
INSERT INTO products VALUES
(11,'Printer','Electronics',12000,20),
(12,'Tablet','Electronics',18000,15),
(13,'Speaker','Electronics',4500,40);
COMMIT;

-- 3.	Update product price and commit. 
start TRANSACTION;
update products set price = 20000
where product_id =1;
commit;

-- 4.	Delete a cancelled order and commit.
start transaction;
delete from orders where status = 'cancelled' ;
commit;
-- 5.	Update customer city and commit. 
start transaction;
update customers 
set city = 'pune'
where customer_id = 2;
commit;
-- 6.	Update all product prices and rollback. 
START TRANSACTION;

UPDATE products
SET price = price + 1000;

ROLLBACK;
-- 7.	Delete all customers and rollback. 
START TRANSACTION;
DELETE FROM customers;
ROLLBACK;
-- 8.	Insert five orders and rollback.
START TRANSACTION;

INSERT INTO orders VALUES
(1011,101,2,1,'2025-03-01','Pending'),
(1012,102,3,2,'2025-03-02','Pending'),
(1013,103,4,1,'2025-03-03','Delivered'),
(1014,104,5,3,'2025-03-04','Pending'),
(1015,105,6,2,'2025-03-05','Delivered');

ROLLBACK; 
-- 9.	Change stock quantity and rollback. 
START TRANSACTION;

UPDATE products
SET stock = stock - 5
WHERE product_id = 1;

ROLLBACK;
-- 10.	Update order status then rollback. 
START TRANSACTION;

UPDATE orders
SET status='Delivered'
WHERE order_id=1002;

ROLLBACK;

-- 23.	Explain the difference between COMMIT and ROLLBACK with an example. 
-- COMMIT: Permanently saves changes.
-- ROLLBACK: Cancels changes before they are committed.

-- 24.	Write a transaction using COMMIT, SAVEPOINT, and ROLLBACK together. 
START TRANSACTION;

INSERT INTO customers
VALUES(113,'Riya','Pune','riya@gmail.com',9876543299);

SAVEPOINT A;

INSERT INTO products
VALUES(15,'Monitor','Electronics',15000,12);

SAVEPOINT B;

DELETE FROM customers
WHERE customer_id=113;

ROLLBACK TO SAVEPOINT B;

COMMIT;

-- 25.	Explain a real-life banking scenario where TCL commands are necessary. 
-- When transferring money:

-- Deduct money from Account A.
-- Add money to Account B.
-- If both succeed → COMMIT.
-- If any step fails → ROLLBACK.

-- This ensures data remains consistent.
-- ________________________________________
-- Real-Life Scenario Questions
-- View
-- 1.	HR should only see employee names and departments, not salaries. Create a view for HR. 
create view view_HR as 
select emp_name,departments
from emp;
-- 2.	A manager wants to see only delivered orders. 
create view delivered as
select customer_id, order_id
from orders 
where status = 'delivered';
-- 3.	Finance wants to view orders above ₹20,000. 
CREATE VIEW finance_orders AS
SELECT o.order_id,
       c.customer_name,
       p.product_name,
       (p.price * o.quantity) AS total_amount
FROM orders o
JOIN customers c
ON o.customer_id=c.customer_id
JOIN products p
ON o.product_id=p.product_id
WHERE (p.price * o.quantity) > 20000;
-- 4.	Customer support should see customer contact details only. 
create view customers_support as
select customer_name,email, contact_number
from customers;
-- 5.	Sales department should view monthly sales. 
CREATE VIEW monthly_sales AS
SELECT MONTH(order_date) AS month,
       SUM(p.price * o.quantity) AS total_sales
FROM orders o
JOIN products p
ON o.product_id=p.product_id
GROUP BY MONTH(order_date);
-- ________________________________________

-- TCL
-- 1.	During online payment, money is deducted from the customer's account and credited to the seller. Which TCL command ensures both operations are permanently saved? 
commit
-- 2.	An ATM transaction fails after cash is not dispensed. Which TCL command should be used?  --rollback
-- 3.	A student pays college fees, but the server crashes before the receipt is generated. Should you COMMIT or ROLLBACK? --rollback
-- 4.	A bank transfers money between two accounts. Where would you use a SAVEPOINT? 
-- After deducting money from the sender's account and before crediting the receiver's account.
-- 5.	An online shopping order fails after stock is reduced. Which TCL command should restore the stock? --rollback






