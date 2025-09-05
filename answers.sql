
/* Question 1 🧑‍💼
Write an SQL query to get the firstName, lastName, email, and officeCode of all employees.
Use an INNER JOIN to combine the employees table with the offices table using the officeCode column.
*/

SELECT E.firstName, E.lastName, E.email, E.officeCode
FROM employees E
INNER JOIN offices V ON V.officeCode = E.officeCode;


/* Question 2 🛍️
Write an SQL query to get the productName, productVendor, and productLine from the products table.
Use a LEFT JOIN to combine the products table with the productlines table using the productLine column.
*/

SELECT p.productName, p.productVendor, L.productLine  
FROM products p
LEFT JOIN productlines L ON p.productLine = L.productLine;

/*Question 3 📦
Write an SQL query to retrieve the orderDate, shippedDate, status, and customerNumber for the first 10 orders.
Use a RIGHT JOIN to combine the customers table with the orders table using the customerNumber column.
*/

SELECT o.orderDate, o.shippedDate, o.status, c.customerNumber
FROM orders o
RIGHT JOIN customers c ON o.customerNumber = c.customerNumber
ORDER BY c.customerNumber
LIMIT 10; 