create database company ; 

use company;

CREATE TABLE Department(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);


INSERT INTO Department VALUES
(101,'HR','Pune'),
(102,'IT','Mumbai'),
(103,'Sales','Delhi'),
(104,'Finance','Bangalore'),
(105,'Marketing','Hyderabad'),
(106,'Support','Chennai'),
(107,'Admin','Pune'),
(108,'Testing','Noida'),
(109,'Security','Nagpur'),
(110,'Research','Kolkata');




CREATE TABLE Employee(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY(dept_id) REFERENCES Department(dept_id)
);


INSERT INTO Employee VALUES
(1,'Amit',45000,Null),
(2,'Neha',52000,102),
(3,'Rahul',48000,103),
(4,'Priya',55000,102),
(5,'Karan',60000,104),
(6,'Sneha',47000,105),
(7,'Rohit',50000,Null),
(8,'Pooja',65000,104),
(9,'Ankit',40000,101),
(10,'Meena',53000,Null),
(11,'Vikas',62000,107),
(12,'Riya',46000,102),
(13,'Sahil',70000,104),
(14,'Nikita',51000,103),
(15,'Arjun',44000,NULL),
(16,'Komal',39000,NULL),
(17,'Deepak',58000,105),
(18,'Ayesha',61000,101),
(19,'Manish',49000,106),
(20,'Tina',54000,102);




-- Show employee name and department name. 
SELECT e.emp_name, d.dept_name
FROM Employee e
INNER JOIN Department d
ON e.dept_id = d.dept_id;
-- Show employee name and department location.
SELECT e.emp_name, d.location
FROM Employee e
INNER JOIN Department d
ON e.dept_id = d.dept_id;
-- Show employee ID, employee name and department name.
select e.emp_id, e.emp_name,d.dept_name
from employee e
inner join department d 
on e.dept_id = d.dept_id;
-- Show employees who are not assigned to any department.
SELECT e.emp_name
FROM Employee e
LEFT JOIN Department d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;
-- Show all departments with employee names.
SELECT d.dept_name, e.emp_name
FROM Department d
LEFT JOIN Employee e
ON d.dept_id = e.dept_id;
-- Show departments that have no employees.
SELECT d.dept_name
FROM Department d
LEFT JOIN Employee e
ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;


;select *from employee


;select *from department
