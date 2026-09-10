-- Calculate the percentage contribution of each pizza type to total revenue.

SELECT 
    t.name,
    (SUM(o.quantity * p.price) / (SELECT 
            SUM(p.price * o.quantity)
        FROM
            pizzas p
                INNER JOIN
            order_details o ON p.pizza_id = o.pizza_id)) * 100 AS revenue
FROM
    order_details o
        INNER JOIN
    pizzas p ON o.pizza_id = p.pizza_id
        INNER JOIN
    pizza_types t ON t.pizza_type_id = p.pizza_type_id
GROUP BY t.name
ORDER BY revenue DESC

