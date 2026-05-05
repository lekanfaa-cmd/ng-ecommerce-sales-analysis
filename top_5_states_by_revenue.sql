SELECT
  state,
  SUM(quantity * unit_price) AS revenue,
  ROUND(100.0 * SUM(quantity * unit_price) /
    SUM(SUM(quantity * unit_price)) OVER (), 2) AS pct_of_total
FROM ng_sales
GROUP BY state
ORDER BY revenue DESC
LIMIT 5;