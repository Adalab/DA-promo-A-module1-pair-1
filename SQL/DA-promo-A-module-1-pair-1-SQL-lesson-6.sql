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

<<<<<<< HEAD
/* 4 */
/*  nombre de cada compañia cliente junto con cada pedido que han realizado y su fecha. */

SELECT Customers.CompanyName, Orders.OrderID, Orders.OrderDate
FROM Customers, Orders
WHERE Customers.CustomerID = Orders.CustomerID;

/* 5 */
/* cada tipo de producto que se han vendido, sus categorías , nombre , y el total de dinero
 por el que se ha vendido cada tipo de producto (teniendo en cuenta los descuentos)*/
 
 SELECT Products.CategoryID, Products.ProductName, OrderDetails.UnitPrice - OrderDetails.UnitPrice * OrderDetails.Discount AS PrecioReducido
 FROM Products, OrderDetails
 WHERE Products.ProductID = OrderDetails.ProductID
 GROUP BY Products.CategoryID, Products.ProductName, PrecioReducido;
 
 /* ¿Cómo sumamos los totales de PrecioReducido para cada producto? */
=======
//* NOTA del GItBook: Se pueden hacer consultas usando el producto cartesiano de más de 2 tablas. 
Sería que caso en el que además de tener la tabla Empleadas y EmpleadasEnProyectos, 
se tiene una tabla Proyectos con la información detallada de cada proyecto: IDProyecto, nombre, descripción, presupuesto, etc.*/
>>>>>>> refs/remotes/origin/main
