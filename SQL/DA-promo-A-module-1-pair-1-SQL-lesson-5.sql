USE Northwind;

/* 1 */

/*Relación entre número de pedidos y máxima carga:
Desde logística nos piden el número de pedidos y
 la máxima cantidad de carga de entre los mismos
 (freight) que han sido enviados por cada empleado
 (mostrando el ID de empleado en cada caso). */
 
 SELECT EmployeeID, COUNT(DISTINCT OrderID) AS NumPedidos, MAX(Freight) AS CargaMaxima
 FROM Orders
 GROUP BY EmployeeID;
 
 /* 2 
Descartar pedidos sin fecha y ordénalos: IDempleado */
 SELECT COUNT(NULL), ShippedDate
 FROM Orders
 GROUP BY COUNT(NULL);

SELECT COUNT("0000"), ShippedDate
 FROM Orders
 GROUP BY ShippedDate;


 SELECT EmployeeID AS Empleado, COUNT(DISTINCT OrderID) AS NumPedidos, MAX(Freight) AS CargaMaxima, ShippedDate
 FROM Orders
 GROUP BY EmployeeID, ShippedDate
 HAVING ShippedDate IS NOT ("0000:00:00 00:00:00");
 
/* DUDAS */

/* 3 */
/* Números de pedidos por día, separado por DAY MONTH YEAR */

SELECT DAY(OrderDate), MONTH(OrderDate), YEAR(OrderDate), COUNT(OrderID)
FROM Orders
GROUP BY OrderDate;

/* 4 */
/* Número de pedidos por mes y año */
SELECT MONTH(OrderDate), YEAR(OrderDate), COUNT(OrderID)
FROM Orders
GROUP BY MONTH(OrderDate), YEAR(OrderDate);

/* 5 */ 
/* último pedido de cada cliente */

SELECT MAX(OrderID), CustomerID
FROM Orders
GROUP BY CustomerID;

/* 6 */ 
/* Clientes por país y ciudad, de más a menos */

SELECT COUNT(DISTINCT CustomerID), ShipCountry, ShipCity
FROM Orders
GROUP BY ShipCountry, ShipCity
ORDER BY COUNT(DISTINCT CustomerID) DESC;