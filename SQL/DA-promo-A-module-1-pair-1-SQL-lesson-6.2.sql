/* Pair Programming - 6 - Consultas en múltiples tablas 1 - 23 mar */

USE Northwind;

/* 1 */
/*Pedidos por empresa en UK.
cuántos pedidos ha realizado cada empresa cliente de UK.
Nos piden el ID del pedido y el nombre de la empresa. */
 
 SELECT COUNT(Orders.OrderID), Orders.OrderID, Customers.CompanyName, Customers.Country
 FROM Orders 
 INNER JOIN Customers
 ON Orders.CustomerID = Customers.CustomerID
 WHERE Customers.Country = 'UK'
 GROUP BY Customers.CompanyName DESC, Orders.OrderID;

/* Al tener el OrderID se quita la suma total de pedidos por empresa (?) */

/* 2 * /
/* Cuántos objetos ha pedido cada empresa cliente de UK durante cada año. Nos
 piden concretamente conocer el nombre de la empresa, el año, y la cantidad de objetos */
 /* ¿Cantidad de objetos es igual a COUNT(OrdersID)? */
 
SELECT Customers.Country, Customers.CompanyName, YEAR(Orders.OrderDate), COUNT(Orders.OrderID) AS CantidadDePEDIDOS
FROM Orders 
INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
WHERE Customers.Country = 'UK'
GROUP BY Customers.CompanyName DESC, YEAR(Orders.OrderDate) DESC;

/* 3 */
/* misma consulta anterior pero con la adición de la cantidad de
 dinero que han pedido por esa cantidad de objetos, teniendo en cuenta los descuentos,*/

//* NOTA del GItBook: Se pueden hacer consultas usando el producto cartesiano de más de 2 tablas. 
Sería que caso en el que además de tener la tabla Empleadas y EmpleadasEnProyectos, 
se tiene una tabla Proyectos con la información detallada de cada proyecto: IDProyecto, nombre, descripción, presupuesto, etc.*/