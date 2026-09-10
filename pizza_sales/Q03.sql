-- Identify the highest-priced pizza.

-- select * from pizzas;
-- select * from pizza_type;

SELECT 
    t.name, p.price
FROM
    pizza_types t
        INNER JOIN
    pizzas p ON t.pizza_type_id = p.pizza_type_id
ORDER BY price DESC
LIMIT 1
