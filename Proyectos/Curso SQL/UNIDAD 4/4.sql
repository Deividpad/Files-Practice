--UNIDAD 4
--Existen dos tablas valencia y madrid
CREATE TABLE madrid(
ofi INT not null,
ciudad NCHAR(50) not null,
cod INT not null
)

INSERT INTO madrid VALUES (78,'madrid',33)
--TRUNCATE TABLE madrid
SELECT * FROM valencia
SELECT * FROM madrid

--UNION (ALL- Trae datos repetidos)-- Une dos tablas pero que tengas la misma estructura de columnas
SELECT ofi AS Oficina, ciudad FROM valencia
UNION 
SELECT ofi,ciudad FROM madrid
ORDER BY ciudad

--EXCEPT Devuelve las filas que no aparecen en la segunda tabla consulada
SELECT ofi FROM valencia
EXCEPT 
SELECT ofi FROM madrid

--INTERSECT parecedi a UNION ALL
/*SELECT producto 
FROM productos
WHERE precio > 20
INTERSECT 
SELECT xxxx
FROM pedidos
WHERE ccc > 300*/

SELECT * FROM valencia
SELECT * FROM madrid
SELECT *
FROM valencia, madrid
--Toturial consultas multitabla
--https://www.youtube.com/watch?v=so2Rxg_hhI8
--https://www.youtube.com/watch?v=M2Ee0HnSPOU

--INNER JOIN--
-- Listar los c�digos y nombres de los empleados de las oficinas del Este con su oficina y ciudad.
/*SELECT nombre,color,mascota.Propietario nombre
FROM mascota LEFT JOIN propietario
ON mascota.Propietario = propietario.idPropietario*/

-- Listar todos los pedidos mostrando su n�mero, importe, nombre de cliente, y el l�mite de cr�dito del cliente correspondiente.
/*SELECT numero,importe,clientes.nombre AS Cliente,limite
FROM pedidos INNER JOIN clientes
ON clie=numclie*/

--LET JOIN-- Tabla de la izquierda se refiere a Mascota
-- Treara todas las mascotas y si no tiene propietario aparecer�  NULL
SELECT nombre,color,mascota.Propietario nombre
FROM mascota LEFT JOIN propietario
ON mascota.Propietario = propietario.idPropietario


/*SELECT Clase,Numero_Asiento,pasajero.Nombre
FROM tiquete RIGHT JOIN pasajero
ON tiquete.Pasajero_idPasajero = pasajero.idPasajero*/
