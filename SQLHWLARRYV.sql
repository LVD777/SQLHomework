# SQL Homework Larry VonDracek II

USE Sakila;

#1a.
SELECT first_name, last_name
from actor
ORDER BY last_name

#1b.
SELECT CONCAT(first_name, " ", last_name) as full_name
FROM actor;

#2a.
SELECT first_name, last_name
FROM actor
WHERE
   first_name = 'Joe';
   
 #2b.   
 SELECT first_name, last_name
FROM actor
WHERE
   last_name = '%Gen%';

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




   
 
 
 
 
 