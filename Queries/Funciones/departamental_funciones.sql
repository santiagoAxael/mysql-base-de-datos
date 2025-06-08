-- DISTINCT
-- 1. Nombres únicos de clientes
SELECT DISTINCT nombre
FROM clientes;

-- 2. Especialidades únicas de vendedores
SELECT DISTINCT especialidad
FROM vendedores;

-- 3. Pisos únicos de departamentos
SELECT DISTINCT piso
FROM departamentos;

-- LIMIT
-- 1. Los primeros 5 clientes
SELECT *
FROM clientes
LIMIT 5;

-- 2. Los primeros 10 artículos
SELECT *
FROM articulos
LIMIT 10;

-- 3. Los primeros 3 vendedores
SELECT *
FROM vendedores
LIMIT 3;

-- ORDER BY
-- 1. Ordenar clientes por nombre ascendente
SELECT *
FROM clientes
ORDER BY nombre ASC;

-- 2. Departamentos por piso descendente
SELECT *
FROM departamentos
ORDER BY piso DESC;

-- 3. Artículos por precio ascendente
SELECT *
FROM articulos
ORDER BY precio ASC;

-- Operadores de comparación
-- 1. Clientes con id mayor a 10
SELECT *
FROM clientes
WHERE id > 10;

-- 2. Artículos con precio menor o igual a 500
SELECT *
FROM articulos
WHERE precio <= 500;

-- 3. Departamentos con piso igual a 3
SELECT *
FROM departamentos
WHERE piso = 3;

-- LIKE
-- 1. Clientes cuyos nombres empiezan con 'Cliente'
SELECT *
FROM clientes
WHERE nombre LIKE 'Cliente%';

-- 2. Proveedores con 'Central' en su dirección
SELECT *
FROM proveedores
WHERE direccion LIKE '%Central%';

-- 3. Vendedores cuyos nombres terminan con '1'
SELECT *
FROM vendedores
WHERE nombre LIKE '%1';

-- BETWEEN
-- 1. Clientes con id entre 5 y 15
SELECT *
FROM clientes
WHERE id BETWEEN 5 AND 15;

-- 2. Artículos con precio entre 100 y 500
SELECT *
FROM articulos
WHERE precio BETWEEN 100 AND 500;

-- 3. Departamentos con pisos entre 1 y 10
SELECT *
FROM departamentos
WHERE piso BETWEEN 1 AND 10;

-- AND
-- 1. Clientes del departamento 1 y con id mayor a 5
SELECT *
FROM clientes
WHERE departamento_id = 1 AND id > 5;

-- 2. Artículos con precio mayor a 200 y marca_id igual a 3
SELECT *
FROM articulos
WHERE precio > 200 AND marca_id = 3;

-- 3. Departamentos en pisos mayores a 5 y menores a 15
SELECT *
FROM departamentos
WHERE piso > 5 AND piso < 15;

-- OR
-- 1. Clientes en departamento 1 o con id menor a 5
SELECT *
FROM clientes
WHERE departamento_id = 1 OR id < 5;

-- 2. Artículos con precio menor a 200 o marca_id igual a 5
SELECT *
FROM articulos
WHERE precio < 200 OR marca_id = 5;

-- 3. Departamentos en pisos 1, 3 o 5
SELECT *
FROM departamentos
WHERE piso = 1 OR piso = 3 OR piso = 5;

-- NOT
-- 1. Clientes que no están en el departamento 1
SELECT *
FROM clientes
WHERE departamento_id NOT IN (1);

-- 2. Artículos con precio que no sea mayor a 500
SELECT *
FROM articulos
WHERE NOT precio > 500;

-- 3. Departamentos que no están en el piso 10
-- Departamentos que no están en el piso 10
SELECT *
FROM departamentos
WHERE piso != 10;


-- IN
-- 1. Clientes en departamentos 1, 2 o 3
SELECT *
FROM clientes
WHERE departamento_id IN (1, 2, 3);

-- 2. Artículos con marca_id en 1, 2 o 3
SELECT *
FROM articulos
WHERE marca_id IN (1, 2, 3);

-- 3. Departamentos en pisos 5, 10 o 15
SELECT *
FROM departamentos
WHERE piso IN (5, 10, 15);

-- Operaciones matemáticas
-- 1. Calcular precio con descuento para artículos
SELECT nombre, precio, precio * 0.9 AS precio_con_descuento
FROM articulos;


-- 2. Incrementar el piso de los departamentos en 1
SELECT nombre, piso, piso + 1 AS nuevo_piso
FROM departamentos;

-- 3. Duplicar el id de los clientes
SELECT nombre, id, id * 2 AS id_duplicado
FROM clientes;

-- MIN
-- 1. Precio mínimo de los artículos
SELECT MIN(precio) AS precio_minimo
FROM articulos;

-- 2. Piso más bajo en departamentos
SELECT MIN(piso) AS piso_minimo
FROM departamentos;

-- 3. Id mínimo de clientes
SELECT MIN(id) AS id_minimo
FROM clientes;

-- MAX
-- 1. Precio máximo de los artículos
SELECT MAX(precio) AS precio_maximo
FROM articulos;

-- 2. Piso más alto en departamentos
SELECT MAX(piso) AS piso_maximo
FROM departamentos;

-- 3. Id máximo de clientes
SELECT MAX(id) AS id_maximo
FROM clientes;

-- COUNT
-- 1. Total de clientes
SELECT COUNT(*) AS total_clientes
FROM clientes;

-- 2. Total de artículos
SELECT COUNT(*) AS total_articulos
FROM articulos;

-- 3. Total de departamentos
SELECT COUNT(*) AS total_departamentos
FROM departamentos;

-- SUM
-- 1. Suma de precios de los artículos
SELECT SUM(precio) AS suma_precios
FROM articulos;

-- 2. Suma de pisos de departamentos
SELECT SUM(piso) AS suma_pisos
FROM departamentos;

-- 3. Suma de IDs de clientes
SELECT SUM(id) AS suma_ids
FROM clientes;

-- AVG
-- 1. Promedio de precios de los artículos
SELECT AVG(precio) AS promedio_precios
FROM articulos;

-- 2. Promedio de pisos de departamentos
SELECT AVG(piso) AS promedio_pisos
FROM departamentos;

-- 3. Promedio de IDs de clientes
SELECT AVG(id) AS promedio_ids
FROM clientes;

-- CONCAT
-- 1. Concatenar el nombre y dirección de los clientes
SELECT CONCAT(nombre, ' - ', direccion) AS cliente_info
FROM clientes;

-- 2. Concatenar el nombre y puesto de los empleados
SELECT CONCAT(nombre, ' - ', puesto) AS empleado_info
FROM empleados;

-- 3. Concatenar el nombre y especialidad de los vendedores
SELECT CONCAT(nombre, ' - ', especialidad) AS vendedor_info
FROM vendedores;

-- UPPER
-- 1. Convertir nombres de clientes a mayúsculas
SELECT UPPER(nombre) AS nombre_mayusculas
FROM clientes;

-- 2. Convertir nombres de artículos a mayúsculas
SELECT UPPER(nombre) AS articulo_mayusculas
FROM articulos;

-- 3. Convertir nombres de departamentos a mayúsculas
SELECT UPPER(nombre) AS departamento_mayusculas
FROM departamentos;

-- LOWER
-- 1. Convertir nombres de clientes a minúsculas
SELECT LOWER(nombre) AS nombre_minusculas
FROM clientes;

-- 2. Convertir nombres de artículos a minúsculas
SELECT LOWER(nombre) AS articulo_minusculas
FROM articulos;

-- 3. Convertir nombres de departamentos a minúsculas
SELECT LOWER(nombre) AS departamento_minusculas
FROM departamentos;

-- OFFSET
-- 1. Registros de clientes saltando los primeros 5
SELECT *
FROM clientes
LIMIT 10 OFFSET 5;

-- 2. Registros de artículos saltando los primeros 3
SELECT *
FROM articulos
LIMIT 5 OFFSET 3;

-- 3. Registros de departamentos saltando los primeros 2
SELECT *
FROM departamentos
LIMIT 8 OFFSET 2;

-- GROUP BY
-- 1. Agrupar clientes por departamento
SELECT departamento_id, COUNT(*) AS total_clientes
FROM clientes
GROUP BY departamento_id;

-- 2. Agrupar artículos por marca
SELECT marca_id, COUNT(*) AS total_articulos
FROM articulos
GROUP BY marca_id;

-- 3. Agrupar empleados por puesto
SELECT puesto, COUNT(*) AS total_empleados
FROM empleados
GROUP BY puesto;

-- HAVING
-- 1. Departamentos con más de 5 clientes
SELECT departamento_id, COUNT(*) AS total_clientes
FROM clientes
GROUP BY departamento_id
HAVING total_clientes > 5;

-- 2. Marcas con precio promedio mayor a 200
SELECT marca_id, AVG(precio) AS promedio_precio
FROM articulos
GROUP BY marca_id
HAVING promedio_precio > 200;

-- 3. Puestos con más de 3 empleados
SELECT puesto, COUNT(*) AS total_empleados
FROM empleados
GROUP BY puesto
HAVING total_empleados > 3;

-- CASE
-- 1. Clasificar clientes según su ID
SELECT id, 
       CASE 
           WHEN id <= 10 THEN 'Bajo'
           WHEN id BETWEEN 11 AND 20 THEN 'Medio'
           ELSE 'Alto'
       END AS rango_id
FROM clientes;

-- 2. Clasificar artículos según su precio
SELECT nombre, 
       CASE 
           WHEN precio < 200 THEN 'Económico'
           WHEN precio BETWEEN 200 AND 500 THEN 'Moderado'
           ELSE 'Costoso'
       END AS categoria_precio
FROM articulos;

-- 3. Clasificar departamentos según el piso
SELECT piso, 
       CASE 
           WHEN piso < 5 THEN 'Bajo'
           WHEN piso BETWEEN 5 AND 15 THEN 'Intermedio'
           ELSE 'Alto'
       END AS rango_piso
FROM departamentos;
-- INFULL
-- 1. Reemplazar valores nulos en la dirección de los clientes
SELECT nombre, 
       IFNULL(direccion, 'Sin Dirección') AS direccion_corregida
FROM clientes;

-- 2. Reemplazar valores nulos en el teléfono de los proveedores
SELECT nombre, 
       IFNULL(telefono, 'Sin Teléfono') AS telefono_corregido
FROM proveedores;

-- 3. Reemplazar valores nulos en la especialidad de los vendedores
SELECT nombre, 
       IFNULL(especialidad, 'Sin Especialidad') AS especialidad_corregida
FROM vendedores;





