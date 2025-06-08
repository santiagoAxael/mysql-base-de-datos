-- Obtener el nombre de los estudiantes junto con la carrera que estudian
SELECT nombre, 
       (SELECT carrera FROM estudiantes WHERE id = materias_has_estudiantes.estudiantes_iddepartamentos) AS carrera 
FROM materias_has_estudiantes;

-- Obtener el nombre de los maestros y su especialidad
SELECT nombre, 
       (SELECT especialidad FROM maestros WHERE id = maestros_has_materias.maestros_idmaestros) AS especialidad 
FROM maestros_has_materias;

-- Contar cuántos estudiantes están inscritos en cada materia
SELECT nombre, 
       (SELECT COUNT(*) FROM materias_has_estudiantes WHERE materias_idmaterias = materias.id) AS total_estudiantes 
FROM materias;

-- Obtener el nombre del tutor de cada grupo
SELECT grado, 
       (SELECT tutor FROM grupos WHERE id = maestros_has_grupos.grupos_iddepartamentos) AS tutor 
FROM maestros_has_grupos;

-- Obtener el número total de materias impartidas por cada maestro
SELECT nombre, 
       (SELECT COUNT(*) FROM maestros_has_materias WHERE maestros_idmaestros = maestros.id) AS total_materias 
FROM maestros;