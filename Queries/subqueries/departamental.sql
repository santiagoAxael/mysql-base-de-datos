-- Obtendremos el nombre de los clientes y el nombre de su departamento
SELECT nombre, 
       (SELECT nombre FROM departamentos WHERE id = clientes.departamento_id) AS departamento 
FROM clientes;

-- Obtendremos los empleados con puesto 'Gerente' o 'Supervisor'
SELECT nombre, puesto 
FROM empleados 
WHERE puesto IN ('Gerente', 'Supervisor');

-- Obtener el nombre de la marca de cada artículo
SELECT nombre, 
       (SELECT nombre FROM marcas WHERE id = articulos.marca_id) AS marca 
FROM articulos;

-- Contar el número total de clientes asociados a cada vendedor
SELECT nombre, 
       (SELECT COUNT(*) FROM vendedores_has_clientes WHERE vendedor_id = vendedores.id) AS total_clientes 
FROM vendedores;
-- Obtener el nombre de los empleados y el nombre de su departamento correspondiente
SELECT nombre, 
       (SELECT nombre FROM departamentos WHERE id = empleados.id) AS departamento 
FROM empleados;