-- Liste las ciudades (id y nombre) y las tiendas que se encuentran en cada ciudad, use RIGHT JOIN para mostrar TODAS las ciudades haya o no tiendas en ellas.
SELECT city.city_id, city.city, store.store_id
FROM city
RIGHT JOIN address ON city.city_id = address.city_id
RIGHT JOIN store ON address.address_id = store.address_id;

-- Liste los países (id y nombre) y las ciudades que se encuentran en cada país, use RIGHT JOIN para mostrar TODOS los países haya o no ciudades en ellos.
SELECT country.country_id, country.country, city.city_id, city.city
FROM country
RIGHT JOIN city ON country.country_id = city.country_id;

-- Liste las ciudades (id y nombre) y los clientes que se encuentran en cada ciudad, use RIGHT JOIN para mostrar TODAS las ciudades haya o no clientes en ellas.
SELECT city.city_id, city.city, customer.customer_id
FROM city
RIGHT JOIN address ON city.city_id = address.city_id
RIGHT JOIN customer ON address.address_id = customer.address_id;

-- Liste las películas que para la tienda 1 no hayan sido rentadas.
SELECT film.film_id, film.title
FROM film
JOIN inventory ON film.film_id = inventory.film_id
LEFT JOIN rental ON inventory.inventory_id = rental.inventory_id
WHERE inventory.store_id = 1 AND rental.rental_id IS NULL;

-- Liste los nombres de los actores y en cuantas películas del catalogo participa.
SELECT CONCAT(actor.first_name, ' ', actor.last_name) AS actor_name, COUNT(film_actor.film_id) AS film_count
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
GROUP BY actor.actor_id;

-- Liste los nombres de las películas y en cuantas tiendas están registradas.
SELECT film.title, COUNT(inventory.store_id) AS store_count
FROM film
JOIN inventory ON film.film_id = inventory.film_id
GROUP BY film.film_id;

-- Liste los idiomas y cuantas películas están habladas en ese idioma.
SELECT language.name AS language_name, COUNT(film.film_id) AS film_count
FROM language
JOIN film ON language.language_id = film.language_id
GROUP BY language.language_id;

-- Liste cuantas veces ha sido rentada cada película en el catalogo.
SELECT film.film_id, film.title, COUNT(rental.rental_id) AS rental_count
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
GROUP BY film.film_id;

-- Liste cuantos pagos se realizaron en cada renta.
SELECT rental.rental_id, COUNT(payment.payment_id) AS payment_count
FROM rental
JOIN payment ON rental.rental_id = payment.rental_id
GROUP BY rental.rental_id;

-- Liste cuantas películas ha rentado cada cliente.
SELECT customer.customer_id, CONCAT(customer.first_name, ' ', customer.last_name) AS customer_name, COUNT(rental.rental_id) AS rental_count
FROM customer
JOIN rental ON customer.customer_id = rental.customer_id
GROUP BY customer.customer_id;

-- Liste cuantas películas ha rentado cada miembro del staff.
SELECT staff.staff_id, COUNT(rental.rental_id) AS rental_count
FROM staff
JOIN rental ON staff.staff_id = rental.staff_id
GROUP BY staff.staff_id;

-- Liste los clientes que han generado pagos con un monto total mayor a $10.
SELECT customer.customer_id, CONCAT(customer.first_name, ' ', customer.last_name) AS customer_name, SUM(payment.amount) AS total_payment
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
HAVING total_payment > 10;

-- Liste los empleados que han generado pagos con un monto total mayor a $100.
SELECT staff.staff_id, SUM(payment.amount) AS total_payment
FROM staff
JOIN payment ON staff.staff_id = payment.staff_id
GROUP BY staff.staff_id
HAVING total_payment > 100;

-- Calcule el número de pagos realizados por cada cliente en el mes de junio.
SELECT customer.customer_id, COUNT(payment.payment_id) AS payment_count
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
WHERE MONTH(payment.payment_date) = 6
GROUP BY customer.customer_id;

-- Calcule la cantidad de películas por cada duración de renta (rental_duration).
SELECT film.rental_duration, COUNT(film.film_id) AS film_count
FROM film
GROUP BY film.rental_duration;

-- Calcule la cantidad total de pagos recibidos cada año.
SELECT YEAR(payment.payment_date) AS year, COUNT(payment.payment_id) AS total_payments
FROM payment
GROUP BY YEAR(payment.payment_date);

-- Calcule el monto total de pagos por cada día de la semana.
SELECT DAYNAME(payment.payment_date) AS day, SUM(payment.amount) AS total_payment
FROM payment
GROUP BY DAYNAME(payment.payment_date);

-- Liste los días donde el total de pagos fue mayor a $50.
SELECT payment.payment_date, SUM(payment.amount) AS total_payment
FROM payment
GROUP BY payment.payment_date
HAVING total_payment > 50;

-- Calcule cuántas películas hay en cada duración (length) específica.
SELECT film.length, COUNT(film.film_id) AS film_count
FROM film
GROUP BY film.length;

-- Calcule la cantidad de pagos realizados en cada tienda.
SELECT store.store_id, COUNT(payment.payment_id) AS payment_count
FROM store
JOIN customer ON store.store_id = customer.store_id
JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY store.store_id;

-- Calcule el monto total de pagos por cada cliente, pero solo para aquellos que han realizado más de 5 pagos.
SELECT customer.customer_id, SUM(payment.amount) AS total_payment
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
HAVING COUNT(payment.payment_id) > 5;

-- Calcule el número de películas (puede haber mas de 1 película por cada titulo) según su clasificación (rating).
SELECT film.rating, COUNT(film.film_id) AS film_count
FROM film
GROUP BY film.rating;

-- Liste los clientes que han realizado pagos con un monto promedio mayor a $5.
SELECT customer.customer_id, CONCAT(customer.first_name, ' ', customer.last_name) AS customer_name, AVG(payment.amount) AS avg_payment
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
HAVING avg_payment > 5;

-- Calcule la cantidad de títulos de películas en cada duración de renta (rental_duration) mayor a 5 días.
SELECT film.rental_duration, COUNT(film.film_id) AS film_count
FROM film
WHERE film.rental_duration > 5
GROUP BY film.rental_duration;

-- Liste el total de pagos recibidos por cada mes, pero solo los meses con más de 100 pagos.
SELECT MONTH(payment.payment_date) AS month, SUM(payment.amount) AS total_payment
FROM payment
GROUP BY MONTH(payment.payment_date)
HAVING COUNT(payment.payment_id) > 100;

-- Liste las clasificaciones de películas (rating) que tienen más de 50 películas registradas.
SELECT film.rating, COUNT(film.film_id) AS film_count
FROM film
GROUP BY film.rating
HAVING film_count > 50;