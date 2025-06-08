-- Inner Join
SELECT * FROM materias;
SELECT * FROM estudiantes;
SELECT * FROM materias_estudiantes;

SELECT m.nombre AS materias, e.id AS n, e.carrera AS especialidad
FROM materias_estudiantes AS me
INNER JOIN materias AS m ON me.materia_id = m.id
INNER JOIN estudiantes AS e ON me.estudiante_id = e.id;



SELECT * FROM maestros;
SELECT * FROM materias;
SELECT * FROM maestros_materias;

SELECT m.nombre AS n, ma.id AS idd , ma.horario AS hora
FROM maestros_materias AS mm
INNER JOIN maestros AS m ON mm.maestro_id = m.id
INNER JOIN materias AS ma ON mm.materia_id = ma.id;



-- Right Join
SELECT * FROM materias;
SELECT * FROM estudiantes;
SELECT * FROM materias_estudiantes;

SELECT m.nombre AS n, e.carrera AS especialidad, e.id AS idd
FROM materias_estudiantes AS  me
RIGHT JOIN materias AS m ON me.materia_id=m.id
RIGHT JOIN estudiantes AS e ON me.estudiante_id=e.id;



SELECT * FROM maestros;
SELECT * FROM materias;
SELECT * FROM maestros_materias;

SELECT m.especialidad AS carrera, m.nombre AS n, m.id AS idd , ma.horario AS hora
FROM maestros_materias AS mm
RIGHT JOIN maestros AS m ON mm.maestro_id=m.id
RIGHT JOIN materias AS ma ON mm.materia_id=ma.id;


-- Left Join
SELECT * FROM maestros;
SELECT * FROM materias;
SELECT * FROM maestros_materias;

SELECT m.especialidad AS carrera, m.nombre AS n, m.id AS idd, ma.horario AS hora
FROM maestros_materias AS mm
LEFT JOIN maestros AS m ON mm.maestro_id = m.id
LEFT JOIN materias AS ma ON mm.materia_id = ma.id;


SELECT * FROM maestros;
SELECT * FROM materias;
SELECT * FROM maestros_materias;

SELECT m.nombre AS n, m.especialidad AS carrera, ma.nombre AS materia, ma.horario AS hora
FROM maestros AS m
LEFT JOIN maestros_materias AS mm ON m.id = mm.maestro_id
LEFT JOIN materias AS ma ON mm.materia_id = ma.id;