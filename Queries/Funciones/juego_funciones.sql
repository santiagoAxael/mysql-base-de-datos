consultas
-- 3 DISTINCT: Obtener valores únicos
SELECT DISTINCT dificultad FROM niveles;
SELECT DISTINCT lugar FROM enemigos;
SELECT DISTINCT nombre FROM habilidades;

-- 3 LIMIT: Limitar resultados
SELECT * FROM jugadores LIMIT 3;
SELECT * FROM objetos LIMIT 3;
SELECT * FROM enemigos LIMIT 3;

-- 3 ORDER BY: Ordenar registros
SELECT nombre, vida FROM jugadores ORDER BY vida DESC;
SELECT mapa FROM niveles ORDER BY mapa ASC LIMIT 0, 1000;
SELECT nombre, lugar FROM objetos ORDER BY lugar DESC;

-- 3 Operadores de comparación: Uso de >, <, =
SELECT * FROM jugadores WHERE vida > 50;
SELECT * FROM enemigos WHERE vida < 30;
SELECT * FROM niveles WHERE enemigos = 5;

-- 3 LIKE: Búsquedas por patrones
SELECT nombre FROM enemigos WHERE nombre LIKE 'Enemigo%';
SELECT nombre FROM objetos WHERE lugar LIKE 'Lugar_';
SELECT nombre FROM jugadores WHERE nombre LIKE '%dor';

-- 3 BETWEEN: Rango de valores
SELECT nombre, vida FROM jugadores WHERE vida BETWEEN 40 AND 80;
SELECT dificultad FROM niveles WHERE enemigos BETWEEN 5 AND 15;
SELECT nombre, tiempo FROM habilidades WHERE tiempo BETWEEN 20 AND 50;

-- 3 AND: Condiciones combinadas
SELECT nombre FROM jugadores WHERE nivel > 2 AND vida > 50;
SELECT nombre FROM objetos WHERE lugar = 'Lugar1' AND funcion = 'Función1';
SELECT nombre FROM enemigos WHERE vida > 40 AND dificultad = 'Dificil';

-- 3 OR: Condiciones alternativas
SELECT nombre FROM jugadores WHERE vida < 30 OR nivel = 1;
SELECT nombre FROM enemigos WHERE dificultad = 'Medio' OR vida > 90;
SELECT nombre FROM objetos WHERE lugar = 'Lugar2' OR funcion = 'Función2';

-- 3 NOT: Exclusión de condiciones
SELECT * FROM enemigos WHERE dificultad NOT LIKE 'Facil';
SELECT * FROM jugadores WHERE vida NOT BETWEEN 20 AND 70;
SELECT * FROM objetos WHERE lugar NOT LIKE 'Lugar3';

-- 3 IN: Comparar con conjuntos de valores
SELECT mapa FROM niveles WHERE id IN (1, 3, 5);
SELECT nombre FROM jugadores WHERE nivel IN (2, 4, 6);
SELECT nombre FROM habilidades WHERE id IN (7, 9, 11);

-- 3 Operaciones matemáticas: SUMA, RESTA, MULTIPLICACIÓN
SELECT vida + 20 AS nueva_vida FROM jugadores;
SELECT tiempo * 2 AS doble_tiempo FROM habilidades;
SELECT id - 1 AS nuevo_id FROM niveles;

-- 3 MIN: Mínimos
SELECT MIN(vida) AS vida_minima FROM jugadores;
SELECT MIN(enemigos) AS enemigos_minimos FROM niveles;
SELECT MIN(tiempo) AS tiempo_minimo FROM habilidades;

-- 3 MAX: Máximos
SELECT MAX(vida) AS vida_maxima FROM jugadores;
SELECT MAX(enemigos) AS enemigos_maximos FROM niveles;
SELECT MAX(tiempo) AS tiempo_maximo FROM habilidades;

-- 3 COUNT: Contar registros
SELECT COUNT(*) AS total_jugadores FROM jugadores;
SELECT COUNT(*) AS total_enemigos FROM enemigos;
SELECT COUNT(*) AS total_habilidades FROM habilidades;

-- 3 SUM: Sumar valores
SELECT SUM(vida) AS suma_vida FROM jugadores;
SELECT SUM(enemigos) AS suma_enemigos FROM niveles;
SELECT SUM(tiempo) AS suma_tiempo FROM habilidades;

-- 3 AVG: Calcular promedios
SELECT AVG(vida) AS promedio_vida FROM jugadores;
SELECT AVG(enemigos) AS promedio_enemigos FROM niveles;
SELECT AVG(tiempo) AS promedio_tiempo FROM habilidades;

-- 3 CONCAT: Concatenar valores
SELECT CONCAT(nombre, ' tiene ', vida, ' puntos de vida') AS descripcion FROM jugadores;
SELECT CONCAT(nombre, ' - ', lugar) AS objeto_lugar FROM objetos;
SELECT CONCAT(nombre, ' dura ', tiempo, ' segundos') AS habilidad_tiempo FROM habilidades;

-- 3 UPPER: Convertir a mayúsculas
SELECT UPPER(nombre) AS nombre_mayusculas FROM enemigos;
SELECT UPPER(nombre) AS nombre_mayusculas FROM jugadores;
SELECT UPPER(nombre) AS nombre_mayusculas FROM objetos;

-- 3 LOWER: Convertir a minúsculas
SELECT LOWER(nombre) AS nombre_minusculas FROM enemigos;
SELECT LOWER(nombre) AS nombre_minusculas FROM jugadores;
SELECT LOWER(nombre) AS nombre_minusculas FROM habilidades;

-- 3 OFFSET: Ignorar los primeros resultados
SELECT * FROM jugadores LIMIT 3 OFFSET 3;
SELECT * FROM objetos LIMIT 3 OFFSET 3;
SELECT * FROM enemigos LIMIT 3 OFFSET 3;

-- 3 GROUP BY: Agrupar y contar
SELECT lugar, COUNT(*) AS total_objetos FROM objetos GROUP BY lugar;
SELECT dificultad, COUNT(*) AS cantidad_enemigos FROM enemigos GROUP BY dificultad;
SELECT nivel, COUNT(*) AS cantidad_jugadores FROM jugadores GROUP BY nivel;

-- 3 HAVING: Filtrar grupos
SELECT lugar, COUNT(*) AS total_objetos FROM objetos GROUP BY lugar HAVING COUNT(*) > 2;
SELECT dificultad, COUNT(*) AS cantidad_enemigos FROM enemigos GROUP BY dificultad HAVING COUNT(*) > 5;
SELECT nivel, COUNT(*) AS cantidad_jugadores FROM jugadores GROUP BY nivel HAVING COUNT(*) > 3;

-- 3 CASE: Clasificar valores
SELECT nombre,
    CASE 
        WHEN vida < 50 THEN 'Débil'
        WHEN vida BETWEEN 50 AND 100 THEN 'Medio'
        ELSE 'Fuerte'
    END AS categoria_vida
FROM jugadores;

SELECT nombre,
    CASE 
        WHEN dificultad = 'Facil' THEN 'Bajo'
        WHEN dificultad = 'Medio' THEN 'Intermedio'
        ELSE 'Alto'
    END AS nivel_dificultad
FROM enemigos;

SELECT nombre,
    CASE 
        WHEN tiempo < 30 THEN 'Corto'
        WHEN tiempo BETWEEN 30 AND 60 THEN 'Medio'
        ELSE 'Largo'
    END AS duracion
FROM habilidades;

-- 3 IFNULL: Reemplazar valores nulos
SELECT nombre, IFNULL(lugar, 'Desconocido') AS lugar FROM enemigos;
SELECT nombre, IFNULL(funcion, 'Sin Función') AS funcion FROM objetos;
SELECT nombre, IFNULL(nivel, 0) AS nivel FROM jugadores;


