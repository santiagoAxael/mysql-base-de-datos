-- Crear la base de datos
CREATE DATABASE tienda;

-- Usar la base de datos
USE tienda;

-- Crear las tablas
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    telefono VARCHAR(15),
    direccion VARCHAR(100),
    departamento_id INT
);

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    telefono VARCHAR(15),
    puesto VARCHAR(50)
);

CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    piso INT
);

CREATE TABLE marcas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    origen VARCHAR(50)
);

CREATE TABLE articulos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    precio DECIMAL(10, 2),
    marca_id INT
);

CREATE TABLE proveedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    telefono VARCHAR(15),
    direccion VARCHAR(100)
);

CREATE TABLE vendedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    especialidad VARCHAR(50)
);

CREATE TABLE vendedores_has_clientes (
    vendedor_id INT,
    cliente_id INT,
    PRIMARY KEY (vendedor_id, cliente_id)
);

-- Insertar registros en la tabla clientes
INSERT INTO clientes (nombre, telefono, direccion, departamento_id) VALUES
('Cliente1', '1234567890', 'Calle 1', 1),
('Cliente2', '2345678901', 'Calle 2', 2),
('Cliente3', '3456789012', 'Calle 3', 3),
('Cliente4', '4567890123', 'Calle 4', 4),
('Cliente5', '5678901234', 'Calle 5', 5),
('Cliente6', '6789012345', 'Calle 6', 1),
('Cliente7', '7890123456', 'Calle 7', 2),
('Cliente8', '8901234567', 'Calle 8', 3),
('Cliente9', '9012345678', 'Calle 9', 4),
('Cliente10', '0123456789', 'Calle 10', 5),
('Cliente11', '1123456789', 'Calle 11', 1),
('Cliente12', '2123456789', 'Calle 12', 2),
('Cliente13', '3123456789', 'Calle 13', 3),
('Cliente14', '4123456789', 'Calle 14', 4),
('Cliente15', '5123456789', 'Calle 15', 5),
('Cliente16', '6123456789', 'Calle 16', 1),
('Cliente17', '7123456789', 'Calle 17', 2),
('Cliente18', '8123456789', 'Calle 18', 3),
('Cliente19', '9123456789', 'Calle 19', 4),
('Cliente20', '1234509876', 'Calle 20', 5),
('Cliente21', '2345609876', 'Calle 21', 1),
('Cliente22', '3456709876', 'Calle 22', 2),
('Cliente23', '4567809876', 'Calle 23', 3),
('Cliente24', '5678909876', 'Calle 24', 4),
('Cliente25', '6789019876', 'Calle 25', 5);

-- Insertar registros en la tabla empleados
INSERT INTO empleados (nombre, telefono, puesto) VALUES
('Empleado1', '1234567890', 'Cajero'),
('Empleado2', '2345678901', 'Supervisor'),
('Empleado3', '3456789012', 'Gerente'),
('Empleado4', '4567890123', 'Almacén'),
('Empleado5', '5678901234', 'Seguridad'),
('Empleado6', '6789012345', 'Vendedor'),
('Empleado7', '7890123456', 'Reponedor'),
('Empleado8', '8901234567', 'Limpieza'),
('Empleado9', '9012345678', 'Recepción'),
('Empleado10', '0123456789', 'Cajero'),
('Empleado11', '1123456789', 'Supervisor'),
('Empleado12', '2123456789', 'Gerente'),
('Empleado13', '3123456789', 'Almacén'),
('Empleado14', '4123456789', 'Seguridad'),
('Empleado15', '5123456789', 'Vendedor'),
('Empleado16', '6123456789', 'Reponedor'),
('Empleado17', '7123456789', 'Limpieza'),
('Empleado18', '8123456789', 'Recepción'),
('Empleado19', '9123456789', 'Cajero'),
('Empleado20', '1234509876', 'Supervisor'),
('Empleado21', '2345609876', 'Gerente'),
('Empleado22', '3456709876', 'Almacén'),
('Empleado23', '4567809876', 'Seguridad'),
('Empleado24', '5678909876', 'Vendedor'),
('Empleado25', '6789019876', 'Reponedor');

-- Insertar registros en la tabla departamentos
INSERT INTO departamentos (nombre, piso) VALUES
('Electrónica', 1),
('Hogar', 2),
('Ropa', 3),
('Zapatería', 4),
('Juguetería', 5),
('Deportes', 6),
('Papelería', 7),
('Mascotas', 8),
('Jardinería', 9),
('Librería', 10),
('Tecnología', 11),
('Supermercado', 12),
('Electrodomésticos', 13),
('Muebles', 14),
('Cosméticos', 15),
('Joyería', 16),
('Bebés', 17),
('Oficina', 18),
('Herramientas', 19),
('Automotriz', 20),
('Cocina', 21),
('Baño', 22),
('Terraza', 23),
('Camping', 24),
('Audio', 25);

-- Insertar registros en la tabla marcas
INSERT INTO marcas (nombre, origen) VALUES
('Sony', 'Japón'),
('Samsung', 'Corea del Sur'),
('Apple', 'Estados Unidos'),
('Microsoft', 'Estados Unidos'),
('Dell', 'Estados Unidos'),
('HP', 'Estados Unidos'),
('Lenovo', 'China'),
('Asus', 'Taiwán'),
('Acer', 'Taiwán'),
('LG', 'Corea del Sur'),
('Panasonic', 'Japón'),
('Philips', 'Países Bajos'),
('Bosch', 'Alemania'),
('Siemens', 'Alemania'),
('Canon', 'Japón'),
('Nikon', 'Japón'),
('GoPro', 'Estados Unidos'),
('Fujifilm', 'Japón'),
('Xiaomi', 'China'),
('Huawei', 'China'),
('Oppo', 'China'),
('Vivo', 'China'),
('Realme', 'China'),
('OnePlus', 'China'),
('Tesla', 'Estados Unidos');

-- Insertar registros en la tabla artículos
INSERT INTO articulos (nombre, precio, marca_id) VALUES
('Televisor', 300.00, 1),
('Smartphone', 500.00, 2),
('Laptop', 1000.00, 3),
('Tablet', 400.00, 4),
('Smartwatch', 200.00, 5),
('Auriculares', 50.00, 6),
('Altavoz', 150.00, 7),
('Impresora', 100.00, 8),
('Cámara', 600.00, 9),
('Dron', 800.00, 10),
('Microondas', 120.00, 11),
('Licuadora', 60.00, 12),
('Refrigerador', 500.00, 13),
('Lavadora', 700.00, 14),
('Secadora', 650.00, 15),
('Cafetera', 80.00, 16),
('Horno', 200.00, 17),
('Plancha', 40.00, 18),
('Ventilador', 30.00, 19),
('Aire Acondicionado', 900.00, 20),
('Lámpara', 20.00, 21),
('Teclado', 50.00, 22),
('Ratón', 30.00, 23),
('Disco Duro', 100.00, 24),
('Memoria USB', 20.00, 25);

-- Insertar registros en la tabla proveedores
INSERT INTO proveedores (nombre, telefono, direccion) VALUES
('Proveedor1', '1234567890', 'Av. Central 1'),
('Proveedor2', '2345678901', 'Av. Central 2'),
('Proveedor3', '3456789012', 'Av. Central 3'),
('Proveedor4', '4567890123', 'Av. Central 4'),
('Proveedor5', '5678901234', 'Av. Central 5'),
('Proveedor6', '6789012345', 'Av. Central 6'),
('Proveedor7', '7890123456', 'Av. Central 7'),
('Proveedor8', '8901234567', 'Av. Central 8'),
('Proveedor9', '9012345678', 'Av. Central 9'),
('Proveedor10', '0123456789', 'Av. Central 10'),
('Proveedor11', '1123456789', 'Av. Central 11'),
('Proveedor12', '2123456789', 'Av. Central 12'),
('Proveedor13', '3123456789', 'Av. Central 13'),
('Proveedor14', '4123456789', 'Av. Central 14'),
('Proveedor15', '5123456789', 'Av. Central 15'),
('Proveedor16', '6123456789', 'Av. Central 16'),
('Proveedor17', '7123456789', 'Av. Central 17'),
('Proveedor18', '8123456789', 'Av. Central 18'),
('Proveedor19', '9123456789', 'Av. Central 19'),
('Proveedor20', '1234509876', 'Av. Central 20'),
('Proveedor21', '2345609876', 'Av. Central 21'),
('Proveedor22', '3456709876', 'Av. Central 22'),
('Proveedor23', '4567809876', 'Av. Central 23'),
('Proveedor24', '5678909876', 'Av. Central 24'),
('Proveedor25', '6789019876', 'Av. Central 25');
-- Insertar registros en la tabla vendedores
INSERT INTO vendedores (nombre, especialidad) VALUES
('Vendedor1', 'Electrónica'),
('Vendedor2', 'Hogar'),
('Vendedor3', 'Ropa'),
('Vendedor4', 'Zapatería'),
('Vendedor5', 'Juguetería'),
('Vendedor6', 'Deportes'),
('Vendedor7', 'Papelería'),
('Vendedor8', 'Mascotas'),
('Vendedor9', 'Jardinería'),
('Vendedor10', 'Librería'),
('Vendedor11', 'Tecnología'),
('Vendedor12', 'Supermercado'),
('Vendedor13', 'Electrodomésticos'),
('Vendedor14', 'Muebles'),
('Vendedor15', 'Cosméticos'),
('Vendedor16', 'Joyería'),
('Vendedor17', 'Bebés'),
('Vendedor18', 'Oficina'),
('Vendedor19', 'Herramientas'),
('Vendedor20', 'Automotriz'),
('Vendedor21', 'Cocina'),
('Vendedor22', 'Baño'),
('Vendedor23', 'Terraza'),
('Vendedor24', 'Camping'),
('Vendedor25', 'Audio');




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
-- Crear la base de datos
CREATE DATABASE tienda;

-- Usar la base de datos
USE tienda;

-- Crear las tablas
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    telefono VARCHAR(15),
    direccion VARCHAR(100),
    departamento_id INT
);

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    telefono VARCHAR(15),
    puesto VARCHAR(50)
);

CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    piso INT
);

CREATE TABLE marcas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    origen VARCHAR(50)
);

CREATE TABLE articulos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    precio DECIMAL(10, 2),
    marca_id INT
);

CREATE TABLE proveedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    telefono VARCHAR(15),
    direccion VARCHAR(100)
);

CREATE TABLE vendedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    especialidad VARCHAR(50)
);

CREATE TABLE vendedores_has_clientes (
    vendedor_id INT,
    cliente_id INT,
    PRIMARY KEY (vendedor_id, cliente_id)
);

-- Insertar registros en la tabla clientes
INSERT INTO clientes (nombre, telefono, direccion, departamento_id) VALUES
('Cliente1', '1234567890', 'Calle 1', 1),
('Cliente2', '2345678901', 'Calle 2', 2),
('Cliente3', '3456789012', 'Calle 3', 3),
('Cliente4', '4567890123', 'Calle 4', 4),
('Cliente5', '5678901234', 'Calle 5', 5),
('Cliente6', '6789012345', 'Calle 6', 1),
('Cliente7', '7890123456', 'Calle 7', 2),
('Cliente8', '8901234567', 'Calle 8', 3),
('Cliente9', '9012345678', 'Calle 9', 4),
('Cliente10', '0123456789', 'Calle 10', 5),
('Cliente11', '1123456789', 'Calle 11', 1),
('Cliente12', '2123456789', 'Calle 12', 2),
('Cliente13', '3123456789', 'Calle 13', 3),
('Cliente14', '4123456789', 'Calle 14', 4),
('Cliente15', '5123456789', 'Calle 15', 5),
('Cliente16', '6123456789', 'Calle 16', 1),
('Cliente17', '7123456789', 'Calle 17', 2),
('Cliente18', '8123456789', 'Calle 18', 3),
('Cliente19', '9123456789', 'Calle 19', 4),
('Cliente20', '1234509876', 'Calle 20', 5),
('Cliente21', '2345609876', 'Calle 21', 1),
('Cliente22', '3456709876', 'Calle 22', 2),
('Cliente23', '4567809876', 'Calle 23', 3),
('Cliente24', '5678909876', 'Calle 24', 4),
('Cliente25', '6789019876', 'Calle 25', 5);

-- Insertar registros en la tabla empleados
INSERT INTO empleados (nombre, telefono, puesto) VALUES
('Empleado1', '1234567890', 'Cajero'),
('Empleado2', '2345678901', 'Supervisor'),
('Empleado3', '3456789012', 'Gerente'),
('Empleado4', '4567890123', 'Almacén'),
('Empleado5', '5678901234', 'Seguridad'),
('Empleado6', '6789012345', 'Vendedor'),
('Empleado7', '7890123456', 'Reponedor'),
('Empleado8', '8901234567', 'Limpieza'),
('Empleado9', '9012345678', 'Recepción'),
('Empleado10', '0123456789', 'Cajero'),
('Empleado11', '1123456789', 'Supervisor'),
('Empleado12', '2123456789', 'Gerente'),
('Empleado13', '3123456789', 'Almacén'),
('Empleado14', '4123456789', 'Seguridad'),
('Empleado15', '5123456789', 'Vendedor'),
('Empleado16', '6123456789', 'Reponedor'),
('Empleado17', '7123456789', 'Limpieza'),
('Empleado18', '8123456789', 'Recepción'),
('Empleado19', '9123456789', 'Cajero'),
('Empleado20', '1234509876', 'Supervisor'),
('Empleado21', '2345609876', 'Gerente'),
('Empleado22', '3456709876', 'Almacén'),
('Empleado23', '4567809876', 'Seguridad'),
('Empleado24', '5678909876', 'Vendedor'),
('Empleado25', '6789019876', 'Reponedor');

-- Insertar registros en la tabla departamentos
INSERT INTO departamentos (nombre, piso) VALUES
('Electrónica', 1),
('Hogar', 2),
('Ropa', 3),
('Zapatería', 4),
('Juguetería', 5),
('Deportes', 6),
('Papelería', 7),
('Mascotas', 8),
('Jardinería', 9),
('Librería', 10),
('Tecnología', 11),
('Supermercado', 12),
('Electrodomésticos', 13),
('Muebles', 14),
('Cosméticos', 15),
('Joyería', 16),
('Bebés', 17),
('Oficina', 18),
('Herramientas', 19),
('Automotriz', 20),
('Cocina', 21),
('Baño', 22),
('Terraza', 23),
('Camping', 24),
('Audio', 25);

-- Insertar registros en la tabla marcas
INSERT INTO marcas (nombre, origen) VALUES
('Sony', 'Japón'),
('Samsung', 'Corea del Sur'),
('Apple', 'Estados Unidos'),
('Microsoft', 'Estados Unidos'),
('Dell', 'Estados Unidos'),
('HP', 'Estados Unidos'),
('Lenovo', 'China'),
('Asus', 'Taiwán'),
('Acer', 'Taiwán'),
('LG', 'Corea del Sur'),
('Panasonic', 'Japón'),
('Philips', 'Países Bajos'),
('Bosch', 'Alemania'),
('Siemens', 'Alemania'),
('Canon', 'Japón'),
('Nikon', 'Japón'),
('GoPro', 'Estados Unidos'),
('Fujifilm', 'Japón'),
('Xiaomi', 'China'),
('Huawei', 'China'),
('Oppo', 'China'),
('Vivo', 'China'),
('Realme', 'China'),
('OnePlus', 'China'),
('Tesla', 'Estados Unidos');

-- Insertar registros en la tabla artículos
INSERT INTO articulos (nombre, precio, marca_id) VALUES
('Televisor', 300.00, 1),
('Smartphone', 500.00, 2),
('Laptop', 1000.00, 3),
('Tablet', 400.00, 4),
('Smartwatch', 200.00, 5),
('Auriculares', 50.00, 6),
('Altavoz', 150.00, 7),
('Impresora', 100.00, 8),
('Cámara', 600.00, 9),
('Dron', 800.00, 10),
('Microondas', 120.00, 11),
('Licuadora', 60.00, 12),
('Refrigerador', 500.00, 13),
('Lavadora', 700.00, 14),
('Secadora', 650.00, 15),
('Cafetera', 80.00, 16),
('Horno', 200.00, 17),
('Plancha', 40.00, 18),
('Ventilador', 30.00, 19),
('Aire Acondicionado', 900.00, 20),
('Lámpara', 20.00, 21),
('Teclado', 50.00, 22),
('Ratón', 30.00, 23),
('Disco Duro', 100.00, 24),
('Memoria USB', 20.00, 25);

-- Insertar registros en la tabla proveedores
INSERT INTO proveedores (nombre, telefono, direccion) VALUES
('Proveedor1', '1234567890', 'Av. Central 1'),
('Proveedor2', '2345678901', 'Av. Central 2'),
('Proveedor3', '3456789012', 'Av. Central 3'),
('Proveedor4', '4567890123', 'Av. Central 4'),
('Proveedor5', '5678901234', 'Av. Central 5'),
('Proveedor6', '6789012345', 'Av. Central 6'),
('Proveedor7', '7890123456', 'Av. Central 7'),
('Proveedor8', '8901234567', 'Av. Central 8'),
('Proveedor9', '9012345678', 'Av. Central 9'),
('Proveedor10', '0123456789', 'Av. Central 10'),
('Proveedor11', '1123456789', 'Av. Central 11'),
('Proveedor12', '2123456789', 'Av. Central 12'),
('Proveedor13', '3123456789', 'Av. Central 13'),
('Proveedor14', '4123456789', 'Av. Central 14'),
('Proveedor15', '5123456789', 'Av. Central 15'),
('Proveedor16', '6123456789', 'Av. Central 16'),
('Proveedor17', '7123456789', 'Av. Central 17'),
('Proveedor18', '8123456789', 'Av. Central 18'),
('Proveedor19', '9123456789', 'Av. Central 19'),
('Proveedor20', '1234509876', 'Av. Central 20'),
('Proveedor21', '2345609876', 'Av. Central 21'),
('Proveedor22', '3456709876', 'Av. Central 22'),
('Proveedor23', '4567809876', 'Av. Central 23'),
('Proveedor24', '5678909876', 'Av. Central 24'),
('Proveedor25', '6789019876', 'Av. Central 25');
-- Insertar registros en la tabla vendedores
INSERT INTO vendedores (nombre, especialidad) VALUES
('Vendedor1', 'Electrónica'),
('Vendedor2', 'Hogar'),
('Vendedor3', 'Ropa'),
('Vendedor4', 'Zapatería'),
('Vendedor5', 'Juguetería'),
('Vendedor6', 'Deportes'),
('Vendedor7', 'Papelería'),
('Vendedor8', 'Mascotas'),
('Vendedor9', 'Jardinería'),
('Vendedor10', 'Librería'),
('Vendedor11', 'Tecnología'),
('Vendedor12', 'Supermercado'),
('Vendedor13', 'Electrodomésticos'),
('Vendedor14', 'Muebles'),
('Vendedor15', 'Cosméticos'),
('Vendedor16', 'Joyería'),
('Vendedor17', 'Bebés'),
('Vendedor18', 'Oficina'),
('Vendedor19', 'Herramientas'),
('Vendedor20', 'Automotriz'),
('Vendedor21', 'Cocina'),
('Vendedor22', 'Baño'),
('Vendedor23', 'Terraza'),
('Vendedor24', 'Camping'),
('Vendedor25', 'Audio');




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


