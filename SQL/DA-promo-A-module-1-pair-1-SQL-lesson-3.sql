/* Pair Programming: Laura y Lara || CONSULTAS AVANZADAS I || 21/03/22 */

USE Northwind;

/* Ej 1 */
SELECT product_id, product_name, unit_price
FROM products
LIMIT 10;

/* Ej 2*/
SELECT product_id, product_name, unit_price
FROM products
ORDER BY product_id DESC
LIMIT 10;

/* Ej 3 */
SELECT DISTINCT order_id
FROM order_details;

/* Ej 4 */
SELECT DISTINCT order_id 
FROM order_details
LIMIT 2;


/* Ej 5 */
SELECT order_id, (quantity * unit_price) AS importe_total
FROM order_details
ORDER BY importe_total DESC
LIMIT 3;
-- A tener en cuenta: en el mismo order_id hay diferentes productos (Q * P) y el total de un order_id puede ser mayor que otro 
-- Por eso hacemos opción 2, aunque sigue sin mostrar el total:

/* Ej 5 Opción 2*/
SELECT DISTINCT order_id, (quantity * unit_price) AS importe_total
FROM order_details
ORDER BY importe_total DESC
LIMIT 3;

/* Ej 6*/
SELECT order_id, (quantity * unit_price) AS importe_total
FROM order_details
ORDER BY importe_total DESC
LIMIT 5
OFFSET 5;
-- A partir de la 6º posición coge 5 (del 5 al 10). 

/* 7*/
SELECT DISTINCT category_name AS nombre_de_categoria
FROM categories;

/* 8 */
SELECT shipped_date, date_add(shipped_date, INTERVAL 5 DAY) AS fecha_retrasada
FROM orders;

/* 9 */
SELECT *
FROM order_details
WHERE unit_price BETWEEN 15 AND 50;

/* 10 */
SELECT *
FROM order_details
WHERE unit_price IN (18, 19, 20);