create database Music_Store

use Music_Store

----------------Who is the senior most employee based on job title?  
select * from employee
order by levels desc 

--------------Which countries have the most Invoices? 
select billing_country,count(invoice_id) from invoice
group by billing_country

-----------What are top 3 values of total invoice?  
select total from invoice 
order by total desc limit 3

---------------Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. 
Write a query that returns one city that has the highest sum of invoice totals. Return both the city name & sum of all invoice totals  
select billing_city,sum(total) as invoice_total from invoice
group by billing_city
 order by invoice_total desc 
 
 ---------------Who is the best customer? The customer who has spent the most money will be declared the best customer. 
 Write a query that returns the person who has spent the most money  
SELECT 
    c.customer_id, 
    c.first_name, 
    c.last_name, 
    SUM(i.total) AS total
FROM customer AS c
JOIN invoice AS i ON c.customer_id = i.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total DESC
LIMIT 1
