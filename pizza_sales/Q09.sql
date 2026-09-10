-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    ROUND(AVG(quantity), 0)
FROM
    (SELECT 
        o.order_date, SUM(quantity) AS quantity
    FROM
        orders o
    INNER JOIN order_details d ON o.order_id = d.order_id
    GROUP BY o.order_date) AS order_quantity


-- Using View

-- CREATE VIEW daily_pizza_orders AS
-- SELECT o.order_date, SUM(d.quantity) AS quantity
-- FROM orders o
-- INNER JOIN order_details d 
--     ON o.order_id = d.order_id
-- GROUP BY o.order_date;

-- SELECT ROUND(AVG(quantity), 0)
-- FROM daily_pizza_orders;