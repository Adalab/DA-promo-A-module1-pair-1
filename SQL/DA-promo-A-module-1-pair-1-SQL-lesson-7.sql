/* Pair Programming: Laura y Lara || CONSULTAS EN MÚLTIPLES TABLAS II || 24/03/22 */

/* 1 */
-- nombre empresas, id_pedidos, fechas
SELECT customers.company_name,  orders.order_id, orders.order_date
FROM orders
LEFT JOIN customers
ON customers.customer_id = orders.customer_id
ORDER BY customers.company_name;


/* 2 */
-- pedido, nombre de cliente (UK)

SELECT customers.company_name, COUNT(orders.order_id) AS numero_pedidos
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE customers.country = 'UK'
GROUP BY customers.company_name;

/* 3 */
-- empresas (UK), id_pedidos, contacto, fecha.

SELECT customers.company_name, customers.contact_name, orders.order_id, orders.order_date
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE customers.country = 'UK'
GROUP BY customers.company_name, customers.contact_name, orders.order_id;

/* 4 */
-- empleadas misma ciudad: ciudad, nombre, apellido. 

SELECT e1.city AS ciudad, e1.title AS cargo, e1.first_name AS nombre1, e1.last_name AS apellido1, e2.first_name AS nombre2, e2.last_name AS apellido2
FROM employees AS e1, employees AS e2
WHERE e1.city <> e2.city
GROUP BY ciudad, cargo, nombre1, apellido1, nombre2, apellido2
HAVING nombre1 != nombre2;

/* El director sería Andrew Fuller porque en la columna "reports_to" = Null (es decir, no reporta a nadie).
 En caso de querer extraerlo, añadimos a la consulta, al final (y en select primero), esto:
HAVING reports_to IS NULL; */

/* BONUS */
-- FULL JOIN de pedidos y empresas: id, nombre y fecha.

SELECT orders.order_id, customers.company_name, orders.order_date
FROM orders
LEFT JOIN customers
ON customers.customer_id = orders.customer_id
UNION
SELECT orders.order_id, customers.company_name, orders.order_date
FROM orders
RIGHT JOIN customers
ON customers.customer_id = orders.customer_id;
