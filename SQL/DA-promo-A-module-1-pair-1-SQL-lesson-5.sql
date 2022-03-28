/* Pair Programming: Laura y Lara || CONSULTAS AVANZADAS II || 23/03/22 */

USE Northwind;

/* 1 */
-- Número de pedidos y la máxima cantidad de carga 
-- enviados por cada empleado (mostrando ID). 
 SELECT employee_id, COUNT(DISTINCT order_id) AS num_pedidos, MAX(freight) AS carga_maxima
 FROM orders
 GROUP BY employee_id;
 
 /* 2 */ 
-- Descartar pedidos sin fecha y ordénalos: IDempleado
 SELECT employee_id AS empleado, COUNT(DISTINCT order_id) AS num_pedidos, MAX(Freight) AS carga_maxima, shipped_date
 FROM orders
 GROUP BY employee_id, shipped_date
 HAVING shipped_date IS NOT NULL;
 -- HAVING YEAR(shipped_date) IS NOT "0000";
 -- OFFSET 1;
 
/* 3 */
-- Números de pedidos por día, separado por DAY MONTH YEAR. 
SELECT DAY(order_date), MONTH(order_date), YEAR(order_date), COUNT(order_id)
FROM orders
GROUP BY order_date;

/* 4 */
-- Número de pedidos por mes y año.
SELECT MONTH(order_date), YEAR(order_date), COUNT(order_id)
FROM orders
GROUP BY MONTH(order_date), YEAR(order_date);


/* 5 */ 
--  ciudades con 4 o más empleadas:
SELECT city, COUNT(employee_id) AS cuenta
FROM employees
GROUP BY city
HAVING cuenta >= 4;

/* 6 */
-- Pedidos alto y bajo / 2000
SELECT order_id, 
CASE 
		WHEN (unit_price - unit_price * discount) * quantity > 2000 THEN "Alto"
		ELSE "Bajo"
		END AS rango_pedidos
FROM order_details;



-- -----------------------------------------------------------
/* EJERCICIOS BORRADOS 
-- Último pedido de cada cliente
SELECT MAX(order_id), customer_id
FROM orders
GROUP BY customer_id;


/* Clientes por país y ciudad, de más a menos 
SELECT COUNT(DISTINCT customer_id), ship_country, ship_city
FROM orders
GROUP BY ship_country, ship_city
ORDER BY COUNT(DISTINCT customer_id) DESC; */
