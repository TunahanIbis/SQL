-- Q1) List the 5 longest films in the film table whose title ends with the character 'n'.

SELECT *
FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;

-- Q2) List the 5 films that are the second shortest in length (6,7,8,9,10 indices in rows) in the film table and whose title ends with the character 'n'.

SELECT *
FROM film
WHERE title LIKE '%n'
ORDER BY length ASC
OFFSET 5
LIMIT 5;

-- Q3) Sort the first 4 data in descending order according to the last_name column in the customer table, provided that store_id is 1.

SELECT *
FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;