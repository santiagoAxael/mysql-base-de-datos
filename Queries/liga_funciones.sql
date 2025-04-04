CREATE DATABASE IF NOT EXISTS LigaDeportiva;
USE LigaDeportiva;

-- Crear la tabla de árbitros
CREATE TABLE Arbitros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    experiencia INT
);

-- Crear la tabla de categorías
CREATE TABLE Categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

-- Crear la tabla de equipos
CREATE TABLE Equipos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    ciudad VARCHAR(100)
);

-- Crear la tabla de jugadores
CREATE TABLE Jugadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    edad INT,
    equipo_id INT,
    FOREIGN KEY (equipo_id) REFERENCES Equipos(id)
);

-- Crear tabla intermedia árbitros-categorías
CREATE TABLE Arbitros_has_Categorias (
    arbitro_id INT,
    categoria_id INT,
    PRIMARY KEY (arbitro_id, categoria_id),
    FOREIGN KEY (arbitro_id) REFERENCES Arbitros(id),
    FOREIGN KEY (categoria_id) REFERENCES Categorias(id)
);

-- Crear tabla intermedia equipos-categorías
CREATE TABLE Equipos_has_Categorias (
    equipo_id INT,
    categoria_id INT,
    PRIMARY KEY (equipo_id, categoria_id),
    FOREIGN KEY (equipo_id) REFERENCES Equipos(id),
    FOREIGN KEY (categoria_id) REFERENCES Categorias(id)
);

-- Insertar 25 registros en la tabla de árbitros
INSERT INTO Arbitros (nombre, experiencia) VALUES
('Árbitro 1', 5), ('Árbitro 2', 8), ('Árbitro 3', 10),
('Árbitro 4', 3), ('Árbitro 5', 7), ('Árbitro 6', 6),
('Árbitro 7', 4), ('Árbitro 8', 12), ('Árbitro 9', 15),
('Árbitro 10', 9), ('Árbitro 11', 11), ('Árbitro 12', 2),
('Árbitro 13', 4), ('Árbitro 14', 5), ('Árbitro 15', 6),
('Árbitro 16', 7), ('Árbitro 17', 8), ('Árbitro 18', 3),
('Árbitro 19', 9), ('Árbitro 20', 6), ('Árbitro 21', 10),
('Árbitro 22', 4), ('Árbitro 23', 5), ('Árbitro 24', 2),
('Árbitro 25', 8);

-- Insertar 25 registros en la tabla de categorías
INSERT INTO Categorias (nombre) VALUES
('Categoría 1'), ('Categoría 2'), ('Categoría 3'),
('Categoría 4'), ('Categoría 5'), ('Categoría 6'),
('Categoría 7'), ('Categoría 8'), ('Categoría 9'),
('Categoría 10'), ('Categoría 11'), ('Categoría 12'),
('Categoría 13'), ('Categoría 14'), ('Categoría 15'),
('Categoría 16'), ('Categoría 17'), ('Categoría 18'),
('Categoría 19'), ('Categoría 20'), ('Categoría 21'),
('Categoría 22'), ('Categoría 23'), ('Categoría 24'),
('Categoría 25');

-- Insertar 25 registros en la tabla de equipos
INSERT INTO Equipos (nombre, ciudad) VALUES
('Equipo 1', 'Ciudad 1'), ('Equipo 2', 'Ciudad 2'),
('Equipo 3', 'Ciudad 3'), ('Equipo 4', 'Ciudad 4'),
('Equipo 5', 'Ciudad 5'), ('Equipo 6', 'Ciudad 6'),
('Equipo 7', 'Ciudad 7'), ('Equipo 8', 'Ciudad 8'),
('Equipo 9', 'Ciudad 9'), ('Equipo 10', 'Ciudad 10'),
('Equipo 11', 'Ciudad 11'), ('Equipo 12', 'Ciudad 12'),
('Equipo 13', 'Ciudad 13'), ('Equipo 14', 'Ciudad 14'),
('Equipo 15', 'Ciudad 15'), ('Equipo 16', 'Ciudad 16'),
('Equipo 17', 'Ciudad 17'), ('Equipo 18', 'Ciudad 18'),
('Equipo 19', 'Ciudad 19'), ('Equipo 20', 'Ciudad 20'),
('Equipo 21', 'Ciudad 21'), ('Equipo 22', 'Ciudad 22'),
('Equipo 23', 'Ciudad 23'), ('Equipo 24', 'Ciudad 24'),
('Equipo 25', 'Ciudad 25');

-- Insertar 25 registros en la tabla de jugadores
INSERT INTO Jugadores (nombre, edad, equipo_id) VALUES
('Jugador 1', 20, 1), ('Jugador 2', 22, 2),
('Jugador 3', 23, 3), ('Jugador 4', 24, 4),
('Jugador 5', 25, 5), ('Jugador 6', 26, 6),
('Jugador 7', 27, 7), ('Jugador 8', 28, 8),
('Jugador 9', 29, 9), ('Jugador 10', 30, 10),
('Jugador 11', 21, 11), ('Jugador 12', 23, 12),
('Jugador 13', 25, 13), ('Jugador 14', 26, 14),
('Jugador 15', 27, 15), ('Jugador 16', 28, 16),
('Jugador 17', 29, 17), ('Jugador 18', 30, 18),
('Jugador 19', 21, 19), ('Jugador 20', 22, 20),
('Jugador 21', 23, 21), ('Jugador 22', 24, 22),
('Jugador 23', 25, 23), ('Jugador 24', 26, 24),
('Jugador 25', 27, 25);

-- Insertar relaciones en tabla intermedia árbitros-categorías
INSERT INTO Arbitros_has_Categorias (arbitro_id, categoria_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15),
(16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
(21, 21), (22, 22), (23, 23), (24, 24), (25, 25);

-- Insertar relaciones en tabla intermedia equipos-categorías
INSERT INTO Equipos_has_Categorias (equipo_id, categoria_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15),
(16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
(21, 21), (22, 22), (23, 23), (24, 24), (25, 25);

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


