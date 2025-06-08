
consultas
-- 3 DISTINCT: Obtener valores únicos
SELECT DISTINCT ciudad FROM Equipos;
SELECT DISTINCT experiencia FROM Arbitros;
SELECT DISTINCT edad FROM Jugadores;

-- 3 LIMIT: Limitar el número de resultados
SELECT * FROM Equipos LIMIT 3;
SELECT * FROM Arbitros LIMIT 3;
SELECT * FROM Jugadores LIMIT 3;

-- 3 ORDER BY: Ordenar resultados
SELECT nombre, experiencia FROM Arbitros ORDER BY experiencia ASC;
SELECT nombre, edad FROM Jugadores ORDER BY edad DESC;
SELECT nombre, ciudad FROM Equipos ORDER BY ciudad ASC;

-- 3 Operadores de comparación: Uso de >, <, =
SELECT * FROM Jugadores WHERE edad > 25;
SELECT * FROM Equipos WHERE id < 10;
SELECT * FROM Categorias WHERE nombre = 'Categoría 1';

-- 3 LIKE: Búsquedas con patrones
SELECT nombre FROM Arbitros WHERE nombre LIKE 'Á%';
SELECT nombre FROM Jugadores WHERE nombre LIKE '%r%';

-- 3 BETWEEN: Rango de valores
SELECT nombre, edad FROM Jugadores WHERE edad BETWEEN 20 AND 30;
SELECT experiencia FROM Arbitros WHERE experiencia BETWEEN 5 AND 10;
SELECT id, nombre FROM Categorias WHERE id BETWEEN 1 AND 5;

-- 3 AND: Condiciones combinadas
SELECT nombre FROM Jugadores WHERE edad > 25 AND equipo_id = 1;
SELECT nombre FROM Arbitros WHERE experiencia > 5 AND experiencia < 15;
SELECT nombre FROM Equipos WHERE ciudad = 'Ciudad 1' AND id < 10;

-- 3 OR: Condiciones alternativas
SELECT nombre FROM Jugadores WHERE edad > 30 OR equipo_id = 2;
SELECT nombre FROM Arbitros WHERE experiencia < 5 OR experiencia > 10;
SELECT nombre FROM Equipos WHERE ciudad = 'Ciudad 1' OR ciudad = 'Ciudad 2';

-- 3 NOT: Exclusión de condiciones
SELECT * FROM Equipos WHERE ciudad NOT LIKE 'Ciudad 1';
SELECT * FROM Jugadores WHERE edad NOT BETWEEN 20 AND 30;
SELECT * FROM Categorias WHERE nombre NOT LIKE 'Categoría%';

-- 3 IN: Comparar con un conjunto de valores
SELECT nombre FROM Equipos WHERE id IN (1, 3, 5);
SELECT nombre FROM Categorias WHERE id IN (2, 4, 6);
SELECT nombre FROM Arbitros WHERE id IN (7, 8, 9);

-- 3 Operaciones matemáticas: SUMA, RESTA, MULTIPLICACIÓN
SELECT edad + 5 AS nueva_edad FROM Jugadores;
SELECT experiencia * 2 AS experiencia_doble FROM Arbitros;
SELECT id - 1 AS nuevo_id FROM Equipos;

-- 3 MIN: Mínimos
SELECT MIN(edad) AS edad_minima FROM Jugadores;
SELECT MIN(experiencia) AS experiencia_minima FROM Arbitros;
SELECT MIN(id) AS id_minimo FROM Categorias;

-- 3 MAX: Máximos
SELECT MAX(edad) AS edad_maxima FROM Jugadores;
SELECT MAX(experiencia) AS experiencia_maxima FROM Arbitros;
SELECT MAX(id) AS id_maximo FROM Equipos;

-- 3 COUNT: Contar registros
SELECT COUNT(*) AS total_arbitros FROM Arbitros;
SELECT COUNT(*) AS total_jugadores FROM Jugadores;
SELECT COUNT(*) AS total_equipos FROM Equipos;

-- 3 SUM: Sumar valores
SELECT SUM(edad) AS suma_edades FROM Jugadores;
SELECT SUM(experiencia) AS suma_experiencia FROM Arbitros;
SELECT SUM(id) AS suma_ids FROM Equipos;

-- 3 AVG: Calcular promedios
SELECT AVG(edad) AS promedio_edad FROM Jugadores;
SELECT AVG(experiencia) AS promedio_experiencia FROM Arbitros;
SELECT AVG(id) AS promedio_ids FROM Equipos;

-- 3 CONCAT: Concatenar texto
SELECT CONCAT(nombre, ' - ', experiencia) AS descripcion FROM Arbitros;
SELECT CONCAT(nombre, ': ', ciudad) AS equipo_ciudad FROM Equipos;
SELECT CONCAT(nombre, ', Edad: ', edad) AS jugador_descripcion FROM Jugadores;

-- 3 UPPER: Convertir a mayúsculas
SELECT UPPER(nombre) AS nombre_mayusculas FROM Arbitros;
SELECT UPPER(nombre) AS nombre_mayusculas FROM Jugadores;
SELECT UPPER(nombre) AS nombre_mayusculas FROM Equipos;

-- 3 LOWER: Convertir a minúsculas
SELECT LOWER(nombre) AS nombre_minusculas FROM Arbitros;
SELECT LOWER(nombre) AS nombre_minusculas FROM Categorias;
SELECT LOWER(nombre) AS nombre_minusculas FROM Equipos;

-- 3 OFFSET: Ignorar los primeros resultados
SELECT * FROM Arbitros LIMIT 3 OFFSET 3;
SELECT * FROM Jugadores LIMIT 3 OFFSET 3;
SELECT * FROM Equipos LIMIT 3 OFFSET 3;

-- 3 GROUP BY: Agrupación y conteo
SELECT equipo_id, COUNT(*) AS total_jugadores FROM Jugadores GROUP BY equipo_id;
SELECT experiencia, COUNT(*) AS cantidad_arbitros FROM Arbitros GROUP BY experiencia;
SELECT ciudad, COUNT(*) AS cantidad_equipos FROM Equipos GROUP BY ciudad;

-- 3 HAVING: Filtrar grupos
SELECT equipo_id, COUNT(*) AS total_jugadores FROM Jugadores GROUP BY equipo_id HAVING COUNT(*) > 2;
SELECT experiencia, COUNT(*) AS cantidad_arbitros FROM Arbitros GROUP BY experiencia HAVING experiencia > 5;
SELECT ciudad, COUNT(*) AS cantidad_equipos FROM Equipos GROUP BY ciudad HAVING COUNT(*) > 1;

-- 3 CASE: Condiciones con salida personalizada
SELECT nombre,
    CASE 
        WHEN experiencia < 5 THEN 'Novato'
        WHEN experiencia BETWEEN 5 AND 10 THEN 'Intermedio'
        ELSE 'Experto'
    END AS nivel_experiencia
FROM Arbitros;

SELECT nombre,
    CASE 
        WHEN edad < 20 THEN 'Joven'
        WHEN edad BETWEEN 20 AND 30 THEN 'Adulto'
        ELSE 'Veterano'
    END AS rango_edad
FROM Jugadores;

SELECT nombre,
    CASE 
        WHEN ciudad = 'Ciudad 1' THEN 'Principal'
        ELSE 'Secundaria'
    END AS tipo_ciudad
FROM Equipos;

-- 3 IFNULL: Reemplazar valores nulos
SELECT nombre, IFNULL(ciudad, 'Desconocida') AS ciudad FROM Equipos;
SELECT nombre, IFNULL(nombre, 'Sin Categoría') AS categoria FROM Categorias;
SELECT nombre, IFNULL(nombre, 'Sin Equipo') AS equipo FROM Equipos;


