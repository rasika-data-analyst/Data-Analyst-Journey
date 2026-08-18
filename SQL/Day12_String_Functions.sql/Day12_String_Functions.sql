-- =====================================================
-- DAY 12: SQL STRING FUNCTIONS
-- =====================================================

CREATE DATABASE Day12_String_Practice;
USE Day12_String_Practice;

CREATE TABLE Customers
(
    CustomerID INT,
    CustomerName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    City VARCHAR(50),
    Region VARCHAR(50)
);

INSERT INTO Customers
(CustomerID, CustomerName, Email, Phone, City, Region)
VALUES
(1, ' Amit Sharma ', 'amit.sharma@gmail.com', '9876543210', 'Delhi', 'North'),
(2, 'PRIYA MEHTA', 'priya.mehta@gmail.com', '9876543211', 'Mumbai', 'South'),
(3, 'rahul verma', 'rahul.verma@gmail.com', '9876543212', 'Pune', 'West'),
(4, ' Neha Singh', 'neha.singh@gmail.com', '9876543213', 'Kolkata', 'East'),
(5, 'Ravi Kumar ', 'ravi.kumar@gmail.com', '9876543214', 'Delhi', 'North'),
(6, 'SNEHA PATEL', 'sneha.patel@gmail.com', '9876543215', 'Mumbai', 'South'),
(7, ' karan joshi ', 'karan.joshi@gmail.com', '9876543216', 'Pune', 'West'),
(8, 'Anita Rao', 'anita.rao@gmail.com', '9876543217', 'Bangalore', 'South'),
(9, '  Arjun Shah', 'arjun.shah@gmail.com', '9876543218', 'Ahmedabad', 'West'),
(10, 'MEERA NAIR  ', 'meera.nair@gmail.com', '9876543219', 'Chennai', 'South');

select*from customers;
-- 1. LENGTH()
-- Find the number of characters in each customer name

SELECT
    CustomerName,
    LENGTH(CustomerName) AS NameLength
FROM Customers;

-- 2. Convert to Uppercase — UPPER()-- Convert customer names to uppercase
SELECT
    CustomerName,
    UPPER(CustomerName) AS UpperName
FROM Customers;
-- 3. Convert to Lowercase — LOWER() -- Convert customer names to lowercase
SELECT
    CustomerName,
    LOWER(CustomerName) AS LowerName
FROM Customers;
-- 4. Remove Spaces — TRIM()-- Remove leading and trailing spaces
SELECT
    TRIM(CustomerName) AS CleanCustomerName
FROM Customers;
-- 5. Left Characters — LEFT()-- Extract the first 3 characters
SELECT
    CustomerName,
    LEFT(CustomerName, 3) AS FirstThreeCharacters
FROM Customers;
-- 6. Right Characters — RIGHT()
-- Extract the last 3 characters
SELECT
    CustomerName,
    RIGHT(CustomerName, 3) AS LastThreeCharacters
FROM Customers;
-- 7. Extract Part of String — SUBSTRING()
-- Extract characters starting from position 1
SELECT
    CustomerName,
    SUBSTRING(CustomerName, 1, 3) AS ExtractedName
FROM Customers;
-- 8. Find Position — LOCATE()-- Find the position of a character/string
SELECT
    CustomerName,
    LOCATE('a', CustomerName) AS PositionOfA
FROM Customers;
-- 9. Replace Text — REPLACE()
-- Replace one value with another
SELECT
    Region,
    REPLACE(Region, 'North', 'N') AS UpdatedRegion
FROM Customers;
-- 10. Concatenate Strings — CONCAT()
-- Combine customer name and region
SELECT
    CustomerName,
    Region,
    CONCAT(CustomerName, ' - ', Region) AS CustomerDetails
FROM Customers;
-- 11. CONCAT_WS()
-- Combine values using a separator
SELECT
    CONCAT_WS(' | ', CustomerName, Region) AS CustomerInformation
FROM Customers;
-- 12. Reverse a String — REVERSE()
-- Reverse the customer name
SELECT
    CustomerName,
    REVERSE(CustomerName) AS ReversedName
FROM Customers;
-- 13. Repeat a String — REPEAT()
-- Repeat a value multiple times
SELECT
    CustomerName,
    REPEAT('*', 5) AS Stars
FROM Customers;
-- 14. String Padding — LPAD()
-- Add characters to the left
SELECT
    CustomerID,
    LPAD(CustomerID, 5, '0') AS FormattedCustomerID
FROM Customers;
-- 15. String Padding — RPAD()
-- Add characters to the right
SELECT
    CustomerName,
    RPAD(CustomerName, 15, '.') AS FormattedName
FROM Customers;
-- ⭐ 16. Combining Multiple String Functions TRIM → UPPER
SELECT
    CustomerName,
    UPPER(TRIM(CustomerName)) AS CleanCustomerName
FROM Customers;

-- ⭐ 17. Data Cleaning Example

SELECT
    CustomerName AS OriginalName,
    TRIM(CustomerName) AS CleanName,
    UPPER(TRIM(CustomerName)) AS StandardizedName
FROM Customers;

-- 18. Customer Name + Region ⭐ 18. Customer Name Formatting
SELECT
    CustomerName,
    Region,
    CONCAT(UPPER(CustomerName),' - ',UPPER(Region)) AS CustomerRegion
FROM Customers;
-- ⭐ 19. Find Names Starting With a Character  Names Starting With A
SELECT
    CustomerName
FROM Customers
WHERE UPPER(CustomerName) LIKE 'A%';

--  20. Find Names Ending With a Character 20. Names Ending With A
SELECT
    CustomerName
FROM Customers
WHERE UPPER(CustomerName) LIKE '%A';
--  21. Business Scenario — Customer Name Cleaning
-- Standardize customer names for reporting 
SELECT
    CustomerID,
    UPPER(TRIM(CustomerName)) AS StandardizedCustomerName,
    UPPER(TRIM(Region)) AS StandardizedRegion
FROM Customers;
--  22. Business Scenario — Customer Identifier
SELECT
    CustomerID,
    CONCAT(UPPER(LEFT(CustomerName, 3)),'-',CustomerID) AS CustomerCode
FROM Customers;






