-- Q1) List the country names in the country column of the country table, starting with the character 'A' and ending with the character 'a'.

SELECT *
FROM country
WHERE country LIKE 'A%a';

-- Q2) List the country names in the country column of the country table that contain at least 6 characters and end with the character 'n'.

SELECT country, LENGTH(country) AS character_length
FROM country
WHERE LENGTH(country) > 6
AND country LIKE '%n';

-- Q3) List the titles in the title column of the film table that contain at least 4 'T' characters, regardless of whether they are uppercase or lowercase.

SELECT title, LENGTH(title) AS character_length
FROM film
WHERE LENGTH(title) >= 4
AND title ~~* '%T%';

-- Q4) Among the data in all columns in the film table, sort the data whose title starts with the character 'C', whose length is greater than 90 and whose rental_rate is 2.99.

SELECT *
FROM film
WHERE title LIKE 'C%'
AND length > 90
AND rental_rate = 2.99;

