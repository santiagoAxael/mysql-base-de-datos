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

