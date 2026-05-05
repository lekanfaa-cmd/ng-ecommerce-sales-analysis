Select distinct on (state)
product_category, state, sum(quantity * unit_price) as revenue
from ng_sales
group by product_category, state
order by state, revenue desc