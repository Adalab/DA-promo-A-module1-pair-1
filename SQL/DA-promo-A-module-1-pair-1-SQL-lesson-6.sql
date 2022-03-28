/* Pair Programming: Laura y Lara || CONSULTAS EN MÚLTIPLES TABLAS I || 24/03/22 */

USE Northwind;

/* 1 */
-- Nº pedidos por empresa en UK: id_cliente y nombre empresa.
 
 SELECT COUNT(orders.order_id) AS numero_pedidos, customers.company_name, customers.customer_id
 FROM orders 
 INNER JOIN customers
 ON orders.customer_id = customers.customer_id
 WHERE customers.country = 'UK'
 GROUP BY customers.company_name, customers.customer_id;

/* 2 */

SELECT customers.country, customers.company_name, YEAR(orders.order_date) AS año, COUNT(orders.order_id) AS cantidad_pedidos
FROM orders 
INNER JOIN customers
ON orders.customer_id = customers.customer_id
WHERE customers.country = 'UK'
GROUP BY YEAR(orders.order_date) DESC, customers.company_name DESC;

/* 3 */
-- = + dinero con %

SELECT customers.country, customers.company_name, YEAR(orders.order_date) AS año, COUNT(orders.order_id) AS cantidad_pedidos, SUM(order_details.unit_price - order_details.unit_price * order_details.discount) AS precio
FROM orders 
INNER JOIN customers
ON orders.customer_id = customers.customer_id
INNER JOIN order_details
ON orders.order_id = order_details.order_id
WHERE customers.country = 'UK'
GROUP BY customers.company_name DESC,YEAR(orders.order_date) DESC;

/* 4 */
/* Nombre de cada compañia cliente junto con cada pedido que han realizado y su fecha */

SELECT customers.company_name, orders.order_id, orders.order_date
FROM customers, orders
WHERE customers.customer_id = orders.customer_id;

/* 5 */
-- cada tipo de producto que se han vendido, sus categorías , nombre , y el total de dinero
-- por el que se ha vendido cada tipo de producto (teniendo en cuenta los descuentos)
 
SELECT categories.category_name, products.product_name, SUM(order_details.unit_price - order_details.unit_price * order_details.discount) AS total_vendido_producto
FROM products
INNER JOIN categories
ON categories.category_id = products.category_id
INNER JOIN order_details
ON products.product_id = order_details.product_id
GROUP BY categories.category_name, products.product_name;
-- Asumimos que al calcular total_vendido_producto solo hemos considerado los productos sí vendidos, al sacarlos de la tabla orders_details
/*Ahora nos piden una lista con cada tipo de producto que se han vendido, 
sus categorías, nombre, y el total de dinero por el que se ha vendido cada
 tipo de producto (teniendo en cuenta los descuentos). ¿Cuántos join necesitas? */
