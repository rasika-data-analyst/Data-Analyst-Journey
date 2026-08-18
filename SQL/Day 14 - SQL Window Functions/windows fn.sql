
create database fusion_raw;

use fusion_raw;

drop table products;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products (product_id, product_name, category, price)
VALUES
(1, 'Laptop', 'Electronics', 65000),
(2, 'Mouse', 'Grocery', 1200),
(3, 'Keyboard', 'Clothing', 1800),
(4, 'Shirt', 'Electronics', 1500),
(5, 'Jeans', 'Clothing', 4000),
(6, 'Jacket', 'Clothing', 4000),
(7, 'Rice', 'Grocery', 800),
(8, 'Oil', 'Grocery', 1500),
(9, 'Sugar', 'Electronics', 800);

select *from products;

SELECT column_name,
       window_function() OVER (
           PARTITION BY column_name
           ORDER BY column_name
       ) AS alias_name
FROM table_name;

select max(price) from products;

select *, max(price) over() from products;

select *, max(price) over(partition by category order by price desc) from products;

select *, max(price) over(partition by category order by price desc) as max_value, 
min(price) over(partition by category order by price desc) as min_value from products;


select *, row_number() over() from products;

select *, row_number() over(partition by category order by price desc) from products;

select *, rank() over(partition by category order by price desc) from products;

select *, rank() over() from products;

select *, dense_rank() over(partition by category order by price desc) from products;

select *, dense_rank() over(order by price desc) from products;

CREATE TABLE monthly_sales (
    month_id INT PRIMARY KEY,
    month_name VARCHAR(20),
    sales INT
);

INSERT INTO monthly_sales
VALUES
(1, 'January', 10000),
(2, 'February', 12000),
(3, 'March', 15000),
(4, 'April', 14000),
(5, 'May', 18000),
(6, 'June', 17000); 

select * from monthly_Sales;

-- Display each month's sales along with the previous month's sales
select *, LAG(sales) over(order by month_id) from monthly_sales;

-- Display each month's sales along with the next month's sales.
select *, Lead(sales) over(order by month_id) from monthly_sales;



use  airlinesdb;

SELECT column_name,
       window_function() OVER (
           PARTITION BY column_name
           ORDER BY column_name
       ) AS alias_name
FROM table_name;


select *from flights;

-- find the max ticket price of each airline

select FlightID,FlightNumber,AvailableSeats,TicketPrice,AirlineName,
max(TicketPrice) over(partition by AirlineName) as max_price from flights;


-- find the max ticket price of each airline >2000;
select *from  
(select FlightID,FlightNumber,AvailableSeats,TicketPrice,AirlineName,
max(TicketPrice) over(partition by AirlineName) as max_price from flights) as temp_table
where max_Price=2000;


-- find the min ticket price of each airline
select FlightID,FlightNumber,AvailableSeats,TicketPrice,AirlineName,
min(TicketPrice) over(partition by AirlineName) as min_price from flights;

-- --Display everyflights alng with its rank based on ticket price
select FlightID, FlightNumber,AvailableSeats,TicketPrice,AirlineName,
rank() over(order by ticketprice desc) from flights;


select *from 
(select FlightID, FlightNumber,AvailableSeats,TicketPrice,AirlineName,
rank() over(order by ticketprice desc) as top_price from flights) 
as temp_table where top_price between 1 and 5;

-- If multiple flights have the same highest ticket price, return all of them.
select flightID,flightnumber,ticketprice,airlinename from 
(select*, dense_rank() over(partition by airlinename order by ticketprice desc) as top_price from flights) 
as temp_table where top_price=1;

-- 3.Write an SQL query to find the most expensive flight offered by the airline 'Air France'. 

SELECT
    FlightID,
    FlightNumber,
    TicketPrice,
    AirlineName,
    MAX(TicketPrice) OVER (PARTITION BY AirlineName) AS expensive_price
FROM Flights
WHERE AirlineName = 'Air France';

SELECT *
FROM (SELECT *,DENSE_RANK() OVER (PARTITION BY AirlineName ORDER BY TicketPrice DESC) AS ranking FROM flights) 
AS temp_table
WHERE ranking = 1
AND AirlineName = 'Air France';
  
-- 4.Write an SQL query to find the first scheduled flight (earliest departure time) for every Arrival city. 
SELECT *FROM (SELECT *,ROW_NUMBER()
 OVER (PARTITION BY ArrivalCity 
ORDER BY DepartureTime ASC) AS rn FROM Flights)
AS temp_table WHERE rn = 1;


-- If multiple flights have the same earliest departure time, display all of them.
SELECT *
FROM (SELECT *,RANK() OVER (
               PARTITION BY ArrivalCity
               ORDER BY DepartureTime ASC) AS rnk FROM Flights) 
               AS temp_table
WHERE rnk = 1;

-- 5.Find the second highest ticket price for each airline. 
select* from (select*, rank() over(partition by airlinename order by ticketprice asc) as rnk from flights) as temp_table
where rnk =2;

-- 6.Find the second highest-priced flight to New York for each airline
SELECT *
From(SELECT *,DENSE_RANK() OVER (
               PARTITION BY AirlineName
               ORDER BY TicketPrice DESC) AS rnk FROM Flights
WHERE ArrivalCity = 'New York') AS temp_table
WHERE rnk = 2;

-- 7.Compare every flight price with the previous flight price.
SELECT
    FlightID,
    FlightNumber,
    TicketPrice,
    LAG(TicketPrice) OVER (ORDER BY FlightID) AS PreviousPrice,
    TicketPrice - LAG(TicketPrice) OVER (ORDER BY FlightID) AS PriceDifference
FROM Flights;
-- 8.Find the previous departure city for each airline.
SELECT
    FlightID,
    AirlineName,
    DepartureCity,
    DepartureTime,
    LAG(DepartureCity) OVER (PARTITION BY AirlineName ORDER BY DepartureTime) AS PreviousDepartureCity
FROM Flights;