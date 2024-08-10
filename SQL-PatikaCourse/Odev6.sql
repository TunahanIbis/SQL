-- Q1) What is the average of the values in the rental_rate column in the film table?

SELECT AVG(rental_rate) AS AverageRentalRate
FROM film;

-- Q2) How many of the film in the film table start with the character 'C'?

SELECT COUNT(*)
FROM film
WHERE title LIKE 'C%';

-- Q3) Among the films in the film table, how many minutes is the longest film with a rental_rate value equal to 0.99?

SELECT MAX(length) AS MaxLength
FROM film
WHERE rental_rate = 0.99;

-- Q4) How many different replacement_cost values are there for films in the film table that are longer than 150 minutes?

SELECT COUNT(DISTINCT replacement_cost)
FROM film
WHERE length > 150;