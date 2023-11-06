// TASK-1
SELECT c.customer_id as ID, c.name as NAME, c.email as EMAIL, c.location as LOCATION, COUNT(o.order_id) AS TOTAL_ORDERS FROM Customers as c LEFT JOIN Orders as o ON c.customer_id = o.customer_id GROUP BY c.customer_id ORDER BY TOTAL_ORDERS DESC;

// TASK-2
SELECT o.order_id as ID, p.name as PRODUCT_NAME, o.quantity AS QUANTITY, o.unit_price*o.quantity AS TOTAL_AMOUNT FROM order_items AS o JOIN products AS p ON o.product_id = p.product_id ORDER BY o.order_id ASC;

// TASK-3
SELECT c.name as CATEGORY, sum(o.quantity*o.unit_price) as TOTAL FROM Categories AS c JOIN Products AS p ON c.category_id = p.category_id JOIN order_items as o ON p.product_id = o.product_id GROUP BY c.name ORDER BY TOTAL DESC

// TASK-4
SELECT c.customer_id as ID, c.name as CUSTOMER_NAME, sum(o.total_amount) as TPA from customers as c JOIN orders as o on c.customer_id = o.customer_id GROUP BY c.customer_id ORDER BY TPA DESC LIMIT 5;