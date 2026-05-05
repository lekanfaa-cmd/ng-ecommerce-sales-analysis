With revenue_monthly as(
Select 
order_date,
Quantity * unit_price as revenue
from ng_sales
),
Monthly as (
Select
Extract(year from order_date) as year,
Extract(Month from order_date) as month,
to_char(order_date, 'Month') as month_name,
round(sum(revenue), 2) as total_revenue
from revenue_monthly
Group by 1,2,3)

select year, month_name, total_revenue from monthly
order by year, month asc;