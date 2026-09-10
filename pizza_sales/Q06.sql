-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    t.category, SUM(quantity) AS quantity
FROM
    order_details o
        INNER JOIN
    pizzas p ON o.pizza_id = p.pizza_id
        INNER JOIN
    pizza_types t ON p.pizza_type_id = t.pizza_type_id
GROUP BY t.category
ORDER BY SUM(quantity) DESC
