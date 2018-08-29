# SQL Homework Larry VonDracek II

USE Sakila;

#1a.
SELECT actor_id, first_name, last_name
from actor
ORDER BY last_name

#1b.
SELECT CONCAT(first_name, " ", last_name) as full_name
FROM actor;

#2a.
SELECT actor_id, first_name, last_name
FROM actor
WHERE
   first_name = 'Joe';
   
 #2b.   
 SELECT first_name, last_name
FROM actor
WHERE
   last_name = '%GEN%';

#2c.

 SELECT first_name, last_name
FROM actor
WHERE
    last_name = '%L%I%'
    AND
   first_name = '%L%I%';

#2d.
SELECT country_id, country
FROM country
WHERE country_id IN ('Afghanistan', 'Bangledesh', 'China');

#3a
SELECT * from actor;

ALTER TABLE actor
ADD COLUMN description BLOB 
AFTER last_name;

#3b
SELECT * from actor;


ALTER TABLE actor
DROP COLUMN description;

#4a.
SELECT last_name, count(last_name) as lastnameCount
FROM actor
GROUP BY last_name;

#4b.
SELECT last_name, count(last_name) as lastnameCount
FROM actor
GROUP BY last_name

having count(last_name) > 2;

#4c.
UPDATE actor
SET first_name = 'HARPO'
WHERE
    last_name = 'WILLIAMS'
    AND
   first_name = 'GROUCHO';

#4d.
UPDATE actor
SET first_name = 'GROUCHO'
WHERE
   first_name = 'HARPO';
   
#5a
CREATE TABLE addresses (
  address_id int NOT NULL,
  address_name VARCHAR(30),
  address2 VARCHAR(30),
  city_id INT,
  postal_code INT,
  phone INT,
  location BLOB
);

#6a.
SELECT first_name, last_name, address
From staff
inner join address
using(address_id);

#6b
SELECT lt.staff_id, SUM(amount)
FROM staff AS lt
INNER JOIN payment AS rt
ON lt.staff_id = rt.staff_id
WHERE payment_date LIKE '2005-08%'
GROUP BY staff_id;

#6c
SELECT title, count(actor_id) AS number_of_actors
FROM  film
INNER JOIN film_actor
USING(film_id)
GROUP BY actor_id;

#6d
SELECT lt.film_id, rt.title, count(lt.film_id)
FROM inventory AS lt
INNER JOIN film as rt
USING(film_id)
GROUP BY lt.film_id
HAVING rt.title = 'Hunchback Impossible';

#6e
SELECT customer_id, last_name, sum(amount) as Total
FROM payment
JOIN customer
USING ( customer_id)
GROUP BY customer_id;

 
 