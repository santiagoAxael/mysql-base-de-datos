-- Vista que muestra los jugadores con sus respectivos niveles
CREATE VIEW Vista_Jugadores_Niveles AS
SELECT jugadores.nombre, jugadores.nivel, niveles.mapa, niveles.dificultad
FROM jugadores
JOIN niveles ON jugadores.nivel = niveles.id;

-- Vista que muestra los enemigos con su dificultad y habilidades
CREATE VIEW Vista_Enemigos_Habilidades AS
SELECT enemigos.nombre, enemigos.dificultad, habilidades.nombre AS habilidad, habilidades.daño
FROM enemigos
JOIN habilidades ON enemigos.habilidades = habilidades.id;

-- Vista que muestra los objetos y los niveles donde aparecen
CREATE VIEW Vista_Objetos_Niveles AS
SELECT objetos.nombre, objetos.funcion, niveles.mapa, niveles.dificultad
FROM niveles_has_objetos
JOIN objetos ON niveles_has_objetos.objetos_id = objetos.id
JOIN niveles ON niveles_has_objetos.niveles_id = niveles.id;

-- Vista que muestra los jugadores junto con sus habilidades
CREATE VIEW Vista_Jugadores_Habilidades AS
SELECT jugadores.nombre, habilidades.nombre AS habilidad, habilidades.descripcion
FROM jugadores_has_habilidades
JOIN jugadores ON jugadores_has_habilidades.jugadores_id = jugadores.id
JOIN habilidades ON jugadores_has_habilidades.habilidades_id = habilidades.id;

-- Vista que muestra el promedio de vida de los enemigos por nivel
CREATE VIEW Vista_Promedio_Vida_Enemigos AS
SELECT niveles.mapa, niveles.dificultad, AVG(enemigos.vida) AS promedio_vida
FROM niveles
JOIN enemigos ON niveles.mapa = enemigos.lugar
GROUP BY niveles.mapa, niveles.dificultad;