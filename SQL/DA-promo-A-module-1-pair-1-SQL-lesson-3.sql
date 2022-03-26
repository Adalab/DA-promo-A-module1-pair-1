/* Pair programming 3 - Pair1: Lara, Laura */

USE northwind;

/* Ej 1 */
SELECT ProductID, ProductName, UnitPrice
FROM products
LIMIT 10;

/* Ej 2*/
SELECT ProductID, ProductName, UnitPrice
FROM products
ORDER BY ProductID DESC
LIMIT 10;

/* Ej 3 */
/*Que pedidos tenemos en nuestra BBDD:
Últimamente ha habido algo de descontrol en la empresa a la hora de controlar los pedidos. 
Nos interesa conocer qué pedidos distintos hemos tenido (eliminando entradas duplicadas según su 
ID en la tabla OrderDetails).*/
SELECT DISTINCT OrderID
FROM orderdetails;



/* Ej 4 */
SELECT DISTINCT OrderID
FROM orderdetails
LIMIT 2;


/* Ej 5 DUDAAAAAA*/
SELECT OrderID, (Quantity * UnitPrice) AS ImporteTotal
FROM orderdetails
ORDER BY ImporteTotal DESC
LIMIT 3;

/* Ej 5 Opción 2*/
SELECT DISTINCT OrderID, (Quantity * UnitPrice) AS ImporteTotal
FROM orderdetails
ORDER BY ImporteTotal DESC;
LIMIT 3;

/* Ej 6*/
SELECT OrderID, (Quantity * UnitPrice) AS ImporteTotal
FROM orderdetails
ORDER BY ImporteTotal DESC
LIMIT 10
OFFSET 5;

/* 7*/
SELECT DISTINCT CategoryName AS NombreDeCategoria
FROM categories;

/* 8 */
SELECT ShippedDate, date_add(ShippedDate, INTERVAL 5 DAY) AS FechaRetrasada
FROM orders;
#OFFSET

/* 9 */
SELECT ProductID
FROM orderdetails
WHERE UnitPrice BETWEEN 15 AND 50;

