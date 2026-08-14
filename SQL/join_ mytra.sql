create database meesho; 

use meesho;

CREATE TABLE customer(
    cust_id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    mail_id VARCHAR(50),
    age INT
);



INSERT INTO customer VALUES
(1,'Shivani','shivani@gmail.com',22),
(2,'Rohit','rohit@gmail.com',24),
(3,'Komal','komal@gmail.com',21),
(4,'Pooja','pooja@gmail.com',23),
(5,'Amit','amit@gmail.com',25),
(6,'Neha','neha@gmail.com',22),
(7,'Karan','karan@gmail.com',26),
(8,'Priya','priya@gmail.com',24),
(9,'Ankit','ankit@gmail.com',27),
(10,'Sneha','sneha@gmail.com',21),
(11,'Vikas','vikas@gmail.com',28),
(12,'Meena','meena@gmail.com',23),
(13,'Ramesh','ramesh@gmail.com',29),
(14,'Anjali','anjali@gmail.com',20),
(15,'Sagar','sagar@gmail.com',26),
(16,'Kavita','kavita@gmail.com',24),
(17,'Ajay','ajay@gmail.com',25),
(18,'Nisha','nisha@gmail.com',22),
(19,'Deepak','deepak@gmail.com',27),
(20,'Swati','swati@gmail.com',23);

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    product_name VARCHAR(30) NOT NULL,
    price INT,
    cust_id INT,
    FOREIGN KEY(cust_id)
    REFERENCES customer(cust_id)
);


INSERT INTO orders VALUES
(101,'Tshirt',799,1),
(102,'Jeans',1499,2),
(103,'Shoes',2499,1),
(104,'Watch',1999,1),
(105,'Bag',1299,4),
(106,'Perfume',999,5),
(107,'Sunglasses',899,6),
(108,'Kurti',699,1),
(109,'Shirt',1199,1),
(110,'Jacket',2499,9),
(111,'Shoes',2199,1),
(112,'Tshirt',599,2),
(113,'Watch',2999,Null),
(114,'Bag',1599,4),
(115,'Perfume',899,5),
(116,'Jeans',1799,7),
(117,'Kurti',799,7),
(118,'Shirt',999,7),
(119,'Jacket',2799,9),
(120,'Shoes',1899,10),
(121,'Tshirt',699,7),
(122,'Watch',2499,7),
(123,'Bag',999,13),
(124,'Jeans',1599,14),
(125,'Perfume',1099,Null),
(126,'Kurti',899,Null),
(127,'Shirt',1299,7),
(128,'Shoes',2399,18),
(129,'Jacket',2999,NULL),
(130,'Watch',1999,NULL);


-- Display customer details along with the products they purchased.
select c.*, o.* from customer c
inner join  orders o 
on c.cust_id=o.cust_id;
-- Display the names of customers who purchased the product 'Shoes'.
select c.name, o.product_name from customer c 
join orders o 
on c.cust_id=o.cust_id
where product_name = 'shoes';
-- Display product names purchased by Shivani.
select c.name, o.product_name from customer c 
join orders o 
on c.cust_id=o.cust_id
where name = 'shivani';
-- Show all customers whether they placed orders or not, along with their product names.
select c.name, o.product_name 
from customer c
left join orders o
on c.cust_id = o.cust_id;

SELECT DISTINCT c.name, c.cust_id
FROM customer c
JOIN orders o
ON c.cust_id = o.cust_id;

-- Show all orders along with customer names, including orders that are not assigned to any customer.
SELECT o.order_id, c.name
FROM orders o
LEFT JOIN customer c
ON o.cust_id = c.cust_id;

select c.*,o.* from customer c 
right join orders o 
on c.cust_id=o.cust_id;
-- Display each customer's name and the total number of orders they have placed.
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customer c
 JOIN orders o
ON c.cust_id = o.cust_id
GROUP BY c.name;

SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customer c
 JOIN orders o
ON c.cust_id = o.cust_id
GROUP BY c.name
order by COUNT(o.order_id) desc limit 1;

-- Display each customer's name and the total amount spent on all their orders.
select c.name , sum(o.price) as total_amount
from customer c 
join orders o 
 on c.cust_id = o.cust_id
 group by name;
 
-- Display customer names and their purchased products. Include customers ,with no purchases and products with no customer information.
select o.* , c.*
from customer c 
left join orders o  
on c.cust_id = o.cust_id 
union
select o.* , c.*
from customer c 
right join orders o  
on c.cust_id = o.cust_id;





