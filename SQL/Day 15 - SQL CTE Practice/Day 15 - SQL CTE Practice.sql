CREATE DATABASE Day15_CTE_Practice;

USE Day15_CTE_Practice;

CREATE TABLE Sales
(
    OrderID INT,
    CustomerID INT,
    CustomerName VARCHAR(50),
    Region VARCHAR(30),
    Category VARCHAR(30),
    OrderDate DATE,
    Sales DECIMAL(10,2),
    Profit DECIMAL(10,2)
);

INSERT INTO Sales
(OrderID, CustomerID, CustomerName, Region, Category, OrderDate, Sales, Profit)
VALUES
(101, 1, 'Amit', 'North', 'Technology', '2025-01-05', 55000, 12000),
(102, 2, 'Priya', 'South', 'Furniture', '2025-01-10', 32000, 7000),
(103, 3, 'Rahul', 'West', 'Technology', '2025-01-15', 75000, 18000),
(104, 4, 'Neha', 'East', 'Office Supplies', '2025-01-20', 18000, 4000),
(105, 5, 'Ravi', 'North', 'Furniture', '2025-02-05', 45000, 9000),
(106, 6, 'Sneha', 'South', 'Technology', '2025-02-10', 90000, 22000),
(107, 7, 'Karan', 'West', 'Office Supplies', '2025-02-15', 28000, 6000),
(108, 8, 'Anita', 'South', 'Furniture', '2025-02-20', 68000, 15000),
(109, 9, 'Arjun', 'West', 'Technology', '2025-03-05', 120000, 30000),
(110, 10, 'Meera', 'South', 'Office Supplies', '2025-03-10', 35000, 8000),
(111, 11, 'Vikas', 'North', 'Technology', '2025-03-15', 47000, 11000),
(112, 12, 'Pooja', 'East', 'Furniture', '2025-03-20', 88000, 20000),
(113, 13, 'Rohan', 'North', 'Office Supplies', '2025-04-05', 62000, 14000),
(114, 14, 'Kavya', 'South', 'Technology', '2025-04-10', 25000, 5000),
(115, 15, 'Sonia', 'West', 'Furniture', '2025-04-15', 105000, 25000);


SELECT *FROM Sales;

-- Find orders where Sales are greater than 50,000.

WITH HighSales AS
(SELECT *FROM Sales
    WHERE Sales > 50000)
SELECT *FROM HighSales;

--  CTE with Selected Columns
WITH SalesData AS
(SELECT
        OrderID,
        CustomerName,
        Region,
        Sales
    FROM Sales)
SELECT *FROM SalesData;
--  CTE + Aggregation ⭐Calculate total sales by region.
WITH RegionSales AS
(SELECT
        Region,
        SUM(Sales) AS TotalSales
    FROM Sales
    GROUP BY Region)
SELECT *FROM RegionSales;
--  CTE + HAVING Find regions where total sales are greater than 150,000.
WITH RegionSales AS
(SELECT
        Region,
        SUM(Sales) AS TotalSales
    FROM Sales
    GROUP BY Region)
SELECT *FROM RegionSales
WHERE TotalSales > 150000;

--  CTE + CASE ⭐Classify total regional sales.

WITH RegionSales AS
(SELECT
        Region,
        SUM(Sales) AS TotalSales
    FROM Sales
    GROUP BY Region)
SELECT
    Region,
    TotalSales,
    CASE
        WHEN TotalSales >= 200000 THEN 'High'
        WHEN TotalSales >= 100000 THEN 'Medium'
        ELSE 'Low'
    END AS RegionCategory
FROM RegionSales;
--  Multiple CTEs ⭐⭐⭐
WITH RegionSales AS
(SELECT
        Region,
        SUM(Sales) AS TotalSales
    FROM Sales
    GROUP BY Region),RegionProfit AS
(SELECT
        Region,
        SUM(Profit) AS TotalProfit
    FROM Sales
    GROUP BY Region)
SELECT
    rs.Region,
    rs.TotalSales,
    rp.TotalProfit
FROM RegionSales rs
JOIN RegionProfit rp
    ON rs.Region = rp.Region;


-- . CTE + JOIN ⭐⭐⭐
WITH CustomerSales AS
(SELECT
        CustomerID,
        CustomerName,
        SUM(Sales) AS TotalSales
    FROM Sales
    GROUP BY
        CustomerID,
        CustomerName)
SELECT
    CustomerID,
    CustomerName,
    TotalSales
FROM CustomerSales
WHERE TotalSales >= 100000;
--  CTE + Window Function ⭐⭐⭐Find the top customer in each region.

WITH CustomerSales AS
(
    SELECT
        CustomerName,
        Region,
        SUM(Sales) AS TotalSales
    FROM Sales
    GROUP BY
        CustomerName,
        Region
),
RankedCustomers AS
(
    SELECT
        CustomerName,
        Region,
        TotalSales,
        ROW_NUMBER() OVER
        (
            PARTITION BY Region
            ORDER BY TotalSales DESC
        ) AS rn
    FROM CustomerSales
)
SELECT
    CustomerName,
    Region,
    TotalSales
FROM RankedCustomers
WHERE rn = 1;

--  Top 2 Customers Per Region
WITH CustomerSales AS
(
    SELECT
        CustomerName,
        Region,
        SUM(Sales) AS TotalSales
    FROM Sales
    GROUP BY
        CustomerName,
        Region
),
RankedCustomers AS
(
    SELECT
        CustomerName,
        Region,
        TotalSales,
        ROW_NUMBER() OVER
        (
            PARTITION BY Region
            ORDER BY TotalSales DESC
        ) AS rn
    FROM CustomerSales
)
SELECT
    CustomerName,
    Region,
    TotalSales
FROM RankedCustomers
WHERE rn <= 2;
--  CTE for Profit Analysis Calculate profit margin.
WITH CustomerProfit AS
(
    SELECT
        CustomerName,
        SUM(Sales) AS TotalSales,
        SUM(Profit) AS TotalProfit
    FROM Sales
    GROUP BY CustomerName
)
SELECT
    CustomerName,
    TotalSales,
    TotalProfit,
    ROUND(
        TotalProfit * 100.0 / TotalSales,
        2
    ) AS ProfitMargin
FROM CustomerProfit;
--  CTE + Profit Margin Classification ⭐
WITH CustomerProfit AS
(
    SELECT
        CustomerName,
        SUM(Sales) AS TotalSales,
        SUM(Profit) AS TotalProfit
    FROM Sales
    GROUP BY CustomerName
)
SELECT
    CustomerName,
    TotalSales,
    TotalProfit,
    ROUND(
        TotalProfit * 100.0 / TotalSales,
        2
    ) AS ProfitMargin,


    CASE
        WHEN TotalProfit * 100.0 / TotalSales >= 25
            THEN 'High Margin'
        WHEN TotalProfit * 100.0 / TotalSales >= 15
            THEN 'Medium Margin'
        ELSE 'Low Margin'
    END AS MarginCategory
FROM CustomerProfit;
--  Category Performance
WITH CategorySales AS
(
    SELECT
        Category,
        SUM(Sales) AS TotalSales,
        SUM(Profit) AS TotalProfit
    FROM Sales
    GROUP BY Category
)
SELECT
    Category,
    TotalSales,
    TotalProfit
FROM CategorySales
ORDER BY TotalSales DESC;
--  Category Ranking ⭐
WITH CategorySales AS
(
    SELECT
        Category,
        SUM(Sales) AS TotalSales
    FROM Sales
    GROUP BY Category
)
SELECT
    Category,
    TotalSales,
    RANK() OVER
    (
        ORDER BY TotalSales DESC
    ) AS SalesRank
FROM CategorySales;
--  Monthly Sales Using CTE
WITH MonthlySales AS
(
    SELECT
        DATE_FORMAT(OrderDate, '%Y-%m') AS SalesMonth,
        SUM(Sales) AS TotalSales
    FROM Sales
    GROUP BY DATE_FORMAT(OrderDate, '%Y-%m')
)
SELECT
    SalesMonth,
    TotalSales
FROM MonthlySales
ORDER BY SalesMonth;
--  Find Highest Sales Month ⭐
WITH MonthlySales AS
(
    SELECT
        DATE_FORMAT(OrderDate, '%Y-%m') AS SalesMonth,
        SUM(Sales) AS TotalSales
    FROM Sales
    GROUP BY DATE_FORMAT(OrderDate, '%Y-%m')
),
RankedMonths AS
(
    SELECT
        SalesMonth,
        TotalSales,
        ROW_NUMBER() OVER
        (
            ORDER BY TotalSales DESC
        ) AS rn
    FROM MonthlySales
)
SELECT
    SalesMonth,
    TotalSales
FROM RankedMonths
WHERE rn = 1;
--  CTE + Window Function + Business Analysis ⭐⭐⭐
-- Find customers whose sales are above their regional average.

WITH CustomerSales AS
(SELECT
        CustomerName,
        Region,
        SUM(Sales) AS TotalSales
    FROM Sales
    GROUP BY
        CustomerName,
        Region),
RegionalAverage AS
(SELECT
        CustomerName,
        Region,
        TotalSales,
        AVG(TotalSales) OVER
        (PARTITION BY Region) AS RegionAverage
    FROM CustomerSales)
SELECT
    CustomerName,
    Region,
    TotalSales,
    RegionAverage
FROM RegionalAverage
WHERE TotalSales > RegionAverage;