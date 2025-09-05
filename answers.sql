-- ============================
-- Assignment: Joins & Relationships
-- ============================

-- Question 1 🧑‍💼
-- Goal: Retrieve employee details along with their office code
-- INNER JOIN ensures only employees with a matching officeCode in offices are returned
SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    o.officeCode
FROM employees e
INNER JOIN offices o 
    ON e.officeCode = o.officeCode;


-- Question 2 
-- Goal: Retrieve product details along with productLine information
-- LEFT JOIN ensures all products are returned even if they don't have a matching productLine
SELECT 
    p.productName, 
    p.productVendor, 
    pl.productLine
FROM products p
LEFT JOIN productlines pl 
    ON p.productLine = pl.productLine;


-- Question 3 📦
-- Goal: Retrieve first 10 orders with their corresponding customer data
-- RIGHT JOIN ensures all orders are included even if customer info is missing
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM customers c
RIGHT JOIN orders o 
    ON c.customerNumber = o.customerNumber
LIMIT 10;
