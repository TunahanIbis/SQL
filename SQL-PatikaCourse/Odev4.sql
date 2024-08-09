-- Q1) List the different values in the replacement_cost column in the film table.

SELECT DISTINCT replacement_cost
FROM film;

-- Q2) How many different data are there in the replacement_cost column in the film table?

SELECT COUNT(DISTINCT(replacement_cost))
FROM film;

-- Q3) How many of the film titles in the film table start with the character 'T' and also have a rating equal to 'G'?

SELECT COUNT(*)
FROM film
WHERE title LIKE 'T%'
AND rating = 'G';

-- Q4) How many of the country names in the country table consist of 5 characters?

SELECT COUNT(*)
FROM country
WHERE LENGTH(country) = 5;

-- Q5) How many of the city names in the city table end with the character 'R' or 'r'?

SELECT COUNT(*)
FROM city
WHERE city ~~* '%R'