-- Q1) Write the INNER JOIN query where we can see the city and country names in the city table and the country table together.

SELECT city.city, country.country
FROM city
INNER JOIN country ON city.country_id = country.country_id;

-- Q2) Write the INNER JOIN query in which we can see the customer table, the payment_id in the payment table, and the first_name and last_name in the customer table together.

SELECT payment.payment_id, customer.first_name, customer.last_name
FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id;

-- Q3) Write the INNER JOIN query in which we can see the customer table, the rental_id in the rental table, and the first_name and last_name in the customer table together.

SELECT rental.rental_id, customer.first_name, customer.last_name
FROM rental
INNER JOIN customer ON rental.customer_id = customer.customer_id;