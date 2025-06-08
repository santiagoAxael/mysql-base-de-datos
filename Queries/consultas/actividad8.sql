-- Muestra los títulos de las películas que tienen la misma duración que la película 'ALIEN CENTER'.
SELECT title FROM film WHERE length = (SELECT length FROM film WHERE title = 'ALIEN CENTER');

-- Muestra los nombres de los clientes que han hecho al menos un pago mayor a 5 dólares.
SELECT DISTINCT CONCAT(first_name, ' ', last_name) AS customer_name 
FROM customer 
JOIN payment ON customer.customer_id = payment.customer_id 
WHERE payment.amount > 5;

-- Muestra los títulos de las películas que tienen el mismo precio de renta que la película 'ZOOLANDER FICTION'.
SELECT title FROM film WHERE rental_rate = (SELECT rental_rate FROM film WHERE title = 'ZOOLANDER FICTION');

-- Muestra los nombres de los actores que actuaron en la película 'GHOSTBUSTERS ELF'.
SELECT DISTINCT CONCAT(actor.first_name, ' ', actor.last_name) AS actor_name
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
WHERE film.title = 'GHOSTBUSTERS ELF';

-- Muestra las películas cuya duración es mayor al promedio de todas las películas.
SELECT title FROM film WHERE length > (SELECT AVG(length) FROM film);

-- Lista los nombres de los clientes que han realizado al menos un pago.
SELECT DISTINCT CONCAT(first_name, ' ', last_name) AS customer_name
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id;

-- Muestra los títulos de las películas que nunca han sido rentadas.
SELECT title FROM film 
WHERE film_id NOT IN (SELECT DISTINCT inventory.film_id FROM rental JOIN inventory ON rental.inventory_id = inventory.inventory_id);

-- Muestra el nombre de las categorías que tienen más de 50 películas.
SELECT category.name, COUNT(film_category.film_id) AS film_count
FROM category
JOIN film_category ON category.category_id = film_category.category_id
GROUP BY category.category_id
HAVING film_count > 50;

-- Muestra los nombres de los empleados que trabajan en la tienda que tiene más películas en inventario.
SELECT CONCAT(staff.first_name, ' ', staff.last_name) AS staff_name
FROM staff
WHERE store_id = (SELECT store_id FROM inventory GROUP BY store_id ORDER BY COUNT(inventory_id) DESC LIMIT 1);

-- Muestra los títulos de las películas que tienen el mismo rating que la película 'ACADEMY DINOSAUR'.
SELECT title FROM film WHERE rating = (SELECT rating FROM film WHERE title = 'ACADEMY DINOSAUR');

-- Muestra el nombre de los actores que han participado en más de 20 películas.
SELECT CONCAT(actor.first_name, ' ', actor.last_name) AS actor_name, COUNT(film_actor.film_id) AS film_count
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
GROUP BY actor.actor_id
HAVING film_count > 20;

-- Muestra los títulos de las películas que tienen el mismo costo de reposición que la película 'CRUSADE HONEY'.
SELECT title FROM film WHERE replacement_cost = (SELECT replacement_cost FROM film WHERE title = 'CRUSADE HONEY');