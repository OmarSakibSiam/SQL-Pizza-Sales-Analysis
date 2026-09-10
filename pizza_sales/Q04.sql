-- Identify the most common pizza size ordered.

SELECT 
    p.size AS common_size, SUM(quantity) AS quantity
FROM
    pizzas p
        INNER JOIN
    order_details o ON p.pizza_id = o.pizza_id
GROUP BY p.size
ORDER BY SUM(quantity) DESC
LIMIT 1

