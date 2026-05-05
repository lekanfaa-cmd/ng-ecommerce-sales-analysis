with ranked as(
Select state, 
product_category,
round(sum(quantity * unit_price), 2) as revenue,
Rank() Over(
		partition by state
		order by sum(quantity * unit_price) Desc
		) as category_rank
from ng_sales
Group by state, product_category
)

Select state, product_category, revenue
from ranked
where category_rank = 1
order by revenue desc;