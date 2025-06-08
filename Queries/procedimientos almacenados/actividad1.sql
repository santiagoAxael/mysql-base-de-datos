-- Obtener el nombre completo de un cliente por customer_id
DELIMITER //
CREATE PROCEDURE GetCustomerName(IN customer_id INT, OUT full_name VARCHAR(100))
BEGIN
    SELECT CONCAT(first_name, ' ', last_name) INTO full_name FROM customer WHERE customer.customer_id = customer_id;
END //
DELIMITER ;

-- Obtener la cantidad de películas en una categoría
DELIMITER //
CREATE PROCEDURE GetFilmCountByCategory(IN category_name VARCHAR(50), OUT film_count INT)
BEGIN
    SELECT COUNT(*) INTO film_count FROM film_category
    JOIN category ON film_category.category_id = category.category_id
    WHERE category.name = category_name;
END //
DELIMITER ;

-- Verificar si un customer_id existe
DELIMITER //
CREATE PROCEDURE CheckCustomerExists(IN customer_id INT, OUT exists_flag INT)
BEGIN
    SELECT IF(COUNT(*) > 0, 1, 0) INTO exists_flag FROM customer WHERE customer.customer_id = customer_id;
END //
DELIMITER ;

-- Listar las películas con duración mayor a un valor
DELIMITER //
CREATE PROCEDURE GetFilmsByMinDuration(IN min_duration INT)
BEGIN
    SELECT title, length FROM film WHERE length > min_duration;
END //
DELIMITER ;

-- Obtener la lista de películas rentadas por un cliente
DELIMITER //
CREATE PROCEDURE GetCustomerRentalFilms(IN customer_id INT)
BEGIN
    SELECT DISTINCT film.title FROM rental
    JOIN inventory ON rental.inventory_id = inventory.inventory_id
    JOIN film ON inventory.film_id = film.film_id
    WHERE rental.customer_id = customer_id;
END //
DELIMITER ;

-- Obtener el total de dinero generado por una tienda
DELIMITER //
CREATE PROCEDURE GetStoreRevenue(IN store_id INT, OUT total_revenue DECIMAL(10,2))
BEGIN
    SELECT SUM(payment.amount) INTO total_revenue FROM payment
    JOIN rental ON payment.rental_id = rental.rental_id
    JOIN inventory ON rental.inventory_id = inventory.inventory_id
    WHERE inventory.store_id = store_id;
END //
DELIMITER ;

-- Obtener el número de copias disponibles de una película
DELIMITER //
CREATE PROCEDURE GetFilmCopies(IN film_id INT, OUT copies_count INT)
BEGIN
    SELECT COUNT(*) INTO copies_count FROM inventory WHERE inventory.film_id = film_id;
END //
DELIMITER ;

-- Obtener la lista de actores de una película
DELIMITER //
CREATE PROCEDURE GetFilmActors(IN film_id INT)
BEGIN
    SELECT CONCAT(actor.first_name, ' ', actor.last_name) AS actor_name FROM film_actor
    JOIN actor ON film_actor.actor_id = actor.actor_id
    WHERE film_actor.film_id = film_id;
END //
DELIMITER ;

-- Obtener el correo electrónico de un cliente por customer_id
DELIMITER //
CREATE PROCEDURE GetCustomerEmail(IN customer_id INT, OUT email VARCHAR(50))
BEGIN
    SELECT customer.email INTO email FROM customer WHERE customer.customer_id = customer_id;
END //
DELIMITER ;

-- Contar cuántos clientes viven en una ciudad
DELIMITER //
CREATE PROCEDURE GetCustomerCountByCity(IN city_name VARCHAR(50), OUT customer_count INT)
BEGIN
    SELECT COUNT(*) INTO customer_count FROM customer
    JOIN address ON customer.address_id = address.address_id
    JOIN city ON address.city_id = city.city_id
    WHERE city.city = city_name;
END //
DELIMITER ;

-- Obtener películas con una clasificación específica
DELIMITER //
CREATE PROCEDURE GetFilmsByRating(IN rating VARCHAR(10))
BEGIN
    SELECT title FROM film WHERE film.rating = rating;
END //
DELIMITER ;

-- Obtener clientes activos o inactivos
DELIMITER //
CREATE PROCEDURE GetCustomersByStatus(IN status INT)
BEGIN
    SELECT first_name, last_name FROM customer WHERE customer.active = status;
END //
DELIMITER ;

-- Obtener películas con duración menor a un valor
DELIMITER //
CREATE PROCEDURE GetFilmsByMaxDuration(IN max_duration INT)
BEGIN
    SELECT title, length FROM film WHERE length < max_duration;
END //
DELIMITER ;

-- Listar clientes registrados después de una fecha
DELIMITER //
CREATE PROCEDURE GetCustomersByRegistrationDate(IN reg_date DATE)
BEGIN
    SELECT first_name, last_name, create_date FROM customer WHERE create_date > reg_date;
END //
DELIMITER ;

-- Listar películas disponibles en una tienda específica
DELIMITER //
CREATE PROCEDURE GetStoreFilms(IN store_id INT)
BEGIN
    SELECT DISTINCT film.title FROM inventory
    JOIN film ON inventory.film_id = film.film_id
    WHERE inventory.store_id = store_id;
END //
DELIMITER ;