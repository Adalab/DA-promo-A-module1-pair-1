/* USE recordatorio */ 
/* 1 */
SELECT EmployeeID, LastName, FirstName
FROM employees;

/*2 */
SELECT ProductID
FROM products
WHERE UnitPrice > 0 
	AND UnitPrice <= 5; 
    
/* 3 */
SELECT *
FROM products
WHERE UnitPrice = 18 
	OR UnitPrice = 19
    OR UnitPrice = 20;

/* 4 */
SELECT *
FROM products
WHERE UnitPrice >= 15
	AND UnitPrice <= 50;

/* 5 */
SELECT *
FROM products
WHERE UnitPrice = NULL;

/* 6 */
SELECT *
FROM products
WHERE UnitPrice < 15
	AND ProductID < 10;
    

/* 7 */
SELECT *
FROM products
WHERE NOT UnitPrice < 15
	AND NOT ProductID < 10;

/* 8 */
/* Forma 1 */
SELECT COUNT(OrderID) AS cuenta , ShipCountry
FROM orders
GROUP BY ShipCountry
ORDER BY cuenta DESC;

/* Forma 2*/
SELECT ShipCountry,
FROM orders, ordersdetails
WHERE orders.OrderID (SELECT OrderID
					  FROM ordersdetails
                      WHERE TOP 3 Quantity);


 
    

