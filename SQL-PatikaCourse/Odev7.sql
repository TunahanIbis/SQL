-- Q1) Group the films in the film table according to their rating values.

SELECT rating, COUNT(*) AS FilmCount
FROM film
GROUP BY rating;

-- Q2) When we group the films in the film table according to the replacement_cost column...
-- ... list the replacement_cost value and the corresponding number of films if the number of films is more than 50.

SELECT replacement_cost, COUNT(*) AS FilmCount
FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50;

-- Q3) What are the customer numbers corresponding to the store_id values in the customer table?

SELECT store_id, COUNT(*) AS CustomerCount
FROM customer
GROUP BY store_id;

-- Q4) After grouping the city data in the City table according to the country_id column...
-- ... share the country_id information and the number of cities that contain the highest number of cities.

SELECT country_id, COUNT(*) AS CityCount
FROM city
GROUP BY country_id
ORDER BY CityCount DESC
LIMIT 1;
