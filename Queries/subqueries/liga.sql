-- Obtener el nombre de los jugadores junto con el nombre de su equipo
SELECT nombre, 
       (SELECT nombre FROM Equipos WHERE id = Jugadores.equipo_id) AS equipo 
FROM Jugadores;

-- Obtener el número total de jugadores inscritos en cada equipo
SELECT nombre, 
       (SELECT COUNT(*) FROM Jugadores WHERE equipo_id = Equipos.id) AS total_jugadores 
FROM Equipos;

-- Obtener el nombre de los árbitros junto con la categoría en la que han arbitrado
SELECT nombre, 
       (SELECT nombre FROM Categorias WHERE id = Arbitros_has_Categorias.categoria_id) AS categoria 
FROM Arbitros_has_Categorias;

-- Obtener el nombre de los equipos junto con la categoría en la que compiten
SELECT nombre, 
       (SELECT nombre FROM Categorias WHERE id = Equipos_has_Categorias.categoria_id) AS categoria 
FROM Equipos_has_Categorias;

-- Obtener el promedio de edad de los jugadores de cada equipo
SELECT nombre, 
       (SELECT AVG(edad) FROM Jugadores WHERE equipo_id = Equipos.id) AS promedio_edad 
FROM Equipos;