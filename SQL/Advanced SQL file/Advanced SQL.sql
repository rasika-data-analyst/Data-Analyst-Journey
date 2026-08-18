 USE Assignment;
 
 CREATE TABLE Customers (
    CustomerID VARCHAR(10),
    CustomerName VARCHAR(50),
    Region VARCHAR(20));
    
INSERT INTO Customers VALUES
('C001','Rahul','West'),
('C002','Priya','South'),
('C003','Amit','North'),
('C004','Sneha','West'),
('C005','Neha','South'),
('C006','Rohan','East'),
('C007','Anita','North'),
('C008','Karan','West');

CREATE TABLE Products (
    ProductID VARCHAR(10),
    ProductName VARCHAR(50),
    Category VARCHAR(30),
    UnitPrice DECIMAL(10,2));

INSERT INTO Products VALUES
('P001','Laptop','Electronics',60000),
('P002','Mouse','Accessories',1200),
('P003','Keyboard','Accessories',2500),
('P004','Monitor','Electronics',18000),
('P005','Printer','Electronics',15000),
('P006','Headphones','Accessories',3500);

CREATE TABLE Orders1 (
    OrderID VARCHAR(10),
    OrderDate DATE,
    CustomerID VARCHAR(10),
    ProductID VARCHAR(10),
    Quantity INT,
    Sales DECIMAL(10,2),
    Profit DECIMAL(10,2));
    
    INSERT INTO Orders1 VALUES
('O001','2025-01-05','C001','P001',1,60000,9000),
('O002','2025-01-10','C002','P002',3,3600,900),
('O003','2025-01-15','C003','P004',2,36000,6000),
('O004','2025-02-02','C004','P003',4,10000,2500),
('O005','2025-02-10','C005','P001',1,60000,8500),
('O006','2025-02-18','C001','P006',2,7000,1800),
('O007','2025-03-03','C006','P005',2,30000,5000),
('O008','2025-03-12','C007','P002',5,6000,1500),
('O009','2025-03-20','C008','P001',2,120000,18000),
('O010','2025-04-05','C002','P004',1,18000,3000),
('O011','2025-04-15','C003','P006',3,10500,2700),
('O012','2025-04-25','C004','P005',1,15000,2500),
('O013','2025-05-05','C005','P003',5,12500,3000),
('O014','2025-05-18','C006','P001',1,60000,9500),
('O015','2025-06-02','C007','P004',2,36000,6200);

SELECT * FROM Customers;

SELECT * FROM Products;

SELECT * FROM Orders;

-- — JOIN Multiple Tables
-- Order ID, Customer Name, Region, Product Name, Category, Sales, Profit
SELECT
    o.OrderID,
    c.CustomerName,
    c.Region,
    p.ProductName,
    p.Category,
    o.Sales,
    o.Profit
FROM Orders o
JOIN Customers c
    ON o.CustomerID = c.CustomerID
JOIN Products p
    ON o.ProductID = p.ProductID;

--  — Add CASE WHEN Classify orders based on Sales.
SELECT
    o.OrderID,
    c.CustomerName,
    o.Sales,
    CASE
        WHEN o.Sales >= 50000 THEN 'High'
        WHEN o.Sales >= 20000 THEN 'Medium'
        ELSE 'Low'
    END AS SalesCategory
FROM Orders o
JOIN Customers c
    ON o.CustomerID = c.CustomerID;

--  — GROUP BY + JOIN Find total sales by region.
SELECT
    c.Region,
    SUM(o.Sales) AS TotalSales,
    SUM(o.Profit) AS TotalProfit
FROM Orders o
JOIN Customers c
    ON o.CustomerID = c.CustomerID
GROUP BY c.Region;

--  — GROUP BY + HAVING
 -- Find regions where total sales are greater than ₹100,000.
SELECT
    c.Region,
    SUM(o.Sales) AS TotalSales
FROM Orders o
JOIN Customers c
    ON o.CustomerID = c.CustomerID
GROUP BY c.Region
HAVING SUM(o.Sales) > 100000;

--  Step 6 — RANK()
-- Rank customers based on total sales.
SELECT
    c.CustomerName,
    SUM(o.Sales) AS TotalSales,
    RANK() OVER (ORDER BY SUM(o.Sales) DESC) AS SalesRank
FROM Orders o
JOIN Customers c
    ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerName;

--  — RANK() by Region Rank customers within each region.
SELECT
    c.Region,
    c.CustomerName,
    SUM(o.Sales) AS TotalSales,
    RANK() OVER (PARTITION BY c.Region
        ORDER BY SUM(o.Sales) DESC) AS RegionRank
FROM Orders o
JOIN Customers c
    ON o.CustomerID = c.CustomerID
GROUP BY
    c.Region,
    c.CustomerName;

-- — Profit Margin Calculate profit margin.
SELECT
    c.CustomerName,
    SUM(o.Sales) AS TotalSales,
    SUM(o.Profit) AS TotalProfit,
    ROUND(SUM(o.Profit) / SUM(o.Sales) * 100,2) AS ProfitMargin
FROM Orders o
JOIN Customers c
    ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerName;
-- — Find Customers Above Average Sales
SELECT
    c.CustomerName,
    SUM(o.Sales) AS TotalSales
FROM Orders o
JOIN Customers c
    ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerName
HAVING SUM(o.Sales) >
(SELECT AVG(CustomerSales)
FROM(SELECT CustomerID,
            SUM(Sales) AS CustomerSales
        FROM Orders
        GROUP BY CustomerID) x);
-- — Category Performance Find total sales and profit by category.
SELECT
    p.Category,
    SUM(o.Sales) AS TotalSales,
    SUM(o.Profit) AS TotalProfit
FROM Orders o
JOIN Products p
    ON o.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY TotalSales DESC;
-- — Rank Products by Sales
SELECT
    p.ProductName,
    p.Category,
    SUM(o.Sales) AS TotalSales,
    RANK() OVER (ORDER BY SUM(o.Sales) DESC) AS ProductRank
FROM Orders o
JOIN Products p
    ON o.ProductID = p.ProductID
GROUP BY
    p.ProductName,
    p.Category;
-- ---  Monthly Sales
SELECT
    MONTH(OrderDate) AS OrderMonth,
    SUM(Sales) AS TotalSales
FROM Orders
GROUP BY MONTH(OrderDate)
ORDER BY OrderMonth;
-- — Monthly Sales Growth using LAG()
WITH MonthlySales AS
(SELECT
        MONTH(OrderDate) AS OrderMonth,
        SUM(Sales) AS TotalSales
    FROM Orders
    GROUP BY MONTH(OrderDate))
SELECT
    OrderMonth,
    TotalSales,
    LAG(TotalSales) OVER (
        ORDER BY OrderMonth
    ) AS PreviousMonthSales,
    TotalSales -
    LAG(TotalSales) OVER (
        ORDER BY OrderMonth
    ) AS SalesDifference
FROM MonthlySales;


