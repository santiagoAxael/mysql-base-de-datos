-- Vista que muestra los estudiantes con su carrera
CREATE VIEW Vista_Estudiantes_Carreras AS
SELECT id, nombre, edad, telefono, carrera 
FROM estudiantes;

-- Vista que muestra los maestros con su especialidad y años de experiencia
CREATE VIEW Vista_Maestros_Especialidades AS
SELECT nombre, especialidad, experiencia, direccion 
FROM maestros;

-- Vista que muestra las materias y el grupo al que pertenecen junto con el maestro asignado
CREATE VIEW Vista_Materias_Grupos_Maestros AS
SELECT materias.nombre AS materia, materias.grupo, materias.horario, maestros.nombre AS maestro 
FROM materias
JOIN maestros ON materias.n_maestro = maestros.id;

-- Vista que muestra los grupos con el número de alumnos y su tutor asignado
CREATE VIEW Vista_Grupos_Tutores AS
SELECT grado, num_alumnos, num_aulas, tutor 
FROM grupos;

-- Vista que muestra el número total de estudiantes en cada materia
CREATE VIEW Vista_Total_Estudiantes_Materias AS
SELECT materias.nombre AS materia, COUNT(materias_has_estudiantes.estudiantes_iddepartamentos) AS total_estudiantes 
FROM materias_has_estudiantes
JOIN materias ON materias_has_estudiantes.materias_idmaterias = materias.id
GROUP BY materias.nombre;