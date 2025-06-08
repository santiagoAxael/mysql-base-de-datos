Base de datos
-- Creación de la base de datos
CREATE DATABASE escuela;
-- Uso de la base de datos
USE escuela;
-- Creación de las tablas
CREATE TABLE estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    edad INT,
    telefono VARCHAR(15),
    carrera VARCHAR(50)
);

CREATE TABLE maestros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    experiencia INT,
    direccion VARCHAR(100),
    especialidad VARCHAR(50),
    nombre VARCHAR(50)
);

CREATE TABLE materias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    grupo VARCHAR(10),
    nombre VARCHAR(50),
    horario VARCHAR(20),
    n_maestro INT
);

CREATE TABLE grupos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    grado INT,
    num_alumnos INT,
    num_aulas INT,
    tutor VARCHAR(50)
);

CREATE TABLE materias_has_estudiantes (
    materias_idmaterias INT,
    estudiantes_iddepartamentos INT,
    PRIMARY KEY (materias_idmaterias, estudiantes_iddepartamentos)
);

CREATE TABLE maestros_has_materias (
    maestros_idmaestros INT,
    materias_iddepartamentos INT,
    PRIMARY KEY (maestros_idmaestros, materias_iddepartamentos)
);

CREATE TABLE maestros_has_grupos (
    maestros_idmaestros INT,
    grupos_iddepartamentos INT,
    PRIMARY KEY (maestros_idmaestros, grupos_iddepartamentos)
);

-- Inserción de datos en la tabla estudiantes
INSERT INTO estudiantes (edad, telefono, carrera) VALUES
(18, '1234567890', 'Ingeniería'), (19, '0987654321', 'Ciencias'),
(20, '1122334455', 'Derecho'), (21, '5544332211', 'Arquitectura'),
(22, '6677889900', 'Medicina'), (18, '7788990011', 'Ingeniería'),
(19, '8899001122', 'Ciencias'), (20, '9900112233', 'Derecho'),
(21, '1234509876', 'Arquitectura'), (22, '5432167890', 'Medicina'),
(18, '6758493021', 'Ingeniería'), (19, '6574893201', 'Ciencias'),
(20, '6849302751', 'Derecho'), (21, '6758493029', 'Arquitectura'),
(22, '6523908471', 'Medicina'), (18, '9876543210', 'Ingeniería'),
(19, '8765432109', 'Ciencias'), (20, '7654321098', 'Derecho'),
(21, '6543210987', 'Arquitectura'), (22, '5432109876', 'Medicina'),
(18, '4321098765', 'Ingeniería'), (19, '3210987654', 'Ciencias'),
(20, '2109876543', 'Derecho'), (21, '1098765432', 'Arquitectura'),
(22, '0987654321', 'Medicina');

-- Inserción de datos en la tabla maestros
INSERT INTO maestros (experiencia, direccion, especialidad, nombre) VALUES
(5, 'Av. Siempre Viva', 'Matemáticas', 'Juan Pérez'),
(10, 'Calle Falsa 123', 'Historia', 'Ana Gómez'),
(3, 'Boulevard Principal', 'Química', 'Carlos Ruiz'),
(7, 'Carretera Secundaria', 'Física', 'Laura Fernández'),
(8, 'Callejón del Sol', 'Biología', 'Marta Sánchez'),
(6, 'Av. Las Rosas', 'Ingeniería', 'Luis Martínez'),
(4, 'Camino Real', 'Literatura', 'Silvia Díaz'),
(11, 'Av. Central', 'Arte', 'Pedro Torres'),
(9, 'Plaza Mayor', 'Economía', 'Sofía López'),
(12, 'Calle Norte', 'Filosofía', 'José Ramírez'),
(5, 'Barrio Nuevo', 'Química', 'María Cruz'),
(10, 'Sector Azul', 'Matemáticas', 'Alejandro Gómez'),
(3, 'Sector Verde', 'Historia', 'Paula Herrera'),
(7, 'Sector Rojo', 'Física', 'Daniel Rodríguez'),
(8, 'Sector Amarillo', 'Biología', 'Lucía García'),
(4, 'Sector Dorado', 'Arte', 'Fernando Mejía'),
(7, 'Sector Maravilla', 'Literatura', 'Gabriel Hidalgo'),
(6, 'Barrio Alto', 'Historia', 'Teresa León'),
(9, 'Plaza del Sol', 'Matemáticas', 'Andrés Torres'),
(10, 'Sector Élite', 'Química', 'Victoria Cruz');

-- Inserción de datos en la tabla materias
INSERT INTO materias (grupo, nombre, horario, n_maestro) VALUES
('A', 'Matemáticas', '08:00-09:00', 1), ('B', 'Historia', '09:00-10:00', 2),
('A', 'Química', '10:00-11:00', 3), ('C', 'Física', '11:00-12:00', 4),
('B', 'Biología', '12:00-13:00', 5), ('D', 'Ingeniería', '13:00-14:00', 6),
('A', 'Literatura', '14:00-15:00', 7), ('E', 'Arte', '15:00-16:00', 8),
('C', 'Economía', '16:00-17:00', 9), ('B', 'Filosofía', '17:00-18:00', 10),
('A', 'Química Avanzada', '08:00-09:00', 11), ('D', 'Matemáticas Aplicadas', '09:00-10:00', 12),
('E', 'Historia Mundial', '10:00-11:00', 13), ('F', 'Física Moderna', '11:00-12:00', 14),
('G', 'Biología Molecular', '12:00-13:00', 15), ('H', 'Ingeniería Civil', '13:00-14:00', 16);

-- Inserción de datos en la tabla grupos
INSERT INTO grupos (grado, num_alumnos, num_aulas, tutor) VALUES
(1, 30, 3, 'Laura Fernández'), (2, 25, 2, 'Carlos Ruiz'),
(3, 28, 4, 'Ana Gómez'), (4, 27, 3, 'Juan Pérez'),
(5, 35, 5, 'Marta Sánchez'), (1, 22, 2, 'Luis Martínez'),
(2, 20, 1, 'Silvia Díaz'), (3, 32, 3, 'Pedro Torres'),
(4, 18, 2, 'José Ramírez'), (5, 29, 4, 'María Cruz'),
(1, 24, 2, 'Alejandro Gómez'), (2, 33, 3, 'Paula Herrera'),
(3, 19, 1, 'Daniel Rodríguez'), (4, 26, 3, 'Lucía García'),
(5, 36, 4, 'Fernando Mejía'), (1, 21, 2, 'Gabriel Hidalgo'),
(2, 23, 2, 'Teresa León'), (3, 34, 4, 'Andrés Torres'),
(4, 31, 3, 'Victoria Cruz'), (5, 20, 1, 'Gabriel López');

