-- List the top 5 most ordered pizza types along with their quantities.

SELECT 
    t.name, SUM(quantity) AS quantity
FROM
    order_details o
        INNER JOIN
    pizzas p ON o.pizza_id = p.pizza_id
        INNER JOIN
    pizza_types t ON p.pizza_type_id = t.pizza_type_id
GROUP BY t.name
ORDER BY SUM(quantity) DESC
LIMIT 5