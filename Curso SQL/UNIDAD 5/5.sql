--UNIDAD 5

SELECT COUNT(1) FROM [dbo].[tempDatosSaldosParcialesMes1_v4]

--CONSULTAS DE RESUMEN
--Función SUMA
--Valor es una comlumna
SELECT Clase, SUM(Valor) as TotalVentas
FROM tiquete
GROUP BY Clase

--COUNT
--Cuenta todos los registros en la Columna (clase) 
SELECT COUNT(Clase) FROM tiquete

--COUNT(*)
--Obtiene el número tiquetes que tengan el pasajero con el id=4
SELECT COUNT(*) FROM tiquete WHERE Pasajero_idPasajero = 4

--Es lo mismo que la anterior pero esta consulta es un poco mas lenta
SELECT COUNT(Pasajero_idPasajero) FROM tiquete WHERE Pasajero_idPasajero IS NOT NULL

--DISTINCT
--Si hay n registros duplicados en esa columna(Clase) solo trae 1
SELECT COUNT(DISTINCT Clase) FROM tiquete

--Tutorial Talend
--https://www.youtube.com/watch?v=_GD6uBlA-O0
--https://www.youtube.com/watch?v=2fyBE_ZzRTY&list=PLNaLkoNIEe9iYZPb3u3020F5R6uu_BfNP
--https://www.youtube.com/watch?v=-SueZvZOps0
--https://www.youtube.com/watch?v=50p7T_Fgaks&t=392s

SELECT * 
FROM [dbo].[valencia]

EXEC sp_rename 'valencia.change', 'full';

SELECT COUNT(cuotas) AS NumeroC, oficina
FROM empleados INNER JOIN oficinas on oficina = empleados.oficina
GROUP BY oficina


--Cuál es en cada uno de los pasajeros, el rango de valor
--asignado a sus tiquetes
SELECT pasajero.idPasajero, MIN(Valor) AS Minima, MAX(valor) AS Maxima
FROM pasajero LEFT JOIN tiquete ON tiquete.Pasajero_idPasajero = pasajero.idPasajero
GROUP BY pasajero.idPasajero

--Listar cuántos tiquetes estan asignados a cada empleado,
--incluso los que no tienen
SELECT pasajero.Nombre, COUNT(idTiquete) AS TiqueteN 
FROM pasajero LEFT JOIN tiquete ON Pasajero_idPasajero = pasajero.idPasajero
GROUP BY pasajero.Nombre


SELECT COUNT(clie) AS Nclientes, rep
FROM pedidos INNER JOIN clientes ON rep = clientes.numclie
GROUP BY rep

--Haga los ejercicios de esta página
--https://www.aulaclic.es/sqlserver/epr_5_7_1.htm