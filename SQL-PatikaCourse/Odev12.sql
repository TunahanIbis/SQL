-- Q1) In the film table, the film length is shown in the length column. 
-- How many films are longer than the average film length?

SELECT COUNT(*)
FROM film
WHERE length >
(SELECT AVG(length)
FROM film);

-- Q2) How many films have the highest rental_rate in the film table?

SELECT COUNT(*)
FROM film
WHERE rental_rate =
(SELECT MAX(rental_rate)
FROM film);

-- Q3) In the film table, list the films with the lowest rental_rate 
-- ...and lowest replacement_cost values.

SELECT *
FROM film
WHERE rental_rate = 
(SELECT MIN(rental_rate) 
FROM film)
AND replacement_cost = 
(SELECT MIN(replacement_cost) 
FROM film);

-- Q4) List the customers who made the most purchases in the payment table.

SELECT *
FROM payment
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING COUNT(payment_id) = (
        SELECT MAX(payment_count)
        FROM (
            SELECT COUNT(payment_id) AS payment_count
            FROM payment
            GROUP BY customer_id
        ) AS counts
    )
);
