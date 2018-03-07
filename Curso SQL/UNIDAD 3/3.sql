--UNIDAD 3
SELECT * FROM [dbo].[pruebaETL]

--select nombre,cantidad from [dbo].[pruebaETL] WHERE cantidad >= 5 and cantidad < 45
--Renombrar una columna de una tabla
EXEC sp_rename 'pruebaETL.valor','cantidad'
--delete from [dbo].[pruebaETL]
--ALTER TABLE [dbo].[pruebaETL] add fecha DATE null
UPDATE pruebaETL set producto = 'dulces' WHERE cantidad = 60
--DELETE pruebaETL WHERE = 
INSERT INTO  [dbo].[pruebaETL] VALUES('jugos','3500',60,'2018-02-02')

--Multiplicar una columna
SELECT producto,precio,cantidad,(precio*cantidad) AS Total
FROM pruebaETL

--Devuelve el dia respecto a la fecha  mm=Devuelve Mes, yy=Devuelve Año
--DATEPART = Devuelve un entero, DATENAME = Devuelve nombre
SELECT producto,precio, DATENAME(dw,fecha) AS [Dia]
FROM pruebaETL

--Remplazar el registro de una columna
SELECT REPLACE(producto,'dulce','Mani') AS New, precio,cantidad
FROM pruebaETL

---ORDER BY DESC = De mayor a menor
SELECT producto,precio,fecha
FROM pruebaETL
ORDER BY precio DESC;

--Eliminar registros duplicados
SELECT DISTINCT producto
FROM pRuebaETL

--BETWEEN
SELECT * FROM pruebaETL
WHERE precio BETWEEN 1000 AND 4200

--IN
SELECT * FROM pruebaETL
WHERE fecha IS NOT NULL

--LIKE   'du%'= Obtiene todos los productos
--				que empiezan por du
--	     '__a%' Obtiene los que tienen en la tercera
			--  la letra a
SELECT producto,cantidad
FROM pruebaETL
WHERE producto LIKE '__a%'

