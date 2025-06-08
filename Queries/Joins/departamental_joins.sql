-- INNER JOIN 

SELECT c.nombre AS cliente, d.nombre AS departamento
FROM clientes AS c
INNER JOIN departamentos AS d ON c.departamento_id = d.id;

SELECT v.nombre AS vendedor, c.nombre AS cliente
FROM vendedores_has_clientes AS vc
INNER JOIN vendedores AS v ON vc.vendedor_id = v.id
INNER JOIN clientes AS c ON vc.cliente_id = c.id;

--  RIGHT JOIN
SELECT e.nombre AS empleado, d.nombre AS departamento
FROM empleados AS e
RIGHT JOIN departamentos AS d ON e.id = d.id;

SELECT a.nombre AS articulo, p.nombre AS proveedor
FROM articulos AS a
RIGHT JOIN proveedores AS p ON a.id = p.id;

--  LEFT JOIN
SELECT c.nombre AS cliente, d.nombre AS departamento
FROM clientes AS c
LEFT JOIN departamentos AS d ON c.departamento_id = d.id;

SELECT v.nombre AS vendedor, c.nombre AS cliente
FROM vendedores_has_clientes AS vc
LEFT JOIN vendedores AS v ON vc.vendedor_id = v.id
LEFT JOIN clientes AS c ON vc.cliente_id = c.id;