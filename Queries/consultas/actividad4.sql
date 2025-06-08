-- Calcule el monto de las rentas de cada empleado con durante el mes de mayo
SELECT staff_id, SUM(amount) AS total_rent_amount
FROM payment
WHERE MONTH(payment_date) = 5
GROUP BY staff_id;

-- Calcule el promedio de los pagos por cada mes
SELECT MONTH(payment_date) AS month, AVG(amount) AS avg_payment
FROM payment
GROUP BY MONTH(payment_date);

-- Calcule el promedio de los pagos de cada cliente
SELECT customer_id, AVG(amount) AS avg_payment
FROM payment
GROUP BY customer_id;

-- Calcule el promedio de los pagos de cada día de la semana
SELECT DAYNAME(payment_date) AS day, AVG(amount) AS avg_payment
FROM payment
GROUP BY DAYNAME(payment_date);

-- Calcule cuantas rentas tiene cada cliente
SELECT customer_id, COUNT(rental_id) AS rental_count
FROM rental
GROUP BY customer_id;

-- Calcule cuantas rentas tiene cada empleado
SELECT staff_id, COUNT(rental_id) AS rental_count
FROM rental
GROUP BY staff_id;

-- Calcule cuantos clientes tiene cada tienda
SELECT store_id, COUNT(customer_id) AS customer_count
FROM customer
GROUP BY store_id;

-- Calcule cuantas películas tiene cada categoría de rating
SELECT rating, COUNT(film_id) AS film_count
FROM film
GROUP BY rating;

-- Calcule cuantas ciudades están registradas por país
SELECT country_id, COUNT(city_id) AS city_count
FROM city
GROUP BY country_id;

-- Calcule cuantas películas hay en cada tienda
SELECT store_id, COUNT(inventory_id) AS film_count
FROM inventory
GROUP BY store_id;

-- Calcule el monto total de pagos de cada cliente
SELECT customer_id, SUM(amount) AS total_payment
FROM payment
GROUP BY customer_id;

-- Liste los empleados que han generado pagos con un monto total mayor a $100
SELECT staff_id, SUM(amount) AS total_payment
FROM payment
GROUP BY staff_id
HAVING total_payment > 100;

-- Calcule el número de pagos realizados por cada cliente en el mes de junio
SELECT customer_id, COUNT(payment_id) AS payment_count
FROM payment
WHERE MONTH(payment_date) = 6
GROUP BY customer_id;

-- Calcule la cantidad de películas por cada duración de renta (rental_duration)
SELECT rental_duration, COUNT(film_id) AS film_count
FROM film
GROUP BY rental_duration;

-- Calcule la cantidad total de pagos recibidos cada año
SELECT YEAR(payment_date) AS year, COUNT(payment_id) AS total_payments
FROM payment
GROUP BY YEAR(payment_date);

-- Calcule el monto total de pagos por cada día de la semana
SELECT DAYNAME(payment_date) AS day, SUM(amount) AS total_payment
FROM payment
GROUP BY DAYNAME(payment_date);

-- Liste los días donde el total de pagos fue mayor a $500
SELECT payment_date, SUM(amount) AS total_payment
FROM payment
GROUP BY payment_date
HAVING total_payment > 500;

-- Calcule cuántas películas hay en cada duración (length) específica
SELECT length, COUNT(film_id) AS film_count
FROM film
GROUP BY length;

-- Calcule la cantidad de pagos realizados en cada tienda
SELECT store_id, COUNT(payment_id) AS payment_count
FROM payment
JOIN customer USING(customer_id)
GROUP BY store_id;

-- Calcule el monto total de pagos por cada cliente, pero solo para aquellos que han realizado más de 5 pagos
SELECT customer_id, SUM(amount) AS total_payment
FROM payment
GROUP BY customer_id
HAVING COUNT(payment_id) > 5;

-- Calcule el número de películas según su clasificación (rating)
SELECT rating, COUNT(film_id) AS film_count
FROM film
GROUP BY rating;

-- Liste los clientes que han realizado pagos con un monto promedio mayor a $5
SELECT customer_id, AVG(amount) AS avg_payment
FROM payment
GROUP BY customer_id
HAVING avg_payment > 5;

-- Calcule la cantidad de películas en cada duración de renta (rental_duration) mayor a 5 días
SELECT rental_duration, COUNT(film_id) AS film_count
FROM film
WHERE rental_duration > 5
GROUP BY rental_duration;

-- Calcule el total de pagos recibidos por cada mes, pero solo los meses con más de 100 pagos
SELECT MONTH(payment_date) AS month, SUM(amount) AS total_payment
FROM payment
GROUP BY MONTH(payment_date)
HAVING COUNT(payment_id) > 100;

-- Liste las clasificaciones de películas (rating) que tienen más de 200 películas registradas
SELECT rating, COUNT(film_id) AS film_count
FROM film
GROUP BY rating
HAVING film_count > 200;