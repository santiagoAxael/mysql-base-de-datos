-- Calcularemos el porcentaje de comisión del mes de mayo del empleado con id=2 aplicando un 10% al monto de las rentas
SELECT rental_id, staff_id, amount, amount * 0.10 AS commission
FROM payment
WHERE staff_id = 2 AND payment_date BETWEEN '2005-05-01' AND '2005-05-31';

-- Calcularemos el porcentaje de comisión del mes de Junio del empleado con id=1 aplicando un 10% al monto de las rentas
SELECT rental_id, staff_id, amount, amount * 0.10 AS commission
FROM payment
WHERE staff_id = 1 AND payment_date BETWEEN '2005-06-01' AND '2005-06-30';

-- El día 30 de mayo se agrega 1 dólar a la comisión de todos los empleados (que es del 10% del monto de la renta) 
-- muestre el listado de las rentas del día calculando la comisión de forma que la comisión no sea mayor al 50% del monto de la renta
SELECT rental_id, staff_id, amount, 
       CASE 
           WHEN amount * 0.10 + 1 > amount * 0.50 THEN amount * 0.50 
           ELSE amount * 0.10 + 1 
       END AS commission_adjusted
FROM payment
WHERE payment_date = '2005-05-30';

-- A todos los clientes que rentaron los días 30 o 31 de cada mes se les da un descuento del 20% sobre el monto de la renta 
-- liste los id de los clientes, el folio de la renta, el monto, el descuento y el nuevo valor a pagar
SELECT customer_id, rental_id, amount, 
       amount * 0.20 AS discount, 
       amount - (amount * 0.20) AS final_amount
FROM payment
WHERE DAY(payment_date) IN (30, 31);

-- A todos los clientes que rentan los lunes se les otorga un día más para regresarla 
-- liste los id de los clientes, el folio de la renta, la fecha de pago y la fecha de entrega 3 días después del pago
SELECT customer_id, rental_id, payment_date, payment_date + INTERVAL 3 DAY AS return_date
FROM payment
WHERE payment_date IN ('2005-06-02', '2005-06-09', '2005-06-16', '2005-06-23', '2005-06-30');

-- En la tabla de rentas calcular para cada ID los días trascurridos entre la fecha de regreso y la fecha de la renta
SELECT rental_id, return_date - rental_date AS days_elapsed
FROM rental;

-- Lista el id de la renta, el id del cliente y la fecha de renta de todas las rentas de los días domingo
SELECT rental_id, customer_id, rental_date
FROM rental
WHERE rental_date IN ('2005-06-01', '2005-06-08', '2005-06-15', '2005-06-22', '2005-06-29');

-- Lista el id de la renta, el id del cliente y la fecha de renta de todas las rentas de los días domingo del mes de mayo
SELECT rental_id, customer_id, rental_date
FROM rental
WHERE rental_date IN ('2005-05-04', '2005-05-11', '2005-05-18', '2005-05-25');

-- Lista el id de la renta, el id del cliente, fecha de renta y fecha de devolución de todas las rentas que se devuelven los días domingo del mes de junio
SELECT rental_id, customer_id, rental_date, return_date
FROM rental
WHERE return_date IN ('2005-06-01', '2005-06-08', '2005-06-15', '2005-06-22', '2005-06-29');