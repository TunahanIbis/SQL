-- Q1) Sort all the data for the first_name columns in the actor and customer tables.

(SELECT first_name
FROM actor)
UNION
(SELECT first_name
FROM customer);

-- Q2) List the intersecting data for the first_name columns in the actor and customer tables.

(SELECT first_name
FROM actor)
INTERSECT
(SELECT first_name
FROM customer);

-- Q3) For the first_name columns in the actor and customer tables, 
-- ...list the data that is in the first table but not in the second table.

(SELECT first_name
FROM actor)
EXCEPT
(SELECT first_name
FROM customer);

-- Q4) Make the first 3 queries for repeating data.

-- First query with duplicate data
(SELECT first_name
FROM actor)
UNION ALL
(SELECT first_name
FROM customer);

-- Second query with duplicate data

(SELECT first_name
FROM actor)
INTERSECT ALL
(SELECT first_name
FROM customer);

-- Third query with duplicate data

(SELECT first_name
FROM actor)
EXCEPT ALL
(SELECT first_name
FROM customer);
