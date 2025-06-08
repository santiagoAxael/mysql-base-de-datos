consultas
-- DISTINCT
-- Consulta 1: Obtener las carreras únicas de los estudiantes
SELECT DISTINCT carrera
FROM estudiantes;

-- Consulta 2: Obtener los nombres de materias únicas impartidas
SELECT DISTINCT nombre
FROM materias;

-- Consulta 3: Obtener las especialidades únicas de los maestros
SELECT DISTINCT especialidad
FROM maestros;

-- LIMIT
-- Consulta 1: Obtener las primeras 3 carreras de la tabla estudiantes
SELECT carrera
FROM estudiantes
LIMIT 3;

-- Consulta 2: Obtener las primeras 3 materias de la tabla materias
SELECT nombre
FROM materias
LIMIT 3;

-- Consulta 3: Obtener las primeras 3 especialidades de la tabla maestros
SELECT especialidad
FROM maestros
LIMIT 3;

-- ORDER BY
-- Consulta 1: Ordenar los estudiantes por edad de forma ascendente
SELECT *
FROM estudiantes
ORDER BY edad ASC;

-- Consulta 2: Ordenar las materias por nombre de forma descendente
SELECT *
FROM materias
ORDER BY nombre DESC;

-- Consulta 3: Ordenar los maestros por experiencia de forma ascendente
SELECT *
FROM maestros
ORDER BY experiencia ASC;
-- COMPARACION
-- Ejemplo 1: Comparar edades de estudiantes
SELECT *
FROM estudiantes
WHERE edad > 20;

-- Ejemplo 2: Comparar experiencia de maestros
SELECT *
FROM maestros
WHERE experiencia = 5;

-- Ejemplo 3: Comparar número de alumnos en grupos
SELECT *
FROM grupos
WHERE num_alumnos <= 30;
-- LIKE
-- Ejemplo 1: Buscar carreras que contienen "Ingeniería"
SELECT *
FROM estudiantes
WHERE carrera LIKE '%Ingeniería%';

-- Ejemplo 2: Buscar nombres de materias que empiezan con "Matem"
SELECT *
FROM materias
WHERE nombre LIKE 'Matem%';

-- Ejemplo 3: Buscar direcciones de maestros que terminan en "123"
SELECT *
FROM maestros
WHERE direccion LIKE '%123';

-- BETWEEN
-- Ejemplo 1: Buscar estudiantes con edades entre 18 y 22
SELECT *
FROM estudiantes
WHERE edad BETWEEN 18 AND 22;

-- Ejemplo 2: Grupos con número de alumnos entre 20 y 30
SELECT *
FROM grupos
WHERE num_alumnos BETWEEN 20 AND 30;

-- Ejemplo 3: Materias con horarios entre '08:00' y '12:00'
SELECT *
FROM materias
WHERE horario BETWEEN '08:00' AND '12:00';

-- AND

-- Ejemplo 1: Estudiantes mayores de 18 que estudian Ingeniería
SELECT *
FROM estudiantes
WHERE edad > 18 AND carrera = 'Ingeniería';

-- Ejemplo 2: Maestros con experiencia mayor a 5 y especialidad en Química
SELECT *
FROM maestros
WHERE experiencia > 5 AND especialidad = 'Química';

-- Ejemplo 3: Grupos con más de 25 alumnos y más de 2 aulas
SELECT *
FROM grupos
WHERE num_alumnos > 25 AND num_aulas > 2;

-- OR

-- Ejemplo 1: Estudiantes que estudian Ingeniería o Ciencias
SELECT *
FROM estudiantes
WHERE carrera = 'Ingeniería' OR carrera = 'Ciencias';

-- Ejemplo 2: Maestros con experiencia menor a 5 o mayor a 10 años
SELECT *
FROM maestros
WHERE experiencia < 5 OR experiencia > 10;

-- Ejemplo 3: Materias del grupo 'A' o 'B'
SELECT *
FROM materias
WHERE grupo = 'A' OR grupo = 'B';

-- NOT
-- Ejemplo 1: Estudiantes que no estudian Ingeniería
SELECT *
FROM estudiantes
WHERE carrera NOT LIKE '%Ingeniería%';

-- Ejemplo 2: Maestros que no viven en "Av. Siempre Viva"
SELECT *
FROM maestros
WHERE direccion NOT LIKE '%Siempre Viva%';

-- Ejemplo 3: Grupos que no tienen más de 30 alumnos
-- Grupos que no tienen más de 30 alumnos
SELECT *
FROM grupos
WHERE num_alumnos <= 30;

-- IN

-- Ejemplo 1: Estudiantes en ciertas carreras
SELECT *
FROM estudiantes
WHERE carrera IN ('Ingeniería', 'Ciencias', 'Medicina');

-- Ejemplo 2: Maestros con especialidades específicas
SELECT *
FROM maestros
WHERE especialidad IN ('Matemáticas', 'Historia', 'Química');

-- Ejemplo 3: Grupos con grados específicos
SELECT *
FROM grupos
WHERE grado IN (1, 3, 5);

-- OPERADORES MATEMATICOS

-- Ejemplo 1: Calcular edad promedio de estudiantes
SELECT AVG(edad) AS edad_promedio
FROM estudiantes;

-- Ejemplo 2: Sumar el número de alumnos en grupos
SELECT SUM(num_alumnos) AS total_alumnos
FROM grupos;

-- Ejemplo 3: Restar un valor al número de aulas
SELECT num_aulas - 1 AS aulas_restantes
FROM grupos;

-- MIN

-- 1: Edad mínima de los estudiantes
SELECT MIN(edad) AS edad_minima
FROM estudiantes;

-- 2: Experiencia mínima de los maestros
SELECT MIN(experiencia) AS experiencia_minima
FROM maestros;

-- 3: Número mínimo de alumnos en los grupos
SELECT MIN(num_alumnos) AS alumnos_minimos
FROM grupos;

-- MAX
-- 1: Edad máxima de los estudiantes
SELECT MAX(edad) AS edad_maxima
FROM estudiantes;

-- 2: Experiencia máxima de los maestros
SELECT MAX(experiencia) AS experiencia_maxima
FROM maestros;

-- 3: Número máximo de alumnos en los grupos
SELECT MAX(num_alumnos) AS alumnos_maximos
FROM grupos;

-- COUNT

-- 1: Contar el total de estudiantes
SELECT COUNT(*) AS total_estudiantes
FROM estudiantes;

-- 2: Contar el total de materias
SELECT COUNT(*) AS total_materias
FROM materias;

-- 3: Contar el total de grupos
SELECT COUNT(*) AS total_grupos
FROM grupos;

-- SUM

-- 1: Sumar todas las edades de los estudiantes
SELECT SUM(edad) AS suma_edades
FROM estudiantes;

-- 2: Sumar la experiencia de todos los maestros
SELECT SUM(experiencia) AS suma_experiencia
FROM maestros;

-- 3: Sumar el número total de alumnos en los grupos
SELECT SUM(num_alumnos) AS suma_total_alumnos
FROM grupos;

-- AVG

-- 1: Promedio de edad de los estudiantes
SELECT AVG(edad) AS promedio_edades
FROM estudiantes;

-- 2: Promedio de experiencia de los maestros
SELECT AVG(experiencia) AS promedio_experiencia
FROM maestros;

-- 3: Promedio del número de alumnos en los grupos
SELECT AVG(num_alumnos) AS promedio_alumnos
FROM grupos;

-- CONCAT

-- 1: Concatenar el nombre y dirección de los maestros
SELECT CONCAT(nombre, ' - ', direccion) AS maestro_info
FROM maestros;

-- 2: Concatenar el nombre y especialidad de los maestros
SELECT CONCAT(nombre, ' (Especialidad: ', especialidad, ')') AS maestro_info
FROM maestros;

-- 3: Concatenar la dirección y experiencia de los maestros
SELECT CONCAT(direccion, ' - Experiencia: ', experiencia, ' años') AS direccion_experiencia
FROM maestros;

-- UPPER

-- 1: Convertir los nombres de carreras a mayúsculas
SELECT UPPER(carrera) AS carrera_mayusculas
FROM estudiantes;

-- 2: Convertir los nombres de materias a mayúsculas
SELECT UPPER(nombre) AS materia_mayusculas
FROM materias;

-- 3: Convertir los nombres de los maestros a mayúsculas
SELECT UPPER(nombre) AS nombre_mayusculas
FROM maestros;

-- LOWER

-- 1: Convertir los nombres de materias a minúsculas
SELECT LOWER(nombre) AS materia_minusculas
FROM materias;

-- 2: Convertir las direcciones de los maestros a minúsculas
SELECT LOWER(direccion) AS direccion_minusculas
FROM maestros;

-- 3: Convertir los nombres de carreras a minúsculas
SELECT LOWER(carrera) AS carrera_minusculas
FROM estudiantes;

-- OFSET

-- 1: Obtener 10 registros después de saltar los 5 primeros en la tabla estudiantes
SELECT *
FROM estudiantes
LIMIT 10 OFFSET 5;

-- 2: Obtener 5 registros después de saltar los 3 primeros en la tabla maestros
SELECT *
FROM maestros
LIMIT 5 OFFSET 3;

-- 3: Obtener 7 registros después de saltar los 8 primeros en la tabla materias
SELECT *
FROM materias
LIMIT 7 OFFSET 8;

-- GROUP BY

-- Agrupar estudiantes por carrera
SELECT carrera, COUNT(*) AS total
FROM estudiantes
GROUP BY carrera;

-- Agrupar maestros por especialidad
SELECT especialidad, COUNT(*) AS total
FROM maestros
GROUP BY especialidad;

-- Agrupar materias por grupo
SELECT grupo, COUNT(*) AS total
FROM materias
GROUP BY grupo;

-- HAVING

-- Agrupar y filtrar estudiantes por carrera con más de 5 registros
SELECT carrera, COUNT(*) AS total
FROM estudiantes
GROUP BY carrera
HAVING total > 5;

-- Agrupar y filtrar maestros por especialidad con experiencia promedio mayor a 5
SELECT especialidad, AVG(experiencia) AS promedio_experiencia
FROM maestros
GROUP BY especialidad
HAVING promedio_experiencia > 5;

-- Agrupar y filtrar grupos por grados con más de 2 aulas en promedio
SELECT grado, AVG(num_aulas) AS aulas_promedio
FROM grupos
GROUP BY grado
HAVING aulas_promedio > 2;


-- CASE

-- 1: Etiquetar a los estudiantes según su edad
SELECT id, 
       edad,
       CASE 
           WHEN edad < 20 THEN 'Menor de 20'
           WHEN edad BETWEEN 20 AND 22 THEN 'Entre 20 y 22'
           ELSE 'Mayor de 22'
       END AS rango_edad
FROM estudiantes;

-- 2: Etiquetar a los maestros según su experiencia
SELECT id, 
       experiencia,
       CASE 
           WHEN experiencia < 5 THEN 'Poca experiencia'
           WHEN experiencia BETWEEN 5 AND 10 THEN 'Experiencia media'
           ELSE 'Mucha experiencia'
       END AS nivel_experiencia
FROM maestros;

-- 3: Etiquetar a los grupos según el número de alumnos
SELECT id, 
       num_alumnos,
       CASE 
           WHEN num_alumnos < 20 THEN 'Grupo pequeño'
           WHEN num_alumnos BETWEEN 20 AND 30 THEN 'Grupo mediano'
           ELSE 'Grupo grande'
       END AS tamaño_grupo
FROM grupos;


-- IFNULL 


-- 1: Reemplazar valores nulos en la dirección de los maestros
SELECT id, 
       IFNULL(direccion, 'Sin Dirección') AS direccion_corregida
FROM maestros;

-- 2: Reemplazar valores nulos en la carrera de los estudiantes
SELECT id, 
       IFNULL(carrera, 'Sin Carrera') AS carrera_corregida
FROM estudiantes;

-- 3: Reemplazar valores nulos en el grupo de las materias
SELECT id, 
       IFNULL(grupo, 'Sin Grupo') AS grupo_corregido
FROM materias;

