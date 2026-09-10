-- Analyze the cumulative revenue generated over time.

select order_date, SUM(revenue) OVER (ORDER BY order_date) as cum_revenue
from
(select o.order_date, sum(d.quantity*p.price) as revenue
from orders o inner join order_details d on o.order_id=d.order_id
 inner join pizzas p on d.pizza_id=p.pizza_id
group by o.order_date) as per_date_revenue
