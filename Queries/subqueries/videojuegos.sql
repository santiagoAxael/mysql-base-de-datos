-- Obtener el nombre de los jugadores junto con el nombre del nivel en el que están
SELECT nombre, 
       (SELECT mapa FROM niveles WHERE id = jugadores.nivel) AS nivel 
FROM jugadores;

-- Obtener el nombre de los objetos junto con el lugar donde aparecen en cada nivel
SELECT nombre, 
       (SELECT lugar FROM objetos WHERE id = niveles_has_objetos.objetos_id) AS lugar 
FROM niveles_has_objetos;

-- Contar el número total de enemigos en cada nivel
SELECT mapa, 
       (SELECT COUNT(*) FROM enemigos WHERE lugar = niveles.mapa) AS total_enemigos 
FROM niveles;

-- Obtener el nombre de los jugadores junto con la habilidad que poseen
SELECT nombre, 
       (SELECT nombre FROM habilidades WHERE id = jugadores_has_habilidades.habilidades_id) AS habilidad 
FROM jugadores_has_habilidades;

-- Obtener el promedio de vida de los enemigos en cada nivel
SELECT mapa, 
       (SELECT AVG(vida) FROM enemigos WHERE lugar = niveles.mapa) AS promedio_vida_enemigos 
FROM niveles;