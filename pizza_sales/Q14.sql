-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

select name,revenue,rn
from
(select category,name,revenue,
rank() over(partition by category order by revenue desc) as rn
from(
select t.category,t.name ,SUM(o.quantity * p.price) AS revenue
from order_details o
        INNER JOIN
    pizzas p ON o.pizza_id = p.pizza_id
        INNER JOIN
    pizza_types t ON t.pizza_type_id = p.pizza_type_id
GROUP by t.category,t.name) as a) as b
where rn<=3;
