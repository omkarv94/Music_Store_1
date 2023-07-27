-- -- Q1. Who is the senior most employ from the job title 

-- -- ANS

-- Select * From employee
-- Order By levels DESC
-- -- Where levels='L7'
-- Limit 1

-- -- Q2. Which country has most invoices

-- -- ANS

-- Select count(*) as c, billing_country 
-- From invoice
-- Group By billing_country
-- Order By c DESC

-- -- Q3. What are top 3 Values of total invoice

-- -- ANS

-- Select * From invoice
-- Order By total DESC
-- Limit 3

-- -- Q4. Which city has the best customers? We would like to throw a promotional Music
-- -- Festival in the city we made the most money. Write a query that returns one city that
-- -- has the highest sum of invoice totals. Return both the city name & sum of all invoice
-- -- totals

-- -- ANS

-- Select sum(total) as billing_total, billing_city 
-- From invoice
-- Group By billing_city
-- Order By billing_total DESC

-- Q5. Who is the best customer? The customer who has spent the most money will be
-- -- declared the best customer. Write a query that returns the person who has spent the
-- -- most money

-- -- ANS

-- Select customer.customer_id, customer.first_name, customer.last_name, sum(invoice.total) as total 
-- From customer
-- Join invoice
-- On customer.customer_id=invoice.customer_id
-- Group BY customer.customer_id
-- Order By total DESC
-- Limit 1


