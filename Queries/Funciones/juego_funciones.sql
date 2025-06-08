-- Crear la base de datos
CREATE DATABASE Juego;
USE Juego;

-- Crear la tabla de niveles
CREATE TABLE niveles (
    id INT PRIMARY KEY,
    mapa VARCHAR(255),
    dificultad VARCHAR(255),
    enemigos INT,
    objetos INT
);

-- Crear la tabla de objetos
CREATE TABLE objetos (
    id INT PRIMARY KEY,
    nombre VARCHAR(255),
    funcion VARCHAR(255),
    lugar VARCHAR(255)
);

-- Crear la tabla de jugadores
CREATE TABLE jugadores (
    id INT PRIMARY KEY,
    nombre VARCHAR(255),
    nivel INT,
    vida INT
);

-- Crear la tabla de enemigos
CREATE TABLE enemigos (
    id INT PRIMARY KEY,
    nombre VARCHAR(255),
    dificultad VARCHAR(255),
    descripcion VARCHAR(255),
    lugar VARCHAR(255),
    vida INT,
    habilidades INT
);

-- Crear la tabla de habilidades
CREATE TABLE habilidades (
    id INT PRIMARY KEY,
    nombre VARCHAR(255),
    descripcion VARCHAR(255),
    tiempo INT,
    daño INT
);

-- Crear tabla intermedia niveles_has_objetos
CREATE TABLE niveles_has_objetos (
    niveles_id INT,
    objetos_id INT,
    PRIMARY KEY (niveles_id, objetos_id),
    FOREIGN KEY (niveles_id) REFERENCES niveles(id),
    FOREIGN KEY (objetos_id) REFERENCES objetos(id)
);

-- Crear tabla intermedia jugadores_has_habilidades
CREATE TABLE jugadores_has_habilidades (
    jugadores_id INT,
    habilidades_id INT,
    PRIMARY KEY (jugadores_id, habilidades_id),
    FOREIGN KEY (jugadores_id) REFERENCES jugadores(id),
    FOREIGN KEY (habilidades_id) REFERENCES habilidades(id)
);

-- Insertar 25 registros en la tabla de niveles
INSERT INTO niveles (id, mapa, dificultad, enemigos, objetos) VALUES
(1, 'Mapa1', 'Facil', 5, 3),
(2, 'Mapa2', 'Medio', 10, 5),
(3, 'Mapa3', 'Dificil', 15, 7),
(4, 'Mapa4', 'Facil', 4, 2),
(5, 'Mapa5', 'Medio', 8, 4),
(6, 'Mapa6', 'Dificil', 12, 6),
(7, 'Mapa7', 'Facil', 3, 1),
(8, 'Mapa8', 'Medio', 9, 5),
(9, 'Mapa9', 'Dificil', 14, 8),
(10, 'Mapa10', 'Facil', 6, 3),
(11, 'Mapa11', 'Medio', 11, 6),
(12, 'Mapa12', 'Dificil', 16, 9),
(13, 'Mapa13', 'Facil', 5, 2),
(14, 'Mapa14', 'Medio', 10, 4),
(15, 'Mapa15', 'Dificil', 15, 7),
(16, 'Mapa16', 'Facil', 4, 1),
(17, 'Mapa17', 'Medio', 8, 5),
(18, 'Mapa18', 'Dificil', 12, 6),
(19, 'Mapa19', 'Facil', 3, 2),
(20, 'Mapa20', 'Medio', 9, 4),
(21, 'Mapa21', 'Dificil', 14, 7),
(22, 'Mapa22', 'Facil', 6, 1),
(23, 'Mapa23', 'Medio', 11, 5),
(24, 'Mapa24', 'Dificil', 16, 8),
(25, 'Mapa25', 'Facil', 5, 3);

-- Insertar 25 registros en la tabla de objetos
INSERT INTO objetos (id, nombre, funcion, lugar) VALUES
(1, 'Objeto1', 'Función1', 'Lugar1'),
(2, 'Objeto2', 'Función2', 'Lugar2'),
(3, 'Objeto3', 'Función3', 'Lugar3'),
(4, 'Objeto4', 'Función4', 'Lugar4'),
(5, 'Objeto5', 'Función5', 'Lugar5'),
(6, 'Objeto6', 'Función6', 'Lugar6'),
(7, 'Objeto7', 'Función7', 'Lugar7'),
(8, 'Objeto8', 'Función8', 'Lugar8'),
(9, 'Objeto9', 'Función9', 'Lugar9'),
(10, 'Objeto10', 'Función10', 'Lugar10'),
(11, 'Objeto11', 'Función11', 'Lugar11'),
(12, 'Objeto12', 'Función12', 'Lugar12'),
(13, 'Objeto13', 'Función13', 'Lugar13'),
(14, 'Objeto14', 'Función14', 'Lugar14'),
(15, 'Objeto15', 'Función15', 'Lugar15'),
(16, 'Objeto16', 'Función16', 'Lugar16'),
(17, 'Objeto17', 'Función17', 'Lugar17'),
(18, 'Objeto18', 'Función18', 'Lugar18'),
(19, 'Objeto19', 'Función19', 'Lugar19'),
(20, 'Objeto20', 'Función20', 'Lugar20'),
(21, 'Objeto21', 'Función21', 'Lugar21'),
(22, 'Objeto22', 'Función22', 'Lugar22'),
(23, 'Objeto23', 'Función23', 'Lugar23'),
(24, 'Objeto24', 'Función24', 'Lugar24'),
(25, 'Objeto25', 'Función25', 'Lugar25');

-- Insertar 25 registros en la tabla de jugadores
INSERT INTO jugadores (id, nombre, nivel, vida) VALUES
(1, 'Jugador1', 1, 100),
(2, 'Jugador2', 2, 90),
(3, 'Jugador3', 3, 80),
(4, 'Jugador4', 4, 70),
(5, 'Jugador5', 5, 60),
(6, 'Jugador6', 6, 50),
(7, 'Jugador7', 7, 40),
(8, 'Jugador8', 8, 30),
(9, 'Jugador9', 9, 20),
(10, 'Jugador10', 10, 10),
(11, 'Jugador11', 1, 100),
(12, 'Jugador12', 2, 90),
(13, 'Jugador13', 3, 80),
(14, 'Jugador14', 4, 70),
(15, 'Jugador15', 5, 60),
(16, 'Jugador16', 6, 50),
(17, 'Jugador17', 7, 40),
(18, 'Jugador18', 8, 30),
(19, 'Jugador19', 9, 20),
(20, 'Jugador20', 10, 10),
(21, 'Jugador21', 1, 100),
(22, 'Jugador22', 2, 90),
(23, 'Jugador23', 3, 80),
(24, 'Jugador24', 4, 70),
(25, 'Jugador25', 5, 60);

-- Insertar 25 registros en la tabla de enemigos
INSERT INTO enemigos (id, nombre, dificultad, descripcion, lugar, vida, habilidades) VALUES
(1, 'Enemigo1', 'Facil', 'Descripción1', 'Lugar1', 100, 1),
(2, 'Enemigo2', 'Medio', 'Descripción2', 'Lugar2', 90, 2),
(3, 'Enemigo3', 'Dificil', 'Descripción3', 'Lugar3', 80, 3),
(4, 'Enemigo4', 'Facil', 'Descripción4', 'Lugar4', 70, 4),
(5, 'Enemigo5', 'Medio', 'Descripción5', 'Lugar5', 60, 5),
(6, 'Enemigo6', 'Dificil', 'Descripción6', 'Lugar6', 50, 6),
(7, 'Enemigo7', 'Facil', 'Descripción7', 'Lugar7', 40, 7),
(8, 'Enemigo8', 'Medio', 'Descripción8', 'Lugar8', 30, 8),
(9, 'Enemigo9', 'Dificil', 'Descripción9', 'Lugar9', 20, 9),
(10, 'Enemigo10', 'Facil', 'Descripción10', 'Lugar10', 10, 10),
(11, 'Enemigo11', 'Medio', 'Descripción11', 'Lugar11', 100, 1),
(12, 'Enemigo12', 'Dificil', 'Descripción12', 'Lugar12', 90, 2),
(13, 'Enemigo13', 'Facil', 'Descripción13', 'Lugar13', 80, 3),
(14, 'Enemigo14', 'Medio', 'Descripción14', 'Lugar14', 70, 4),
(15, 'Enemigo15', 'Dificil', 'Descripción15', 'Lugar15', 60, 5),
(16, 'Enemigo16', 'Facil', 'Descripción16', 'Lugar16', 50, 6),
(17, 'Enemigo17', 'Medio', 'Descripción17', 'Lugar17', 40, 7),
(18, 'Enemigo18', 'Dificil', 'Descripción18', 'Lugar18', 30, 8),
(19, 'Enemigo19', 'Facil', 'Descripción19', 'Lugar19', 20, 9),
(20, 'Enemigo20', 'Medio', 'Descripción20', 'Lugar20', 10, 10),
(21, 'Enemigo21', 'Dificil', 'Descripción21', 'Lugar21', 100, 1),
(22, 'Enemigo22', 'Facil', 'Descripción22', 'Lugar22', 90, 2),
(23, 'Enemigo23', 'Medio', 'Descripción23', 'Lugar23', 80, 3),
(24, 'Enemigo24', 'Dificil', 'Descripción24', 'Lugar24', 70, 4),
(25, 'Enemigo25', 'Facil', 'Descripción25', 'Lugar25', 60, 5);

-- Insertar 25 registros en la tabla de habilidades
INSERT INTO habilidades (id, nombre, descripcion, tiempo, daño) VALUES
(1, 'Habilidad1', 'Descripción1', 10, 100),
(2, 'Habilidad2', 'Descripción2', 20, 90),
(3, 'Habilidad3', 'Descripción3', 30, 80),
(4, 'Habilidad4', 'Descripción4', 40, 70),
(5, 'Habilidad5', 'Descripción5', 50, 60),
(6, 'Habilidad6', 'Descripción6', 60, 50),
(7, 'Habilidad7', 'Descripción7', 70, 40),
(8, 'Habilidad8', 'Descripción8', 80, 30),
(9, 'Habilidad9', 'Descripción9', 90, 20),
(10, 'Habilidad10', 'Descripción10', 100, 10),
(11, 'Habilidad11', 'Descripción11', 10, 100),
(12, 'Habilidad12', 'Descripción12', 20, 90),
(13, 'Habilidad13', 'Descripción13', 30, 80),
(14, 'Habilidad14', 'Descripción14', 40, 70),
(15, 'Habilidad15', 'Descripción15', 50, 60),
(16, 'Habilidad16', 'Descripción16', 60, 50),
(17, 'Habilidad17', 'Descripción17', 70, 40),
(18, 'Habilidad18', 'Descripción18', 80, 30),
(19, 'Habilidad19', 'Descripción19', 90, 20),
(20, 'Habilidad20', 'Descripción20', 100, 10),
(21, 'Habilidad21', 'Descripción21', 10, 100),
(22, 'Habilidad22', 'Descripción22', 20, 90),
(23, 'Habilidad23', 'Descripción23', 30, 80),
(24, 'Habilidad24', 'Descripción24', 40, 70),
(25, 'Habilidad25', 'Descripción25', 50, 60);

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


