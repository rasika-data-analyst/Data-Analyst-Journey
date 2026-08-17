CREATE DATABASE Day11_CASE_Practice;
USE Day11_CASE_Practice;
CREATE TABLE Employees
(
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Department VARCHAR(30),
    Salary INT,
    City VARCHAR(30)
);

INSERT INTO Employees
(EmployeeID, EmployeeName, Department, Salary, City)
VALUES
(1, 'Amit', 'IT', 75000, 'Delhi'),
(2, 'Priya', 'HR', 45000, 'Mumbai'),
(3, 'Rahul', 'Finance', 65000, 'Pune'),
(4, 'Neha', 'IT', 35000, 'Bangalore'),
(5, 'Ravi', 'Sales', 55000, 'Delhi'),
(6, 'Sneha', 'IT', 90000, 'Mumbai'),
(7, 'Karan', 'HR', 30000, 'Pune'),
(8, 'Anita', 'Finance', 48000, 'Delhi');

SELECT * FROM Employees;

Q1 — Salary classification
SELECT
    EmployeeName,
    Salary,
    CASE
        WHEN Salary >= 70000 THEN 'High'
        WHEN Salary >= 40000 THEN 'Medium'
        ELSE 'Low'
    END AS SalaryCategory
FROM Employees;

Q2 — Department classification
SELECT
    EmployeeName,
    Department,
    CASE
        WHEN Department = 'IT' THEN 'Technology'
        WHEN Department = 'Finance' THEN 'Financial'
        WHEN Department = 'HR' THEN 'Human Resources'
        ELSE 'Other'
    END AS DepartmentGroup
FROM Employees;
Q3 — High-paid IT employees
SELECT
    EmployeeName,
    Department,
    Salary,
    CASE
        WHEN Salary >= 70000 AND Department = 'IT'
            THEN 'High Paid IT'
        ELSE 'Other'
    END AS EmployeeGroup
FROM Employees;

SELECT
    EmployeeName,
    Salary,
    CASE
        WHEN Salary >= 70000 THEN Salary * 1.10
        WHEN Salary >= 40000 THEN Salary * 1.07
        ELSE Salary * 1.05
    END AS RevisedSalary
FROM Employees;

Step 1 — Create Customers table
CREATE TABLE Customers
(
    CustomerID INT,
    CustomerName VARCHAR(50),
    Region VARCHAR(30)
);
Step 2 — Insert Customers
INSERT INTO Customers
(CustomerID, CustomerName, Region)
VALUES
(1, 'Amit', 'North'),
(2, 'Priya', 'South'),
(3, 'Rahul', 'West'),
(4, 'Neha', 'East'),
(5, 'Ravi', 'North'),
(6, 'Sneha', 'South');



SELECT * FROM Customers;
Step 3 — Create Orders table
CREATE TABLE Orders
(
    OrderID INT,
    CustomerID INT,
    Category VARCHAR(30),
    Sales DECIMAL(10,2)
);
Step 4 — Insert Orders
INSERT INTO Orders
(OrderID, CustomerID, Category, Sales)
VALUES
(101, 1, 'Technology', 75000),
(102, 1, 'Furniture', 30000),
(103, 2, 'Technology', 55000),
(104, 2, 'Office Supplies', 15000),
(105, 3, 'Furniture', 45000),
(106, 3, 'Technology', 90000),
(107, 4, 'Office Supplies', 12000),
(108, 5, 'Technology', 110000),
(109, 5, 'Furniture', 25000),
(110, 6, 'Technology', 40000);


SELECT * FROM Orders;

CREATE TABLE Customers
(
    CustomerID INT,
    CustomerName VARCHAR(50),
    Region VARCHAR(30)
);

INSERT INTO Customers
(CustomerID, CustomerName, Region)
VALUES
(1, 'Amit', 'North'),
(2, 'Priya', 'South'),
(3, 'Rahul', 'West'),
(4, 'Neha', 'East'),
(5, 'Ravi', 'North'),
(6, 'Sneha', 'South');



SELECT * FROM Customers;

CREATE TABLE Orders
(
    OrderID INT,
    CustomerID INT,
    Category VARCHAR(30),
    Sales DECIMAL(10,2)
);

INSERT INTO Orders
(OrderID, CustomerID, Category, Sales)
VALUES
(101, 1, 'Technology', 75000),
(102, 1, 'Furniture', 30000),
(103, 2, 'Technology', 55000),
(104, 2, 'Office Supplies', 15000),
(105, 3, 'Furniture', 45000),
(106, 3, 'Technology', 90000),
(107, 4, 'Office Supplies', 12000),
(108, 5, 'Technology', 110000),
(109, 5, 'Furniture', 25000),
(110, 6, 'Technology', 40000);


SELECT * FROM Orders;


SELECT
    c.CustomerName,
    o.OrderID,
    o.Sales,
    CASE
        WHEN o.Sales >= 70000 THEN 'High'
        WHEN o.Sales >= 30000 THEN 'Medium'
        ELSE 'Low'
    END AS SalesCategory
FROM Customers c
JOIN Orders o
    ON c.CustomerID = o.CustomerID;
    
    
   --  2. CASE with Multiple Conditions
 SELECT
    EmployeeName,
    Department,
    Salary,
    CASE
        WHEN Department = 'IT' AND Salary >= 70000
            THEN 'High Paid IT'
        WHEN Department = 'IT' AND Salary < 70000
            THEN 'Regular IT'
        WHEN Department = 'Finance' AND Salary >= 60000
            THEN 'High Paid Finance'
        ELSE 'Other'
    END AS EmployeeGroup
FROM Employees;
-- 3. CASE + JOIN ⭐-- Display Customer Name, Order ID, Sales and Sales Category.
SELECT
    c.CustomerName,
    o.OrderID,
    o.Sales,
    CASE
        WHEN o.Sales >= 70000 THEN 'High'
        WHEN o.Sales >= 30000 THEN 'Medium'
        ELSE 'Low'
    END AS SalesCategory
FROM Customers c
INNER JOIN Orders o
    ON c.CustomerID = o.CustomerID;
-- 4. CASE + JOIN — Customer Type
SELECT
    c.CustomerName,
    c.Region,
    o.Sales,
    CASE
        WHEN o.Sales >= 100000 THEN 'VIP'
        WHEN o.Sales >= 50000 THEN 'Premium'
        WHEN o.Sales >= 20000 THEN 'Regular'
        ELSE 'Low Value'
    END AS CustomerType
FROM Customers c
INNER JOIN Orders o
    ON c.CustomerID = o.CustomerID;
-- 5. CASE + GROUP BY ⭐-- Count employees in each salary category.

SELECT
    CASE
        WHEN Salary >= 70000 THEN 'High'
        WHEN Salary >= 40000 THEN 'Medium'
        ELSE 'Low'
    END AS SalaryCategory,
    COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY
    CASE
        WHEN Salary >= 70000 THEN 'High'
        WHEN Salary >= 40000 THEN 'Medium'
        ELSE 'Low'
    END;
-- 6. SUM(CASE WHEN...) ⭐⭐⭐Technology sales
SELECT SUM(CASE
            WHEN Category = 'Technology'
            THEN Sales
            ELSE 0
            END) AS TechnologySales
FROM Orders;

SELECT
    SUM(CASE
            WHEN Category = 'Technology'
            THEN Sales
            ELSE 0
        END) AS TechnologySales,
    SUM(CASE
            WHEN Category = 'Furniture'
            THEN Sales
            ELSE 0
        END) AS FurnitureSales,
    SUM(CASE
            WHEN Category = 'Office Supplies'
            THEN Sales
            ELSE 0
            END) AS 
            OfficeSuppliesSales
	FROM Orders;
-- 7. SUM(CASE WHEN...) + GROUP BY ⭐⭐⭐ Calculate Technology and Furniture sales by customer.

SELECT
    c.CustomerName,
SUM(CASE
           WHEN o.Category = 'Technology'
            THEN o.Sales
            ELSE 0
        END) AS TechnologySales,
    SUM(CASE
            WHEN o.Category = 'Furniture'
            THEN o.Sales
            ELSE 0
        END) AS FurnitureSales
FROM Customers c
INNER JOIN Orders o
    ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;


-- 8. COUNT(CASE WHEN...) ⭐⭐Count Technology orders.

SELECT
    COUNT(CASE
            WHEN Category = 'Technology'
            THEN 1
        END) AS TechnologyOrders
FROM Orders;
-- Count multiple categories
SELECT
    COUNT(CASE
            WHEN Category = 'Technology'
            THEN 1
        END) AS TechnologyOrders,
    COUNT(CASE
            WHEN Category = 'Furniture'
            THEN 1
        END) AS FurnitureOrders,
    COUNT(CASE
            WHEN Category = 'Office Supplies'
            THEN 1
        END) AS OfficeSuppliesOrders
FROM Orders;
-- 9. CASE with NULL ⭐⭐

SELECT
    CustomerName,
    CASE
        WHEN Region IS NULL THEN 'Region Missing'
        ELSE 'Region Available'
    END AS RegionStatus
FROM Customers;

-- You can also use CASE to identify missing values in other columns.

SELECT
    CustomerName,
    Region,
    CASE
        WHEN Region IS NULL THEN 'Missing'
        ELSE 'Available'
    END AS DataStatus
FROM Customers;

-- 10. CASE + JOIN + GROUP BY ⭐⭐⭐
-- Find each customer's total sales and classify them.

SELECT
    c.CustomerName,
    SUM(o.Sales) AS TotalSales,
    CASE
        WHEN SUM(o.Sales) >= 100000 THEN 'VIP'
        WHEN SUM(o.Sales) >= 50000 THEN 'Premium'
        WHEN SUM(o.Sales) >= 20000 THEN 'Regular'
        ELSE 'Low Value'
    END AS CustomerType
FROM Customers c
INNER JOIN Orders o
    ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;

-- Give employees a bonus category:
SELECT
    EmployeeName,
    Salary,
    CASE
        WHEN Salary >= 70000 THEN '20% Bonus'
        WHEN Salary >= 50000 THEN '15% Bonus'
        WHEN Salary >= 40000 THEN '10% Bonus'
        ELSE '5% Bonus'
    END AS BonusCategory
FROM Employees;
-- 12. Business Scenario — Customer Priority
SELECT
    c.CustomerName,
    c.Region,
    SUM(o.Sales) AS TotalSales,
    CASE
        WHEN SUM(o.Sales) >= 100000 THEN 'High Priority'
        WHEN SUM(o.Sales) >= 50000 THEN 'Medium Priority'
        ELSE 'Low Priority'
    END AS CustomerPriority
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName,c.Region;
-- 13. Business Scenario — Order Status
SELECT
    OrderID,
    Sales,
    CASE
        WHEN Sales >= 70000 THEN 'Large Order'
        WHEN Sales >= 30000 THEN 'Medium Order'
        WHEN Sales > 0 THEN 'Small Order'
        ELSE 'Invalid Order'
    END AS OrderStatus
FROM Orders;
-- 14. Business Scenario — Region Grouping
SELECT
    CustomerName,
    Region,
    CASE
        WHEN Region IN ('North', 'South')
            THEN 'Domestic Zone 1'
        WHEN Region IN ('East', 'West')
            THEN 'Domestic Zone 2'
        ELSE 'Unknown Region'
    END AS RegionGroup
FROM Customers;

