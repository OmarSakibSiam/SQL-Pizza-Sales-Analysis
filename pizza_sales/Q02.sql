-- Calculate the total revenue generated from pizza sales.

-- select * from pizzas
-- select * from  order_details

SELECT 
    ROUND(SUM(p.price * o.quantity), 3) AS total_revenue
FROM
    pizzas p
        INNER JOIN
    order_details o ON p.pizza_id = o.pizza_id;