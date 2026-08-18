CREATE DATABASE Day13_Date_Practice;

USE Day13_Date_Practice;

CREATE TABLE Orders
(
    OrderID INT,
    CustomerID INT,
    OrderDate DATE,
    ShipDate DATE,
    DeliveryDate DATE,
    Sales DECIMAL(10,2),
    Region VARCHAR(30),
    OrderStatus VARCHAR(30)
);

INSERT INTO Orders
(OrderID, CustomerID, OrderDate, ShipDate, DeliveryDate, Sales, Region, OrderStatus)
VALUES
(101, 1, '2025-01-05', '2025-01-06', '2025-01-10', 55000, 'North', 'Delivered'),
(102, 2, '2025-01-15', '2025-01-17', '2025-01-22', 32000, 'South', 'Delivered'),
(103, 3, '2025-02-03', '2025-02-04', '2025-02-08', 75000, 'West', 'Delivered'),
(104, 4, '2025-02-20', '2025-02-22', '2025-02-27', 18000, 'East', 'Delivered'),
(105, 5, '2025-03-10', '2025-03-11', '2025-03-15', 92000, 'North', 'Delivered'),
(106, 6, '2025-03-25', '2025-03-27', '2025-04-02', 45000, 'South', 'Delivered'),
(107, 7, '2025-04-05', '2025-04-06', '2025-04-11', 28000, 'West', 'Delivered'),
(108, 8, '2025-04-18', '2025-04-20', '2025-04-25', 68000, 'South', 'Delivered'),
(109, 9, '2025-05-02', '2025-05-04', '2025-05-09', 120000, 'West', 'Delivered'),
(110, 10, '2025-05-20', '2025-05-21', '2025-05-29', 35000, 'South', 'Delivered'),
(111, 11, '2025-06-07', '2025-06-08', '2025-06-12', 47000, 'North', 'Delivered'),
(112, 12, '2025-06-25', '2025-06-27', '2025-07-03', 88000, 'East', 'Delivered'),
(113, 13, '2025-07-05', '2025-07-06', '2025-07-12', 62000, 'North', 'Delivered'),
(114, 14, '2025-07-19', '2025-07-20', '2025-07-25', 25000, 'South', 'Cancelled'),
(115, 15, '2025-08-03', '2025-08-04', '2025-08-10', 105000, 'West', 'Delivered');


SELECT * FROM Orders;

--  Get Year
SELECT
    OrderID,
    OrderDate,
    YEAR(OrderDate) AS OrderYear
FROM Orders;
--  Get Month
SELECT
    OrderID,
    OrderDate,
    MONTH(OrderDate) AS OrderMonth
FROM Orders;
-- Get Day
SELECT
    OrderID,
    OrderDate,
    DAY(OrderDate) AS OrderDay
FROM Orders;
--  Get Month Name
SELECT
    OrderID,
    OrderDate,
    MONTHNAME(OrderDate) AS MonthName
FROM Orders;
--  Get Day Name
SELECT
    OrderID,
    OrderDate,
    DAYNAME(OrderDate) AS DayName
FROM Orders;
--  Get Quarter
SELECT
    OrderID,
    OrderDate,
    QUARTER(OrderDate) AS OrderQuarter
FROM Orders;
--  DATE_ADD() Add 7 days to the order date.
SELECT
    OrderID,
    OrderDate,
    DATE_ADD(OrderDate, INTERVAL 7 DAY) AS ExpectedDate
FROM Orders;
-- DATE_SUB() Subtract 7 days.
SELECT
    OrderID,
    OrderDate,
    DATE_SUB(OrderDate, INTERVAL 7 DAY) AS PreviousDate
FROM Orders;
--  DATEDIFF() Find the number of days between OrderDate and DeliveryDate.
SELECT
    OrderID,
    OrderDate,
    DeliveryDate,
    DATEDIFF(DeliveryDate, OrderDate) AS DeliveryDays
FROM Orders;


--  Delivery Performance Classify delivery time:

SELECT
    OrderID,
    OrderDate,
    DeliveryDate,
    DATEDIFF(DeliveryDate, OrderDate) AS DeliveryDays,
    CASE
        WHEN DATEDIFF(DeliveryDate, OrderDate) <= 5
            THEN 'Fast'
        WHEN DATEDIFF(DeliveryDate, OrderDate) <= 7
            THEN 'Normal'
        ELSE 'Delayed'
    END AS DeliveryCategory
FROM Orders;


--  Current Date
SELECT
    CURDATE() AS Today;
--  Current Date & Time
SELECT
    NOW() AS CurrentDateTime;
--  Extract Date Parts
SELECT
    OrderDate,
    EXTRACT(YEAR FROM OrderDate) AS OrderYear,
    EXTRACT(MONTH FROM OrderDate) AS OrderMonth,
    EXTRACT(DAY FROM OrderDate) AS OrderDay
FROM Orders;
--  N. DATE_FORMAT()Format date as:05-Jan-2025
SELECT
    OrderID,
    OrderDate,
    DATE_FORMAT(OrderDate, '%d-%b-%Y') AS FormattedDate
FROM Orders;
--  O. Sales by Year
SELECT
    YEAR(OrderDate) AS OrderYear,
    SUM(Sales) AS TotalSales
FROM Orders
GROUP BY YEAR(OrderDate);
--  Sales by Month
SELECT
    YEAR(OrderDate) AS OrderYear,
    MONTH(OrderDate) AS OrderMonth,
    SUM(Sales) AS TotalSales
FROM Orders
GROUP BY
    YEAR(OrderDate),
    MONTH(OrderDate)
ORDER BY OrderYear,OrderMonth;
--  Q. Sales by Month Name
SELECT
    MONTHNAME(OrderDate) AS MonthName,
    SUM(Sales) AS TotalSales
FROM Orders
GROUP BY
    MONTH(OrderDate),
    MONTHNAME(OrderDate)
ORDER BY MONTH(OrderDate);
--  Orders by Quarter
SELECT
    QUARTER(OrderDate) AS QuarterNumber,
    COUNT(*) AS TotalOrders
FROM Orders
GROUP BY QUARTER(OrderDate)
ORDER BY QuarterNumber;
-- . Filter a Specific Year
SELECT *
FROM Orders
WHERE YEAR(OrderDate) = 2025;
--  Filter a Specific Month
SELECT *
FROM Orders
WHERE MONTH(OrderDate) = 5;
--  Business Scenario 1 — Average Delivery Time
SELECT
    AVG(DATEDIFF(DeliveryDate, OrderDate)) AS AverageDeliveryDays
FROM Orders;
-- Business Scenario 2 — Region-wise Delivery Time
SELECT
    Region,
    AVG(DATEDIFF(DeliveryDate, OrderDate)) AS AverageDeliveryDays
FROM Orders
GROUP BY Region;
--  Business Scenario 3 — Monthly Sales
SELECT
    DATE_FORMAT(OrderDate, '%Y-%m') AS SalesMonth,
    SUM(Sales) AS TotalSales
FROM Orders
GROUP BY DATE_FORMAT(OrderDate, '%Y-%m')
ORDER BY SalesMonth;
-- Business Scenario 4 — Delivered vs Cancelled
SELECT
    OrderStatus,
    COUNT(*) AS TotalOrders
FROM Orders
GROUP BY OrderStatus;
-- Business Scenario 5 — Monthly Order Count
SELECT
    MONTHNAME(OrderDate) AS MonthName,
    COUNT(*) AS TotalOrders
FROM Orders
GROUP BY
    MONTH(OrderDate),
    MONTHNAME(OrderDate)
ORDER BY MONTH(OrderDate);