-- Vista que muestra los jugadores con sus respectivos equipos
CREATE VIEW Vista_Jugadores_Equipos AS
SELECT Jugadores.nombre AS jugador, Jugadores.edad, Equipos.nombre AS equipo, Equipos.ciudad
FROM Jugadores
JOIN Equipos ON Jugadores.equipo_id = Equipos.id;

-- Vista que muestra los árbitros con su experiencia y categorías asignadas
CREATE VIEW Vista_Arbitros_Categorias AS
SELECT Arbitros.nombre AS arbitro, Arbitros.experiencia, Categorias.nombre AS categoria
FROM Arbitros_has_Categorias
JOIN Arbitros ON Arbitros_has_Categorias.arbitro_id = Arbitros.id
JOIN Categorias ON Arbitros_has_Categorias.categoria_id = Categorias.id;

-- Vista que muestra los equipos y las categorías en las que compiten
CREATE VIEW Vista_Equipos_Categorias AS
SELECT Equipos.nombre AS equipo, Equipos.ciudad, Categorias.nombre AS categoria
FROM Equipos_has_Categorias
JOIN Equipos ON Equipos_has_Categorias.equipo_id = Equipos.id
JOIN Categorias ON Equipos_has_Categorias.categoria_id = Categorias.id;

-- Vista que muestra el número total de jugadores por equipo
CREATE VIEW Vista_Cantidad_Jugadores AS
SELECT Equipos.nombre AS equipo, COUNT(Jugadores.id) AS total_jugadores
FROM Equipos
JOIN Jugadores ON Equipos.id = Jugadores.equipo_id
GROUP BY Equipos.nombre;

-- Vista que muestra el promedio de edad de los jugadores por equipo
CREATE VIEW Vista_Promedio_Edad_Jugadores AS
SELECT Equipos.nombre AS equipo, AVG(Jugadores.edad) AS promedio_edad
FROM Equipos
JOIN Jugadores ON Equipos.id = Jugadores.equipo_id
GROUP BY Equipos.nombre;