-- Liste los registros de la tabla de actor que tienen first_name=‘PENELOPE’
 SELECT * FROM actor WHERE first_name="PENELOPE";



-- Liste los registros de la tabla de actor que tienen last_name=‘DAVIS’
SELECT * FROM actor WHERE last_name="DAVIS";
 
-- Liste todos los registros y campos de la tabla country concountry_id=10
SELECT * FROM actor where actor_id=10;

-- Liste todos los registros y campos de la tabla category con category_id=15
SELECT * FROM category where category_id=15;

-- Liste todos los registros y campos de la tabla language con language_id=5
SELECT * FROM language where language_id=5;

-- Liste los registros de la tabla de actor que tienen letra ‘A’ en el first_name
  SELECT * FROM actor WHERE first_name LIKE '%A%';
  
-- Liste los registros de la tabla de actor donde el first_name comienza conletra ‘A’
  SELECT * FROM actor WHERE first_name LIKE 'A%';
 
-- Liste los registros de la tabla de actor donde el first_name termina conletra ‘A’

  SELECT * FROM actor WHERE first_name LIKE '%A';
  
  -- Liste los registros de la tabla category donde el id_category es 1,3 o 5
  select * from category where category_id in(1,2,3);
  
 -- Liste los registros de la tabla de actor que tienen last_name=‘DAVIS’,‘JONES’ O ‘SMITH’
select * from actor where last_name	in('DAVIS','JONES','SMITH');

-- Liste todos los registros y campos de la tabla country con country_id=1 o 5 o 7 o 11 o 13
select * from country where country_id in (1,5,7,11,13);

-- Liste todos los registros y campos de la tabla category con category_id>5
select *  from category where category_id>5;

 -- Liste todos los registros y campos de la tabla language con language_id es mayor a 5 y menor a 10
 select *  from language where language_id>5 and language_id<10;
 
 -- Liste todos los registros de la tabla actor donde el first_name comienzacon la letra "J".
 select * from actor where first_name like 'J%';
 
 -- Liste todos los registros de la tabla film donde el título contiene la palabra"LOVE"
SELECT * FROM film WHERE title LIKE '%LOVE%';

-- Liste todos los actores cuyo actor_id está entre 20 y 30.
select * from actor where actor_id between '20' and '30';

-- Muestre todas las películas cuyo rental_rate está entre 2.99 y 4.99.

select * from film where  rental_rate between '2.99' and '4.99';

-- Liste los registros de la tabla customer donde el store_id sea 1 o 2
select * from customer where store_id in(1,2);

-- Muestre los registros de la tabla film donde el rating sea "G", "PG" o "PG13".
select * from film where rating in("G,","PG","PG13");
