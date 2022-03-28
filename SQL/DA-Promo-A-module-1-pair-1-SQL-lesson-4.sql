/* Pair Programming: Laura y Lara || CONSULTAS AVANZADAS I || 21/03/22 */

USE Northwind;

/* 1 */ 
SELECT MIN(unit_price) AS lowest_price, MAX(unit_price) AS highest_price
FROM products;

/* 2 */
SELECT COUNT(product_id), AVG(unit_price)
FROM products;

/* 3 */ 
SELECT MAX(freight), MIN(freight)
FROM orders
WHERE ship_country = "UK";

/* 4 */
SELECT AVG(unit_price) AS precio_medio
FROM products;

SELECT product_name
FROM products
WHERE unit_price > 28.866363636363637
	ORDER BY unit_price DESC;

/* 5 */
SELECT COUNT(discontinued)
FROM products
WHERE discontinued = 1;
-- En principio no hay ninguno.

/* 6 */
SELECT product_id, product_name
FROM products
WHERE discontinued = 0
ORDER BY product_id DESC
	LIMIT 10;
