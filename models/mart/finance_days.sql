
SELECT
  date_date
  , COUNT (DISTINCT orders_id) AS nb_of_orders
  , ROUND (SUM(total_revenue), 2) AS total_revenue
  , ROUND (SUM(total_revenue) / COUNT(DISTINCT orders_id), 2) AS average_basket
  , ROUND (SUM (operational_margin), 2) AS operational_margin
  , ROUND (SUM (total_purchase_cost), 2) AS total_purchase_cost
  , ROUND (SUM (logcost), 2) AS total_log_cost
  , ROUND (SUM (ship_cost), 2) AS total_ship_cost
  , SUM (total_quantity) AS qty_products_sold
FROM {{ref("int_orders_operational")}}

GROUP BY
    date_date
ORDER BY
    date_date DESC