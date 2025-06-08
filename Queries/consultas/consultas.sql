USE sakila;

-- Obtener la fecha más antigua de alquiler
SELECT MIN(rental_date) AS Fecha_antigua
FROM rental;


-- Obtener el ID de actor más bajo
SELECT MIN(actor_id) AS actor_bajo
FROM actor;


-- Obtener la duración mínima de una película
select MIN(rental_duration) AS duracion_minima
from film;

-- Obtener la fecha más reciente de alquiler
SELECT MIN(rental_date) AS Fecha_reciente
FROM rental;
-- Obtener el ID de actor más alto
SELECT max(actor_id) AS actor_alto
FROM actor;


-- Obtener la duración máxima de una película
select MAX(rental_duration) AS duracion_maxima
from film;
-- Contar el número total de actores
SELECT count(actor_id) AS actor_totales
FROM actor;
-- Contar cuántas películas tienen clasificación PG
SELECT COUNT(*) AS clasificacion_pg
FROM film
WHERE rating = 'PG';

-- Contar cuántos clientes hay en la tienda 1
SELECT COUNT(*) AS total_clientes
FROM customer
WHERE store_id = 1;

-- Sumar todos los pagos registrados
SELECT SUM(amount) AS total_pagos
FROM payment;

-- Sumar la duración total de todas las películas
select sum(rental_duration) AS duracion_total
from film;
-- Sumar todos los pagos de un cliente específico (ID 5)
SELECT sum(amount) AS cliente_pagos
FROM payment
WHERE customer_id= 5;
-- Calcular el promedio de duración de las películas
select AVG(rental_duration) AS peliculas_promedio
from film;
-- Calcular el promedio de los pagos realizados
select avg(amount) as pagos_promedio
from payment;
-- Calcular el promedio de duración de alquiler de las películas
SELECT AVG(rental_duration) AS promedio_duracion_alquiler
FROM film;

-- Mostrar nombres de actores con alias de nombre y apellido
SELECT first_name AS nombre, last_name AS apellido
FROM actor;

-- Mostrar la cantidad total de películas con un alias
SELECT COUNT(*) AS total_peliculas
FROM film;

-- Calcular el pago total por cliente con un alias
SELECT customer_id AS cliente_id, SUM(amount) AS total_pago
FROM payment
GROUP BY customer_id;

-- Concatenar el nombre y apellido de los actores
SELECT CONCAT(first_name, ' ', last_name) AS nombre_completo
FROM actor;

-- Concatenar el título de la película con su clasificación
SELECT CONCAT(title, ' ', rating) AS peliculas
FROM film;
-- Concatenar el nombre completo del cliente con su ID
SELECT CONCAT(first_name, ' ', last_name, ' (ID: ', customer_id, ')') AS clientes
FROM customer;

-- Convertir todos los nombres de actores a mayúsculas
SELECT UPPER(first_name) AS nombre ,UPPER(last_name) AS alias
FROM actor;


-- Convertir los nombres de las películas a mayúsculas
SELECT UPPER(title) AS nombre
FROM film;


-- Convertir el nombre del país a mayúsculas
SELECT UPPER(country) AS pais
FROM country;
-- Convertir todos los nombres de actores a minúsculas
SELECT lower(first_name) AS nombre ,lower(last_name) AS alias
FROM actor;
-- Convertir los nombres de las películas a minúsculas
SELECT LOWER(title) AS nombre
FROM film;
-- Convertir el nombre del país a minúsculas
SELECT LOWER(country) AS pais
FROM country;
-- Obtener 5 películas saltando las primeras 10 en orden alfabético
SELECT title
FROM film
ORDER BY title
LIMIT 5 OFFSET 10;

-- Obtener 5 clientes saltando los primeros 15 en orden por apellido
SELECT last_name, first_name
FROM customer
ORDER BY last_name
LIMIT 5 OFFSET 15;
