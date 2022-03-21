/* Pair programming 4 - Consultas Avanzadas I - 21 marzo */
USE Northwind;

/* 1 */ 

SELECT MIN(UnitPrice) AS LowestPrice, MAX(UnitPrice)AS HighestPrice
FROM Products;


/* 2 [!] Duda de enunciado */

SELECT  COUNT(ProductID), AVG(UnitPrice)
FROM Products;


/* 3 */ 

SELECT MAX(Freight), MIN(Freight)
FROM Orders
WHERE ShipCountry = "UK";

/* 4 DUDAAAA */
SELECT AVG(UnitPrice) AS PrecioMedio
FROM Products;

SELECT ProductName
FROM Products
WHERE UnitPrice > 28.866363636363637
	ORDER BY UnitPrice DESC;


/* 5 Duda sobre productos con 1, que no hay */

SELECT COUNT(Discontinued)
FROM Products
WHERE Discontinued = 1;

/* 6 */

SELECT ProductID,ProductName
FROM Products
WHERE Discontinued = 0
ORDER BY ProductID DESC
	LIMIT 10;
