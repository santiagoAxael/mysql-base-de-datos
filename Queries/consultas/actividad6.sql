-- Liste los identificadores, títulos y descripciones de las películas en el catalogo
SELECT film_id, title, description
FROM film;

-- Liste los identificadores, títulos de las películas en el catalogo y nombres completos de los actores que participan en cada una de ellas
SELECT f.film_id, f.title, CONCAT(a.first_name, ' ', a.last_name) AS actor_name
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id;

-- Liste los nombres completos de los actores registrados asi como los títulos de las películas en que participan que están el catalogo de la empresa
SELECT CONCAT(a.first_name, ' ', a.last_name) AS actor_name, f.title
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id;

-- Liste los nombres de los clientes y los títulos de las películas que ha rentado
SELECT CONCAT(c.first_name, ' ', c.last_name) AS customer_name, f.title
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id;

-- Lista cuantos clientes tiene cada miembro del staff
SELECT staff_id, COUNT(customer_id) AS customer_count
FROM customer
GROUP BY staff_id;

-- Calcularemos la suma de pagos registrados agrupados por tienda y la dirección de la tienda
SELECT s.store_id, a.address, SUM(p.amount) AS total_payments
FROM store s
JOIN address a ON s.address_id = a.address_id
JOIN customer c ON s.store_id = c.store_id
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY s.store_id, a.address;