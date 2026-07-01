-- Q1:Create a database called:
create database company_db;
-- Q2:Use the database.
use company_db;
-- Q3Create a table called:

create table studentsb(
student_id int primary key,
student_name varchar(30) ,
age int,
city varchar(10) );
-- Q4.Display the table structure.
describe studentsb;

-- Q5Create a table called:

create table employeesb (
emp_id int primary key,
emp_name varchar (20),
salary int, 
department varchar(20),
joining_date date);

-- Q6 Create a table with constraints.

Create table employeesb1
(emp_id int Primary Key,
emp_name varchar(20) NOT NULL,
email varchar(30) UNIQUE,
city varchar(4) DEFAULT 'Pune');

-- Q7 Drop the students table.
Drop table studentsb;

-- Q8:Create another table named:

create table products(
product_id int,
product_name varchar(20),
price decimal(10,2),
quantity int);


Create  database hospital_db;


create table Patients(
patient_id int primary key,
patient_name varchar(30),
age int,
city char(10));

create table Doctors(
doctor_id int primary key,
doctor_name varchar(30),
specialization varchar(30));

create table Appointments(
appointment_id int primary key,
patient_id int,
doctor_id int,
appointment_date datetime);

