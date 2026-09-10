-- Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    t.name, SUM(o.quantity * p.price) AS revenue
FROM
    order_details o
        INNER JOIN
    pizzas p ON o.pizza_id = p.pizza_id
        INNER JOIN
    pizza_types t ON t.pizza_type_id = p.pizza_type_id
GROUP BY t.name
ORDER BY revenue DESC
LIMIT 3