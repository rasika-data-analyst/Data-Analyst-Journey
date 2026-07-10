use airline_dbboot;

select *from flights;


-- 🟢 Level 1 – GROUP BY (Easy)
-- Find the number of flights for each airline.
select airline, count(*) FlightNumber from flights
group by Airline;

-- Find the average ticket price for each airline.
select airline, avg(ticketprice) as avg_ticketprice from flights
group by airline; 
-- Find the highest ticket price for each airline
select airline, max(ticketprice) as max_price from flights 
group by airline;
-- Find the total ticket price for each airline.
select airline, sum(ticketprice) as avg_price from flights 
group by airline;

-- Find the average ticket price for each departure city.
select flightnumber, avg(ticketprice) as avg_price from flights
group by DepartureCity;

-- Count the number of flights departing from each city.
select count(*) FlightNumber,DepartureCity from flights
group by DepartureCity;

-- Find the maximum ticket price for each arrival city.
select max(ticketprice) as max_price, arrivalcity from flights
group by ArrivalCity;

-- Find the minimum ticket price for each departure city.
select min(ticketprice), DepartureCity from flights
group by DepartureCity;

-- Find the average ticket price for each combination of airline and departure city.
select airline, DepartureCity, avg(ticketprice) as avg_ticketprice from flights
group by airline,DepartureCity; 

-- 🟡 Level 2 – HAVING (Medium)
-- Show airlines having more than 3 flights.
select airline, count(*)FlightNumber from flights 
group by airline 
having FlightNumber > 3;

-- Show airlines whose average ticket price is greater than 700.
select airline, avg(ticketprice) as avg_ticketprice from flights 
group by airline 
having avg_ticketprice > 700;

-- Show departure cities where the average ticket price is less than 600.
select DepartureCity, avg(ticketprice) as avg_ticketprice from flights 
group by DepartureCity
having avg_ticketprice < 600;

-- Show airlines whose maximum ticket price is greater than 1000.
select Airline, max(ticketprice) as max_ticketprice from flights 
group by Airline
having Airline < 600;

-- Show arrival cities where the minimum ticket price is greater than 500.
select Airline, min(ticketprice) as min_ticketprice from flights 
group by Airline
having Airline > 500;

-- Show airlines where the total ticket price is greater than 3000.
select airline, sum(ticketprice) as total_price
from flights 
group by airline
having sum(ticketprice) > 3000;

-- Show departure cities having at least 2 flights.
select departurecity, count(*)flightnumber
from flights
group by departurecity
having flightnumber > 2;

-- Show airline and departure city combinations where the average ticket price is greater than 800.
select airline,departurecity,avg(ticketprice)
from flights
group by airline,departurecity
having avg(ticketprice) > 800;

-- Show airlines whose minimum ticket price is less than 400.
select airline, min(ticketprice)
from flights
group by airline
having min(ticketprice) < 400;

-- Show airlines having exactly 4 flights.
select airline, count(*)FlightNumber
from flights
group by airline
having FlightNumber = 4;


-- 🟠 Level 3 – CTE (Easy)
-- Create a CTE that displays all flights departing from London.
with flights_london as 
(
	select *from flights 
    where DepartureCity = 'London'
)
select *from flights_london;

-- Create a CTE that displays flights costing more than 800.
with flights_cost as 
(
	select *from flights 
    where TicketPrice > 800
)
select *from flights_cost;

-- Create a CTE that shows only Air India flights.
with Air_Indiaflight as 
(
	select *from flights 
    where Airline = 'Air India'
)
select *from Air_Indiaflight;


-- Create a CTE that shows flights arriving in New York.
with Arriving_flight as 
(
	select *from flights 
    where ArrivalCity = 'New York'
)
select *from Arriving_flight;

-- Create a CTE that contains only flights with ticket prices between 500 and 900.
with flight_price as 
(
	select airline, ticketprice
    from flights 
   WHERE TicketPrice BETWEEN 500 AND 900
)
select *from flight_price;

-- 🔵 Level 4 – CTE + GROUP BY
-- Create a CTE that finds the average ticket price for each airline.
with avg_ticketprice as 
(
	select airline, avg(ticketprice) as avg_ticketprice from flights 
	group by airline
)
select *from avg_ticketprice;

-- Create a CTE that finds the total number of flights for each departure city.
with total_flights as 
(
	select departurecity,count(FlightNumber) as total_number
    from flights 
    group by departurecity
)
select *from total_flights;

-- Create a CTE that finds the highest ticket price for each airline.
with highest_ticketprice as
(
	select airline, max(ticketprice) as highest_ticketprice 
    from flights
    group by airline 
)
	select *from highest_ticketprice;
    
-- Create a CTE that finds the minimum ticket price for each arrival city.
with min_ticketprice as
(
	select airline, max(ticketprice) as min_ticketprice 
    from flights
    group by airline 
)
	select *from min_ticketprice;

-- Display the results from the CTE.

-- 🟣 Level 5 – CTE + HAVING
-- Create a CTE that shows airlines whose average ticket price is greater than 700.
with avg_ticket as 
(
	select airline, avg(ticketprice) as average_ticket_price
    from flights
    group by Airline
    having avg(ticketprice) > 700
)
select *from avg_ticket;

-- Create a CTE that shows departure cities having more than 2 flights.
with departure_city as 
(
	select DepartureCity, count(FlightNumber) as flightumber
    from flights
    group by DepartureCity
    having count(FlightNumber) > 2
)
select *from departure_city;

-- Create a CTE that shows airlines whose total ticket price is greater than 3000.
with  total_ticket as 
(
	select airline, sum(TicketPrice) as total_ticket_price
    from flights 
    group by airline
    having sum(TicketPrice) > 3000
)
select *from total_ticket;
-- Create a CTE that shows arrival cities where the maximum ticket price is greater than 1000.
with  max_ticket as 
(
	select airline, max(TicketPrice) as maximum_ticket_price
    from flights 
    group by airline
    having max(TicketPrice) > 1000
)
select *from max_ticket;

-- Create a CTE that shows airlines whose minimum ticket price is less than 500.
with  min_ticket as 
(
	select airline, min(TicketPrice) as minimum_ticket_price
    from flights 
    group by airline
    having max(TicketPrice) < 500
)
select *from min_ticket;

-- 🔴 Level 6 – Interview Questions (Most Important)
-- Q36-- Create a CTE that calculates the average ticket price for each airline, 
-- then display only airlines whose average price is greater than 700.
with  avg_ticket as 
(
	select airline, avg(TicketPrice) as avg_ticket_price
    from flights 
    group by airline
    having avg(TicketPrice) > 700
)
select *from avg_ticket;

-- Create a CTE that calculates the maximum ticket price for each airline, 
-- then display airlines with a maximum ticket price greater than 1000.
with  max_ticket as 
(
	select airline, max(TicketPrice) as maximum_ticket_price
    from flights 
    group by airline
    having max(TicketPrice) > 1000
)
select *from max_ticket;

-- Create a CTE that counts flights for each departure city, then display only cities with more than 2 flights.
with count_flights as 
(
	select DepartureCity, count(FlightNumber) as number_flight
    from flights 
    group by DepartureCity
    having count(FlightNumber) > 2
)
select *from count_flights;

-- Create a CTE that calculates the total ticket price for each airline, then display only airlines where the total is greater than 3000.
with total_ticket as 
(
	select Airline, sum(TicketPrice) as total_ticket_price
    from flights
    group by Airline
    having sum(TicketPrice) > 3000
)
select *from total_ticket;

-- Q40 ⭐ (Very Common Interview Question)

-- Create a CTE that calculates:
-- Airline
-- Average Ticket Price
-- Then display:
-- Airline
-- Average Ticket Price-- ordered from highest average price to lowest average price.
with airline_avgprice as
(select Airline, avg(ticketprice) as avg_ticketprice
from flights
group by airline order by avg(ticketprice) desc
)
select *from airline_avgprice;

-- 🏆 Bonus Challenge (Data Analyst Level)
-- Find the airlines whose average ticket price is higher than the overall average ticket price.
-- Hint:-- One aggregate is per airline.
-- One aggregate is for the entire table.

WITH airline_avg AS
(
    SELECT Airline,
           AVG(TicketPrice) AS AvgPrice
    FROM flights
    GROUP BY Airline
)
SELECT *
FROM airline_avg
WHERE AvgPrice >
(
    SELECT AVG(TicketPrice)
    FROM flights
);


-- Find departure cities where the maximum ticket price is greater than the overall average ticket price.
-- Find airlines that have both:
-- More than 3 flights, and
-- An average ticket price greater than 700.
WITH departurecity_max AS
(
    SELECT DepartureCity,
           max(TicketPrice) AS maxPrice
    FROM flights
    GROUP BY DepartureCity
)
SELECT *
FROM departurecity_max
WHERE maxPrice >
(
    SELECT AVG(TicketPrice)
    FROM flights
);


WITH airline_stats AS
(
    SELECT Airline,
           COUNT(*) AS TotalFlights,
           AVG(TicketPrice) AS AvgPrice
    FROM flights
    GROUP BY Airline
)

SELECT Airline,
       TotalFlights,
       AvgPrice
FROM airline_stats
WHERE TotalFlights > 3
  AND AvgPrice >
(
    SELECT AVG(TicketPrice)
    FROM flights
);

-- Create a CTE for airline statistics containing:
-- Airline
-- Number of Flights
-- Average Ticket Price
-- Maximum Ticket Price
-- Minimum Ticket Price
-- Then display all the statistics.

with airline_statistics as 
(
   select Airline, count(FlightNumber),
   avg(TicketPrice) as Average_Ticket_Price,
   max(TicketPrice) as Maximum_Ticket_Price,
   min(TicketPrice) as Minimum_Ticket_Price
   from flights
   group by Airline
)
select *from airline_statistics;

