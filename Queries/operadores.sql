use sakila;
-- Uso de operadores lógicos/matemáticos 

 /*Calcularemos el porcentaje de comisión del mes de mayo del empleado
con customerid=2 aplicando un 10% al monto de las rentas*/

select payment_id rental_id,amount*0.1 as comision, amount*1.1 as total
from payment
where staff_id=2 and payment_date like "2005_05%";

/*• Calcularemos el porcentaje de comisión del mes de Junio del empleado
con id=1 aplicando un 10% al monto de las rentas*/
SELECT payment_id, rental_id,amount * 0.10 AS comision, amount * 1.10 AS total
FROM 
    payment
WHERE 
    staff_id = 1 AND payment_date LIKE '2005-06%';



/*• El día 30 de mayo se agrega 1 dólar a la comisión de todos los empleados
(que es del 10% del monto de la renta) muestre el listado de las rentas del
día calculando la comisión de forma que la comisión no sea mayor al 50%
del monto de la renta*/
SELECT payment_id, rental_id,amount,
    LEAST(amount * 0.10 + 1, amount * 0.50) AS comision
FROM 
    payment
WHERE 
    DATE(payment_date) = '2005-05-30';




/*• A todos los clientes que rentaron los días 30 o 31 de cada mes se les da un
descuento del 20% sobre el monto de la renta , liste los id de los clientes,
el folio de la renta, el monto, el descuento y el nuevo valor a */

SELECT customer_id,rental_id,amount,amount * 0.20 AS descuento,
amount - (amount * 0.20) AS nuevo_valor
FROM 
    payment
WHERE 
    DAY(payment_date) IN (30, 31);



/*• A todos los clientes que rentan los lunes se les otorga un día mas para
regresarla , liste los id de los clientes, el folio de la renta, la fecha de pago
y la fecha de entrega 3 días después del pago */

SELECT customer_id,rental_id,payment_date,
    DATE_ADD(payment_date, INTERVAL 3 DAY) AS fecha_entrega
FROM 
    payment
WHERE 
    DAYOFWEEK(payment_date) = 2;



/*• En la tabla de rentas calcular para cada ID los días trascurridos entre la
fecha de regreso y la facha de la renta*/
SELECT rental_id,customer_id,al_date,return_date,
    DATEDIFF(return_date, rental_date) AS dias_transcurridos
FROM
    renta
WHERE
    return_date IS NOT NULL;



/*• Lista el id de la renta, el id del cliente y la fecha de renta de todas las rentas
de los días domingo*/
SELECT rental_id,customer_id,rental_date
FROM
    rental
WHERE
    WEEKDAY(rental_date) = 6;




/*• Lista el id de la renta, el id del cliente y la fecha de renta de todas las rentas
de los días domingo del mes de mayo*/

SELECT rental_id,customer_id,rental_date
FROM
    rental
WHERE
    WEEKDAY(rental_date) = 6
    AND MONTH(rental_date) = 5;

/*• Lista el id de la renta, el id del cliente, fecha de renta y fecha de devolución
de todas las rentas que se devuelven los días domingo del mes de junio*/
SELECT rental_id,customer_id,rental_date,return_date
FROM
    rental
WHERE
    WEEKDAY(return_date) = 6
    AND MONTH(return_date) = 6;
