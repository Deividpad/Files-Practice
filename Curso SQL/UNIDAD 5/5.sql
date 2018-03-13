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

