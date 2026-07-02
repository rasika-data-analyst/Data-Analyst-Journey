
use company_db;

CREATE TABLE studentsd3 (
    student_id INT,
    student_name VARCHAR(50),
    age INT,
    city VARCHAR(30)
);


-- Q1:Insert the following student:

Insert into studentsd3 (student_id,student_name,Age,City)
values (
101, 'Anita' ,25, 'Delhi');

-- Write the INSERT statement.Q2Insert these two students in one query:
Insert into studentsd3 (student_id,student_name,Age,City)
values (
102 , 'Rahul' ,	30	, 'Mumbai' ),
(103 ,'Priya' ,	27	, 'Chennai' );

-- Q.Insert yourself into the students table using your own details.

Insert into studentsd3 (student_id,student_name,Age,City)
values ( 104, 'Rasika' , 30, 'pune');


select *from studentsd3;

-- Display all records.
select *from studentsd3;
-- Display only student_name.
select student_name from studentsd3;
-- Display student_name and city.
select student_name, city from studentsd3;
-- Display student_id and age.
select student_id, age from studentsd3;
-- Display only city.
select city from studentsd3;



-- Display students whose city is Mumbai.
select *from studentsd3 where city = 'mumbai';
-- Display students whose age is 27.
select *from studentsd3 where age = 27;
-- Display only student_name where the city is Pune.
select student_name from studentsd3 where city = 'pune';
-- Display students whose age is greater than 25.
select *from studentsd3 where age > 25;
-- Display students whose age is less than 30.
select *from studentsd3 where age < 30;
-- Display students whose city is not Chennai.
select *from studentsd3 where city <> 'chennai';
-- Display only student_name and city where the age is 30.
select student_name, city from students where age = 30;




-- Display all unique cities.
select distinct city from studentsd3;
-- Display all unique ages.
select distinct age from studentsd3;
-- Display unique combinations of city and age.
select distinct city, age from studentsd3;
-- Display all unique student names.
select distinct student_name from studentsd3;
-- (Hint: Since every student has a different name, what do you expect?)
-- What is the difference between these two queries?
SELECT city FROM studentsd3;  ---- it will all the records including 