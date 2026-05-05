select
customer_segment,
count(order_id) as total_orders,
round(avg(quantity * unit_price), 2) as
avg_order_value,
sum(quantity * unit_price) as total_revenue
from ng_sales
group by customer_segment
order by avg_order_value desc;