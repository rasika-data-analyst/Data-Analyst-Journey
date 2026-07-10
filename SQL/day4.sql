-- Interview Questions
-- 1. What is the purpose of the UPDATE statement?
-- which table to modify
-- 2. What is the purpose of the SET clause?
-- which column to specify
-- 3. Why is the WHERE clause important in UPDATE?
-- which row want to update 
-- 4. Can we update multiple columns in one query?
-- yes we can 
-- 5. What happens if we omit the WHERE clause?
-- it will update all the table , values it is dangerous.
-- 6. Is UPDATE a DDL or DML command?
-- DML
-- 7. Can UPDATE be rolled back before COMMIT?
-- nope


use company_db;

CREATE TABLE employees_day4 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30),
    salary DECIMAL(10,2),
    department VARCHAR(20),
    city VARCHAR(20)
);


INSERT INTO employees_day4
VALUES
(101,'Anita',40000,'HR','Delhi'),
(102,'Rahul',50000,'IT','Mumbai'),
(103,'Priya',45000,'Sales','Chennai'),
(104,'Rohan',55000,'IT','Pune'),
(105,'Sneha',48000,'HR','Hyderabad');


select * from employees_day4;
SET SQL_SAFE_UPDATES = 0;
-- Practice Questions
-- Update Rahul's salary to 60000.
update employees_day4 set salary=60000 where emp_name = 'Rahul';
-- Change Priya's city to Bangalore.
update employees_day4 set city='Bangalore' where emp_name = 'Priya';
-- Change Rohan's department to Finance.
update employees_day4 set department='Finance' where emp_name = 'Rohan';
-- Update Sneha's salary to 52000 and city to Pune in one query.
update employees_day4 set city='pune' , salary=52000 where emp_name = 'Priya';
-- Increase Anita's salary to 45000.
update employees_day4 set salary=45000 where emp_name = 'Anita';



-- Practice Assignment
-- Delete Rahul.

delete from employees_day4 where emp_name = 'Rahul';

-- Delete Anita.
delete from employees_day4 where emp_name = 'Anita';

-- Delete all employees from the Finance department.

delete from employees_day4 where department = 'Finance';

-- Display the remaining records.
select *from employees_day4;

-- -- DELETE FROM employees_day4;
-- delete whole table 

-- Interview Questions
-- 1. What is the purpose of the DELETE statement?
-- to delete existing records from table 
-- 2. Is DELETE a DDL or DML command?
-- DML
-- 3. Why should we use the WHERE clause with DELETE?
-- to delete specific row
-- 4. What happens if we omit the WHERE clause?
-- it will delete all rows table remains
-- 5. Does DELETE remove the table structure?
-- nope it will be there 
-- 6. Can we roll back a DELETE operation?
-- yes by rollback we can
-- 7. Which is safer to use in the WHERE clause: emp_name or emp_id? Why?
-- emp_id as it is having primary key



-- Add a column named email.
Alter table employees_day4
add column email varchar(30);

-- Add a column named mobile_no.
Alter table employees_day4
add column mobile_no int;

-- Change the size of city from VARCHAR(20) to VARCHAR(50).
Alter table employees_day4
modify column city varchar(50);

-- Rename department to dept.
Alter table employees_day4
rename column department To dept;

-- Drop the mobile_no column.
ALTER TABLE employees_day4
DROP COLUMN mobile_no;

-- Display the table structure.
desc employees_day4;

-- Answer these in your own words after practicing.

-- 1. What is the purpose of the ALTER TABLE statement?
-- to make the changes in exisiting table 
-- 2. Is ALTER TABLE a DDL or DML command?
-- DML
-- 3. Which command adds a new column?
-- Alter table employees_day4
-- add column mobile_no int;
-- 4. Which command changes a column's data type?
-- Alter table employees_day4
-- modify column city varchar(50);
-- 5. Which command renames a column?
-- Alter table employees_day4
-- rename column department To dept;
-- 6. Which command removes a column?
-- ALTER TABLE employees_day4
-- DROP COLUMN mobile_no;
-- 7. Does ALTER TABLE modify data or table structure?
-- yes 
-- 8. What is the difference between UPDATE and ALTER TABLE?
-- update is for specific row and alter is for more data for columns 
-- 9. Which command is used to display the table structure?
-- desc table table name 
-- 10. Give one real-world example where ALTER TABLE is useful.
-- to update column name or data str 