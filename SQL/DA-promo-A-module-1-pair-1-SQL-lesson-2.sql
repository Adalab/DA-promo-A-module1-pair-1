/* Pair Programming: Laura y Lara || CONSULTAS BÁSICAS I || 17/03/22 */

USE Northwind;

/* 1 */
SELECT employee_id, last_name, first_name
FROM employees;

/* 2 */
SELECT product_id
FROM products
WHERE unit_price > 0 
	AND unit_price <= 5; 
    
/* 3 */
SELECT *
FROM products
WHERE unit_price = 18 
	OR unit_price = 19
    OR unit_price = 20;

/* 4 */
SELECT *
FROM products
WHERE unit_price >= 15
	AND unit_price <= 50;

/* 5 */
SELECT *
FROM products
WHERE unit_price = NULL;

/* 6 */
SELECT *
FROM products
WHERE unit_price < 15
	AND product_id < 10;
    
/* 7 */
SELECT *
FROM products
WHERE unit_price < 15
	AND NOT product_id < 10;

/* 8 */
-- Forma 1
SELECT COUNT(order_id) AS cuenta , ship_country
FROM orders
GROUP BY ship_country
ORDER BY cuenta DESC;

/* Forma 2
SELECT ship_country,
FROM orders, order_details
WHERE orders.order_id (SELECT order_id
					  FROM order_details
                      WHERE TOP 3 quantity); */


 
    

