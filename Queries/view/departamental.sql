-- Vista que muestra los clientes con su departamento asignado
CREATE VIEW Vista_Clientes_Departamentos AS
SELECT nombre, telefono, direccion,
       (SELECT nombre FROM departamentos WHERE id = clientes.departamento_id) AS departamento
FROM clientes;

-- Vista que muestra los artículos con su marca correspondiente
CREATE VIEW Vista_Articulos_Marcas AS
SELECT nombre, precio,
       (SELECT nombre FROM marcas WHERE id = articulos.marca_id) AS marca
FROM articulos;

-- Vista que muestra los empleados con su puesto
CREATE VIEW Vista_Empleados_Puestos AS
SELECT nombre, telefono, 
       (SELECT puesto FROM empleados WHERE id = empleados.id) AS puesto
FROM empleados;

-- Vista que muestra los vendedores con el número de clientes que tienen
CREATE VIEW Vista_Vendedores_Clientes AS
SELECT nombre, especialidad,
       (SELECT COUNT(*) FROM vendedores_has_clientes WHERE vendedor_id = vendedores.id) AS total_clientes
FROM vendedores;

-- Vista que muestra los proveedores con su información de contacto
CREATE VIEW Vista_Proveedores_Contacto AS
SELECT nombre, telefono, direccion
FROM proveedores;