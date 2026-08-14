1️⃣

Find customers whose balance is less than the average balance

select *from customers where balance < (select avg(balance) from customers);
2️⃣

Find customers who have the maximum balance
select *from customers = (select max(balance) from customers);
3️⃣

Find customers whose balance is greater than the minimum balance but less than the maximum balance
select *from customers
 where balance > (select*from min(balance) ) 
 and  balance < (select max(balance) from customers) ;
4️⃣

Find customers whose balance is equal to the second highest balance
select *from customers 
where balance = (select *from max(balance) from customers
 where balance < (select *from max(balance) from customers));
5️⃣

Find customers whose balance is greater than the average balance of married customers
select *from customers 
where balance > (select avg(balance) from customers where marital_status = 'married');
6️⃣

Find customers whose balance is equal to the minimum balance among unmarried customers
select *from customers 
where balance = (select min(balance) from customers where maritial _status = 'unmarried');
7️⃣

Find customers whose balance is greater than ALL customers who are unmarried
select *from customers 
where balance > All(select*from balance from customers where maritial _status = 'unmarried' );
8️⃣

Find customers whose balance is less than ANY customer who is married
select *from customers 
where balance > Any (select*from balance from customers where maritial _status = 'married' );
9️⃣

Find customers whose balance is NOT equal to the average balance
select *from customers 
where balance <> round(select avg(balance) from customers);
🔟

Find customers whose balance is greater than the average balance of their own marital status group

SELECT *
FROM customers c1
WHERE balance > (
    SELECT AVG(balance)
    FROM customers c2
    WHERE c2.marital_status = c1.marital_status
);


